Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5970316ECD3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:41:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLVnikSqKgvhiM5rL+Lq8kCk1fGxu7iDI25Wuf2DCOM=; b=sV+05yuu5XP7va
	YPkRsd2Y8O1IwIA+DIKfcJzUAbevvAUfMj7jkWnhtzV79g2mzCurvrcRuwkTeAjQseH6E1+WiNQYP
	vxKYh4G7SXs74vZEnJTaCEo0bfmT1OaWyKz7c7H2jc25o7NasoYqUY140Sy7DywZt0YEC+kOqCijA
	OSnAVdyiVVSs2gpFvJ2BNByTvjUWYugF8L78AjZmHJnvPUVqUYoovncAeFIBVtiPeCeIACZM2tOl/
	G7IFxdM3IjU63p4AzYzDIY9L0PsijXVMVvNLgsYnh3/9GH8DqV+LAkhVIijTN+yg7FuTNqpw8HWpj
	iRPDuDtBm4WByw8X71ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6eCf-0003Gw-25; Tue, 25 Feb 2020 17:41:05 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6eBX-0001Np-Tf
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:39:57 +0000
Received: by mail-qt1-x849.google.com with SMTP id y3so242582qti.15
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 09:39:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=0f/RzoyEatytyatThC+F3eOfN2v+QCCQ4NfkPjtyieo=;
 b=EyPcT46lQh9aSHtmCQLytlqbk6ZyOPPLjYX5wx5scKW+7DdNTGkOrtr8WuC5C5A+kK
 M2BFBAAJx6JVs3WDRKsHQLLRO9BpOo3t8S+EeXvYD98qVLGaIk4n8lhxVg48BDxFZjs5
 Nc6k34FDhn5xt3oOYDagP97Jkr+plBtRe7++kD55djqzKodwN+PGU4IxKwvZGNmFBXDd
 8QcN5Mdz8zndha20IVl5BB1PTfJZ9LIAOFGvbOHNSUOX3dDBBKVjDDteDI9+2tlyB8v+
 Ocw5Df3CWfNU1rJlsPH4eLU/NoQ8/uHEpJR3GieaNAhgxd6/Vv7NFoxf5lF0teYb4qv/
 fWJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=0f/RzoyEatytyatThC+F3eOfN2v+QCCQ4NfkPjtyieo=;
 b=p9n/qaAKaTGsJUwWZJ/O0OP7mEH2WXY6l+o/RmpvhEBUclLbMWoHZia4s2FrvGPI1Q
 dptef+m3emiqD9cZTbGhIM6HaF4QPRk+e5JOmS1uvGOutqmb5vFGYem7tmOoW1qoWVb1
 xB9LMdO0VxnwXgqVGIujGDTiHTdoMbTBM//LwJrE7OOmAy5ouey6Pn/woEc/UIF+33Cb
 tUqBer5XoCjR/kE5fWcDBNSMtgnU+D3T24QWyaWPzThKIY1Yn/GOR4Fu4FXEqeiS5+kS
 IWFtZwxHAADj9jUXE6XZxWmBlxa+mCH28o2JRH6MG7Jbl7jcaMVoG026M2gAEKmJGCxP
 qD0A==
X-Gm-Message-State: APjAAAVmQlFQU0EiffuxAjMQ+6zulFwKdnSOMR5dhkDjdvcAPUwgHe3A
 cQoLZfJKjTYoi34gjavfsFfUM9L71itWQDf7ptU=
X-Google-Smtp-Source: APXvYqx4xojoNdX1jmjAi/7s33/U+0mXVBajNtGJvXPQGE5mjpgdpP3ETPZQPfufHi2tnyRoYGFEBUq0dG+s+BS43pM=
X-Received: by 2002:a05:6214:1874:: with SMTP id
 eh20mr53245231qvb.122.1582652393129; 
 Tue, 25 Feb 2020 09:39:53 -0800 (PST)
Date: Tue, 25 Feb 2020 09:39:24 -0800
In-Reply-To: <20200225173933.74818-1-samitolvanen@google.com>
Message-Id: <20200225173933.74818-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200225173933.74818-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v9 03/12] scs: add support for stack usage debugging
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
 Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_093956_014864_AABB66ED 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
