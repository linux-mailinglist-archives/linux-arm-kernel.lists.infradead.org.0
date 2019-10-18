Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD24ADCDCD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 20:19:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rp0fY18/xtVcxQdAUxGQZMrACSD1JYDx5aC8RvHRNTs=; b=qN3biWkB8+zJpW
	p9qVM6VriCx+0KKxpHqPP5abSVBfJJR3ZaTNWsmEnqCF9awPPc8Qkoy5ddzWLEsZl4akdey+G+9tO
	LOEiSsVDn3Dyb2y/iWXGDVGtgOaVHyHrTOCKdy7ABuMxWCOuNJ1eueIyezfVAbSCmDLGCMzC9AcgC
	FhiD3mH31Gkyiiz2czvZczuLUqKj1KAO1AEE2Wrf1fjqAi+NYuMHPT3+0oziIXzDIhgqQZbEcllja
	9qLQrsn17U+fun42A3w/CGbfH5kmg5QicUH/k5oYZy5kj46iWn/nRWS1GNs/mIbjFu85ogn0iDeea
	+j2+LuyxfZ+9786Ur1uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLWqJ-0000tK-K9; Fri, 18 Oct 2019 18:19:15 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLWoH-0007UT-Jd
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:17:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E6AA61655;
 Fri, 18 Oct 2019 11:16:55 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 40D3B3F718;
 Fri, 18 Oct 2019 11:16:55 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	catalin.marinas@arm.com
Subject: [PATCH v2 8/8] arm64: Tidy up _asm_extable_faultaddr usage
Date: Fri, 18 Oct 2019 19:16:42 +0100
Message-Id: <2dfad62454b9a1c7c230d2743fbc0ca01f1574a9.1571421836.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1571421836.git.robin.murphy@arm.com>
References: <cover.1571421836.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_111709_792352_017FD59F 
X-CRM114-Status: GOOD (  11.82  )
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
Cc: sam-tebbs@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To match the way the USER() shorthand wraps _asm_extable entries,
introduce USER_F() to wrap _asm_extable_faultaddr and clean up a bit.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/include/asm/assembler.h |  4 ++
 arch/arm64/lib/copy_from_user.S    | 36 +++++----------
 arch/arm64/lib/copy_in_user.S      | 72 ++++++++++--------------------
 arch/arm64/lib/copy_to_user.S      | 33 +++++---------
 4 files changed, 51 insertions(+), 94 deletions(-)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index 02bb156cbf0e..959f6fa493ef 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -155,6 +155,10 @@ alternative_endif
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
index 8928c38d8c76..d0bcfad5dafd 100644
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
index 2aecdc300c8d..25fdedc6eed8 100644
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
index d49db097bc31..744c57460619 100644
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
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
