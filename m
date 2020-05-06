Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 784B11C7AC6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 21:54:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8W+zr8y5VcktE86sH7E1iUAmYB98g8qNY+JNl6lIkY=; b=J6Gaewu4XD/RnT
	SHOPQp73N5RudJR1nHNExJESKs7A570nl2F3qAnOyMYwP84dS34Ag/s7OdCT3ztucWjYgUgS1M4KJ
	BK8TMrFexyRKuw7NsvhEVet6e7v6nrURfpLNgPPnvDNimetj+KmMNcuyROLtHb3Re2LxkEdet6EYD
	XH5kEYwKc441NeeLfUGeN64tswf9RM/ea4pZGcXs0E3f0rUNGY0JcFJ0PKAx+wVJFF+9OJ9ZqM3lR
	m9bVYMSORPySNFwYzMQ1YidwVUe1s/fXrBjDJhx0UYc+NcA5L1wP7XoawI1Wl6SAO67u8ATfiL245
	E85Jfv4FAYnKsxkSlfOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWQ7V-0006B3-MH; Wed, 06 May 2020 19:54:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWQ5Y-0004G1-0A
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 19:52:18 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 078FD2078C;
 Wed,  6 May 2020 19:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588794735;
 bh=Snqv5XILp0SjBXZKuv7YsW0gFPHUcpmfA9E1VqIUnqs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HzNTEByNB4NNwRzd5Vrze8WC7Wad7WHCdGIi7BmQpmOZ+4bGaREBeB0pMrA3DtIcW
 TpESbRP60tbWhSGh+Dse+DytqDyB4LbSWJOaQsyRZv7Ya7OwwWG/3ZRMLjOXSwhEj5
 UhooOYfE47EaSfAyEL16PapwOAW0Rxc4d5kD+G9Q=
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v3 08/11] arm64: asm: Provide a mechanism for generating ELF
 note for BTI
Date: Wed,  6 May 2020 20:51:35 +0100
Message-Id: <20200506195138.22086-9-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200506195138.22086-1-broonie@kernel.org>
References: <20200506195138.22086-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_125216_082910_A71CE7F1 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Mark Brown <broonie@kernel.org>, Amit Kachhap <amit.kachhap@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ELF files built for BTI should have a program property note section which
identifies them as such. The linker expects to find this note in all
object files it is linking into a BTI annotated output, the compiler will
ensure that this happens for C files but for assembler files we need to do
this in the source so provide a macro which can be used for this purpose.
To support likely future requirements for additional notes we split the
defininition of the flags to set for BTI code from the macro that creates
the note itself.

This is mainly for use in the vDSO which should be a normal ELF shared
library and should therefore include BTI annotations when built for BTI.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/include/asm/assembler.h | 50 ++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index 0bff325117b4..54d181177656 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -736,4 +736,54 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
 .Lyield_out_\@ :
 	.endm
 
+/*
+ * This macro emits a program property note section identifying
+ * architecture features which require special handling, mainly for
+ * use in assembly files included in the VDSO.
+ */
+
+#define NT_GNU_PROPERTY_TYPE_0  5
+#define GNU_PROPERTY_AARCH64_FEATURE_1_AND      0xc0000000
+
+#define GNU_PROPERTY_AARCH64_FEATURE_1_BTI      (1U << 0)
+#define GNU_PROPERTY_AARCH64_FEATURE_1_PAC      (1U << 1)
+
+#ifdef CONFIG_ARM64_BTI_KERNEL
+#define GNU_PROPERTY_AARCH64_FEATURE_1_DEFAULT		\
+		((GNU_PROPERTY_AARCH64_FEATURE_1_BTI |	\
+		  GNU_PROPERTY_AARCH64_FEATURE_1_PAC))
+#endif
+
+#ifdef GNU_PROPERTY_AARCH64_FEATURE_1_DEFAULT
+.macro emit_aarch64_feature_1_and, feat=GNU_PROPERTY_AARCH64_FEATURE_1_DEFAULT
+	.pushsection .note.gnu.property, "a"
+	.align  3
+	.long   2f - 1f
+	.long   6f - 3f
+	.long   NT_GNU_PROPERTY_TYPE_0
+1:      .string "GNU"
+2:
+	.align  3
+3:      .long   GNU_PROPERTY_AARCH64_FEATURE_1_AND
+	.long   5f - 4f
+4:
+	/*
+	 * This is described with an array of char in the Linux API
+	 * spec but the text and all other usage (including binutils,
+	 * clang and GCC) treat this as a 32 bit value so no swizzling
+	 * is required for big endian.
+	 */
+	.long   \feat
+5:
+	.align  3
+6:
+	.popsection
+.endm
+
+#else
+.macro emit_aarch64_feature_1_and, feat=0
+.endm
+
+#endif /* GNU_PROPERTY_AARCH64_FEATURE_1_DEFAULT */
+
 #endif	/* __ASM_ASSEMBLER_H */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
