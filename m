Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5341D57BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:26:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFhqEA9WsDosU44HPwkSA/836tWza2+pRMAGimnhiXY=; b=FisPbwnLzIffOR
	g0VwNmMApJ2Nw9NsTnJU3decv5bk3O+4RiK3XrzojU7ai6ESw7vhi3DQnhkvllInQO+v3da7uGUET
	EVcsAH63gop/xzST84REX2X+YoiwqFuxp4Esmio2izKh2bwXbpkZTLqq430QKEchumDBtEU2lE5QM
	3el+sn9SlQE3dHF1gRmgLjCpiTF1iEW2D+P2hxO13S1epe53/ZP7AJZcHFtSddTyQOAb35QnBJaE2
	ooA1EsPHxq76eltVwzn8pH084TYM7efuyp3GNB0/KjyR3vk68okkg6MMBfZx/yeZeh4WZUc9hoPjE
	ESsId9uUOwIJrSxxfRTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZe60-0006qU-RZ; Fri, 15 May 2020 17:26:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZe43-0002ov-U6
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:24:07 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C922D20727;
 Fri, 15 May 2020 17:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589563443;
 bh=zWhOLyH9TNGBBaNKqL1KsajY5TGVx0wn+S/jS978Jqg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u58EeNvoas8dp6AcVakZPDrN6DVn18NlyNjlI3Pdyhnc7mjVPOcn8MbktD+o5Rsq7
 xcLTIOfxTo116Bo1iK9tGCYZsdxOJ/oLJ7Z+pF5IT90Nnk54qTVuGu5BtrDdGIq1xl
 sKj3OzlhgENCEF/BhlrMtyX6jMLy7xzMY0UmSyHg=
Date: Fri, 15 May 2020 18:23:56 +0100
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v13 00/12] add support for Clang's Shadow Call Stack
Message-ID: <20200515172355.GD23334@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200427160018.243569-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_102404_033550_BADC8F75 
X-CRM114-Status: GOOD (  20.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Juri Lelli <juri.lelli@redhat.com>,
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Steven Rostedt <rostedt@goodmis.org>,
 linux-arm-kernel@lists.infradead.org, Michal Marek <michal.lkml@markovi.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sami,

On Mon, Apr 27, 2020 at 09:00:06AM -0700, Sami Tolvanen wrote:
> This patch series adds support for Clang's Shadow Call Stack
> (SCS) mitigation, which uses a separately allocated shadow stack
> to protect against return address overwrites. More information
> can be found here:
> 
>   https://clang.llvm.org/docs/ShadowCallStack.html

I'm planning to queue this with the (mostly cosmetic) diff below folded in.
I also have some extra patches on top which I'll send out shortly for
review.

However, I really think we need to get to the bottom of the size issue
since I'm highly sceptical about not being able to afford a full page
for the shadow stack allocation. We can change this later so it needn't
hold up the patchset, but given that Android is the only user, I'd like
to make sure that if we change to use a full page upstream then that is
also acceptable in AOSP.

Thanks,

Will

--->8

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index 18fc4d29ef27..790c0c6b8552 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -45,6 +45,4 @@
 
 #if __has_feature(shadow_call_stack)
 # define __noscs	__attribute__((__no_sanitize__("shadow-call-stack")))
-#else
-# define __noscs
 #endif
diff --git a/include/linux/scs.h b/include/linux/scs.h
index 060eeb3d1390..3f3662621a27 100644
--- a/include/linux/scs.h
+++ b/include/linux/scs.h
@@ -11,7 +11,7 @@
 #include <linux/gfp.h>
 #include <linux/poison.h>
 #include <linux/sched.h>
-#include <asm/page.h>
+#include <linux/sizes.h>
 
 #ifdef CONFIG_SHADOW_CALL_STACK
 
@@ -20,7 +20,7 @@
  * architecture) provided ~40% safety margin on stack usage while keeping
  * memory allocation overhead reasonable.
  */
-#define SCS_SIZE		1024UL
+#define SCS_SIZE		SZ_1K
 #define GFP_SCS			(GFP_KERNEL | __GFP_ZERO)
 
 /* An illegal pointer value to mark the end of the shadow stack. */
@@ -29,7 +29,9 @@
 #define task_scs(tsk)		(task_thread_info(tsk)->scs_base)
 #define task_scs_offset(tsk)	(task_thread_info(tsk)->scs_offset)
 
-extern void scs_init(void);
+void scs_init(void);
+int scs_prepare(struct task_struct *tsk, int node);
+void scs_release(struct task_struct *tsk);
 
 static inline void scs_task_reset(struct task_struct *tsk)
 {
@@ -40,8 +42,6 @@ static inline void scs_task_reset(struct task_struct *tsk)
	task_scs_offset(tsk) = 0;
 }
 
-extern int scs_prepare(struct task_struct *tsk, int node);
-
 static inline unsigned long *__scs_magic(void *s)
 {
	return (unsigned long *)(s + SCS_SIZE) - 1;
@@ -55,12 +55,8 @@ static inline bool scs_corrupted(struct task_struct *tsk)
		READ_ONCE_NOCHECK(*magic) != SCS_END_MAGIC);
 }
 
-extern void scs_release(struct task_struct *tsk);
-
 #else /* CONFIG_SHADOW_CALL_STACK */
 
-#define task_scs(tsk)	NULL
-
 static inline void scs_init(void) {}
 static inline void scs_task_reset(struct task_struct *tsk) {}
 static inline int scs_prepare(struct task_struct *tsk, int node) { return 0; }
diff --git a/kernel/scs.c b/kernel/scs.c
index 2a96573f2b1b..9389c28f0853 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -55,45 +55,37 @@ static void scs_account(struct task_struct *tsk, int account)
 
 int scs_prepare(struct task_struct *tsk, int node)
 {
-	void *s;
+	void *s = scs_alloc(node);
 
-	s = scs_alloc(node);
	if (!s)
		return -ENOMEM;
 
	task_scs(tsk) = s;
	task_scs_offset(tsk) = 0;
	scs_account(tsk, 1);
-
	return 0;
 }
 
-#ifdef CONFIG_DEBUG_STACK_USAGE
-static unsigned long __scs_used(struct task_struct *tsk)
+static void scs_check_usage(struct task_struct *tsk)
 {
-	unsigned long *p = task_scs(tsk);
-	unsigned long *end = __scs_magic(p);
-	unsigned long s = (unsigned long)p;
+	static unsigned long highest;
 
-	while (p < end && READ_ONCE_NOCHECK(*p))
-		p++;
+	unsigned long *p, prev, curr = highest, used = 0;
 
-	return (unsigned long)p - s;
-}
+	if (!IS_ENABLED(CONFIG_DEBUG_STACK_USAGE))
+		return;
 
-static void scs_check_usage(struct task_struct *tsk)
-{
-	static unsigned long highest;
-	unsigned long used = __scs_used(tsk);
-	unsigned long prev;
-	unsigned long curr = highest;
+	for (p = task_scs(tsk); p < __scs_magic(tsk); ++p) {
+		if (!READ_ONCE_NOCHECK(*p))
+			break;
+		used++;
+	}
 
	while (used > curr) {
		prev = cmpxchg_relaxed(&highest, curr, used);
 
		if (prev == curr) {
-			pr_info("%s (%d): highest shadow stack usage: "
-				"%lu bytes\n",
+			pr_info("%s (%d): highest shadow stack usage: %lu bytes\n",
				tsk->comm, task_pid_nr(tsk), used);
			break;
		}
@@ -101,21 +93,16 @@ static void scs_check_usage(struct task_struct *tsk)
		curr = prev;
	}
 }
-#else
-static inline void scs_check_usage(struct task_struct *tsk) {}
-#endif
 
 void scs_release(struct task_struct *tsk)
 {
-	void *s;
+	void *s = task_scs(tsk);
 
-	s = task_scs(tsk);
	if (!s)
		return;
 
-	WARN_ON(scs_corrupted(tsk));
+	WARN(scs_corrupted(tsk), "corrupted shadow stack detected when freeing task\n");
	scs_check_usage(tsk);
-
	scs_account(tsk, -1);
	scs_free(s);
 }


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
