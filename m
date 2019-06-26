Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CAA3562C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 08:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GuMXX3o2CJfm6nsi7dfyht6g/QqPmE8qTc9iGMc+nUw=; b=cNicnA9CsQ1Fvs
	MG65xWLcspVVNxg7f+pN5xBy485BbmEJX3m12MEnpsmeQp4vBCnxs6ky9VR501tyqLJjWK2DpFUIy
	p08rVZayhwMhMKn1h/cGfVJ0gGFuArQ4N0meIaD8LEyu3INHIERG8Tm97Ma5ozqMpl1itrAo/x3CS
	kTBEkFwVBua1VzoAN8f8N9EsRwjTdmCLHG9rLRzNMtZh5sE6duPQ9TukVMf9SrxEf49OJVT+E8SGT
	cv3okvrV6pKGMLkFOFA5aippALAWsYlNBAE/SSEcme/G+iXfTHaqJKqa+vWn4pCj/KE/ejKQjifWB
	m9atpB6YBAkU4MZ4JTtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg1qc-00078Z-4U; Wed, 26 Jun 2019 06:56:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hg1qD-00076q-DJ
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 06:55:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DB5DE2B;
 Tue, 25 Jun 2019 23:55:35 -0700 (PDT)
Received: from [10.37.8.13] (unknown [10.37.8.13])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 844713F246;
 Tue, 25 Jun 2019 23:57:23 -0700 (PDT)
Subject: Re: [PATCH 27/59] KVM: arm64: nv: Respect virtual HCR_EL2.TVM and
 TRVM settings
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-28-marc.zyngier@arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <b34ac199-4d12-74b7-3f78-acd871707296@arm.com>
Date: Wed, 26 Jun 2019 07:55:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190621093843.220980-28-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_235537_520760_FF3089BE 
X-CRM114-Status: GOOD (  20.74  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Jintack Lim <jintack@cs.columbia.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06/21/2019 10:38 AM, Marc Zyngier wrote:
> From: Jintack Lim <jintack.lim@linaro.org>
> 
> Forward the EL1 virtual memory register traps to the virtual EL2 if they
> are not coming from the virtual EL2 and the virtual HCR_EL2.TVM or TRVM
> bit is set.
> 
> This is for recursive nested virtualization.
> 
> Signed-off-by: Jintack Lim <jintack.lim@linaro.org>
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>  arch/arm64/kvm/sys_regs.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> index 582d62aa48b7..0f74b9277a86 100644
> --- a/arch/arm64/kvm/sys_regs.c
> +++ b/arch/arm64/kvm/sys_regs.c
> @@ -436,6 +436,27 @@ static bool access_dcsw(struct kvm_vcpu *vcpu,
>  	return true;
>  }
>  
> +/* This function is to support the recursive nested virtualization */
> +static bool forward_vm_traps(struct kvm_vcpu *vcpu, struct sys_reg_params *p)
> +{
> +	u64 hcr_el2 = __vcpu_sys_reg(vcpu, HCR_EL2);
> +
> +	/* If a trap comes from the virtual EL2, the host hypervisor handles. */
> +	if (vcpu_mode_el2(vcpu))
> +		return false;
> +
> +	/*
> +	 * If the virtual HCR_EL2.TVM or TRVM bit is set, we need to foward
> +	 * this trap to the virtual EL2.
> +	 */
> +	if ((hcr_el2 & HCR_TVM) && p->is_write)
> +		return true;
> +	else if ((hcr_el2 & HCR_TRVM) && !p->is_write)
> +		return true;
> +
> +	return false;
> +}
> +
>  /*
>   * Generic accessor for VM registers. Only called as long as HCR_TVM
>   * is set. If the guest enables the MMU, we stop trapping the VM
> @@ -452,6 +473,9 @@ static bool access_vm_reg(struct kvm_vcpu *vcpu,
>  	if (el12_reg(p) && forward_nv_traps(vcpu))
>  		return false;
>  
> +	if (!el12_reg(p) && forward_vm_traps(vcpu, p))
> +		return kvm_inject_nested_sync(vcpu, kvm_vcpu_get_hsr(vcpu));

Since we already have forward_traps(), isn't this just:

	if (!el12_reg(p) && forward_traps(vcpu, p->is_write ? HCR_TVM : HCR_TRVM))
		return true;

We could maybe simplify forward_vm_traps() to just call forward_traps()
similar to forward_nv_traps().

Cheers,

Julien

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
