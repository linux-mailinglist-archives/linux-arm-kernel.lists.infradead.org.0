Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B511D330C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 16:35:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XMionPAI3vEgk8cuRp2np65LjzjQ0QzcVvgjciMJWH0=; b=dUcSAbNBlDLq9uzPfcvAdtjQzN
	ookG5E1ToVQzvSesugykrWw7zJxMJ2aZj95HcjxsWuPML1ixKUL5XkRwoI30li4Uj6gx3d6apkCEo
	FFPdJIqNDdvkYznCQ3BaPTUz5Ixk8AU/3mMzDY/UBkThTB0ntj1y8aTvTY7joJ8LeTHbM/W6lekRs
	UTcjA0F3o7Y9NB1utZPFtzBEHpYI8rONoNSkSHanzyaw4lPufsL50jANLFX2PuO0EOG8I3JNxD1j3
	jJwlkbMttwl0L0KZ3rOBKjse17zYY1evhr+y/LQ3NAucfrx/XQYrFftbQeZ2BhXa6wO2/3ULk792s
	2bgh2Aew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZExK-0001HL-Ok; Thu, 14 May 2020 14:35:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZEuv-0007Ps-IZ
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 14:33:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 69A091FB;
 Thu, 14 May 2020 07:32:57 -0700 (PDT)
Received: from seattle-bionic.arm.com.Home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 73A4C3F71E;
 Thu, 14 May 2020 07:32:56 -0700 (PDT)
From: Oliver Swede <oli.swede@arm.com>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v3 09/13] arm64: Tidy up _asm_extable_faultaddr usage
Date: Thu, 14 May 2020 14:32:23 +0000
Message-Id: <20200514143227.605-10-oli.swede@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514143227.605-1-oli.swede@arm.com>
References: <20200514143227.605-1-oli.swede@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_073257_723645_A2940CA5 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Robin Murphy <robin.murphy@arm.com>

To match the way the USER() shorthand wraps _asm_extable entries,
introduce USER_F() to wrap _asm_extable_faultaddr and clean up a bit.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Oliver Swede <oli.swede@arm.com>
---
 arch/arm64/include/asm/assembler.h |  4 ++
 arch/arm64/lib/copy_from_user.S    | 36 +++++----------
 arch/arm64/lib/copy_in_user.S      | 72 ++++++++++--------------------
 arch/arm64/lib/copy_to_user.S      | 33 +++++---------
 4 files changed, 51 insertions(+), 94 deletions(-)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index 7017aeb4b29a..384b6584b27f 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -142,6 +142,10 @@ alternative_endif
 9999:	x;					\
 	_asm_extable	9999b, l
 
+#define USER_F(l, x...)				\
+9999:	x;					\
+	_asm_extable_faultaddr	9999b, l
+
 /*
  * Register aliases.
  */
diff --git a/arch/arm64/lib/copy_from_user.S b/arch/arm64/lib/copy_from_user.S
index dbf768cc7650..9c3805725bea 100644
--- a/arch/arm64/lib/copy_from_user.S
+++ b/arch/arm64/lib/copy_from_user.S
@@ -21,8 +21,7 @@
  */
 
 	.macro ldrb1 reg, ptr, offset=0
-	8888: ldtrb \reg, [\ptr, \offset]
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, ldtrb \reg, [\ptr, \offset])
 	.endm
 
 	.macro strb1 reg, ptr, offset=0
@@ -31,9 +30,8 @@
 
 	.macro ldrb1_reg reg, ptr, offset
 	add \ptr, \ptr, \offset
-	8888: ldtrb \reg, [\ptr]
+	USER_F(9998f, ldtrb \reg, [\ptr])
 	sub \ptr, \ptr, \offset
-	_asm_extable_faultaddr	8888b,9998f;
 	.endm
 
 	.macro strb1_reg reg, ptr, offset
@@ -41,8 +39,7 @@
 	.endm
 
 	.macro ldr1 reg, ptr, offset=0
-	8888: ldtr \reg, [\ptr, \offset]
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, ldtr \reg, [\ptr, \offset])
 	.endm
 
 	.macro str1 reg, ptr, offset=0
@@ -50,10 +47,8 @@
 	.endm
 
 	.macro ldp1 regA, regB, ptr, offset=0
-	8888: ldtr \regA, [\ptr, \offset]
-	8889: ldtr \regB, [\ptr, \offset + 8]
-	_asm_extable_faultaddr	8888b,9998f;
-	_asm_extable_faultaddr	8889b,9998f;
+	USER_F(9998f, ldtr \regA, [\ptr, \offset])
+	USER_F(9998f, ldtr \regB, [\ptr, \offset + 8])
 	.endm
 
 	.macro stp1 regA, regB, ptr, offset=0
@@ -61,11 +56,9 @@
 	.endm
 
 	.macro ldp1_pre regA, regB, ptr, offset
-	8888: ldtr \regA, [\ptr, \offset]
-	8889: ldtr \regB, [\ptr, \offset + 8]
+	USER_F(9998f, ldtr \regA, [\ptr, \offset])
+	USER_F(9998f, ldtr \regB, [\ptr, \offset + 8])
 	add \ptr, \ptr, \offset
-	_asm_extable_faultaddr	8888b,9998f;
-	_asm_extable_faultaddr	8889b,9998f;
 	.endm
 
 	.macro stp1_pre regA, regB, ptr, offset
@@ -73,8 +66,7 @@
 	.endm
 
 	.macro ldrb1_nuao reg, ptr, offset=0
-	8888: ldrb \reg, [\ptr, \offset]
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, ldrb \reg, [\ptr, \offset])
 	.endm
 
 	.macro strb1_nuao reg, ptr, offset=0
@@ -82,8 +74,7 @@
 	.endm
 
 	.macro ldrb1_nuao_reg reg, ptr, offset=0
-	8888: ldrb \reg, [\ptr, \offset]
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, ldrb \reg, [\ptr, \offset])
 	.endm
 
 	.macro strb1_nuao_reg reg, ptr, offset=0
@@ -91,8 +82,7 @@
 	.endm
 
 	.macro ldr1_nuao reg, ptr, offset=0
-	8888: ldr \reg, [\ptr, \offset]
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, ldr \reg, [\ptr, \offset])
 	.endm
 
 	.macro str1_nuao reg, ptr, offset=0
@@ -100,8 +90,7 @@
 	.endm
 
 	.macro ldp1_nuao  regA, regB, ptr, offset=0
-	8888: ldp \regA, \regB, [\ptr, \offset]
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, ldp \regA, \regB, [\ptr, \offset])
 	.endm
 
 	.macro stp1_nuao regA, regB, ptr, offset=0
@@ -109,8 +98,7 @@
 	.endm
 
 	.macro ldp1_pre_nuao regA, regB, ptr, offset
-	8888: ldp \regA, \regB, [\ptr, \offset]!
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, ldp \regA, \regB, [\ptr, \offset]!)
 	.endm
 
 	.macro stp1_pre_nuao regA, regB, ptr, offset
diff --git a/arch/arm64/lib/copy_in_user.S b/arch/arm64/lib/copy_in_user.S
index f08d4b36a857..bdf9bfecf31f 100644
--- a/arch/arm64/lib/copy_in_user.S
+++ b/arch/arm64/lib/copy_in_user.S
@@ -23,117 +23,93 @@
  */
 
 	.macro ldrb1 reg, ptr, offset=0
-	8888: ldtrb \reg, [\ptr, \offset]
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, ldtrb \reg, [\ptr, \offset])
 	.endm
 
 	.macro strb1 reg, ptr, offset=0
-	8888: sttrb \reg, [\ptr, \offset]
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, sttrb \reg, [\ptr, \offset])
 	.endm
 
 	.macro ldrb1_reg reg, ptr, offset
 	add \ptr, \ptr, \offset
-	8888: ldtrb \reg, [\ptr]
+	USER_F(9998f, ldtrb \reg, [\ptr])
 	sub \ptr, \ptr, \offset
-	_asm_extable_faultaddr	8888b,9998f;
 	.endm
 
 	.macro strb1_reg reg, ptr, offset
 	add \ptr, \ptr, \offset
-	8888: sttrb \reg, [\ptr]
+	USER_F(9998f, sttrb \reg, [\ptr])
 	sub \ptr, \ptr, \offset
-	_asm_extable_faultaddr	8888b,9998f;
 	.endm
 
 	.macro ldr1 reg, ptr, offset=0
-	8888: ldtr \reg, [\ptr, \offset]
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, ldtr \reg, [\ptr, \offset])
 	.endm
 
 	.macro str1 reg, ptr, offset=0
-	8888: sttr \reg, [\ptr, \offset]
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, sttr \reg, [\ptr, \offset])
 	.endm
 
 	.macro ldp1 regA, regB, ptr, offset=0
-	8888: ldtr \regA, [\ptr, \offset]
-	8889: ldtr \regB, [\ptr, \offset + 8]
-	_asm_extable_faultaddr	8888b,9998f;
-	_asm_extable_faultaddr	8889b,9998f;
+	USER_F(9998f, ldtr \regA, [\ptr, \offset])
+	USER_F(9998f, ldtr \regB, [\ptr, \offset + 8])
 	.endm
 
 	.macro stp1 regA, regB, ptr, offset=0
-	8888: sttr \regA, [\ptr, \offset]
-	8889: sttr \regB, [\ptr, \offset + 8]
-	_asm_extable_faultaddr	8888b,9998f;
-	_asm_extable_faultaddr	8889b,9998f;
+	USER_F(9998f, sttr \regA, [\ptr, \offset])
+	USER_F(9998f, sttr \regB, [\ptr, \offset + 8])
 	.endm
 
 	.macro ldp1_pre regA, regB, ptr, offset
-	8888: ldtr \regA, [\ptr, \offset]
-	8889: ldtr \regB, [\ptr, \offset + 8]
+	USER_F(9998f, ldtr \regA, [\ptr, \offset])
+	USER_F(9998f, ldtr \regB, [\ptr, \offset + 8])
 	add \ptr, \ptr, \offset
-	_asm_extable_faultaddr	8888b,9998f;
-	_asm_extable_faultaddr	8889b,9998f;
 	.endm
 
 	.macro stp1_pre regA, regB, ptr, offset
-	8888: sttr \regA, [\ptr, \offset]
-	8889: sttr \regB, [\ptr, \offset + 8]
+	USER_F(9998f, sttr \regA, [\ptr, \offset])
+	USER_F(9998f, sttr \regB, [\ptr, \offset + 8])
 	add \ptr, \ptr, \offset
-	_asm_extable_faultaddr	8888b,9998f;
-	_asm_extable_faultaddr	8889b,9998f;
 	.endm
 
 	.macro ldrb1_nuao reg, ptr, offset=0
-	8888: ldrb \reg, [\ptr, \offset]
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, ldrb \reg, [\ptr, \offset])
 	.endm
 
 	.macro strb1_nuao reg, ptr, offset=0
-	8888: strb \reg, [\ptr, \offset]
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, strb \reg, [\ptr, \offset])
 	.endm
 
 	.macro ldrb1_nuao_reg reg, ptr, offset=0
-	8888: ldrb \reg, [\ptr, \offset]
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, ldrb \reg, [\ptr, \offset])
 	.endm
 
 	.macro strb1_nuao_reg reg, ptr, offset=0
-	8888: strb \reg, [\ptr, \offset]
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, strb \reg, [\ptr, \offset])
 	.endm
 
 	.macro ldr1_nuao reg, ptr, offset=0
-	8888: ldr \reg, [\ptr, \offset]
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, ldr \reg, [\ptr, \offset])
 	.endm
 
 	.macro str1_nuao reg, ptr, offset=0
-	8888: str \reg, [\ptr, \offset]
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, str \reg, [\ptr, \offset])
 	.endm
 
 	.macro ldp1_nuao  regA, regB, ptr, offset=0
-	8888: ldp \regA, \regB, [\ptr, \offset]
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, ldp \regA, \regB, [\ptr, \offset])
 	.endm
 
 	.macro stp1_nuao regA, regB, ptr, offset=0
-	8888: stp \regA, \regB, [\ptr, \offset]
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, stp \regA, \regB, [\ptr, \offset])
 	.endm
 
 	.macro ldp1_pre_nuao regA, regB, ptr, offset
-	8888: ldp \regA, \regB, [\ptr, \offset]!
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, ldp \regA, \regB, [\ptr, \offset]!)
 	.endm
 
 	.macro stp1_pre_nuao regA, regB, ptr, offset
-	8888: stp \regA, \regB, [\ptr, \offset]!
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, stp \regA, \regB, [\ptr, \offset]!)
 	.endm
 
 	.macro copy_exit
diff --git a/arch/arm64/lib/copy_to_user.S b/arch/arm64/lib/copy_to_user.S
index e4629c83abb4..b936bc10594e 100644
--- a/arch/arm64/lib/copy_to_user.S
+++ b/arch/arm64/lib/copy_to_user.S
@@ -25,8 +25,7 @@
 	.endm
 
 	.macro strb1 reg, ptr, offset=0
-	8888: sttrb \reg, [\ptr, \offset]
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, sttrb \reg, [\ptr, \offset])
 	.endm
 
 	.macro ldrb1_reg reg, ptr, offset
@@ -35,9 +34,8 @@
 
 	.macro strb1_reg reg, ptr, offset
 	add \ptr, \ptr, \offset
-	8888: sttrb \reg, [\ptr]
+	USER_F(9998f, sttrb \reg, [\ptr])
 	sub \ptr, \ptr, \offset
-	_asm_extable_faultaddr	8888b,9998f;
 	.endm
 
 	.macro ldr1 reg, ptr, offset=0
@@ -45,8 +43,7 @@
 	.endm
 
 	.macro str1 reg, ptr, offset=0
-	8888: sttr \reg, [\ptr, \offset]
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, sttr \reg, [\ptr, \offset])
 	.endm
 
 	.macro ldp1 regA, regB, ptr, offset=0
@@ -54,10 +51,8 @@
 	.endm
 
 	.macro stp1 regA, regB, ptr, offset=0
-	8888: sttr \regA, [\ptr, \offset]
-	8889: sttr \regB, [\ptr, \offset + 8]
-	_asm_extable_faultaddr	8888b,9998f;
-	_asm_extable_faultaddr	8889b,9998f;
+	USER_F(9998f, sttr \regA, [\ptr, \offset])
+	USER_F(9998f, sttr \regB, [\ptr, \offset + 8])
 	.endm
 
 	.macro ldp1_pre regA, regB, ptr, offset
@@ -65,11 +60,9 @@
 	.endm
 
 	.macro stp1_pre regA, regB, ptr, offset
-	8888: sttr \regA, [\ptr, \offset]
-	8889: sttr \regB, [\ptr, \offset + 8]
+	USER_F(9998f, sttr \regA, [\ptr, \offset])
+	USER_F(9998f, sttr \regB, [\ptr, \offset + 8])
 	add \ptr, \ptr, \offset
-	_asm_extable_faultaddr	8888b,9998f;
-	_asm_extable_faultaddr	8889b,9998f;
 	.endm
 
 	.macro ldrb1_nuao reg, ptr, offset=0
@@ -77,8 +70,7 @@
 	.endm
 
 	.macro strb1_nuao reg, ptr, offset=0
-	8888: strb \reg, [\ptr, \offset]
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, strb \reg, [\ptr, \offset])
 	.endm
 
 	.macro ldrb1_nuao_reg reg, ptr, offset=0
@@ -94,8 +86,7 @@
 	.endm
 
 	.macro str1_nuao reg, ptr, offset=0
-	8888: str \reg, [\ptr, \offset]
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, str \reg, [\ptr, \offset])
 	.endm
 
 	.macro ldp1_nuao  regA, regB, ptr, offset=0
@@ -107,13 +98,11 @@
 	.endm
 
 	.macro stp1_nuao regA, regB, ptr, offset=0
-	8888: stp \regA, \regB, [\ptr, \offset]
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, stp \regA, \regB, [\ptr, \offset])
 	.endm
 
 	.macro stp1_pre_nuao regA, regB, ptr, offset
-	8888: stp \regA, \regB, [\ptr, \offset]!
-	_asm_extable_faultaddr	8888b,9998f;
+	USER_F(9998f, stp \regA, \regB, [\ptr, \offset]!)
 	.endm
 
 	.macro copy_exit
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
