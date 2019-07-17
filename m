Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA9D6B9F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:20:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=APUSoMsIq8CAW+aPChrqctFI8NCsgXfzEX9QAqimwVw=; b=TzEwyLVK2cIan2
	ySxgmCKMpOX6EkALz1d09b63NpLlYXMs7zVQAOwPiK7x3tceCk5l0huqbXeiTFREEM+DUP0ASFJpg
	eh7kTlI/IM49jvACep0ScoZFTeAr6QJLuDKOknAM6HDb0szD1/vPerArlJejRljcwkfd4489Bu54O
	QuKpHdYXtlvVbaonUqe/JFgHPpTn7pCgqq8fD2iIMXafnrC8ftT2bm6srlPoAuqLkworfhra3nZll
	QSrbMo7e5xGct7E0LWIWXxW+maQstkH6lzexHAhIJczbN7+sDQM4wi8eywaJWvX5jUXBBsjYjXwss
	iWXGlmPjiVHavf2GEw6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnh2W-0003WU-8S; Wed, 17 Jul 2019 10:20:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnh2H-0003Vp-I3
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:19:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C88F428;
 Wed, 17 Jul 2019 03:19:44 -0700 (PDT)
Received: from [10.1.196.217] (e121566-lin.cambridge.arm.com [10.1.196.217])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F31903F71A;
 Wed, 17 Jul 2019 03:19:43 -0700 (PDT)
Subject: Re: [PATCH 55/59] arm64: KVM: nv: Add handling of EL2-specific timer
 registers
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-56-marc.zyngier@arm.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <9dca3fa9-e02b-ad4a-f9d0-0d637177b932@arm.com>
Date: Wed, 17 Jul 2019 11:19:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190621093843.220980-56-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_031945_641975_8ED72EBC 
X-CRM114-Status: GOOD (  13.14  )
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
Cc: Andre Przywara <andre.przywara@arm.com>, Dave Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/21/19 10:38 AM, Marc Zyngier wrote:
> Add the required handling for EL2 and EL02 registers, as
> well as EL1 registers used in the E2H context.

Shouldn't that be "[..] EL0 registers used in E2H context"?

Thanks,
Alex
>
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>  arch/arm64/kvm/sys_regs.c | 72 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 72 insertions(+)
>
> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> index ba3bcd29c02d..0bd6a66b621e 100644
> --- a/arch/arm64/kvm/sys_regs.c
> +++ b/arch/arm64/kvm/sys_regs.c
> @@ -1361,20 +1361,92 @@ static bool access_arch_timer(struct kvm_vcpu *vcpu,
>  
>  	switch (reg) {
>  	case SYS_CNTP_TVAL_EL0:
> +		if (vcpu_mode_el2(vcpu) && vcpu_el2_e2h_is_set(vcpu))
> +			tmr = TIMER_HPTIMER;
> +		else
> +			tmr = TIMER_PTIMER;
> +		treg = TIMER_REG_TVAL;
> +		break;
> +
>  	case SYS_AARCH32_CNTP_TVAL:
> +	case SYS_CNTP_TVAL_EL02:
>  		tmr = TIMER_PTIMER;
>  		treg = TIMER_REG_TVAL;
>  		break;
> +
> +	case SYS_CNTV_TVAL_EL02:
> +		tmr = TIMER_VTIMER;
> +		treg = TIMER_REG_TVAL;
> +		break;
> +
> +	case SYS_CNTHP_TVAL_EL2:
> +		tmr = TIMER_HPTIMER;
> +		treg = TIMER_REG_TVAL;
> +		break;
> +
> +	case SYS_CNTHV_TVAL_EL2:
> +		tmr = TIMER_HVTIMER;
> +		treg = TIMER_REG_TVAL;
> +		break;
> +
>  	case SYS_CNTP_CTL_EL0:
> +		if (vcpu_mode_el2(vcpu) && vcpu_el2_e2h_is_set(vcpu))
> +			tmr = TIMER_HPTIMER;
> +		else
> +			tmr = TIMER_PTIMER;
> +		treg = TIMER_REG_CTL;
> +		break;
> +
>  	case SYS_AARCH32_CNTP_CTL:
> +	case SYS_CNTP_CTL_EL02:
>  		tmr = TIMER_PTIMER;
>  		treg = TIMER_REG_CTL;
>  		break;
> +
> +	case SYS_CNTV_CTL_EL02:
> +		tmr = TIMER_VTIMER;
> +		treg = TIMER_REG_CTL;
> +		break;
> +
> +	case SYS_CNTHP_CTL_EL2:
> +		tmr = TIMER_HPTIMER;
> +		treg = TIMER_REG_CTL;
> +		break;
> +
> +	case SYS_CNTHV_CTL_EL2:
> +		tmr = TIMER_HVTIMER;
> +		treg = TIMER_REG_CTL;
> +		break;
> +		
>  	case SYS_CNTP_CVAL_EL0:
> +		if (vcpu_mode_el2(vcpu) && vcpu_el2_e2h_is_set(vcpu))
> +			tmr = TIMER_HPTIMER;
> +		else
> +			tmr = TIMER_PTIMER;
> +		treg = TIMER_REG_CVAL;
> +		break;
> +
>  	case SYS_AARCH32_CNTP_CVAL:
> +	case SYS_CNTP_CVAL_EL02:
>  		tmr = TIMER_PTIMER;
>  		treg = TIMER_REG_CVAL;
>  		break;
> +
> +	case SYS_CNTV_CVAL_EL02:
> +		tmr = TIMER_VTIMER;
> +		treg = TIMER_REG_CVAL;
> +		break;
> +
> +	case SYS_CNTHP_CVAL_EL2:
> +		tmr = TIMER_HPTIMER;
> +		treg = TIMER_REG_CVAL;
> +		break;
> +
> +	case SYS_CNTHV_CVAL_EL2:
> +		tmr = TIMER_HVTIMER;
> +		treg = TIMER_REG_CVAL;
> +		break;
> +
>  	case SYS_CNTVOFF_EL2:
>  		tmr = TIMER_VTIMER;
>  		treg = TIMER_REG_VOFF;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
