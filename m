Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C08ABC1F8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 08:44:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q3XaSEaUn5QXXQdEmi4fG68OKx++jpvNAQ2hiPrteOs=; b=FXbOiiFzEr4HHc
	hC7wGyfmgdfslxfgKPOpa2Otit3yqY2rESz7P5JYNW41crNGxyjn5kQN5IkxSZnJyRdvBJ8a+AKNQ
	G/Nzc9jzrtHySspP/iNs2q70gT76CHVHOjblnLOYwQfaH+5uPhbLBAitaV8rksnM8d8cPjfPY96Vd
	GAhTMVsDtmDSEoe7b+xZRlZuxE7TNOhdXFtadL8Obb9iNsBoGLEM1OefAbDJMUgeHvvgYQtKgpSd/
	Qbe8T5nw6dyDsu55Pu2KU0XxwjZ+sVcpeAt3ncIJWSqihEtpNDBCdDRHkCJp3TFJcoHRsKMEArHxH
	Cvtz/wSJHfEZ60gN8oNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCeZ9-0001uV-Ki; Tue, 24 Sep 2019 06:44:51 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCeYl-0001u8-7L; Tue, 24 Sep 2019 06:44:29 +0000
Received: from [89.27.154.14] (helo=localhost.localdomain)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1iCeYj-0000tF-CA; Tue, 24 Sep 2019 06:44:25 +0000
From: Christian Brauner <christian.brauner@ubuntu.com>
To: christian.brauner@ubuntu.com
Subject: [PATCH v1] seccomp: simplify secure_computing()
Date: Tue, 24 Sep 2019 08:44:20 +0200
Message-Id: <20190924064420.6353-1-christian.brauner@ubuntu.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190920131907.6886-1-christian.brauner@ubuntu.com>
References: <20190920131907.6886-1-christian.brauner@ubuntu.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_234427_474231_15620A57 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-s390@vger.kernel.org, wad@chromium.org, keescook@chromium.org,
 linux-parisc@vger.kernel.org, x86@kernel.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, oleg@redhat.com, Borislav Petkov <bp@alien8.de>,
 luto@kernel.org, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Afaict, the struct seccomp_data argument to secure_computing() is unused
by all current callers. So let's remove it.
The argument was added in [1]. It was added because having the arch
supply the syscall arguments used to be faster than having it done by
secure_computing() (cf. Andy's comment in [2]). This is not true anymore
though.

/* References */
[1]: 2f275de5d1ed ("seccomp: Add a seccomp_data parameter secure_computing()")
[2]: https://lore.kernel.org/r/CALCETrU_fs_At-hTpr231kpaAd0z7xJN4ku-DvzhRU6cvcJA_w@mail.gmail.com

Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Kees Cook <keescook@chromium.org>
Cc: Will Drewry <wad@chromium.org>
Cc: Oleg Nesterov <oleg@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-parisc@vger.kernel.org
Cc: linux-s390@vger.kernel.org
Cc: linux-um@lists.infradead.org
Cc: x86@kernel.org
---
/* v1 */
- Borislav Petkov <bp@alien8.de>:
  - provide context for the arg addition to secure_computing() in the
    commit message

/* v0 */
Link: https://lore.kernel.org/r/20190920131907.6886-1-christian.brauner@ubuntu.com
---
 arch/arm/kernel/ptrace.c              | 2 +-
 arch/arm64/kernel/ptrace.c            | 2 +-
 arch/parisc/kernel/ptrace.c           | 2 +-
 arch/s390/kernel/ptrace.c             | 4 ++--
 arch/um/kernel/skas/syscall.c         | 2 +-
 arch/x86/entry/vsyscall/vsyscall_64.c | 2 +-
 include/linux/seccomp.h               | 6 +++---
 7 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/kernel/ptrace.c b/arch/arm/kernel/ptrace.c
index 324352787aea..b606cded90cd 100644
--- a/arch/arm/kernel/ptrace.c
+++ b/arch/arm/kernel/ptrace.c
@@ -923,7 +923,7 @@ asmlinkage int syscall_trace_enter(struct pt_regs *regs, int scno)
 
 	/* Do seccomp after ptrace; syscall may have changed. */
 #ifdef CONFIG_HAVE_ARCH_SECCOMP_FILTER
-	if (secure_computing(NULL) == -1)
+	if (secure_computing() == -1)
 		return -1;
 #else
 	/* XXX: remove this once OABI gets fixed */
diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
index 3cf3b135027e..010a835302d3 100644
--- a/arch/arm64/kernel/ptrace.c
+++ b/arch/arm64/kernel/ptrace.c
@@ -1816,7 +1816,7 @@ int syscall_trace_enter(struct pt_regs *regs)
 	}
 
 	/* Do the secure computing after ptrace; failures should be fast. */
-	if (secure_computing(NULL) == -1)
+	if (secure_computing() == -1)
 		return -1;
 
 	if (test_thread_flag(TIF_SYSCALL_TRACEPOINT))
diff --git a/arch/parisc/kernel/ptrace.c b/arch/parisc/kernel/ptrace.c
index 9f6ff7bc06f9..f8c07dcbfb49 100644
--- a/arch/parisc/kernel/ptrace.c
+++ b/arch/parisc/kernel/ptrace.c
@@ -342,7 +342,7 @@ long do_syscall_trace_enter(struct pt_regs *regs)
 	}
 
 	/* Do the secure computing check after ptrace. */
-	if (secure_computing(NULL) == -1)
+	if (secure_computing() == -1)
 		return -1;
 
 #ifdef CONFIG_HAVE_SYSCALL_TRACEPOINTS
diff --git a/arch/s390/kernel/ptrace.c b/arch/s390/kernel/ptrace.c
index ad71132374f0..ed80bdfbf5fe 100644
--- a/arch/s390/kernel/ptrace.c
+++ b/arch/s390/kernel/ptrace.c
@@ -439,7 +439,7 @@ static int poke_user(struct task_struct *child, addr_t addr, addr_t data)
 long arch_ptrace(struct task_struct *child, long request,
 		 unsigned long addr, unsigned long data)
 {
-	ptrace_area parea; 
+	ptrace_area parea;
 	int copied, ret;
 
 	switch (request) {
@@ -856,7 +856,7 @@ asmlinkage long do_syscall_trace_enter(struct pt_regs *regs)
 	}
 
 	/* Do the secure computing check after ptrace. */
-	if (secure_computing(NULL)) {
+	if (secure_computing()) {
 		/* seccomp failures shouldn't expose any additional code. */
 		return -1;
 	}
diff --git a/arch/um/kernel/skas/syscall.c b/arch/um/kernel/skas/syscall.c
index 44bb10785075..fc37259d5971 100644
--- a/arch/um/kernel/skas/syscall.c
+++ b/arch/um/kernel/skas/syscall.c
@@ -35,7 +35,7 @@ void handle_syscall(struct uml_pt_regs *r)
 		goto out;
 
 	/* Do the seccomp check after ptrace; failures should be fast. */
-	if (secure_computing(NULL) == -1)
+	if (secure_computing() == -1)
 		goto out;
 
 	syscall = UPT_SYSCALL_NR(r);
diff --git a/arch/x86/entry/vsyscall/vsyscall_64.c b/arch/x86/entry/vsyscall/vsyscall_64.c
index e7c596dea947..b10cbf71a8cc 100644
--- a/arch/x86/entry/vsyscall/vsyscall_64.c
+++ b/arch/x86/entry/vsyscall/vsyscall_64.c
@@ -222,7 +222,7 @@ bool emulate_vsyscall(unsigned long error_code,
 	 */
 	regs->orig_ax = syscall_nr;
 	regs->ax = -ENOSYS;
-	tmp = secure_computing(NULL);
+	tmp = secure_computing();
 	if ((!tmp && regs->orig_ax != syscall_nr) || regs->ip != address) {
 		warn_bad_vsyscall(KERN_DEBUG, regs,
 				  "seccomp tried to change syscall nr or ip");
diff --git a/include/linux/seccomp.h b/include/linux/seccomp.h
index 84868d37b35d..03583b6d1416 100644
--- a/include/linux/seccomp.h
+++ b/include/linux/seccomp.h
@@ -33,10 +33,10 @@ struct seccomp {
 
 #ifdef CONFIG_HAVE_ARCH_SECCOMP_FILTER
 extern int __secure_computing(const struct seccomp_data *sd);
-static inline int secure_computing(const struct seccomp_data *sd)
+static inline int secure_computing(void)
 {
 	if (unlikely(test_thread_flag(TIF_SECCOMP)))
-		return  __secure_computing(sd);
+		return  __secure_computing(NULL);
 	return 0;
 }
 #else
@@ -59,7 +59,7 @@ struct seccomp { };
 struct seccomp_filter { };
 
 #ifdef CONFIG_HAVE_ARCH_SECCOMP_FILTER
-static inline int secure_computing(struct seccomp_data *sd) { return 0; }
+static inline int secure_computing(void) { return 0; }
 #else
 static inline void secure_computing_strict(int this_syscall) { return; }
 #endif
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
