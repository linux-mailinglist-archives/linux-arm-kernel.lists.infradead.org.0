Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B90DF19FA7C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 18:42:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cXtZDlrG6ZtaUhk2TOCxW4qOhyn+ZvCJoU8sxah45ks=; b=k5OUsOaSippJME
	LzJzMZ6h4yO6Q0ytVKgfU3fd2HKAuN/DRgfwyNg0lL3D2NyZktAz55r24cTawlVIk5qp85gwdsNnw
	JwscH/QnTWzG9p8UoAOs9Amue2+W1cfoqLbLzrJhtZ9cdI5BbSwDyVQdOwdc5WEDcefTkOReh+xs/
	JMzNALG8r7hvvPxfPXmNaSUM0ap3hSVzEWpC2zYa43kwhz4w/R4cp5sX+zvmauv3NGypV8+yzXt7S
	NFGPE64xJKIIJvuODpmB3194NngFM9bEdqKNgEdzhxJwlYAqY8HhWn7mbChwAtqNCqy4MeAzs62N4
	SrjCjzqHDWWAAcdzjygg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLUpi-0004kI-59; Mon, 06 Apr 2020 16:42:46 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLUoe-0003xB-So
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 16:41:42 +0000
Received: by mail-pl1-x64a.google.com with SMTP id x1so96164pln.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 09:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Ummeb//L4UGzSQ9YmLkDAY3kIJvHpvVlDZif3GsciVU=;
 b=IPPdkNAeCJXNHbsXe/mGa5z+wBWOy0VNpPvPMMCuc5EwpOHxDZY3dzEwp7Z9q8+A+6
 mhsuX7BenNoOfFBKR2vXW+Llg8rWZeo4jTI1ptL1eGZE/asnMxQpJUAUfYi3BJXd7MG4
 h0qQK+DY9jclc+sAdLOTRMBATVdbAqN5NRIHqlyT0D1+Fo0Gd445yIwHfWRAfFnusS77
 HUjqk5/F1uJieIRQySJq4jsWcZe28h1QPbCvmrKMLo14OqtT0N2cLzM8APA7TdFwMXtN
 WPwc7ygpjmZ2rzLIeLKsG3/w6/yH4WdpnZJ/ARDydbD7hwXi5d+x4Y6UIpOR8Ph3Q2J4
 kjlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Ummeb//L4UGzSQ9YmLkDAY3kIJvHpvVlDZif3GsciVU=;
 b=UdmyeHEzutk3ZLjJp+oPOQEUAih9itvfc2jG8MV3moDDkPQ/7+7Lj/08fmzU9dKAvI
 PH7n4frwwdEFkSBd9Nj51r3CRVovT1UBakqiTb06gXE+bGQUjAq/lvo+h7tPaRBtRWed
 ZhU2l42kNLVlyu3NhVOUcSeeAhT4jX234oGID1KWBIi+5dr+5+1hOaXDeL2QPJ86ou92
 PUQvqHXuxyOzEe7xYnsnoezrDcauUUzs1OT/BUVOxqJYMBbELqHKJ1o6SThcA6iPsnm9
 jpokJQoEwO80R9u2jxF91oiVC111mBIK6hPYTtzpMFrTYKxEXeVMgoxhVVVHjQzcVuPA
 ttwg==
X-Gm-Message-State: AGi0PuZDQNOhBggTWov8CTh/4l75BKvW0AoUyzZISxEErn+O9FX1bcu6
 NIA9CpIqrfUYeB0Pz+Lz83rnIVeYQvCFvtkhl+0=
X-Google-Smtp-Source: APiQypLfMllChVStp0nVVJRc46ooIEmPC5lxhHr5UbQWQtwRSJW5jYCIR/c33rb1nlAjMKVaAFGW/fG0jdBYpJoZ1PU=
X-Received: by 2002:a17:90a:20f0:: with SMTP id
 f103mr196700pjg.88.1586191297993; 
 Mon, 06 Apr 2020 09:41:37 -0700 (PDT)
Date: Mon,  6 Apr 2020 09:41:12 -0700
In-Reply-To: <20200406164121.154322-1-samitolvanen@google.com>
Message-Id: <20200406164121.154322-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200406164121.154322-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
Subject: [PATCH v10 03/12] scs: add support for stack usage debugging
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
 Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_094140_941238_7889E03D 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Marc Zyngier <maz@kernel.org>,
 kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks. When enabled,
also prints out the highest shadow stack usage per process.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 kernel/scs.c | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/kernel/scs.c b/kernel/scs.c
index 5245e992c692..ad74d13f2c0f 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -184,6 +184,44 @@ int scs_prepare(struct task_struct *tsk, int node)
 	return 0;
 }
 
+#ifdef CONFIG_DEBUG_STACK_USAGE
+static inline unsigned long scs_used(struct task_struct *tsk)
+{
+	unsigned long *p = __scs_base(tsk);
+	unsigned long *end = scs_magic(p);
+	unsigned long s = (unsigned long)p;
+
+	while (p < end && READ_ONCE_NOCHECK(*p))
+		p++;
+
+	return (unsigned long)p - s;
+}
+
+static void scs_check_usage(struct task_struct *tsk)
+{
+	static DEFINE_SPINLOCK(lock);
+	static unsigned long highest;
+	unsigned long used = scs_used(tsk);
+
+	if (used <= highest)
+		return;
+
+	spin_lock(&lock);
+
+	if (used > highest) {
+		pr_info("%s (%d): highest shadow stack usage: %lu bytes\n",
+			tsk->comm, task_pid_nr(tsk), used);
+		highest = used;
+	}
+
+	spin_unlock(&lock);
+}
+#else
+static inline void scs_check_usage(struct task_struct *tsk)
+{
+}
+#endif
+
 bool scs_corrupted(struct task_struct *tsk)
 {
 	unsigned long *magic = scs_magic(__scs_base(tsk));
@@ -200,6 +238,7 @@ void scs_release(struct task_struct *tsk)
 		return;
 
 	WARN_ON(scs_corrupted(tsk));
+	scs_check_usage(tsk);
 
 	scs_account(tsk, -1);
 	task_set_scs(tsk, NULL);
-- 
2.26.0.292.g33ef6b2f38-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
