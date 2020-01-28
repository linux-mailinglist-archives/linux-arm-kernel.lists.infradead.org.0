Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5426614C054
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 19:51:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WWdzRLbyLeisRagqhnFglkNvz+dHJ5gh4im/h+jkIE8=; b=oUxOgSDjJJXRKj
	STMcMTsygYL6gAvx0tjPPwsBnO1DCEKVedrXRC6zFYpzo1ZSEQfrdTIUq5bLs9Fu9/om1GVBFprjS
	gsMVXWj3uFncGJY/bVWxPh3BmxSCpq2UIMz8ax2kMtNjgoUu9F2xi2yAKKFvvwMWK1eUfWWz5SC22
	RyRRFji536s3OkJlW3D95N0vzmwavo11IQEya5AMDq3xIddCL+Kl7UbcYX3EaMpK6MDavn1mF1yWZ
	eelwQ2GWumXQHH3iy1a0wzQV3NmMhpeZxyv7676JRIl9Hi1IawKza+GPIzMFJSmp3i+XlosDeZr1b
	nhTg0WbgXuUoTE1IkLJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwVxC-0001Ml-QH; Tue, 28 Jan 2020 18:51:14 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwVvo-0007iw-N1
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 18:49:50 +0000
Received: by mail-qk1-x74a.google.com with SMTP id x127so9038084qkb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 10:49:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=FRYMM1qoPJhfGiG5OWEbx13i+2jzqMbf4H5LKO69CQU=;
 b=bFhtOIbcQrF6W7S50FwloXQv+gTL5Dc0/6XP56oKBenHYm98Yng2U+I5p+qfHPMNP7
 mXKjOy2wZeSKsZJWMowesjW4wlTddLLx2SWrJGP1ociyoc0epkZJ195SG9At2F1opp+V
 URf8CAqfz0aQ5kqzv3bn8idQIQzoYDL09b3SPw8hvTei18qiFg8BWL2mg+W23NxWD4Dn
 BM/ESuqDVdaUzuu5N78ZRANcwg3lkwkudz/DtF5we2gTsj2TLlVF6wIGzuFOmBhEVKFz
 OYg50S5qLuXvI5upqlHvIYXnxRCpTwSCa4SRI1VNfKjWKA80nVrA1G8NvIVhrLHLfAOP
 y+KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=FRYMM1qoPJhfGiG5OWEbx13i+2jzqMbf4H5LKO69CQU=;
 b=TOjLekZguXh/1qO+XLYoe3aISBYk5ALBCclXnB4GiZE2oGYi/r0fyzk0LKYHkOgjpE
 B8+SeEnquWaJ4ZWgroVTPJA/8AdnfCEqsUygg0VAwsHDp5ug5IkLwTipAzSCnqQ74ETy
 jrHkYIti8DYqMJRscuElMexpnHRZr1Cn5lwR68RSaw4ISX5P81AHLL6nkrlRfhtoZ8O3
 ep/71OJIwPIy7TVpuhbcdZH47QX2PDJurQL5UADZouyyfLNNhfFC+tPhB2kSP9G4rvKG
 YSJyxtZn1YtOAG+1XOisUYXCfP3PHt9gPHKLb5RZANqfbZ6RmTEjrguttwcRBy4JBbMf
 kgjA==
X-Gm-Message-State: APjAAAVdwjFbAinlWF2Sa11Spn/DKsu9ATHfBvIEbpE3r+L4l5wx9tAL
 uoMz/htQ8u51Yfe5uneWa2yBAo5TGv6slDY0lpc=
X-Google-Smtp-Source: APXvYqyk3gN+DHe7EMl7P65uc0diXH3phSSCxxDmawR0hdhYLtL89vUyklWkmNMJY3GUoAEL69pRLvjhdLmm1fCjGgg=
X-Received: by 2002:a0c:fac1:: with SMTP id p1mr24192377qvo.231.1580237386265; 
 Tue, 28 Jan 2020 10:49:46 -0800 (PST)
Date: Tue, 28 Jan 2020 10:49:26 -0800
In-Reply-To: <20200128184934.77625-1-samitolvanen@google.com>
Message-Id: <20200128184934.77625-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v7 03/11] scs: add support for stack usage debugging
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>,
 james.morse@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_104948_801458_D2DB3B68 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
