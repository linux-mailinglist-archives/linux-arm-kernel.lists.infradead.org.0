Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB0111593A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 23:16:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QWlq8ch+tXw65p8mtNCHwvdUQthqPTaHYWHGIrWgy6c=; b=cM9z4XA20Pyqti
	PnUih6ACcYeXRDFAGXzdQJLioBUqzXmhsL/611p4oAk2Sxg/UnocZ7B+T3EvZ3JthpF1L7AY5vp4p
	cjHuF/wOKRXqjbYm0GT1zX5lgt2gM7F2Z+oQks7BSEPOYoc6sXNDo1w2J82M2+2OHVHJanRApRTN+
	Ko7eA59PUkSkg/2q5mCqAZkH8r6hQL4gUrMo0u5ZDDFV8FCdT6uPhWIScwvyDeZmUU/PPUqcPiCXM
	90G3lOCF8PqJEQLRBkjdVBYkxKNnTXC7IMmwp/y0G4b7LZfdeFQdUa1hnPvtbtlIYu6w9dY+2WQT3
	3V+2p4QuFcMejk8kq7Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idLtT-0000zL-DJ; Fri, 06 Dec 2019 22:16:11 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idLrb-0006eW-LG
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 22:14:17 +0000
Received: by mail-pf1-x449.google.com with SMTP id h22so4782149pfo.18
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 14:14:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=dSkqIg9MhTEqSRuUPD+wLwf3dmJwcSH5rhdG+lQGY0Y=;
 b=SXuPCZw5St6pvwTst8kmf5KElVFLKMFMp+CAkmkUaQLus5cyU/8kqr6V5JxAIwmDV8
 RWdDAn+WZ18vV4T9eqQoonAjHW3Rzl/rq+nVdoOiKpP2KO897WS7qgb0uHjTrgJkEo1F
 0w2fuPU7iE//Mhmc1AStldjXFL0gQujdjqFyhIQqo0PX3BYn+fe6w0aILNtXks9GiWbX
 y15Zqo4dF7akKdP8o3QHjsZgpRBi+Vh9QT2pwFLxPBRKjS+x9TmrUCopcszBpJQvv4wL
 EQLbAdHZz6TZ6uqyOto/Ft9UcaQoXc6w3u8Hni2mOOXu4O7zVJWi0IlEALO+ifSUBL0a
 F4QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=dSkqIg9MhTEqSRuUPD+wLwf3dmJwcSH5rhdG+lQGY0Y=;
 b=BhETv0eChnbxZKkkG1sm9bztHT0qWC0CJD8g9ql5aiD5N24k5l70d9d7dryV1gF9Bg
 Xon3aSaOXhbi3iQxXTlPzbzXOlpObqdm0KCUWD2OAjis9GiLXijfxSqSY2YnQavMalBZ
 xwSCG9y2gzLkiV51IUIA9dCP3UQSP7OGJegpSSapatuTgCsoF5rTBxsPteRhSN8ol3F7
 q4hBpIOOgTxYXn48vNg1le8yTFTxFpfX7K5LXO5UVD63hrcM2mtCZeWLJQ6yX/lspgQY
 /nWkpL7iXO2y4VnymLsy7xET1tUxIrgBnZkHP5WFpHVmL3IRQgHXHHV2Pe6xHRsGQ8om
 yWxA==
X-Gm-Message-State: APjAAAWMQqRPqFHnmMGKyvMyp5O5BUPRquatQJuyFzkK3zh68oqlZ9HA
 ubFDHL789QU9EX9eoPZaZwPao5uQ/20SuHNCeUk=
X-Google-Smtp-Source: APXvYqwr9gV3C2U9Vw8KNYzBqn9JcBiVcajDSJ2lm7uPyamXFOot36lh81Wh0+CfZKTc60xlWZW4gj6RW7XavjkgTmE=
X-Received: by 2002:a63:4b52:: with SMTP id k18mr5960727pgl.371.1575670454000; 
 Fri, 06 Dec 2019 14:14:14 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:43 -0800
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 07/15] scs: add support for stack usage debugging
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_141415_709446_BF409397 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
2.24.0.393.g34dc348eaf-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
