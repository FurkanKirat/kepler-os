# Contributing to Kepler OS 🚀

Thank you for your interest in contributing to Kepler OS! To maintain a clean, readable, and structured codebase and commit history, all contributors (including core team members) are expected to follow these guidelines.

---

## 📌 Git Commit Guidelines

We strictly follow the **Conventional Commits** specification for all commit messages. This ensures that our project history remains meaningful and easy to navigate.

### Commit Message Format

Every commit message must follow this structure:
```text
<type>(<scope>): <short description>

[optional body describing "what" and "why"]

```

### 1. Allowed Types (`<type>`)

* `feat`: A new feature for the OS (e.g., driver, memory allocator).
* `fix`: A bug fix (e.g., fixing a page fault or a typo in GDT).
* `docs`: Documentation changes only (e.g., updating README or guides).
* `style`: Changes that do not affect the meaning of the code (formatting, white-spaces, missing semi-colons).
* `refactor`: A code change that neither fixes a bug nor adds a feature (improving internal code structure).
* `chore`: Changes to the build process, Docker configuration, or auxiliary tools.

### 2. Common Scopes (`<scope>`)

The scope should specify which subsystem or module of the OS your change affects:

* `boot`: Bootloader, multiboot headers, or early initialization.
* `kernel`: Core kernel logic.
* `mm`: Memory management (allocators, paging).
* `arch`: Architecture-specific code (e.g., x86, GDT, IDT, interrupts).
* `docker`: Docker development environment or Compose configuration.

### 3. Rules for Descriptions

* **Use the imperative mood:** Write your description as a command (e.g., use `add` instead of `added` or `adds`).
* **Lowercase only:** Do not capitalize the first letter of the description.
* **No periods:** Do not end the short description with a period (`.`).

---

## 📝 Examples

### Simple Bug Fix (Header only)

```text
fix(gdt): correct segment limit descriptor calculations

```

### New Feature (Header + Body)

If your change requires more context, leave a blank line after the header and explain the **what** and **why** in the body:

```text
feat(mm): implement simple arena allocator

- Added core structure for page-based arena allocation.
- Implemented kernel-level malloc and free equivalents.
- This avoids memory fragmentation during early boot stages.

```

---

## 🚀 Development Workflow Reminder

1. Write your code on your host machine.
2. Ensure your local files are synced with the Docker container.
3. Compile and test your code inside the Docker environment (`docker compose exec compiler bash`).
4. Make sure your changes do not break existing core functionality before committing.

```

---

```markdown
---

## 🤝 Contributing

Before making any changes or pushing code to this repository, please review our [Contributing Guidelines](CONTRIBUTING.md) to understand our commit message standards and development workflow.

```
