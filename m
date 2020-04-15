Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CDF1AA39D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 15:14:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tHFhfgiyYii00j6T7Bp8wd382yQDzHE0Tl31okWVgBo=; b=H1/a9csM0wkoBS
	qJUNXjQEjeiI6fz1pn3SuBozCgGUz3UdCD2OCOK9eBylXAYZdLViatzGMQsJcGbUcBWu+9D0OD30I
	RvYxdLQOx+uO0p0jVwwy63In0iFYzp/aW5G8FBvYu3psBOcSR89ypwLCKjm2xDlXIIhMQ7kakgxUT
	wHnz0V+Sfpg+5gPDGTyzxnqPel5zTGWSP6uR621aobSb9nh6idO1tuaRG8n52QDIZGbxdQ7QcMJaz
	8puN94lfFmtVhC4QwOSoaTMiZPa/LKzexDynDJRdDa6nfFP5G5kw2y5zQ6AoKAT7BL4VNmez8rGaB
	1BXP5gxWaoVSF/72TEEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhrg-0002dz-3u; Wed, 15 Apr 2020 13:14:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhpt-0001BZ-Ar
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 13:12:15 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5FAEB2078B;
 Wed, 15 Apr 2020 13:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586956332;
 bh=xlCr+cwtiGT3IVqiBbw/olxxuU39Zfd5M8B/HQRV0qg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KbEQX3XZ+6PYnQD3kDLfeggYNCc3CC35Nyj9hJJQ6YKRi4hipDxyPwLYaeGKZ9DE1
 L3W4DCDO/MyALaPmGW6gxDDqsVkryF8cPJnURxvA9fqR90SCwgiIT6kdhvl6YBggo9
 26KB9RRzCMPMU2Q+1WdxUIZ5e97W9PWacOD3hiV0=
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH 07/10] arm64: asm: Provide a mechanism for generating ELF note
 for BTI
Date: Wed, 15 Apr 2020 14:07:46 +0100
Message-Id: <20200415130750.18645-8-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415130750.18645-1-broonie@kernel.org>
References: <20200415130750.18645-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_061213_490556_F4570F51 
X-CRM114-Status: GOOD (  12.24  )
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

ELF files built for BTI should have a program property note section which
identifies them as such. The linker expects to find this note in all
object files it is linking into a BTI annotated output, the compiler will
ensure that this happens for C files but for assembler files we need to do
this in the source so provide a macro which can be used for this purpose.

This is mainly for use in the VDSO which should be a normal ELF shared
library and should therefore include BTI annotations when built for BTI.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/include/asm/assembler.h | 41 ++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index 0bff325117b4..85a88df2d0fe 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -736,4 +736,45 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
 .Lyield_out_\@ :
 	.endm
 
+/*
+ * This macro emits a program property note section identifying
+ * architecture features which require special handling, mainly for
+ * use in assembly files included in the VDSO.
+ */
+
+#ifdef CONFIG_ARM64_BTI_KERNEL
+
+#define NT_GNU_PROPERTY_TYPE_0  5
+#define GNU_PROPERTY_AARCH64_FEATURE_1_AND      0xc0000000
+
+#define GNU_PROPERTY_AARCH64_FEATURE_1_BTI      (1U << 0)
+#define GNU_PROPERTY_AARCH64_FEATURE_1_PAC      (1U << 1)
+
+.macro emit_aarch64_feature_1_and
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
+	.long   GNU_PROPERTY_AARCH64_FEATURE_1_PAC | \
+		GNU_PROPERTY_AARCH64_FEATURE_1_BTI
+5:
+	.align  3
+6:
+	.popsection
+.endm
+
+#else
+
+.macro emit_aarch64_feature_1_and
+.endm
+
+#endif  /* CONFIG_ARM64_BTI_KERNEL */
+
 #endif	/* __ASM_ASSEMBLER_H */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
