Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 381257AB3C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 16:41:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7PQRkPGcoRVpa206gQK697qpSw25u618C0d5fFI77Ho=; b=WvE
	Whu2tUXC+8Z0wDQ2ruz/Jt1LJeltS93rnH5FshD9Mn8AXdmu1x7O2PKP/xh7Zx4yJLl1FWxMZrvv8
	+H2PAku2DWNaDp+EleZmx0tkWWm+wIDEdZKy8XICbEC3efNds37/awVhqt8vQHGvBuh6N2Ni5+FPJ
	HdZZ3/624pFSG+ju/e6A5N88/mxdOsRmUNjeVtmzZqAjLm2nXcX+SmoAQnOs8gEjKenK7prprWUMS
	oaOvWldrbkAmoHXmT8kXC0tHY2UfjiseB9PijbHpH1c3rWEdtGA9cp1mF+p/I/eFG9bWMmNIgP77R
	j7LP48GqJ31WIaeeJxBj+2NYLSbq+Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsTJt-0001xE-1Z; Tue, 30 Jul 2019 14:41:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsTJf-0001wi-Gt
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 14:41:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4754E28;
 Tue, 30 Jul 2019 07:41:27 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 951B13F694;
 Tue, 30 Jul 2019 07:41:26 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: sysreg: Remove unused and rotting SCTLR_ELx field
 definitions
Date: Tue, 30 Jul 2019 15:41:21 +0100
Message-Id: <20190730144121.3641-1-will@kernel.org>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_074127_600868_499E786C 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: mark.rutland@arm.com, Will Deacon <will@kernel.org>, james.morse@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Our SCTLR_ELx field definitions are somewhat over-engineered in that
they carefully define masks describing the RES0/RES1 bits and then use
these to construct further masks representing bits to be set/cleared for
the _EL1 and _EL2 registers.

However, most of the resulting definitions aren't actually used by
anybody and have subsequently started to bit-rot when new fields have
been added by the architecture, resulting in fields being part of the
RES0 mask despite being defined and used elsewhere.

Rather than fix up these masks, simply remove the unused parts entirely
so that we can drop the maintenance burden. We can always add things
back if we need them in the future.

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/sysreg.h | 29 -----------------------------
 1 file changed, 29 deletions(-)

diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 06ebcfef73df..1df45c7ffcf7 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -499,28 +499,11 @@
 #define SCTLR_EL2_RES1	((BIT(4))  | (BIT(5))  | (BIT(11)) | (BIT(16)) | \
 			 (BIT(18)) | (BIT(22)) | (BIT(23)) | (BIT(28)) | \
 			 (BIT(29)))
-#define SCTLR_EL2_RES0	((BIT(6))  | (BIT(7))  | (BIT(8))  | (BIT(9))  | \
-			 (BIT(10)) | (BIT(13)) | (BIT(14)) | (BIT(15)) | \
-			 (BIT(17)) | (BIT(20)) | (BIT(24)) | (BIT(26)) | \
-			 (BIT(27)) | (BIT(30)) | (BIT(31)) | \
-			 (0xffffefffUL << 32))
 
 #ifdef CONFIG_CPU_BIG_ENDIAN
 #define ENDIAN_SET_EL2		SCTLR_ELx_EE
-#define ENDIAN_CLEAR_EL2	0
 #else
 #define ENDIAN_SET_EL2		0
-#define ENDIAN_CLEAR_EL2	SCTLR_ELx_EE
-#endif
-
-/* SCTLR_EL2 value used for the hyp-stub */
-#define SCTLR_EL2_SET	(SCTLR_ELx_IESB   | ENDIAN_SET_EL2   | SCTLR_EL2_RES1)
-#define SCTLR_EL2_CLEAR	(SCTLR_ELx_M      | SCTLR_ELx_A    | SCTLR_ELx_C   | \
-			 SCTLR_ELx_SA     | SCTLR_ELx_I    | SCTLR_ELx_WXN | \
-			 SCTLR_ELx_DSSBS | ENDIAN_CLEAR_EL2 | SCTLR_EL2_RES0)
-
-#if (SCTLR_EL2_SET ^ SCTLR_EL2_CLEAR) != 0xffffffffffffffffUL
-#error "Inconsistent SCTLR_EL2 set/clear bits"
 #endif
 
 /* SCTLR_EL1 specific flags. */
@@ -539,16 +522,11 @@
 
 #define SCTLR_EL1_RES1	((BIT(11)) | (BIT(20)) | (BIT(22)) | (BIT(28)) | \
 			 (BIT(29)))
-#define SCTLR_EL1_RES0  ((BIT(6))  | (BIT(10)) | (BIT(13)) | (BIT(17)) | \
-			 (BIT(27)) | (BIT(30)) | (BIT(31)) | \
-			 (0xffffefffUL << 32))
 
 #ifdef CONFIG_CPU_BIG_ENDIAN
 #define ENDIAN_SET_EL1		(SCTLR_EL1_E0E | SCTLR_ELx_EE)
-#define ENDIAN_CLEAR_EL1	0
 #else
 #define ENDIAN_SET_EL1		0
-#define ENDIAN_CLEAR_EL1	(SCTLR_EL1_E0E | SCTLR_ELx_EE)
 #endif
 
 #define SCTLR_EL1_SET	(SCTLR_ELx_M    | SCTLR_ELx_C    | SCTLR_ELx_SA   |\
@@ -556,13 +534,6 @@
 			 SCTLR_EL1_DZE  | SCTLR_EL1_UCT                   |\
 			 SCTLR_EL1_NTWE | SCTLR_ELx_IESB | SCTLR_EL1_SPAN |\
 			 ENDIAN_SET_EL1 | SCTLR_EL1_UCI  | SCTLR_EL1_RES1)
-#define SCTLR_EL1_CLEAR	(SCTLR_ELx_A   | SCTLR_EL1_CP15BEN | SCTLR_EL1_ITD    |\
-			 SCTLR_EL1_UMA | SCTLR_ELx_WXN     | ENDIAN_CLEAR_EL1 |\
-			 SCTLR_ELx_DSSBS | SCTLR_EL1_NTWI  | SCTLR_EL1_RES0)
-
-#if (SCTLR_EL1_SET ^ SCTLR_EL1_CLEAR) != 0xffffffffffffffffUL
-#error "Inconsistent SCTLR_EL1 set/clear bits"
-#endif
 
 /* id_aa64isar0 */
 #define ID_AA64ISAR0_TS_SHIFT		52
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
