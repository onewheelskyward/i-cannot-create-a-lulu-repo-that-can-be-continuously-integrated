require './handler'

RSpec.describe Lambda::Webhook do
  subject {Lambda::Webhook}
  context 'testing lambda handler' do
    # let!(:payload) { File.new('./spec/support/fixtures/github/events/push.json').read }
    let!(:context) {{}}
    let!(:event) {
      {
          'body' => '{}' # payload
      }
    }

    let(:response) { subject.handler(event: event, context: context) }

    it 'gets' do
      expect(response).to eq('')
    end
  end
end
