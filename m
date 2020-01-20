Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3FB142863
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 11:46:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NrITKnZPJcyJ+445wsDqI7orUE5dfvnGeopDsleAOSY=; b=RV8vbENb+t8e9H
	auxFAiDH/ictEwKmuFr+QF6RwrsmOUu4dpFjoymW+oMm3BQw4EdN3LgX5StJSFEkxqwq57E3m1n77
	3VQ40EC0k7GAtAMTqas0brMxBk7Iy9Gxdvox/lW1xrtv8q+tOELmysM3QtEhH2jg4Jb68wcGuWQmS
	CHZbjaXlfr/WuEGDY+pePDu48JUAMqqjcBiB9AwyQubTbN3JSnUBsWJT791Q1mgJK/OPfzzfJVFfU
	6ynbUY13jyrWkkJrfr77cnBXvOjB4YOxpUlpTCXpeJ/Q+/EmxE3S13dshdcRRfsq5Kd0Pz4U09cI5
	pUQk5hli25zkEl/VYfUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itUZa-0003rI-TT; Mon, 20 Jan 2020 10:46:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itUZL-0003ql-VP
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 10:46:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0685330E;
 Mon, 20 Jan 2020 02:46:07 -0800 (PST)
Received: from [10.2.69.39] (unknown [10.2.69.39])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 81BAA3F68E;
 Mon, 20 Jan 2020 02:46:06 -0800 (PST)
Subject: Re: [PATCH] ARM: virt: Relax arch timer version check during early
 boot
To: linux-arm-kernel@lists.infradead.org
References: <1579097798-106243-1-git-send-email-vladimir.murzin@arm.com>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <eb889279-87f2-d674-9299-169794c285eb@arm.com>
Date: Mon, 20 Jan 2020 10:46:05 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1579097798-106243-1-git-send-email-vladimir.murzin@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_024608_054446_6D0C24B9 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: maz@kernel.org, kvmarm@lists.cs.columbia.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+ Marc
+ kvmarm@lists.cs.columbia.edu

On 1/15/20 2:16 PM, Vladimir Murzin wrote:
> Updates to the Generic Timer architecture allow ID_PFR1.GenTimer to
> have values other than 0 or 1. At the moment, Linux is quite strict in
> the way it handles this field at early boot and will not configure
> arch timer if it doesn't find the value 1.
> 
> Since here use ubfx for arch timer version extraction (hyb-stub build
> with -march=armv7-a, so it is safe)
> 
> To help backports (even though the code was correct at the time of writing)
> Fixes: 8ec58be9f3ff ("ARM: virt: arch_timers: enable access to physical timers")
> Signed-off-by: Vladimir Murzin <vladimir.murzin@arm.com>
> ---
>  arch/arm/kernel/hyp-stub.S | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/kernel/hyp-stub.S b/arch/arm/kernel/hyp-stub.S
> index ae50203..6607fa8 100644
> --- a/arch/arm/kernel/hyp-stub.S
> +++ b/arch/arm/kernel/hyp-stub.S
> @@ -146,10 +146,9 @@ ARM_BE8(orr	r7, r7, #(1 << 25))     @ HSCTLR.EE
>  #if !defined(ZIMAGE) && defined(CONFIG_ARM_ARCH_TIMER)
>  	@ make CNTP_* and CNTPCT accessible from PL1
>  	mrc	p15, 0, r7, c0, c1, 1	@ ID_PFR1
> -	lsr	r7, #16
> -	and	r7, #0xf
> -	cmp	r7, #1
> -	bne	1f
> +	ubfx	r7, r7, #16, #4
> +	teq	r7, #0
> +	beq	1f
>  	mrc	p15, 4, r7, c14, c1, 0	@ CNTHCTL
>  	orr	r7, r7, #3		@ PL1PCEN | PL1PCTEN
>  	mcr	p15, 4, r7, c14, c1, 0	@ CNTHCTL
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
