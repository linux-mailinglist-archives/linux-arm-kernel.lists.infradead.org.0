Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A21E195E87
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 20:22:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMoXrH+DxS91uLP+9TRWAaQ2hcsgWgKFXLsgvr8jPCg=; b=INjqzK5AzCxKgH
	y2YqlRdLu/EWAIwIjcVwk0sWZkqc7lyR4fu0XDF88nXu2R4Vs1VPMvkS7LIzz0H7FsLxwiz/3UI4n
	sgqzq1KcWxkM+2TRdC7LsgYvHlAQZAe14y2jVD5IpVRMKqYLixQbhCzroyLiI9+B7Kl8vtUrJZ51W
	88g2pda8K73dEXYppfPZo9XReeCWglQQpryaeeH8QSssYlmCeDBJjzuZzawDOL6vPtvSzf9uk7v/w
	m1rX06de00CXtbKkekXdmGAYoSnXowN+GNjoesn/FUH46XMdW5cnsRDjmXy98Ms5gjcNo+eBOdjRH
	cIqYdX5clF9WQl90Dwow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHuYC-0001tq-3e; Fri, 27 Mar 2020 19:21:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHuXi-0001es-A2
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 19:21:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BF17A31B;
 Fri, 27 Mar 2020 12:21:21 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4046D3F85E;
 Fri, 27 Mar 2020 12:21:21 -0700 (PDT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH 2/5] arm64: asm: Override SYM_FUNC_START when building the
 kernel with BTI
Date: Fri, 27 Mar 2020 19:21:04 +0000
Message-Id: <20200327192107.18394-3-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200327192107.18394-1-broonie@kernel.org>
References: <20200327192107.18394-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_122122_389375_15C757FD 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
