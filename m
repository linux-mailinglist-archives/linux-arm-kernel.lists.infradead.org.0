Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C50AC879C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 13:56:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tsTpqAXEVpY81N561+vVs6oQiohl25zyC0Syrd1wxck=; b=oAz3SArSqfdbhR
	ZoiKxl3Saa5dMjG2nUXR9R4UOcf3HStT72B8WPjHTZsbPwtlackRojzDcRgHNG8xVvDv0fghI7kSG
	SIESJ2+9orc1nyVrm/WFEHBnS9ye+/aoC2Y3NXW6+6YRXfUA/XPTX4ooQkFbhVUQDS3qx7P2ESu5T
	eBfpiO9Lp9X09V/5sLaAdfxYoF41DtFR2q3XNEXtwu2YfJpkI74C7tHm63K9+fyYqnm5hfd+Rts61
	aYZifO52Q9v0oFO6meC6GuMRYM3032kJQd98PjZlH2gd4xZxzb5cN8wfwvJN49P2O2RMyyA9FDWYH
	pjZ0KNPcRLitLPighy8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFdEt-0006Sx-9r; Wed, 02 Oct 2019 11:56:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFdEl-0006SD-83
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 11:56:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9D42528;
 Wed,  2 Oct 2019 04:55:57 -0700 (PDT)
Received: from [10.1.26.129] (E110760.Arm.com [10.1.26.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E48063F71A;
 Wed,  2 Oct 2019 04:55:56 -0700 (PDT)
Subject: Re: Regression: Cortex-M w/ XIP not booting
To: afzal mohammed <afzal.mohd.ma@gmail.com>,
 Russell King <linux@armlinux.org.uk>
References: <20191002061637.GA7743@afzalpc>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <c9a8d667-0dfb-2dd7-3537-8683cfc3914d@arm.com>
Date: Wed, 2 Oct 2019 12:55:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191002061637.GA7743@afzalpc>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_045607_329702_606C153B 
X-CRM114-Status: GOOD (  15.74  )
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Afzal,

On 10/2/19 7:16 AM, afzal mohammed wrote:
> Hi Vladimir,
> 
> After,
> 
> 72cd4064fcca "NOMMU: Toggle only bits in EXC_RETURN we are really care of",
> 
> the no-MMU Vybrid Cortex-M4 is not booting, relevant logs at the end.
> 
> Looks like any Cortex-M with XIP enabled Kernel would have this issue,
> i.e. all STM32 Cortex-M baords (STM32 maintainers CC'ed) as well as.
> 
> In the above commit, lr value is saved in data section in __v7m_setup,
> but the data section is setup only later in __mmap_switched on an XIP
> kernel, where it will overwrite the saved value of lr. This causes
> reserved EXC_RETURN value resulting in the below.
> 
> Reverting the above change fixes the issue.

Thanks for report! It is pity it was not caught while patch submission...

Can you try diff bellow? I do not have XIP target, but non-XIP seems to
stay happy...


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

Cheers
Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
