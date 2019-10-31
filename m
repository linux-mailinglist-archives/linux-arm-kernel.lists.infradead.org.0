Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A05EB555
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:49:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=27uWz+aT7Xl3q9OCtAWKKmn/ZlBGLAMWPzjjU+Vq5o0=; b=uGIiKbLGMoio8m
	gVwM3LiCAalmJ5FWhzYRoSuVx/RBpUeAxnwXtL5NgH/rTs9QRHq8UB0IxI9A2f2Ka9tLLa5nBJvLD
	peQ8kLyFenJXioIl8/fRUUdCskk9TfcILzVxxAsMVEiBXhgUEpdvcUagP8hVfI+/sw0CPsSBve55H
	HYyb6glYs9kzV0GAOx738RymZUvFP70kqBcD6c+S7YPdy38x99SCggYxGCfTTXUT6CrzCGWJxQbWg
	+30W0i67H874e/YGHhWMJUvrkOzGfJyazAL40LuF1RQjmNicnLpTx6TV3S9vROpZXsQ+t3+II5+jS
	Cmlw5hYiLF+jN9BLJBCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDdr-0000Jb-Jk; Thu, 31 Oct 2019 16:49:47 +0000
Received: from mail-yb1-xb49.google.com ([2607:f8b0:4864:20::b49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDbF-0006xQ-8l
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:47:06 +0000
Received: by mail-yb1-xb49.google.com with SMTP id h188so4895961yba.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 09:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=ISQCDuiClH+Ob0sv0IF5h/3w79WcDO0VBPNi/N63ddM=;
 b=L6nedrmEU6JvkHcsnA5dyzyzZUdFX15pwpo+PGFFiFEz0adILiGuaSNCBEk5zwayGV
 E9E9rgsrq5/1A2h2MtticPSYVLesH41cnymaor0lAwHnDlDWxTf5/4qQBQJbY1uWFtLZ
 C6sr+tdm50IQTwMHAjyoVlcXkjLcFiHznGojckMYMtDoi/bOtSH0IlV0Tnioy87094XS
 ezKAXvoCEbuRluKXTl7DxPY8VwUTSt5guCPWasnZX2NkFzFDs5i1SJLDNnu+b65KtE/0
 /kLy//TY9FnsnLxzNsp6fluwupXbn29fiFnAO1x5t8/AaHOuDntvEDf7xlit3hYA7ljG
 EZkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=ISQCDuiClH+Ob0sv0IF5h/3w79WcDO0VBPNi/N63ddM=;
 b=gakH+S8VB2YJp4uuHMcma5XvmFEuDHPq1D+UW1bjH5b0VVlgraJBWsBWyg+l2Qf4e4
 ph17sbc17N2mkLRYdtLIzKVmx9QpevwhdXvvyk8veu7MOHwRyNySxbkiUOi+ho9uNW8a
 MA59gOyK20cdQyE8PFc6m+drPMqDUUzYIV+f1dDSShkcdjjctB78Bz6N2d+W2YDmmX9e
 oIILTZ9uhYZ8DQAEQfc8RngRb5vMelxJgu8e/+atweZm1n5ua7BZnQPDlCMghY39xMUE
 e16R1XFp9RnsEupXaOFGkog2+t+8bk1a48JspcBjlVucfnoX0G3kRBgijLmJgNtvuMuR
 IHCQ==
X-Gm-Message-State: APjAAAU3v1U+O8xDtvH2BX32iyf6dqeRrHuuj2PTlk31XeCGY4mBVPjw
 9n8VslcHaFNNfd9owTVQEO2uNF28AiqEYSHOB/w=
X-Google-Smtp-Source: APXvYqylBnOlY6J5yphs6OUfcffeYpoUMccmhuKdcTOrwjC05s5MJ0bhS5H4FPPnPRXOHEgt796GjMyXraMpNUfDtLU=
X-Received: by 2002:a0d:e987:: with SMTP id s129mr5018878ywe.111.1572540422670; 
 Thu, 31 Oct 2019 09:47:02 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:27 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 07/17] scs: add support for stack usage debugging
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_094705_376488_EC859BBD 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b49 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
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

Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 kernel/scs.c | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/kernel/scs.c b/kernel/scs.c
index 7780fc4e29ac..67c43af627d1 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -167,6 +167,44 @@ int scs_prepare(struct task_struct *tsk, int node)
 	return 0;
 }
 
+#ifdef CONFIG_DEBUG_STACK_USAGE
+static inline unsigned long scs_used(struct task_struct *tsk)
+{
+	unsigned long *p = __scs_base(tsk);
+	unsigned long *end = scs_magic(tsk);
+	uintptr_t s = (uintptr_t)p;
+
+	while (p < end && *p)
+		p++;
+
+	return (uintptr_t)p - s;
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
+		pr_info("%s: highest shadow stack usage %lu bytes\n",
+			__func__, used);
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
 	return *scs_magic(tsk) != SCS_END_MAGIC;
@@ -181,6 +219,7 @@ void scs_release(struct task_struct *tsk)
 		return;
 
 	WARN_ON(scs_corrupted(tsk));
+	scs_check_usage(tsk);
 
 	scs_account(tsk, -1);
 	task_set_scs(tsk, NULL);
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
