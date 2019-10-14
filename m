Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 621CDD5E14
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 11:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0bFkrP0strwK31mtjEKu9NDlNs236FY3qFwOd6peW7Q=; b=lDrJwccG2+bONn
	0t66c6foLTiEThIhTdrY5GosXBc0ogW/LkTSentZapwTFqkisvPNd12pFygll+4vHURr0T9NFfk0N
	/WdJSx9vtLd+26OOzW+Ae7hcTNcOHR7+wd0x6qro6z8Hos3Uv+hKwJ5BeV6J3jyvZTwq1s6IPfgPt
	hMaWEojJJZ/0I564oCeI9Zk+COCF1pPZQQy4GFWR2MWYaxczHHc1fsmkZ510HJv5epLtWOwEMio+a
	KaNzS21/hoL2LOVXUFj4X9tG1SoDDzgBXcSRJySFUiC9VH976gaw9+RXzStDK3F2ukZ20Bs2+K+Pn
	du541SMoSL4uP3jiegRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJwGL-0001j1-Hc; Mon, 14 Oct 2019 09:03:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJwGB-0001iS-CT
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 09:03:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C31E0337;
 Mon, 14 Oct 2019 02:03:17 -0700 (PDT)
Received: from [10.1.32.128] (e121487-lin.cambridge.arm.com [10.1.32.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EBAD73F718;
 Mon, 14 Oct 2019 02:03:16 -0700 (PDT)
Subject: Re: [PATCH] ARM: v7m: remove register save to stack before svc
To: afzal mohammed <afzal.mohd.ma@gmail.com>,
 Russell King <linux@armlinux.org.uk>
References: <20191013095237.4413-1-afzal.mohd.ma@gmail.com>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <ff38ce12-c0c3-0507-2b0a-147d7f819495@arm.com>
Date: Mon, 14 Oct 2019 10:03:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191013095237.4413-1-afzal.mohd.ma@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_020323_876940_26492A37 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On 10/13/19 10:52 AM, afzal mohammed wrote:
> r0-r3 & r12 registers are saved & restored, before & after svc
> respectively. Intention was to preserve those registers across thread to
> handler mode switch.
> 
> On v7-M, hardware saves the register context upon exception in AAPCS
> complaint way. Restoring r0-r3 & r12 is done from stack location where
> hardware saves it, not from the location on stack where these registers
> were saved.
> 
> To clarify, on stm32f429 discovery board:
> 
> 1. before svc, sp - 0x90009ff8
> 2. r0-r3,r12 saved to 0x90009ff8 - 0x9000a00b
> 3. upon svc, h/w decrements sp by 32 & pushes registers onto stack
> 4. after svc,  sp - 0x90009fd8
> 5. r0-r3,r12 restored from 0x90009fd8 - 0x90009feb
> 
> Above means r0-r3,r12 is not restored from the location where they are
> saved, but since hardware pushes the registers onto stack, the registers
> are restored correctly.
> 
> Note that during register saving to stack (step 2), it goes past
> 0x9000a000. And it seems, based on objdump, there are global symbols
> residing there, and it perhaps can cause issues on a non-XIP Kernel
> (on XIP, data section is setup later).
> 
> Based on the analysis above, manually saving registers onto stack is at
> best no-op and at worst can cause data section corruption. Hence remove
> storing of registers onto stack before svc.
> 
> Fixes: b70cd406d7fe ("ARM: 8671/1: V7M: Preserve registers across switch from Thread to Handler mode")
> 
> Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>
> ---
>  arch/arm/mm/proc-v7m.S | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/mm/proc-v7m.S b/arch/arm/mm/proc-v7m.S
> index efebf4120a0c..1a49d503eafc 100644
> --- a/arch/arm/mm/proc-v7m.S
> +++ b/arch/arm/mm/proc-v7m.S
> @@ -132,7 +132,6 @@ ENDPROC(cpu_cm7_proc_fin)
>  	dsb
>  	mov	r6, lr			@ save LR
>  	ldr	sp, =init_thread_union + THREAD_START_SP
> -	stmia	sp, {r0-r3, r12}
>  	cpsie	i
>  	svc	#0
>  1:	cpsid	i
> 

Acked-by: Vladimir Murzin <vladimir.murzin@arm.com>

Thanks
Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
