Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA441B1BB6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 04:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wMQkTJ9V/vFwJeKTPdCyW7HdiVReY8Iihvd3l91qhVw=; b=i0i7ePoCKkT71y
	Aq2AynDlcLK7A9TR1hN3YY/aA3zumBu1YG8x6wv1UsegdT8Zg2p2hVCsJRAudVht4tnFEqzC1Omp7
	DMUa2Z4+P9dDOlViUtxhdl8EPTBvJbNI6PSKBVbrO1ngEFCetTPUXbSBgm7cOdu433oQldj3PdZc9
	/GNzHBT3OT7uZCY3bpQG0KeY/hBgwRpIKcZiK2HOGF+75quWbn9tNNqfz3d3/BKhn2Ej/BHnOdjkH
	L8IW+/FbNo639s8SfMB/w7T0qcwcw1An6EK04Y0M/76n6yEdxP8C2dMh5Q0oMO+8NsykqPBHqdkFF
	pgIEbrSCl8zWvD+T774w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQiSY-0001xd-M9; Tue, 21 Apr 2020 02:16:26 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQiRG-0007ZZ-No
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 02:15:08 +0000
Received: by mail-pf1-x44a.google.com with SMTP id r28so11833109pfl.23
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 19:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=xI7CPVWDT3QMUi6LNO2ihZsKVC6mOuE8D9NTHDoSwRg=;
 b=NsWMsy0tc64m0JGczaV7LdhsLlL0muqBD3WWfrrfmgnLPP65xuxkorBExS9/txu1L5
 Q2FJmS/0GsmmQwHFFjgD0hHMN3SkL6X6n/bRzCTBpT4oi51norYdtt3JUCFXVOjTMdTU
 zX8qkKvs2OaLrSgua66YBsJS5dPG7c4gwq9VOIKkM0/eRtYaRNYKG9cyZ+LyS4DClEmY
 pzaQabeig0ncHcCbBfaRPkwq2fH/qcg3/pcn9c8yO0GtAogCHIQRoSTaV4t4e26dPKt2
 J+40ix1dhL7f8bY+j+WCwuKnG8V6/Z8OrBwNRE8fUqsNlBYUL0T0J2gmXjjCrX5qDTjh
 JDdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=xI7CPVWDT3QMUi6LNO2ihZsKVC6mOuE8D9NTHDoSwRg=;
 b=hYwL5nL7OwxNudJVuWC+mkGeuQuflK58m0+AJTPZLmxjh/xROpe3hWBLgj1F6elJSy
 NIvyul0elpC6DLnfJoI3MKNAVnNgw3hdIUaHKBj+cV7E+A6WKBjAGFSd7Q283ISPTzXb
 /m4ZK3azMQwPhs670tQlT6wjYjbURdfxYdpgHB4nGKymDuz1Y48Dhsib7BZuUYfzHh13
 KQTfZ/0i9xRHe92V7bU4T3K3ZdFgIKWcxOwBhn8HZNNw5UXCIlIBCXHq4I4FuoQBUMY0
 BoT07dFhkSs5xPtLCHCpbaOKqtIceQZR6IPj9/Xs60bQmKojnpHaOqvMxZYLvyncR+4G
 xWyQ==
X-Gm-Message-State: AGi0PuaR8QcQkNPr9Kmp/lrHf3snniQVA9wUsEbOKOEny9mP4phn4aj1
 nb+WCSgqEsjom9uipMsbzP1gWHiKNztGWRvpkgg=
X-Google-Smtp-Source: APiQypJjnJg3+R91MxtHFmJsG6lvv1/O5kXjFyDygKT9qrQWp/wDoIt6jjVQ8Gq3+RwTYIGrFi4A9oqrPtVBx7q8Lmw=
X-Received: by 2002:a17:90a:1f4b:: with SMTP id
 y11mr2841747pjy.136.1587435304444; 
 Mon, 20 Apr 2020 19:15:04 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:14:44 -0700
In-Reply-To: <20200421021453.198187-1-samitolvanen@google.com>
Message-Id: <20200421021453.198187-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200421021453.198187-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v12 03/12] scs: add support for stack usage debugging
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, 
 Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>,
 Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
 Juri Lelli <juri.lelli@redhat.com>,
 Vincent Guittot <vincent.guittot@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_191506_857134_5E337BA8 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
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
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, clang-built-linux@googlegroups.com,
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
 kernel/scs.c | 38 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/kernel/scs.c b/kernel/scs.c
index 7eea2d97bd2d..147917e31adf 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -68,6 +68,43 @@ int scs_prepare(struct task_struct *tsk, int node)
 	return 0;
 }
 
+#ifdef CONFIG_DEBUG_STACK_USAGE
+static unsigned long __scs_used(struct task_struct *tsk)
+{
+	unsigned long *p = __scs_base(tsk);
+	unsigned long *end = __scs_magic(p);
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
+	static unsigned long highest;
+	unsigned long used = __scs_used(tsk);
+	unsigned long prev;
+	unsigned long curr = highest;
+
+	while (used > curr) {
+		prev = cmpxchg(&highest, curr, used);
+
+		if (prev == curr) {
+			pr_info("%s (%d): highest shadow stack usage: "
+				"%lu bytes\n",
+				tsk->comm, task_pid_nr(tsk), used);
+			break;
+		}
+
+		curr = prev;
+	}
+}
+#else
+static inline void scs_check_usage(struct task_struct *tsk) {}
+#endif
+
 void scs_release(struct task_struct *tsk)
 {
 	void *s;
@@ -77,6 +114,7 @@ void scs_release(struct task_struct *tsk)
 		return;
 
 	WARN_ON(scs_corrupted(tsk));
+	scs_check_usage(tsk);
 
 	scs_account(tsk, -1);
 	scs_free(s);
-- 
2.26.1.301.g55bc3eb7cb9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
