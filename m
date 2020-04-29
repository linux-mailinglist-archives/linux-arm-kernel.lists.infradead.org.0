Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E70AA1BE654
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 20:37:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F0vrUI9zD3+Pclrz/qWKJXpn9TrS1fb6nhQtmFWQ0G0=; b=N4r2ZyEIOxE5sC
	WUMpJYm2vhDlRI0dEYPrfs9F6B7WFGpN3HzZF8JMF7b16HyKOLtFEjUft4VjQwQQcfcwEzJUDoyDV
	nD35EyLa5ha4aOidj+Owv+VLZxHnOBgnK9COaN0hZhvhxxscjiReRhkxunsahmj4bI1qQ6+NX/pAD
	gtQg/0Db20EJBYKZqrfyVsH083BGSqvI0JsMKSQ5jbs9y/VkeLECOLRzLRNgcQoWk3nK9iwUw2GNP
	y6BwhfB7l3wT02Nuwdw4pxwc9xfo7P1QhsNIwAwiFH4WuDpW4O1LnUj5GELUIjGoBIXAyciO3pZKe
	aZ6p7hBJwGMOvcR5JIfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTraG-0007R2-Cd; Wed, 29 Apr 2020 18:37:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTra8-0007QY-0b
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 18:37:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DB74F1063;
 Wed, 29 Apr 2020 11:37:14 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3DA553F73D;
 Wed, 29 Apr 2020 11:37:14 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: Reorder the macro arguments in the copy routines
Date: Wed, 29 Apr 2020 19:37:02 +0100
Message-Id: <20200429183702.28445-1-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_113716_143613_72493CDF 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current argument order is obviously buggy (memcpy.S):

	macro strb1 ptr, regB, val
	strb \ptr, [\regB], \val
	endm

However, it cancels out as the calling sites in copy_template.S pass the
address as the regB argument.

Mechanically reorder the arguments to match the instruction mnemonics.
There is no difference in objdump before and after this patch.

Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/lib/copy_from_user.S | 32 ++++++++++++++++----------------
 arch/arm64/lib/copy_in_user.S   | 32 ++++++++++++++++----------------
 arch/arm64/lib/copy_to_user.S   | 32 ++++++++++++++++----------------
 arch/arm64/lib/memcpy.S         | 32 ++++++++++++++++----------------
 4 files changed, 64 insertions(+), 64 deletions(-)

diff --git a/arch/arm64/lib/copy_from_user.S b/arch/arm64/lib/copy_from_user.S
index 8e25e89ad01f..0f8a3a9e3795 100644
--- a/arch/arm64/lib/copy_from_user.S
+++ b/arch/arm64/lib/copy_from_user.S
@@ -20,36 +20,36 @@
  *	x0 - bytes not copied
  */
 
-	.macro ldrb1 ptr, regB, val
-	uao_user_alternative 9998f, ldrb, ldtrb, \ptr, \regB, \val
+	.macro ldrb1 reg, ptr, val
+	uao_user_alternative 9998f, ldrb, ldtrb, \reg, \ptr, \val
 	.endm
 
-	.macro strb1 ptr, regB, val
-	strb \ptr, [\regB], \val
+	.macro strb1 reg, ptr, val
+	strb \reg, [\ptr], \val
 	.endm
 
-	.macro ldrh1 ptr, regB, val
-	uao_user_alternative 9998f, ldrh, ldtrh, \ptr, \regB, \val
+	.macro ldrh1 reg, ptr, val
+	uao_user_alternative 9998f, ldrh, ldtrh, \reg, \ptr, \val
 	.endm
 
-	.macro strh1 ptr, regB, val
-	strh \ptr, [\regB], \val
+	.macro strh1 reg, ptr, val
+	strh \reg, [\ptr], \val
 	.endm
 
-	.macro ldr1 ptr, regB, val
-	uao_user_alternative 9998f, ldr, ldtr, \ptr, \regB, \val
+	.macro ldr1 reg, ptr, val
+	uao_user_alternative 9998f, ldr, ldtr, \reg, \ptr, \val
 	.endm
 
-	.macro str1 ptr, regB, val
-	str \ptr, [\regB], \val
+	.macro str1 reg, ptr, val
+	str \reg, [\ptr], \val
 	.endm
 
-	.macro ldp1 ptr, regB, regC, val
-	uao_ldp 9998f, \ptr, \regB, \regC, \val
+	.macro ldp1 reg1, reg2, ptr, val
+	uao_ldp 9998f, \reg1, \reg2, \ptr, \val
 	.endm
 
-	.macro stp1 ptr, regB, regC, val
-	stp \ptr, \regB, [\regC], \val
+	.macro stp1 reg1, reg2, ptr, val
+	stp \reg1, \reg2, [\ptr], \val
 	.endm
 
 end	.req	x5
diff --git a/arch/arm64/lib/copy_in_user.S b/arch/arm64/lib/copy_in_user.S
index 667139013ed1..80e37ada0ee1 100644
--- a/arch/arm64/lib/copy_in_user.S
+++ b/arch/arm64/lib/copy_in_user.S
@@ -21,36 +21,36 @@
  * Returns:
  *	x0 - bytes not copied
  */
-	.macro ldrb1 ptr, regB, val
-	uao_user_alternative 9998f, ldrb, ldtrb, \ptr, \regB, \val
+	.macro ldrb1 reg, ptr, val
+	uao_user_alternative 9998f, ldrb, ldtrb, \reg, \ptr, \val
 	.endm
 
-	.macro strb1 ptr, regB, val
-	uao_user_alternative 9998f, strb, sttrb, \ptr, \regB, \val
+	.macro strb1 reg, ptr, val
+	uao_user_alternative 9998f, strb, sttrb, \reg, \ptr, \val
 	.endm
 
-	.macro ldrh1 ptr, regB, val
-	uao_user_alternative 9998f, ldrh, ldtrh, \ptr, \regB, \val
+	.macro ldrh1 reg, ptr, val
+	uao_user_alternative 9998f, ldrh, ldtrh, \reg, \ptr, \val
 	.endm
 
-	.macro strh1 ptr, regB, val
-	uao_user_alternative 9998f, strh, sttrh, \ptr, \regB, \val
+	.macro strh1 reg, ptr, val
+	uao_user_alternative 9998f, strh, sttrh, \reg, \ptr, \val
 	.endm
 
-	.macro ldr1 ptr, regB, val
-	uao_user_alternative 9998f, ldr, ldtr, \ptr, \regB, \val
+	.macro ldr1 reg, ptr, val
+	uao_user_alternative 9998f, ldr, ldtr, \reg, \ptr, \val
 	.endm
 
-	.macro str1 ptr, regB, val
-	uao_user_alternative 9998f, str, sttr, \ptr, \regB, \val
+	.macro str1 reg, ptr, val
+	uao_user_alternative 9998f, str, sttr, \reg, \ptr, \val
 	.endm
 
-	.macro ldp1 ptr, regB, regC, val
-	uao_ldp 9998f, \ptr, \regB, \regC, \val
+	.macro ldp1 reg1, reg2, ptr, val
+	uao_ldp 9998f, \reg1, \reg2, \ptr, \val
 	.endm
 
-	.macro stp1 ptr, regB, regC, val
-	uao_stp 9998f, \ptr, \regB, \regC, \val
+	.macro stp1 reg1, reg2, ptr, val
+	uao_stp 9998f, \reg1, \reg2, \ptr, \val
 	.endm
 
 end	.req	x5
diff --git a/arch/arm64/lib/copy_to_user.S b/arch/arm64/lib/copy_to_user.S
index 1a104d0089f3..4ec59704b8f2 100644
--- a/arch/arm64/lib/copy_to_user.S
+++ b/arch/arm64/lib/copy_to_user.S
@@ -19,36 +19,36 @@
  * Returns:
  *	x0 - bytes not copied
  */
-	.macro ldrb1 ptr, regB, val
-	ldrb  \ptr, [\regB], \val
+	.macro ldrb1 reg, ptr, val
+	ldrb  \reg, [\ptr], \val
 	.endm
 
-	.macro strb1 ptr, regB, val
-	uao_user_alternative 9998f, strb, sttrb, \ptr, \regB, \val
+	.macro strb1 reg, ptr, val
+	uao_user_alternative 9998f, strb, sttrb, \reg, \ptr, \val
 	.endm
 
-	.macro ldrh1 ptr, regB, val
-	ldrh  \ptr, [\regB], \val
+	.macro ldrh1 reg, ptr, val
+	ldrh  \reg, [\ptr], \val
 	.endm
 
-	.macro strh1 ptr, regB, val
-	uao_user_alternative 9998f, strh, sttrh, \ptr, \regB, \val
+	.macro strh1 reg, ptr, val
+	uao_user_alternative 9998f, strh, sttrh, \reg, \ptr, \val
 	.endm
 
-	.macro ldr1 ptr, regB, val
-	ldr \ptr, [\regB], \val
+	.macro ldr1 reg, ptr, val
+	ldr \reg, [\ptr], \val
 	.endm
 
-	.macro str1 ptr, regB, val
-	uao_user_alternative 9998f, str, sttr, \ptr, \regB, \val
+	.macro str1 reg, ptr, val
+	uao_user_alternative 9998f, str, sttr, \reg, \ptr, \val
 	.endm
 
-	.macro ldp1 ptr, regB, regC, val
-	ldp \ptr, \regB, [\regC], \val
+	.macro ldp1 reg1, reg2, ptr, val
+	ldp \reg1, \reg2, [\ptr], \val
 	.endm
 
-	.macro stp1 ptr, regB, regC, val
-	uao_stp 9998f, \ptr, \regB, \regC, \val
+	.macro stp1 reg1, reg2, ptr, val
+	uao_stp 9998f, \reg1, \reg2, \ptr, \val
 	.endm
 
 end	.req	x5
diff --git a/arch/arm64/lib/memcpy.S b/arch/arm64/lib/memcpy.S
index 9f382adfa88a..e0bf83d556f2 100644
--- a/arch/arm64/lib/memcpy.S
+++ b/arch/arm64/lib/memcpy.S
@@ -24,36 +24,36 @@
  * Returns:
  *	x0 - dest
  */
-	.macro ldrb1 ptr, regB, val
-	ldrb  \ptr, [\regB], \val
+	.macro ldrb1 reg, ptr, val
+	ldrb  \reg, [\ptr], \val
 	.endm
 
-	.macro strb1 ptr, regB, val
-	strb \ptr, [\regB], \val
+	.macro strb1 reg, ptr, val
+	strb \reg, [\ptr], \val
 	.endm
 
-	.macro ldrh1 ptr, regB, val
-	ldrh  \ptr, [\regB], \val
+	.macro ldrh1 reg, ptr, val
+	ldrh  \reg, [\ptr], \val
 	.endm
 
-	.macro strh1 ptr, regB, val
-	strh \ptr, [\regB], \val
+	.macro strh1 reg, ptr, val
+	strh \reg, [\ptr], \val
 	.endm
 
-	.macro ldr1 ptr, regB, val
-	ldr \ptr, [\regB], \val
+	.macro ldr1 reg, ptr, val
+	ldr \reg, [\ptr], \val
 	.endm
 
-	.macro str1 ptr, regB, val
-	str \ptr, [\regB], \val
+	.macro str1 reg, ptr, val
+	str \reg, [\ptr], \val
 	.endm
 
-	.macro ldp1 ptr, regB, regC, val
-	ldp \ptr, \regB, [\regC], \val
+	.macro ldp1 reg1, reg2, ptr, val
+	ldp \reg1, \reg2, [\ptr], \val
 	.endm
 
-	.macro stp1 ptr, regB, regC, val
-	stp \ptr, \regB, [\regC], \val
+	.macro stp1 reg1, reg2, ptr, val
+	stp \reg1, \reg2, [\ptr], \val
 	.endm
 
 	.weak memcpy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
