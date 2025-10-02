# 🌐 Internet Search Agent

A powerful AI agent built with LangGraph that can search the internet and provide comprehensive answers to your questions.

## Features

- **Real-time Internet Search**: Uses Tavily search API to find current information
- **Intelligent Analysis**: Processes search results to provide accurate answers
- **Conversational Interface**: Natural language interaction
- **Source Citation**: References sources when possible
- **Error Handling**: Robust error handling and user feedback

## Prerequisites

Before running the agent, you'll need:

1. **Python 3.8+** installed on your system
2. **API Keys** for the following services:
   - **Groq API Key** (for LLM)
   - **Tavily API Key** (for web search)

## Installation

1. **Clone or download the project files**

2. **Install dependencies**:
   ```bash
   pip install -r requirements_internet_agent.txt
   ```

3. **Set up environment variables**:
   Create a `.env` file in the project directory with your API keys:
   ```env
   GROQ_API_KEY=your_groq_api_key_here
   TAVILY_API_KEY=your_tavily_api_key_here
   ```

## Getting API Keys

### Groq API Key
1. Go to [Groq Console](https://console.groq.com/)
2. Sign up or log in
3. Navigate to API Keys section
4. Create a new API key
5. Copy the key to your `.env` file

### Tavily API Key
1. Go to [Tavily](https://tavily.com/)
2. Sign up for a free account
3. Get your API key from the dashboard
4. Copy the key to your `.env` file

## Usage

### Basic Usage

Run the simple internet search agent:
```bash
python simple_internet_agent.py
```

### Advanced Usage

For the advanced version with memory and additional features:
```bash
python advanced_internet_agent.py
```

### Demo Mode

Run predefined questions to test the agent:
```bash
python advanced_internet_agent.py --demo
```

## Example Questions

The agent can answer various types of questions:

- **Current Events**: "What are the latest developments in AI?"
- **Weather**: "What's the weather like in New York today?"
- **Historical Facts**: "Who won the Nobel Prize in Physics last year?"
- **Scientific Information**: "What are the main causes of climate change?"
- **Geographic Data**: "What is the population of Tokyo?"
- **Technical Questions**: "How does machine learning work?"

## How It Works

1. **User Input**: You ask a question
2. **Search**: The agent uses Tavily to search the internet
3. **Analysis**: The LLM (Groq) analyzes the search results
4. **Response**: The agent provides a comprehensive answer with sources

## Code Structure

### Simple Agent (`simple_internet_agent.py`)
- Basic internet search functionality
- Single-turn conversations
- Simple error handling

### Advanced Agent (`advanced_internet_agent.py`)
- Conversation memory
- Search history tracking
- Source citation
- Better error handling
- Demo mode

## Customization

You can customize the agent by modifying:

- **LLM Model**: Change the Groq model in the code
- **Search Parameters**: Adjust Tavily search settings
- **System Prompt**: Modify the agent's behavior and responses
- **Search Domains**: Restrict searches to specific websites

## Troubleshooting

### Common Issues

1. **API Key Errors**:
   - Ensure your API keys are correctly set in the `.env` file
   - Check that the keys are valid and have sufficient credits

2. **Import Errors**:
   - Make sure all dependencies are installed: `pip install -r requirements_internet_agent.txt`

3. **Search Failures**:
   - Check your internet connection
   - Verify your Tavily API key is valid

4. **LLM Errors**:
   - Ensure your Groq API key is valid
   - Check if you have sufficient API credits

### Error Messages

- `GROQ_API_KEY not found`: Add your Groq API key to the `.env` file
- `TAVILY_API_KEY not found`: Add your Tavily API key to the `.env` file
- `ImportError`: Install missing dependencies

## Advanced Features

### Memory and Context
The advanced agent maintains conversation context, allowing for follow-up questions and references to previous topics.

### Source Tracking
The agent tracks and cites sources used for answers, providing transparency and credibility.

### Search History
Track what searches have been performed during the conversation.

## Contributing

Feel free to enhance the agent by:
- Adding more search tools
- Implementing different LLM providers
- Adding conversation analytics
- Creating a web interface

## License

This project is open source and available under the MIT License.

## Support

If you encounter any issues or have questions:
1. Check the troubleshooting section
2. Review the error messages
3. Ensure all dependencies are properly installed
4. Verify your API keys are correct

---

**Happy searching! 🔍** 