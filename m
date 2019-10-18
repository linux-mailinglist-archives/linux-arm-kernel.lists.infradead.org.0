Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61351DCDC7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 20:18:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=elMn+nLvUnk28o56jEKxpnCgFyzTLSnBOCW1AyhPJ/Q=; b=HZjJ0yXQX0WfZ9
	JZHnXD+MomoC3pdBg7GNfYNYXb3lCRl5LmYaMwXPx9Gw/jOOp1rQ1nQ/Toj+OUsOTjO/B3a9f98JH
	BXrMHtfqF7LThGpQNyD7nuYF56ia5Y847Pl9t83Gq0Fvec7vypgaouc8N0JoJ/CwF73vlR6EJziXb
	LfCamKtiAw084LlPlKxs13xAH8ynOETi4NuEZ/4kVilVyKELgBisN8WRfpHsN+Mqw25CT7S8ss/ES
	kwZhznXhnvbt4oIK+cD2mAL5ZL7zODAvK7CT1Uhmzb2M+DUrFevYUxMKIDLIoeieU1EeV1Hf40ZdO
	JDQFJSPb0UZrcu3Hi8XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLWpI-0008NY-Sj; Fri, 18 Oct 2019 18:18:12 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLWo5-0007Ry-Jj
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:17:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 053E715A1;
 Fri, 18 Oct 2019 11:16:50 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1D48A3F718;
 Fri, 18 Oct 2019 11:16:49 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	catalin.marinas@arm.com
Subject: [PATCH v2 2/8] arm64: Import latest Cortex Strings memcpy
 implementation
Date: Fri, 18 Oct 2019 19:16:36 +0100
Message-Id: <78649f677030c325afc323b622087c0beba53ca6.1571421836.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1571421836.git.robin.murphy@arm.com>
References: <cover.1571421836.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_111657_753363_EEDEB025 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Sam Tebbs <sam.tebbs@arm.com>, sam-tebbs@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sam Tebbs <sam.tebbs@arm.com>

Import the latest Cortex Strings memcpy implementation into memcpy,
copy_{from, to and in}_user. The implementation of the user routines is
separated into two forms: one for when UAO is enabled and one for when
UAO is disabled, with the two being chosen between with a runtime patch.
This avoids executing the many NOPs emitted when UAO is disabled.

The upstream source is src/aarch64/memcpy.S as of commit 9e048b995da4 in
https://git.linaro.org/toolchain/cortex-strings.git.

Signed-off-by: Sam Tebbs <sam.tebbs@arm.com>
[ rm: add UAO fixups, streamline copy_exit paths, expand commit message ]
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/include/asm/alternative.h |  36 ----
 arch/arm64/lib/copy_from_user.S      | 115 +++++++---
 arch/arm64/lib/copy_in_user.S        | 130 +++++++++---
 arch/arm64/lib/copy_template.S       | 304 +++++++++++++--------------
 arch/arm64/lib/copy_template_user.S  |  24 +++
 arch/arm64/lib/copy_to_user.S        | 113 +++++++---
 arch/arm64/lib/copy_user_fixup.S     |  14 ++
 arch/arm64/lib/memcpy.S              |  48 +++--
 8 files changed, 495 insertions(+), 289 deletions(-)
 create mode 100644 arch/arm64/lib/copy_template_user.S
 create mode 100644 arch/arm64/lib/copy_user_fixup.S

diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
index b9f8d787eea9..01f19f3cb46a 100644
--- a/arch/arm64/include/asm/alternative.h
+++ b/arch/arm64/include/asm/alternative.h
@@ -220,36 +220,6 @@ alternative_endif
  * unprivileged instructions, and USER() only works for single instructions.
  */
 #ifdef CONFIG_ARM64_UAO
-	.macro uao_ldp l, reg1, reg2, addr, post_inc
-		alternative_if_not ARM64_HAS_UAO
-8888:			ldp	\reg1, \reg2, [\addr], \post_inc;
-8889:			nop;
-			nop;
-		alternative_else
-			ldtr	\reg1, [\addr];
-			ldtr	\reg2, [\addr, #8];
-			add	\addr, \addr, \post_inc;
-		alternative_endif
-
-		_asm_extable	8888b,\l;
-		_asm_extable	8889b,\l;
-	.endm
-
-	.macro uao_stp l, reg1, reg2, addr, post_inc
-		alternative_if_not ARM64_HAS_UAO
-8888:			stp	\reg1, \reg2, [\addr], \post_inc;
-8889:			nop;
-			nop;
-		alternative_else
-			sttr	\reg1, [\addr];
-			sttr	\reg2, [\addr, #8];
-			add	\addr, \addr, \post_inc;
-		alternative_endif
-
-		_asm_extable	8888b,\l;
-		_asm_extable	8889b,\l;
-	.endm
-
 	.macro uao_user_alternative l, inst, alt_inst, reg, addr, post_inc
 		alternative_if_not ARM64_HAS_UAO
 8888:			\inst	\reg, [\addr], \post_inc;
@@ -262,12 +232,6 @@ alternative_endif
 		_asm_extable	8888b,\l;
 	.endm
 #else
-	.macro uao_ldp l, reg1, reg2, addr, post_inc
-		USER(\l, ldp \reg1, \reg2, [\addr], \post_inc)
-	.endm
-	.macro uao_stp l, reg1, reg2, addr, post_inc
-		USER(\l, stp \reg1, \reg2, [\addr], \post_inc)
-	.endm
 	.macro uao_user_alternative l, inst, alt_inst, reg, addr, post_inc
 		USER(\l, \inst \reg, [\addr], \post_inc)
 	.endm
diff --git a/arch/arm64/lib/copy_from_user.S b/arch/arm64/lib/copy_from_user.S
index 680e74409ff9..8928c38d8c76 100644
--- a/arch/arm64/lib/copy_from_user.S
+++ b/arch/arm64/lib/copy_from_user.S
@@ -20,51 +20,114 @@
  *	x0 - bytes not copied
  */
 
-	.macro ldrb1 ptr, regB, val
-	uao_user_alternative 9998f, ldrb, ldtrb, \ptr, \regB, \val
+	.macro ldrb1 reg, ptr, offset=0
+	8888: ldtrb \reg, [\ptr, \offset]
+	_asm_extable_faultaddr	8888b,9998f;
 	.endm
 
-	.macro strb1 ptr, regB, val
-	strb \ptr, [\regB], \val
+	.macro strb1 reg, ptr, offset=0
+	strb \reg, [\ptr, \offset]
 	.endm
 
-	.macro ldrh1 ptr, regB, val
-	uao_user_alternative 9998f, ldrh, ldtrh, \ptr, \regB, \val
+	.macro ldrb1_reg reg, ptr, offset
+	add \ptr, \ptr, \offset
+	8888: ldtrb \reg, [\ptr]
+	sub \ptr, \ptr, \offset
+	_asm_extable_faultaddr	8888b,9998f;
 	.endm
 
-	.macro strh1 ptr, regB, val
-	strh \ptr, [\regB], \val
+	.macro strb1_reg reg, ptr, offset
+	strb \reg, [\ptr, \offset]
 	.endm
 
-	.macro ldr1 ptr, regB, val
-	uao_user_alternative 9998f, ldr, ldtr, \ptr, \regB, \val
+	.macro ldr1 reg, ptr, offset=0
+	8888: ldtr \reg, [\ptr, \offset]
+	_asm_extable_faultaddr	8888b,9998f;
 	.endm
 
-	.macro str1 ptr, regB, val
-	str \ptr, [\regB], \val
+	.macro str1 reg, ptr, offset=0
+	str \reg, [\ptr, \offset]
 	.endm
 
-	.macro ldp1 ptr, regB, regC, val
-	uao_ldp 9998f, \ptr, \regB, \regC, \val
+	.macro ldp1 regA, regB, ptr, offset=0
+	8888: ldtr \regA, [\ptr, \offset]
+	8889: ldtr \regB, [\ptr, \offset + 8]
+	_asm_extable_faultaddr	8888b,9998f;
+	_asm_extable_faultaddr	8889b,9998f;
 	.endm
 
-	.macro stp1 ptr, regB, regC, val
-	stp \ptr, \regB, [\regC], \val
+	.macro stp1 regA, regB, ptr, offset=0
+	stp \regA, \regB, [\ptr, \offset]
+	.endm
+
+	.macro ldp1_pre regA, regB, ptr, offset
+	8888: ldtr \regA, [\ptr, \offset]
+	8889: ldtr \regB, [\ptr, \offset + 8]
+	add \ptr, \ptr, \offset
+	_asm_extable_faultaddr	8888b,9998f;
+	_asm_extable_faultaddr	8889b,9998f;
+	.endm
+
+	.macro stp1_pre regA, regB, ptr, offset
+	stp \regA, \regB, [\ptr, \offset]!
+	.endm
+
+	.macro ldrb1_nuao reg, ptr, offset=0
+	8888: ldrb \reg, [\ptr, \offset]
+	_asm_extable_faultaddr	8888b,9998f;
+	.endm
+
+	.macro strb1_nuao reg, ptr, offset=0
+	strb \reg, [\ptr, \offset]
+	.endm
+
+	.macro ldrb1_nuao_reg reg, ptr, offset=0
+	8888: ldrb \reg, [\ptr, \offset]
+	_asm_extable_faultaddr	8888b,9998f;
+	.endm
+
+	.macro strb1_nuao_reg reg, ptr, offset=0
+	strb \reg, [\ptr, \offset]
+	.endm
+
+	.macro ldr1_nuao reg, ptr, offset=0
+	8888: ldr \reg, [\ptr, \offset]
+	_asm_extable_faultaddr	8888b,9998f;
+	.endm
+
+	.macro str1_nuao reg, ptr, offset=0
+	str \reg, [\ptr, \offset]
+	.endm
+
+	.macro ldp1_nuao  regA, regB, ptr, offset=0
+	8888: ldp \regA, \regB, [\ptr, \offset]
+	_asm_extable_faultaddr	8888b,9998f;
+	.endm
+
+	.macro stp1_nuao regA, regB, ptr, offset=0
+	stp \regA, \regB, [\ptr, \offset]
+	.endm
+
+	.macro ldp1_pre_nuao regA, regB, ptr, offset
+	8888: ldp \regA, \regB, [\ptr, \offset]!
+	_asm_extable_faultaddr	8888b,9998f;
+	.endm
+
+	.macro stp1_pre_nuao regA, regB, ptr, offset
+	stp \regA, \regB, [\ptr, \offset]!
+	.endm
+
+	.macro copy_exit
+	b	.Luaccess_finish
 	.endm
 
-end	.req	x5
 ENTRY(__arch_copy_from_user)
 	uaccess_enable_not_uao x3, x4, x5
-	add	end, x0, x2
-#include "copy_template.S"
+#include "copy_template_user.S"
+.Luaccess_finish:
 	uaccess_disable_not_uao x3, x4
-	mov	x0, #0				// Nothing to copy
+	mov	x0, #0
 	ret
 ENDPROC(__arch_copy_from_user)
 EXPORT_SYMBOL(__arch_copy_from_user)
-
-	.section .fixup,"ax"
-	.align	2
-9998:	sub	x0, end, dst			// bytes not copied
-	ret
-	.previous
+#include "copy_user_fixup.S"
diff --git a/arch/arm64/lib/copy_in_user.S b/arch/arm64/lib/copy_in_user.S
index 0bedae3f3792..2aecdc300c8d 100644
--- a/arch/arm64/lib/copy_in_user.S
+++ b/arch/arm64/lib/copy_in_user.S
@@ -21,52 +21,132 @@
  * Returns:
  *	x0 - bytes not copied
  */
-	.macro ldrb1 ptr, regB, val
-	uao_user_alternative 9998f, ldrb, ldtrb, \ptr, \regB, \val
+
+	.macro ldrb1 reg, ptr, offset=0
+	8888: ldtrb \reg, [\ptr, \offset]
+	_asm_extable_faultaddr	8888b,9998f;
 	.endm
 
-	.macro strb1 ptr, regB, val
-	uao_user_alternative 9998f, strb, sttrb, \ptr, \regB, \val
+	.macro strb1 reg, ptr, offset=0
+	8888: sttrb \reg, [\ptr, \offset]
+	_asm_extable_faultaddr	8888b,9998f;
 	.endm
 
-	.macro ldrh1 ptr, regB, val
-	uao_user_alternative 9998f, ldrh, ldtrh, \ptr, \regB, \val
+	.macro ldrb1_reg reg, ptr, offset
+	add \ptr, \ptr, \offset
+	8888: ldtrb \reg, [\ptr]
+	sub \ptr, \ptr, \offset
+	_asm_extable_faultaddr	8888b,9998f;
 	.endm
 
-	.macro strh1 ptr, regB, val
-	uao_user_alternative 9998f, strh, sttrh, \ptr, \regB, \val
+	.macro strb1_reg reg, ptr, offset
+	add \ptr, \ptr, \offset
+	8888: sttrb \reg, [\ptr]
+	sub \ptr, \ptr, \offset
+	_asm_extable_faultaddr	8888b,9998f;
 	.endm
 
-	.macro ldr1 ptr, regB, val
-	uao_user_alternative 9998f, ldr, ldtr, \ptr, \regB, \val
+	.macro ldr1 reg, ptr, offset=0
+	8888: ldtr \reg, [\ptr, \offset]
+	_asm_extable_faultaddr	8888b,9998f;
 	.endm
 
-	.macro str1 ptr, regB, val
-	uao_user_alternative 9998f, str, sttr, \ptr, \regB, \val
+	.macro str1 reg, ptr, offset=0
+	8888: sttr \reg, [\ptr, \offset]
+	_asm_extable_faultaddr	8888b,9998f;
 	.endm
 
-	.macro ldp1 ptr, regB, regC, val
-	uao_ldp 9998f, \ptr, \regB, \regC, \val
+	.macro ldp1 regA, regB, ptr, offset=0
+	8888: ldtr \regA, [\ptr, \offset]
+	8889: ldtr \regB, [\ptr, \offset + 8]
+	_asm_extable_faultaddr	8888b,9998f;
+	_asm_extable_faultaddr	8889b,9998f;
 	.endm
 
-	.macro stp1 ptr, regB, regC, val
-	uao_stp 9998f, \ptr, \regB, \regC, \val
+	.macro stp1 regA, regB, ptr, offset=0
+	8888: sttr \regA, [\ptr, \offset]
+	8889: sttr \regB, [\ptr, \offset + 8]
+	_asm_extable_faultaddr	8888b,9998f;
+	_asm_extable_faultaddr	8889b,9998f;
 	.endm
 
-end	.req	x5
+	.macro ldp1_pre regA, regB, ptr, offset
+	8888: ldtr \regA, [\ptr, \offset]
+	8889: ldtr \regB, [\ptr, \offset + 8]
+	add \ptr, \ptr, \offset
+	_asm_extable_faultaddr	8888b,9998f;
+	_asm_extable_faultaddr	8889b,9998f;
+	.endm
+
+	.macro stp1_pre regA, regB, ptr, offset
+	8888: sttr \regA, [\ptr, \offset]
+	8889: sttr \regB, [\ptr, \offset + 8]
+	add \ptr, \ptr, \offset
+	_asm_extable_faultaddr	8888b,9998f;
+	_asm_extable_faultaddr	8889b,9998f;
+	.endm
+
+	.macro ldrb1_nuao reg, ptr, offset=0
+	8888: ldrb \reg, [\ptr, \offset]
+	_asm_extable_faultaddr	8888b,9998f;
+	.endm
+
+	.macro strb1_nuao reg, ptr, offset=0
+	8888: strb \reg, [\ptr, \offset]
+	_asm_extable_faultaddr	8888b,9998f;
+	.endm
+
+	.macro ldrb1_nuao_reg reg, ptr, offset=0
+	8888: ldrb \reg, [\ptr, \offset]
+	_asm_extable_faultaddr	8888b,9998f;
+	.endm
+
+	.macro strb1_nuao_reg reg, ptr, offset=0
+	8888: strb \reg, [\ptr, \offset]
+	_asm_extable_faultaddr	8888b,9998f;
+	.endm
+
+	.macro ldr1_nuao reg, ptr, offset=0
+	8888: ldr \reg, [\ptr, \offset]
+	_asm_extable_faultaddr	8888b,9998f;
+	.endm
+
+	.macro str1_nuao reg, ptr, offset=0
+	8888: str \reg, [\ptr, \offset]
+	_asm_extable_faultaddr	8888b,9998f;
+	.endm
+
+	.macro ldp1_nuao  regA, regB, ptr, offset=0
+	8888: ldp \regA, \regB, [\ptr, \offset]
+	_asm_extable_faultaddr	8888b,9998f;
+	.endm
+
+	.macro stp1_nuao regA, regB, ptr, offset=0
+	8888: stp \regA, \regB, [\ptr, \offset]
+	_asm_extable_faultaddr	8888b,9998f;
+	.endm
+
+	.macro ldp1_pre_nuao regA, regB, ptr, offset
+	8888: ldp \regA, \regB, [\ptr, \offset]!
+	_asm_extable_faultaddr	8888b,9998f;
+	.endm
+
+	.macro stp1_pre_nuao regA, regB, ptr, offset
+	8888: stp \regA, \regB, [\ptr, \offset]!
+	_asm_extable_faultaddr	8888b,9998f;
+	.endm
+
+	.macro copy_exit
+	b	.Luaccess_finish
+	.endm
 
 ENTRY(__arch_copy_in_user)
 	uaccess_enable_not_uao x3, x4, x5
-	add	end, x0, x2
-#include "copy_template.S"
+#include "copy_template_user.S"
+.Luaccess_finish:
 	uaccess_disable_not_uao x3, x4
 	mov	x0, #0
 	ret
 ENDPROC(__arch_copy_in_user)
 EXPORT_SYMBOL(__arch_copy_in_user)
-
-	.section .fixup,"ax"
-	.align	2
-9998:	sub	x0, end, dst			// bytes not copied
-	ret
-	.previous
+#include "copy_user_fixup.S"
diff --git a/arch/arm64/lib/copy_template.S b/arch/arm64/lib/copy_template.S
index 488df234c49a..c03694a6a342 100644
--- a/arch/arm64/lib/copy_template.S
+++ b/arch/arm64/lib/copy_template.S
@@ -1,13 +1,12 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * Copyright (C) 2013 ARM Ltd.
- * Copyright (C) 2013 Linaro.
+ * Copyright (c) 2012 Linaro Limited. All rights reserved.
+ * Copyright (c) 2015 ARM Ltd. All rights reserved.
  *
- * This code is based on glibc cortex strings work originally authored by Linaro
- * be found @
+ * This code is based on glibc Cortex Strings work originally authored by
+ * Linaro, found at:
  *
- * http://bazaar.launchpad.net/~linaro-toolchain-dev/cortex-strings/trunk/
- * files/head:/src/aarch64/
+ * https://git.linaro.org/toolchain/cortex-strings.git
  */
 
 
@@ -21,161 +20,146 @@
  * Returns:
  *	x0 - dest
  */
-dstin	.req	x0
-src	.req	x1
-count	.req	x2
-tmp1	.req	x3
-tmp1w	.req	w3
-tmp2	.req	x4
-tmp2w	.req	w4
-dst	.req	x6
+ #define dstin	x0
+ #define src	x1
+ #define count	x2
+ #define dst	x3
+ #define srcend	x4
+ #define dstend	x5
+ #define A_l	x6
+ #define A_lw	w6
+ #define A_h	x7
+ #define A_hw	w7
+ #define B_l	x8
+ #define B_lw	w8
+ #define B_h	x9
+ #define C_l	x10
+ #define C_h	x11
+ #define D_l	x12
+ #define D_h	x13
+ #define E_l	src
+ #define E_h	count
+ #define F_l	srcend
+ #define F_h	dst
+ #define tmp1	x9
 
-A_l	.req	x7
-A_h	.req	x8
-B_l	.req	x9
-B_h	.req	x10
-C_l	.req	x11
-C_h	.req	x12
-D_l	.req	x13
-D_h	.req	x14
+	prfm	PLDL1KEEP, [src]
+	add	srcend, src, count
+	add	dstend, dstin, count
+	cmp	count, 16
+	b.ls	L(copy16)
+	cmp	count, 96
+	b.hi	L(copy_long)
 
-	mov	dst, dstin
-	cmp	count, #16
-	/*When memory length is less than 16, the accessed are not aligned.*/
-	b.lo	.Ltiny15
-
-	neg	tmp2, src
-	ands	tmp2, tmp2, #15/* Bytes to reach alignment. */
-	b.eq	.LSrcAligned
-	sub	count, count, tmp2
-	/*
-	* Copy the leading memory data from src to dst in an increasing
-	* address order.By this way,the risk of overwriting the source
-	* memory data is eliminated when the distance between src and
-	* dst is less than 16. The memory accesses here are alignment.
-	*/
-	tbz	tmp2, #0, 1f
-	ldrb1	tmp1w, src, #1
-	strb1	tmp1w, dst, #1
+	/* Medium copies: 17..96 bytes.  */
+	sub	tmp1, count, 1
+	ldp1	A_l, A_h, src
+	tbnz	tmp1, 6, L(copy96)
+	ldp1	D_l, D_h, srcend, -16
+	tbz	tmp1, 5, 1f
+	ldp1	B_l, B_h, src, 16
+	ldp1	C_l, C_h, srcend, -32
+	stp1	B_l, B_h, dstin, 16
+	stp1	C_l, C_h, dstend, -32
 1:
-	tbz	tmp2, #1, 2f
-	ldrh1	tmp1w, src, #2
-	strh1	tmp1w, dst, #2
+	stp1	A_l, A_h, dstin
+	stp1	D_l, D_h, dstend, -16
+	copy_exit
+
+	.p2align 4
+	/* Small copies: 0..16 bytes.  */
+L(copy16):
+	cmp	count, 8
+	b.lo	1f
+	ldr1	A_l, src
+	ldr1	A_h, srcend, -8
+	str1	A_l, dstin
+	str1	A_h, dstend, -8
+	copy_exit
+	.p2align 4
+1:
+	tbz	count, 2, 1f
+	ldr1	A_lw, src
+	ldr1	A_hw, srcend, -4
+	str1	A_lw, dstin
+	str1	A_hw, dstend, -4
+	copy_exit
+
+	/* Copy 0..3 bytes.  Use a branchless sequence that copies the same
+	   byte 3 times if count==1, or the 2nd byte twice if count==2.  */
+1:
+	cbz	count, 2f
+	lsr	tmp1, count, 1
+	ldrb1	A_lw, src
+	ldrb1	A_hw, srcend, -1
+	ldrb1_reg	B_lw, src, tmp1
+	strb1	A_lw, dstin
+	strb1_reg	B_lw, dstin, tmp1
+	strb1	A_hw, dstend, -1
+2:	copy_exit
+
+	.p2align 4
+	/* Copy 64..96 bytes.  Copy 64 bytes from the start and
+	   32 bytes from the end.  */
+L(copy96):
+	ldp1	B_l, B_h, src, 16
+	ldp1	C_l, C_h, src, 32
+	ldp1	D_l, D_h, src, 48
+	ldp1	E_l, E_h, srcend, -32
+	ldp1	F_l, F_h, srcend, -16
+	stp1	A_l, A_h, dstin
+	stp1	B_l, B_h, dstin, 16
+	stp1	C_l, C_h, dstin, 32
+	stp1	D_l, D_h, dstin, 48
+	stp1	E_l, E_h, dstend, -32
+	stp1	F_l, F_h, dstend, -16
+	copy_exit
+
+	/* Align DST to 16 byte alignment so that we don't cross cache line
+	   boundaries on both loads and stores.	 There are at least 96 bytes
+	   to copy, so copy 16 bytes unaligned and then align.	The loop
+	   copies 64 bytes per iteration and prefetches one iteration ahead.  */
+
+	.p2align 4
+L(copy_long):
+	and	tmp1, dstin, 15
+	bic	dst, dstin, 15
+	ldp1	D_l, D_h, src
+	sub	src, src, tmp1
+	add	count, count, tmp1	/* Count is now 16 too large.  */
+	ldp1	A_l, A_h, src, 16
+	stp1	D_l, D_h, dstin
+	ldp1	B_l, B_h, src, 32
+	ldp1	C_l, C_h, src, 48
+	ldp1_pre	D_l, D_h, src, 64
+	subs	count, count, 128 + 16	/* Test and readjust count.  */
+	b.ls	2f
+1:
+	stp1	A_l, A_h, dst, 16
+	ldp1	A_l, A_h, src, 16
+	stp1	B_l, B_h, dst, 32
+	ldp1	B_l, B_h, src, 32
+	stp1	C_l, C_h, dst, 48
+	ldp1	C_l, C_h, src, 48
+	stp1_pre	D_l, D_h, dst, 64
+	ldp1_pre	D_l, D_h, src, 64
+	subs	count, count, 64
+	b.hi	1b
+
+	/* Write the last full set of 64 bytes.	 The remainder is at most 64
+	   bytes, so it is safe to always copy 64 bytes from the end even if
+	   there is just 1 byte left.  */
 2:
-	tbz	tmp2, #2, 3f
-	ldr1	tmp1w, src, #4
-	str1	tmp1w, dst, #4
-3:
-	tbz	tmp2, #3, .LSrcAligned
-	ldr1	tmp1, src, #8
-	str1	tmp1, dst, #8
-
-.LSrcAligned:
-	cmp	count, #64
-	b.ge	.Lcpy_over64
-	/*
-	* Deal with small copies quickly by dropping straight into the
-	* exit block.
-	*/
-.Ltail63:
-	/*
-	* Copy up to 48 bytes of data. At this point we only need the
-	* bottom 6 bits of count to be accurate.
-	*/
-	ands	tmp1, count, #0x30
-	b.eq	.Ltiny15
-	cmp	tmp1w, #0x20
-	b.eq	1f
-	b.lt	2f
-	ldp1	A_l, A_h, src, #16
-	stp1	A_l, A_h, dst, #16
-1:
-	ldp1	A_l, A_h, src, #16
-	stp1	A_l, A_h, dst, #16
-2:
-	ldp1	A_l, A_h, src, #16
-	stp1	A_l, A_h, dst, #16
-.Ltiny15:
-	/*
-	* Prefer to break one ldp/stp into several load/store to access
-	* memory in an increasing address order,rather than to load/store 16
-	* bytes from (src-16) to (dst-16) and to backward the src to aligned
-	* address,which way is used in original cortex memcpy. If keeping
-	* the original memcpy process here, memmove need to satisfy the
-	* precondition that src address is at least 16 bytes bigger than dst
-	* address,otherwise some source data will be overwritten when memove
-	* call memcpy directly. To make memmove simpler and decouple the
-	* memcpy's dependency on memmove, withdrew the original process.
-	*/
-	tbz	count, #3, 1f
-	ldr1	tmp1, src, #8
-	str1	tmp1, dst, #8
-1:
-	tbz	count, #2, 2f
-	ldr1	tmp1w, src, #4
-	str1	tmp1w, dst, #4
-2:
-	tbz	count, #1, 3f
-	ldrh1	tmp1w, src, #2
-	strh1	tmp1w, dst, #2
-3:
-	tbz	count, #0, .Lexitfunc
-	ldrb1	tmp1w, src, #1
-	strb1	tmp1w, dst, #1
-
-	b	.Lexitfunc
-
-.Lcpy_over64:
-	subs	count, count, #128
-	b.ge	.Lcpy_body_large
-	/*
-	* Less than 128 bytes to copy, so handle 64 here and then jump
-	* to the tail.
-	*/
-	ldp1	A_l, A_h, src, #16
-	stp1	A_l, A_h, dst, #16
-	ldp1	B_l, B_h, src, #16
-	ldp1	C_l, C_h, src, #16
-	stp1	B_l, B_h, dst, #16
-	stp1	C_l, C_h, dst, #16
-	ldp1	D_l, D_h, src, #16
-	stp1	D_l, D_h, dst, #16
-
-	tst	count, #0x3f
-	b.ne	.Ltail63
-	b	.Lexitfunc
-
-	/*
-	* Critical loop.  Start at a new cache line boundary.  Assuming
-	* 64 bytes per line this ensures the entire loop is in one line.
-	*/
-	.p2align	L1_CACHE_SHIFT
-.Lcpy_body_large:
-	/* pre-get 64 bytes data. */
-	ldp1	A_l, A_h, src, #16
-	ldp1	B_l, B_h, src, #16
-	ldp1	C_l, C_h, src, #16
-	ldp1	D_l, D_h, src, #16
-1:
-	/*
-	* interlace the load of next 64 bytes data block with store of the last
-	* loaded 64 bytes data.
-	*/
-	stp1	A_l, A_h, dst, #16
-	ldp1	A_l, A_h, src, #16
-	stp1	B_l, B_h, dst, #16
-	ldp1	B_l, B_h, src, #16
-	stp1	C_l, C_h, dst, #16
-	ldp1	C_l, C_h, src, #16
-	stp1	D_l, D_h, dst, #16
-	ldp1	D_l, D_h, src, #16
-	subs	count, count, #64
-	b.ge	1b
-	stp1	A_l, A_h, dst, #16
-	stp1	B_l, B_h, dst, #16
-	stp1	C_l, C_h, dst, #16
-	stp1	D_l, D_h, dst, #16
-
-	tst	count, #0x3f
-	b.ne	.Ltail63
-.Lexitfunc:
+	ldp1	E_l, E_h, srcend, -64
+	stp1	A_l, A_h, dst, 16
+	ldp1	A_l, A_h, srcend, -48
+	stp1	B_l, B_h, dst, 32
+	ldp1	B_l, B_h, srcend, -32
+	stp1	C_l, C_h, dst, 48
+	ldp1	C_l, C_h, srcend, -16
+	stp1	D_l, D_h, dst, 64
+	stp1	E_l, E_h, dstend, -64
+	stp1	A_l, A_h, dstend, -48
+	stp1	B_l, B_h, dstend, -32
+	stp1	C_l, C_h, dstend, -16
+	copy_exit
diff --git a/arch/arm64/lib/copy_template_user.S b/arch/arm64/lib/copy_template_user.S
new file mode 100644
index 000000000000..3db24dcdab05
--- /dev/null
+++ b/arch/arm64/lib/copy_template_user.S
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#define L(l) .L ## l
+
+	alternative_if_not ARM64_HAS_UAO
+	b	L(copy_non_uao)
+	alternative_else_nop_endif
+#include "copy_template.S"
+
+#define ldp1 ldp1_nuao
+#define ldp1_pre ldp1_pre_nuao
+#define stp1 stp1_nuao
+#define stp1_pre stp1_pre_nuao
+#define ldr1 ldr1_nuao
+#define str1 str1_nuao
+#define ldrb1 ldrb1_nuao
+#define strb1 strb1_nuao
+#define ldrb1_reg ldrb1_nuao_reg
+#define strb1_reg strb1_nuao_reg
+
+L(copy_non_uao):
+#undef L
+#define L(l) .Lnuao ## l
+#include "copy_template.S"
diff --git a/arch/arm64/lib/copy_to_user.S b/arch/arm64/lib/copy_to_user.S
index 2d88c736e8f2..d49db097bc31 100644
--- a/arch/arm64/lib/copy_to_user.S
+++ b/arch/arm64/lib/copy_to_user.S
@@ -19,51 +19,114 @@
  * Returns:
  *	x0 - bytes not copied
  */
-	.macro ldrb1 ptr, regB, val
-	ldrb  \ptr, [\regB], \val
+
+	.macro ldrb1 reg, ptr, offset=0
+	ldrb \reg, [\ptr, \offset]
 	.endm
 
-	.macro strb1 ptr, regB, val
-	uao_user_alternative 9998f, strb, sttrb, \ptr, \regB, \val
+	.macro strb1 reg, ptr, offset=0
+	8888: sttrb \reg, [\ptr, \offset]
+	_asm_extable_faultaddr	8888b,9998f;
 	.endm
 
-	.macro ldrh1 ptr, regB, val
-	ldrh  \ptr, [\regB], \val
+	.macro ldrb1_reg reg, ptr, offset
+	ldrb \reg, [\ptr, \offset]
 	.endm
 
-	.macro strh1 ptr, regB, val
-	uao_user_alternative 9998f, strh, sttrh, \ptr, \regB, \val
+	.macro strb1_reg reg, ptr, offset
+	add \ptr, \ptr, \offset
+	8888: sttrb \reg, [\ptr]
+	sub \ptr, \ptr, \offset
+	_asm_extable_faultaddr	8888b,9998f;
 	.endm
 
-	.macro ldr1 ptr, regB, val
-	ldr \ptr, [\regB], \val
+	.macro ldr1 reg, ptr, offset=0
+	ldr \reg, [\ptr, \offset]
 	.endm
 
-	.macro str1 ptr, regB, val
-	uao_user_alternative 9998f, str, sttr, \ptr, \regB, \val
+	.macro str1 reg, ptr, offset=0
+	8888: sttr \reg, [\ptr, \offset]
+	_asm_extable_faultaddr	8888b,9998f;
 	.endm
 
-	.macro ldp1 ptr, regB, regC, val
-	ldp \ptr, \regB, [\regC], \val
+	.macro ldp1 regA, regB, ptr, offset=0
+	ldp \regA, \regB, [\ptr, \offset]
 	.endm
 
-	.macro stp1 ptr, regB, regC, val
-	uao_stp 9998f, \ptr, \regB, \regC, \val
+	.macro stp1 regA, regB, ptr, offset=0
+	8888: sttr \regA, [\ptr, \offset]
+	8889: sttr \regB, [\ptr, \offset + 8]
+	_asm_extable_faultaddr	8888b,9998f;
+	_asm_extable_faultaddr	8889b,9998f;
+	.endm
+
+	.macro ldp1_pre regA, regB, ptr, offset
+	ldp \regA, \regB, [\ptr, \offset]!
+	.endm
+
+	.macro stp1_pre regA, regB, ptr, offset
+	8888: sttr \regA, [\ptr, \offset]
+	8889: sttr \regB, [\ptr, \offset + 8]
+	add \ptr, \ptr, \offset
+	_asm_extable_faultaddr	8888b,9998f;
+	_asm_extable_faultaddr	8889b,9998f;
+	.endm
+
+	.macro ldrb1_nuao reg, ptr, offset=0
+	ldrb \reg, [\ptr, \offset]
+	.endm
+
+	.macro strb1_nuao reg, ptr, offset=0
+	8888: strb \reg, [\ptr, \offset]
+	_asm_extable_faultaddr	8888b,9998f;
+	.endm
+
+	.macro ldrb1_nuao_reg reg, ptr, offset=0
+	ldrb \reg, [\ptr, \offset]
+	.endm
+
+	.macro strb1_nuao_reg reg, ptr, offset=0
+	strb \reg, [\ptr, \offset]
+	.endm
+
+	.macro ldr1_nuao reg, ptr, offset=0
+	ldr \reg, [\ptr, \offset]
+	.endm
+
+	.macro str1_nuao reg, ptr, offset=0
+	8888: str \reg, [\ptr, \offset]
+	_asm_extable_faultaddr	8888b,9998f;
+	.endm
+
+	.macro ldp1_nuao  regA, regB, ptr, offset=0
+	ldp \regA, \regB, [\ptr, \offset]
+	.endm
+
+	.macro ldp1_pre_nuao regA, regB, ptr, offset
+	ldp \regA, \regB, [\ptr, \offset]!
+	.endm
+
+	.macro stp1_nuao regA, regB, ptr, offset=0
+	8888: stp \regA, \regB, [\ptr, \offset]
+	_asm_extable_faultaddr	8888b,9998f;
+	.endm
+
+	.macro stp1_pre_nuao regA, regB, ptr, offset
+	8888: stp \regA, \regB, [\ptr, \offset]!
+	_asm_extable_faultaddr	8888b,9998f;
+	.endm
+
+	.macro copy_exit
+	b	.Luaccess_finish
 	.endm
 
-end	.req	x5
 ENTRY(__arch_copy_to_user)
 	uaccess_enable_not_uao x3, x4, x5
-	add	end, x0, x2
-#include "copy_template.S"
+#include "copy_template_user.S"
+.Luaccess_finish:
 	uaccess_disable_not_uao x3, x4
 	mov	x0, #0
 	ret
 ENDPROC(__arch_copy_to_user)
 EXPORT_SYMBOL(__arch_copy_to_user)
-
-	.section .fixup,"ax"
-	.align	2
-9998:	sub	x0, end, dst			// bytes not copied
-	ret
-	.previous
+#include "copy_user_fixup.S"
diff --git a/arch/arm64/lib/copy_user_fixup.S b/arch/arm64/lib/copy_user_fixup.S
new file mode 100644
index 000000000000..32fae9e2e799
--- /dev/null
+++ b/arch/arm64/lib/copy_user_fixup.S
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+addr	.req	x15
+.section .fixup,"ax"
+.align	2
+9998:
+	// If it falls in the src range then it was a load that failed,
+	// otherwise it was a store
+	cmp addr, src
+	ccmp addr, srcend, #0x0, ge
+	csel x0, srcend, dstend, lt
+	sub x0, x0, addr
+	ret
+
diff --git a/arch/arm64/lib/memcpy.S b/arch/arm64/lib/memcpy.S
index d79f48994dbb..c4a2fe0d0317 100644
--- a/arch/arm64/lib/memcpy.S
+++ b/arch/arm64/lib/memcpy.S
@@ -24,43 +24,57 @@
  * Returns:
  *	x0 - dest
  */
-	.macro ldrb1 ptr, regB, val
-	ldrb  \ptr, [\regB], \val
+
+ #define L(l) .L ## l
+
+	.macro ldrb1 reg, ptr, offset=0
+	ldrb \reg, [\ptr, \offset]
 	.endm
 
-	.macro strb1 ptr, regB, val
-	strb \ptr, [\regB], \val
+	.macro strb1 reg, ptr, offset=0
+	strb \reg, [\ptr, \offset]
 	.endm
 
-	.macro ldrh1 ptr, regB, val
-	ldrh  \ptr, [\regB], \val
+	.macro ldr1 reg, ptr, offset=0
+	ldr \reg, [\ptr, \offset]
 	.endm
 
-	.macro strh1 ptr, regB, val
-	strh \ptr, [\regB], \val
+	.macro str1 reg, ptr, offset=0
+	str \reg, [\ptr, \offset]
 	.endm
 
-	.macro ldr1 ptr, regB, val
-	ldr \ptr, [\regB], \val
+	.macro ldp1 regA, regB, ptr, offset=0
+	ldp \regA, \regB, [\ptr, \offset]
 	.endm
 
-	.macro str1 ptr, regB, val
-	str \ptr, [\regB], \val
+	.macro stp1 regA, regB, ptr, offset=0
+	stp \regA, \regB, [\ptr, \offset]
 	.endm
 
-	.macro ldp1 ptr, regB, regC, val
-	ldp \ptr, \regB, [\regC], \val
+	.macro ldrb1_reg reg, ptr, offset
+	ldrb1 \reg, \ptr, \offset
 	.endm
 
-	.macro stp1 ptr, regB, regC, val
-	stp \ptr, \regB, [\regC], \val
+	.macro strb1_reg reg, ptr, offset
+	strb1 \reg, \ptr, \offset
+	.endm
+
+	.macro ldp1_pre regA, regB, ptr, offset
+	ldp \regA, \regB, [\ptr, \offset]!
+	.endm
+
+	.macro stp1_pre regA, regB, ptr, offset
+	stp \regA, \regB, [\ptr, \offset]!
+	.endm
+
+	.macro copy_exit
+	ret
 	.endm
 
 	.weak memcpy
 ENTRY(__memcpy)
 ENTRY(memcpy)
 #include "copy_template.S"
-	ret
 ENDPIPROC(memcpy)
 EXPORT_SYMBOL(memcpy)
 ENDPROC(__memcpy)
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
