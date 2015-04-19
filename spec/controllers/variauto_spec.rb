require 'spec_helper'

describe PagesController, type: :controller do
  render_views

  let(:fixture) { YAML.load_file('spec/fixtures/user_agents.yml') }

  shared_examples_for 'variant view' do
    it 'should render variant view' do
      user_agents.each do |user_agent|
        request.env['HTTP_USER_AGENT'] = user_agent

        get :show

        expect(response.body).to match Regexp.escape(content)
      end
    end
  end

  describe 'GET #show' do
    context 'when accessed from phone' do
      it_behaves_like 'variant view' do
        let(:user_agents) { fixture['phone'] }
        let(:content) { 'show.html+phone.erb' }
      end
    end

    context 'when accessed from tablet' do
      it_behaves_like 'variant view' do
        let(:user_agents) { fixture['tablet'] }
        let(:content) { 'show.html+tablet.erb' }
      end
    end

    context 'when accessed from desktop' do
      it_behaves_like 'variant view' do
        let(:user_agents) { fixture['desktop'] }
        let(:content) { 'show.html.erb' }
      end
    end
  end
end
