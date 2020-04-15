Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDD81AA398
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 15:13:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMoXrH+DxS91uLP+9TRWAaQ2hcsgWgKFXLsgvr8jPCg=; b=i5gIVPqy3Fk9+B
	Q+fx1o08B0Wg1ohIGze+dLdqfzXBsGVC77TFUg0n6qWPrAY9caIFMNKpaPrcdxJKj6Bi64LXWR8FX
	/gw//p3mnQ1Lrjka+L+9pIXtuVpjvA0hv5CAIVmh+1LYvFICeajLMrvMACEvODUxS99DvvjmFewqL
	S+lrBPdeuLqSIhZJzKfwyB8KQ3VMqfLilVw2URvsBL7qEPpsn2qdOewEqsaFMLuG0AHWHJreV3HIN
	WfqY8MYNmS1MkRuN3T/L9ektLCWz/CnQ5hwgXS08nhoijQKY/ziL1FwcAGF4sxlEY1/UWzb1jS5rs
	frgsHMKq2s9IrXNKRWEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhqg-0001fM-O3; Wed, 15 Apr 2020 13:13:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhpf-0000zP-FI
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 13:12:02 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 83D0620775;
 Wed, 15 Apr 2020 13:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586956319;
 bh=1ClEF24KkovzjqfQabT0MQwh0TRA0Cbu70zzC6fhiNc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YojqZyTnnO+P3dFx6zCYRQ6N5kt8hxWMp6PYYpMNHDiWydIWOHsYlbWXSlJMUsiMP
 5AHg0NhUJk6dDCyhXwtexhE2YQmIzRUu62XwK7Et6Ba2J5XTi1RzOEqwMJ5DR4lp6J
 JFIwpXLFcTv+uKBr35k9K1wmxxAV64rmJpubKbMA=
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH 03/10] arm64: asm: Override SYM_FUNC_START when building the
 kernel with BTI
Date: Wed, 15 Apr 2020 14:07:42 +0100
Message-Id: <20200415130750.18645-4-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415130750.18645-1-broonie@kernel.org>
References: <20200415130750.18645-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_061159_559803_B435DED7 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Brown <broonie@kernel.org>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the kernel is built for BTI override SYM_FUNC_START and related macros
to add a BTI landing pad to the start of all global functions, ensuring that
they are BTI safe. The ; at the end of the BTI_C macro is for the benefit of
the macro-generated functions in xen-hypercall.S.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/include/asm/linkage.h | 46 ++++++++++++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/arm64/include/asm/linkage.h b/arch/arm64/include/asm/linkage.h
index ebee3113a62f..d8d5b0f77216 100644
--- a/arch/arm64/include/asm/linkage.h
+++ b/arch/arm64/include/asm/linkage.h
@@ -4,6 +4,52 @@
 #define __ALIGN		.align 2
 #define __ALIGN_STR	".align 2"
 
+#ifdef CONFIG_ARM64_BTI_KERNEL
+
+/*
+ * Since current versions of gas reject the BTI instruction unless we
+ * set the architecture version to v8.5 we use the hint instruction
+ * instead.
+ */
+#define BTI_C hint 34 ;
+#define BTI_J hint 36 ;
+
+/*
+ * When using in-kernel BTI we need to ensure that assembly functions
+ * have suitable annotations.  Override SYM_FUNC_START to insert a BTI
+ * landing pad at the start of everything.
+ */
+#define SYM_FUNC_START(name)				\
+	SYM_START(name, SYM_L_GLOBAL, SYM_A_ALIGN)	\
+	BTI_C
+
+#define SYM_FUNC_START_NOALIGN(name)			\
+	SYM_START(name, SYM_L_GLOBAL, SYM_A_NONE)	\
+	BTI_C
+
+#define SYM_FUNC_START_LOCAL(name)			\
+	SYM_START(name, SYM_L_LOCAL, SYM_A_ALIGN)	\
+	BTI_C
+
+#define SYM_FUNC_START_LOCAL_NOALIGN(name)		\
+	SYM_START(name, SYM_L_LOCAL, SYM_A_NONE)	\
+	BTI_C
+
+#define SYM_FUNC_START_WEAK(name)			\
+	SYM_START(name, SYM_L_WEAK, SYM_A_ALIGN)	\
+	BTI_C
+
+#define SYM_FUNC_START_WEAK_NOALIGN(name)		\
+	SYM_START(name, SYM_L_WEAK, SYM_A_NONE)		\
+	BTI_C
+
+#define SYM_INNER_LABEL(name, linkage)			\
+	.type name SYM_T_NONE ASM_NL			\
+	SYM_ENTRY(name, linkage, SYM_A_NONE)		\
+	BTI_J
+
+#endif
+
 /*
  * Annotate a function as position independent, i.e., safe to be called before
  * the kernel virtual mapping is activated.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
