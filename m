Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E05011DC534
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 04:30:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y9FdG7jmcyoLI6TWXBBHm6m5LC2n2hNOzM2nJloubK4=; b=JL0oiApGkLHNmL
	8tT1WJh0pgv5qrTD+dB7sdABaxaJP3MFl3SHvZxFJP8JbACvlJe72ilfJU0AuJknr5/M5x+gmz0Dr
	vtZb0TumQgwG9iVkn8sXNJvdMgdQeC+BqRC4FJ9RirPz3PengawVockODAJIlkM9XVTd0zFgpXi3O
	8jAlmYIzx8RmvHQdkWGz+zmQQ7nwmUgj5mxtnqVz7jETXw0g15szLLH0YgSk+Z4+yrYBnkIA5pFd+
	j/Zjof5lRYgAHvjTw+7jyZWTigKZ6kzCVLG3rSnI5frT5ohXTgb5aVhQ6kkgV3CsCn6v5gZiwu66P
	CU+vznzE4o7oU0FupdWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbayt-0006ix-Nx; Thu, 21 May 2020 02:30:47 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbayN-0006Hm-U4
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 02:30:17 +0000
Received: by mail-qk1-x749.google.com with SMTP id p15so5987399qkk.15
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 19:30:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=/PmXtPSmbKgVaFyQJeMweqUEn43XgLRuGhsRNegCzM0=;
 b=JK+IjLTSMYJhnMA24HgvVJH3iqh8ZgA3yg883FvSbrm/2R/oAv/qgtnU7zpj1ctgA0
 dkZjd+XvSR4yWSr7i0qafAfecCfH5z8HD+tPcX1f0SAnW03+Rk/N7M9iV4aKpM3AMUP1
 Dx/eFscQi7jwxJyFFveOKicqJRzrF6GwS8ipgxwPH6UAfz/pZyzPfAO7yWp/4L0l69l1
 jbhEzdZrrH+oMyn8ud++Fh65XehPNJbROhuP54TRfTmpfu2IZW23SsqqhmBzAa3jRaNh
 HbHQNNAZ2vzAnnGBRCR8zFQGy9xVSOIrkeI6dpD3Ac6UxTHo+JUI47Ltco2WQi6GZdfO
 lp/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=/PmXtPSmbKgVaFyQJeMweqUEn43XgLRuGhsRNegCzM0=;
 b=ps+tTB6xFJPZsL4k5HlbqKfvTXa63rVc62FnPDlOFwwtEr7cR2PqKuB6Oa1gfEDVbK
 NRNq5SNGTVbitO3jymfQLC7ekitkHhg46tPG/KoP7VYXR2P++H9s5h2TFSpMKB4VAFvA
 NUJjV44uqspqyjQzNZ2Hzi2QUdDoiRP3qk8Ovp/EqJa/GK0QIFmPB5lw+WM/2mvv9U0I
 VDxhN2qflY3UB8HnjjEo5k76W8qQaIvQSpUqvJj0EWVkrBBvu49G9K94mP8U1FP4WQBI
 EDMY43XSq/Xv1sROocwUnqRk5lO9kUfZdmdT/BnNKCynb+mUNGCGAU0Iloir/a199P4A
 Ea4Q==
X-Gm-Message-State: AOAM531/UcaL0uxiFIV1jpb7v1GwrjfaUxghh1E1lqH4LRmYW7Ke5IeF
 ox9NqvRSKfXTKsro2N+ptfuGp7c=
X-Google-Smtp-Source: ABdhPJyVlXFuts2xiEi8HP67nXEjQ+TmW3WUQSl595mxP8URIB+cviRxKI8ixNlBalXa/P6EDT1B34U=
X-Received: by 2002:a0c:e4d4:: with SMTP id g20mr7472769qvm.228.1590028209146; 
 Wed, 20 May 2020 19:30:09 -0700 (PDT)
Date: Wed, 20 May 2020 19:29:41 -0700
In-Reply-To: <20200521022943.195898-1-pcc@google.com>
Message-Id: <20200521022943.195898-2-pcc@google.com>
Mime-Version: 1.0
References: <20200521022943.195898-1-pcc@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH v6 1/3] signal: Allow architectures to store arch-specific
 data in kernel_siginfo
From: Peter Collingbourne <pcc@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Evgenii Stepanov <eugenis@google.com>, Kostya Serebryany <kcc@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, 
 Dave Martin <Dave.Martin@arm.com>, Will Deacon <will@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, 
 "Eric W. Biederman" <ebiederm@xmission.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_193016_045869_BFE53F09 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In some cases we would like to store architecture-specific data in
the kernel's siginfo but not in the userspace one. This is generally
data is conceptually part of siginfo but is not stored there for one
reason or another. For example, on arm64, the arch-specific fault
code register ESR_EL1 is exposed to signal handlers, but since it is
associated with many different types of signals it does not fit well
into siginfo and appears in sigcontext instead.

Currently this data is stored in thread_struct, which is error-prone
because the data is associated with the signal itself and not the task,
and as a result it could get out of sync with the signal that is
currently being delivered.

To help avoid these types of errors, introduce a way for architectures
to store architecture-specific data in the kernel_siginfo. This part
of the kernel_siginfo is not exposed to userspace so the architecture
can use it in any way that it likes without ABI concerns. A follow-up
change will start using this mechanism on arm64 to store the fault
code and fault address.

Signed-off-by: Peter Collingbourne <pcc@google.com>
---
 include/linux/signal.h       |  2 --
 include/linux/signal_types.h |  3 +++
 kernel/signal.c              | 17 +++++++++++++----
 3 files changed, 16 insertions(+), 6 deletions(-)

diff --git a/include/linux/signal.h b/include/linux/signal.h
index 05bacd2ab135..34bf18932e9b 100644
--- a/include/linux/signal.h
+++ b/include/linux/signal.h
@@ -22,8 +22,6 @@ static inline void clear_siginfo(kernel_siginfo_t *info)
 	memset(info, 0, sizeof(*info));
 }
 
-#define SI_EXPANSION_SIZE (sizeof(struct siginfo) - sizeof(struct kernel_siginfo))
-
 int copy_siginfo_to_user(siginfo_t __user *to, const kernel_siginfo_t *from);
 int copy_siginfo_from_user(kernel_siginfo_t *to, const siginfo_t __user *from);
 
diff --git a/include/linux/signal_types.h b/include/linux/signal_types.h
index f8a90ae9c6ec..a8635eeb890b 100644
--- a/include/linux/signal_types.h
+++ b/include/linux/signal_types.h
@@ -11,6 +11,9 @@
 
 typedef struct kernel_siginfo {
 	__SIGINFO;
+#ifdef __ARCH_HAS_PRIVATE_SIGINFO
+	struct arch_private_siginfo arch;
+#endif
 } kernel_siginfo_t;
 
 /*
diff --git a/kernel/signal.c b/kernel/signal.c
index 284fc1600063..a33df2280ed5 100644
--- a/kernel/signal.c
+++ b/kernel/signal.c
@@ -3180,15 +3180,21 @@ enum siginfo_layout siginfo_layout(unsigned sig, int si_code)
 	return layout;
 }
 
+struct shared_siginfo {
+	__SIGINFO;
+};
+
+#define SI_EXPANSION_SIZE (sizeof(struct siginfo) - sizeof(struct shared_siginfo))
+
 static inline char __user *si_expansion(const siginfo_t __user *info)
 {
-	return ((char __user *)info) + sizeof(struct kernel_siginfo);
+	return ((char __user *)info) + sizeof(struct shared_siginfo);
 }
 
 int copy_siginfo_to_user(siginfo_t __user *to, const kernel_siginfo_t *from)
 {
 	char __user *expansion = si_expansion(to);
-	if (copy_to_user(to, from , sizeof(struct kernel_siginfo)))
+	if (copy_to_user(to, from , sizeof(struct shared_siginfo)))
 		return -EFAULT;
 	if (clear_user(expansion, SI_EXPANSION_SIZE))
 		return -EFAULT;
@@ -3198,6 +3204,9 @@ int copy_siginfo_to_user(siginfo_t __user *to, const kernel_siginfo_t *from)
 static int post_copy_siginfo_from_user(kernel_siginfo_t *info,
 				       const siginfo_t __user *from)
 {
+#ifdef __ARCH_HAS_PRIVATE_SIGINFO
+	memset(&info->arch, 0, sizeof(info->arch));
+#endif
 	if (unlikely(!known_siginfo_layout(info->si_signo, info->si_code))) {
 		char __user *expansion = si_expansion(from);
 		char buf[SI_EXPANSION_SIZE];
@@ -3221,7 +3230,7 @@ static int post_copy_siginfo_from_user(kernel_siginfo_t *info,
 static int __copy_siginfo_from_user(int signo, kernel_siginfo_t *to,
 				    const siginfo_t __user *from)
 {
-	if (copy_from_user(to, from, sizeof(struct kernel_siginfo)))
+	if (copy_from_user(to, from, sizeof(struct shared_siginfo)))
 		return -EFAULT;
 	to->si_signo = signo;
 	return post_copy_siginfo_from_user(to, from);
@@ -3229,7 +3238,7 @@ static int __copy_siginfo_from_user(int signo, kernel_siginfo_t *to,
 
 int copy_siginfo_from_user(kernel_siginfo_t *to, const siginfo_t __user *from)
 {
-	if (copy_from_user(to, from, sizeof(struct kernel_siginfo)))
+	if (copy_from_user(to, from, sizeof(struct shared_siginfo)))
 		return -EFAULT;
 	return post_copy_siginfo_from_user(to, from);
 }
-- 
2.26.2.761.g0e0b3e54be-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
