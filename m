Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 406DB5089D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 12:19:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OQv9GRYpgibkmYmdKTcKPtar0lNk+Pl7JahzGdp9Saw=; b=Dg9dtXl6zene2MGSlLOmaY9pp
	yn40Da3lJP4Vsy8KTnDYJoxQ54L12GcewsorCchibO6ia2xpeHEg2uWeXF2Kon0dK/v7BjisHo1vq
	CsU2yyqe5Edceyx/9jfYR27bfM21+FaIa0tIHVV2hkZSu5/XAkUT2UXiuIWZeTnDnyL9YUBEwkUn0
	hIItMuQgykqmomNvWzchFM1LsC6Nv33fY67CAZZz1uc8nhmp5x7SIkgZje00lW5VwQgEfDbOoEDWH
	mdouAvTNmr4FqGINgoeYEl27dDfN9nOAfYyb93lo5cbkxh7In8GuxzFq7vzPy0OT1XcjCtlbRK4jX
	8WKCCvkUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfM4I-00035u-PX; Mon, 24 Jun 2019 10:19:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfM44-00035Y-MA
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 10:19:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3E7952B;
 Mon, 24 Jun 2019 03:19:08 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 023573F718;
 Mon, 24 Jun 2019 03:19:06 -0700 (PDT)
Subject: Re: [PATCH 05/59] KVM: arm64: nv: Reset VCPU to EL2 registers if VCPU
 nested virt is set
To: marc.zyngier@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-6-marc.zyngier@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <8f545b5a-ceb6-a5c9-ad21-485f0e63f6e5@arm.com>
Date: Mon, 24 Jun 2019 11:19:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190621093843.220980-6-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_031908_772908_E58859AD 
X-CRM114-Status: GOOD (  16.53  )
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
Cc: julien.thierry@arm.com, andre.przywara@arm.com, christoffer.dall@arm.com,
 dave.martin@arm.com, james.morse@arm.com, jintack@cs.columbia.edu
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 21/06/2019 10:37, Marc Zyngier wrote:
> From: Christoffer Dall <christoffer.dall@arm.com>
> 
> Reset the VCPU with PSTATE.M = EL2h when the nested virtualization
> feature is enabled on the VCPU.
> 
> Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>   arch/arm64/kvm/reset.c | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
> index 1140b4485575..675ca07dbb05 100644
> --- a/arch/arm64/kvm/reset.c
> +++ b/arch/arm64/kvm/reset.c
> @@ -52,6 +52,11 @@ static const struct kvm_regs default_regs_reset = {
>   			PSR_F_BIT | PSR_D_BIT),
>   };
>   
> +static const struct kvm_regs default_regs_reset_el2 = {
> +	.regs.pstate = (PSR_MODE_EL2h | PSR_A_BIT | PSR_I_BIT |
> +			PSR_F_BIT | PSR_D_BIT),
> +};
> +
>   static const struct kvm_regs default_regs_reset32 = {
>   	.regs.pstate = (PSR_AA32_MODE_SVC | PSR_AA32_A_BIT |
>   			PSR_AA32_I_BIT | PSR_AA32_F_BIT),
> @@ -302,6 +307,8 @@ int kvm_reset_vcpu(struct kvm_vcpu *vcpu)
>   			if (!cpu_has_32bit_el1())
>   				goto out;
>   			cpu_reset = &default_regs_reset32;
> +		} else if (test_bit(KVM_ARM_VCPU_NESTED_VIRT, vcpu->arch.features)) {

minor nit: "else if nested_virt_in_use(vcpu)" ?

Either ways:

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
