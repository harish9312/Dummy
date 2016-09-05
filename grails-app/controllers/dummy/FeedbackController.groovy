package dummy

class FeedbackController {

    def index() { 

    	def feedbacks = Feedback.list()
    	[feedbacks:feedbacks]

    }
}
