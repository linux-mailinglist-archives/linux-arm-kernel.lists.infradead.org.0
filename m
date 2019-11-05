Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA635F0ABC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 00:58:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sUrE6GADJ8qDG5si1KrbrNXUEzeP/2jPZo/ULkZkL/k=; b=N23SkpPVjex3M2
	B28Q5IvPtYTExbbVdAymd2W0uihDQRS/D0EHBL8hA5Ioz5cjw5glG4fKRlZbljOGASKeSPyhxM/F2
	LpLLGY25VgeNI2mnPykkIL5ZE2+St+WVbBxMZpsHjgHcBb7DA1hmLPD05f9QnOpVVXUF436D3sZM+
	s1n8Psu+gSU1Y3v+3JGAN6YCFV+8BPp7lXjDTowWAf9v04rAR06jbsVUpBWiQm0rdJvyEsEQhsqQc
	wNOss5tYiWWWrwl6QwIVudVujEnGHre3JFK8iIJ2Ym8pSP8rwZxTKE0kEI3Pu7SKAy4AbZUovJ7u+
	7nqVA02imB/sEFJSOm1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS8iQ-00019w-DO; Tue, 05 Nov 2019 23:58:26 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS8gf-0007xn-MZ
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 23:56:40 +0000
Received: by mail-pl1-x64a.google.com with SMTP id a3so13892368pls.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 15:56:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=rtGYhrlT+v4glRCgBr5KwA8OmlbDFJXwY4ztX1r8N4Y=;
 b=TKd2so4t7KdR/7IGrMM7dl1XICyaB7Ep2xb2K+L1YFpFhAdGCuA+QVKoOX+2nBhRS1
 PbhJFwrDkZsuR4g7Ll5jibhYYSoSbj6Qsk2MbBrD3K/3RVFYn3Ze4sq2kV7P6t82dOWN
 zANq01dIUJjLIJAHUFq7xMVXaYxiN41idA7UoNEeJpkXFp/ZWlp+zSbMC4BIJqBb48KR
 4Yz6i7rx8RTibsrTijP0CrOXXl43bw03Swi1hDDM7ENVWaU1ch5tyPwrarZdzghv3p22
 6EIfdhBRrf+kmU4AHHY+5aG/aq0yLasD+4SyCQWE2lPdStxSTwo8liAyHr/FcLSygxFM
 ArVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=rtGYhrlT+v4glRCgBr5KwA8OmlbDFJXwY4ztX1r8N4Y=;
 b=fiRWMKFkdjq8RnXy3G15/TSknlrKGb2WPCKBKtkVrFEf4adHS2fkkv0C47JPWjE+M4
 TfbA89m/sO2kSK77mLHBGeg4v8azOKBcPQJHTINQewk4+1p1rmtmJGl1lsK/m6ATmFcB
 /6hiKv9VWFPEzH161xLf4+2PlWQm6ECyHrAcjV83cANfRXRH9EXkeNFJd4ApggsEozr6
 XN2cuMCFrI02vfxJrtpcszWYhCh7QPwEXvKwQlKlNrZ4KfkkYWfGDFrZbTuJ2i7lMSGR
 mbADep4n3Qx1oiEaf6vCciCSg78wyAhGaH1qsW4ZB3BHm8wdGLuIa1pmPOFWXEGMBHxj
 TA5Q==
X-Gm-Message-State: APjAAAULTEbZieBCnV/wVkrH28eHOfFTnjZGcCoZw7QlpRuX69nyoN9R
 mL2wP7fP8jzjOwzFtLGK/B32LKPt7TCMquZQOas=
X-Google-Smtp-Source: APXvYqyeiXNhg0SMmYGCzlPE1MJNPVlZmSKCnBjsXssOcDuiJaeCfp0JdeBqZLhwpNQMgciNZVJzMgpXUPeRRsEDFOQ=
X-Received: by 2002:a65:6149:: with SMTP id o9mr5335991pgv.228.1572998195111; 
 Tue, 05 Nov 2019 15:56:35 -0800 (PST)
Date: Tue,  5 Nov 2019 15:56:01 -0800
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 07/14] scs: add support for stack usage debugging
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_155637_805964_2C86FE05 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
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
index 4f5774b6f27d..a47fae33efdc 100644
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
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
