Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00959C9D8F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 13:42:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1Um6l2+BEvLJlSTAP/eDRxr+BawRCo9u+i4Svps21/I=; b=T7y
	JW2q/hm1GCUdBicAY/iAy1Wh6brt4+MXf+dLXglxjnZJSnpZTZiH0oRsZewi2RCwsbRrNinqJ2a76
	ippdFNw79TX4C0aE36ud8OH5Hj1gD3jbk+ESj7eZXIl4ZSA1wiKQIcHV8XfHeKy2bxw99ZynvNYzJ
	S3ef/WSrDDvYgf1RJ3P0WmGx+/GG6hIzjLlx+9UvDjsDSbI5pUiZ6jDrj5GAumyQPvTnZVS9YRrAz
	ysYJZ65IfLT22eZ0BLUSaRkpxGyN/VpDVwlLuS4rnxgiD2GSck/iYFThr+4beKmszo85Vyq4dAt0V
	z2sqYLRgGjJ+5kv74j1f8s2xa6piTAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFzUw-0003Kd-0h; Thu, 03 Oct 2019 11:42:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFzUp-0003KB-4B
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 11:42:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 927D2337;
 Thu,  3 Oct 2019 04:42:10 -0700 (PDT)
Received: from login2.euhpc.arm.com (login2.euhpc.arm.com [10.6.27.34])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C55F53F706;
 Thu,  3 Oct 2019 04:42:09 -0700 (PDT)
From: Vladimir Murzin <vladimir.murzin@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: NOMMU: Fix exc_ret for XIP
Date: Thu,  3 Oct 2019 12:41:28 +0100
Message-Id: <1570102888-13426-1-git-send-email-vladimir.murzin@arm.com>
X-Mailer: git-send-email 2.0.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_044211_212109_D24E33EF 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: alexandre.torgue@st.com, afzal.mohd.ma@gmail.com, linux@armlinux.org.uk,
 sza@esh.hu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It was reported that 72cd4064fcca "NOMMU: Toggle only bits in
EXC_RETURN we are really care of" breaks NOMMU+XIP combination.
It happens because saved EXC_RETURN gets overwritten when data
section is relocated.

The fix is to propagate EXC_RETURN via register and let relocation
code to commit that value into memory.

Fixes: 72cd4064fcca ("ARM: 8830/1: NOMMU: Toggle only bits in EXC_RETURN we are really care of")

Reported-by: afzal mohammed <afzal.mohd.ma@gmail.com>
Tested-by: afzal mohammed <afzal.mohd.ma@gmail.com>
Signed-off-by: Vladimir Murzin <vladimir.murzin@arm.com>
---
 arch/arm/kernel/head-common.S | 5 +++--
 arch/arm/kernel/head-nommu.S  | 2 ++
 arch/arm/mm/proc-v7m.S        | 5 ++---
 3 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/arm/kernel/head-common.S b/arch/arm/kernel/head-common.S
index a7810be..4a39828 100644
--- a/arch/arm/kernel/head-common.S
+++ b/arch/arm/kernel/head-common.S
@@ -68,7 +68,7 @@ ENDPROC(__vet_atags)
  * The following fragment of code is executed with the MMU on in MMU mode,
  * and uses absolute addresses; this is not position independent.
  *
- *  r0  = cp#15 control register
+ *  r0  = cp#15 control register (exc_ret for M-class)
  *  r1  = machine ID
  *  r2  = atags/dtb pointer
  *  r9  = processor ID
@@ -137,7 +137,8 @@ __mmap_switched_data:
 #ifdef CONFIG_CPU_CP15
 	.long	cr_alignment			@ r3
 #else
-	.long	0				@ r3
+M_CLASS(.long	exc_ret)			@ r3
+AR_CLASS(.long	0)				@ r3
 #endif
 	.size	__mmap_switched_data, . - __mmap_switched_data
 
diff --git a/arch/arm/kernel/head-nommu.S b/arch/arm/kernel/head-nommu.S
index afa350f..0fc814b 100644
--- a/arch/arm/kernel/head-nommu.S
+++ b/arch/arm/kernel/head-nommu.S
@@ -201,6 +201,8 @@ M_CLASS(streq	r3, [r12, #PMSAv8_MAIR1])
 	bic	r0, r0, #V7M_SCB_CCR_IC
 #endif
 	str	r0, [r12, V7M_SCB_CCR]
+	/* Pass exc_ret to __mmap_switched */
+	mov	r0, r10
 #endif /* CONFIG_CPU_CP15 elif CONFIG_CPU_V7M */
 	ret	lr
 ENDPROC(__after_proc_init)
diff --git a/arch/arm/mm/proc-v7m.S b/arch/arm/mm/proc-v7m.S
index 1448f14..efebf41 100644
--- a/arch/arm/mm/proc-v7m.S
+++ b/arch/arm/mm/proc-v7m.S
@@ -136,9 +136,8 @@ __v7m_setup_cont:
 	cpsie	i
 	svc	#0
 1:	cpsid	i
-	ldr	r0, =exc_ret
-	orr	lr, lr, #EXC_RET_THREADMODE_PROCESSSTACK
-	str	lr, [r0]
+	/* Calculate exc_ret */
+	orr	r10, lr, #EXC_RET_THREADMODE_PROCESSSTACK
 	ldmia	sp, {r0-r3, r12}
 	str	r5, [r12, #11 * 4]	@ restore the original SVC vector entry
 	mov	lr, r6			@ restore LR
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
