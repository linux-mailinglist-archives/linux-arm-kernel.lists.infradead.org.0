Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 530E716382E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 01:09:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLVnikSqKgvhiM5rL+Lq8kCk1fGxu7iDI25Wuf2DCOM=; b=TBPZzz40+TpJJ0
	fUymFlISQBbijcmNu/UvsxnZteFwmkIrMSlqFaj6wsIZLvBTk/Sl51/m/c/TI6sU9nEXDsckJiv5Y
	LgGxox9EQuAr7FnggCU9wjz2TkpFHs+zBjcangSSaybWRSQYLkjZk7CBGHLLXv62oyZwNBpdptNA5
	q+ylD4+vNsnp++OsXnNqB2jXL4ZtVUDljxKPC0Qy76Qcn1q9G9vtQFz482TDm4wFTS6SOGjO5ER+h
	48H3JfgPr0b3LGW18UUohXZ7DKHPnBruKfP5OdvkxM2SplJPKBJmNegDiiK9shGWrqCa3YSCmnPrF
	r2zfMZA9drxvGMBY02sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Cvp-0000GV-6W; Wed, 19 Feb 2020 00:09:37 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Cur-00080t-8K
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 00:08:38 +0000
Received: by mail-qt1-x849.google.com with SMTP id n4so14342270qtv.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 16:08:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=0f/RzoyEatytyatThC+F3eOfN2v+QCCQ4NfkPjtyieo=;
 b=cu/THgoI4tMw6Hv/cnWQTiNWXWXUr6AKTVvfgPfzSMLj0kWYcpifZKdSq6w1+DteE0
 kXx8mLdQVe2X1IQWWOSR6Mh+Qa+NPbQfhsSgJqX39vvszx480CLksDEmmIFQd2vxoqY3
 1dP0HJ2lDnH66hEZo0ZFi1oE3hkU0IZ8oCsB7mmk/3IFcSboHkCVWkxpT1HW+h7VC1n7
 yOmJd+ZtmnwfszU5a6Kt86Lcv2GGAwqezGTfzkaF0JiBJgiasqm6vEx4C8j7oNaglBnU
 JfJ9UsRRTrbO7JD+RSG6YqwZQYiUQK+KI9Aw/1esMS/y9pSezRReN3CDnTr6Mdf4Z3gi
 lu3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=0f/RzoyEatytyatThC+F3eOfN2v+QCCQ4NfkPjtyieo=;
 b=przBBi0b+ITSBgVjU3ussNLQUme2JidfaDKzcfq6vY4D21Bxjzk3k8/JqHt8VmB/Yy
 rD/6wXqnZeFGUB4RGAlwJhc0BUh57/AVJwJWf80+i91Mslp9W29ZYgzNF0Jo0S9UbwWj
 FStziJNIYfqJOzP1xBajJN34GoqcO4Cv8x3PKBQ8lynwNTjmy2dXfFpA12I3XV8R9Uq4
 sIEMYqi/5aJOMWuxkgymucyeFdjgWdgL+cynt0QNvNV3jDSc3ZBWf2zcYMgResip/ILJ
 qCW3J+IJADKpnnpJBY1X0CZAryNfxHkHibb1c46URXD4qrdpf+VyRkXObO5oxN0MxPLN
 iI0A==
X-Gm-Message-State: APjAAAX6IXZqI0++Xl4Zs3nG3s4hcZjH/VMP36kbws2ZOahgOyuxbkCY
 mbSQx+/izRTDlvw9ClJV0qBMC+vrq0Etbn+Le3w=
X-Google-Smtp-Source: APXvYqw4ER8WovKBYQVVrHd0oyLZvkEq3WR7WVWTpyENeUeptJ25rnbegEbU6hsEORKa9iiI1OoS973GsI/tCw23qS4=
X-Received: by 2002:a37:4e89:: with SMTP id c131mr22333834qkb.5.1582070915273; 
 Tue, 18 Feb 2020 16:08:35 -0800 (PST)
Date: Tue, 18 Feb 2020 16:08:08 -0800
In-Reply-To: <20200219000817.195049-1-samitolvanen@google.com>
Message-Id: <20200219000817.195049-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v8 03/12] scs: add support for stack usage debugging
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>,
 james.morse@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_160837_319622_5A626E65 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
