Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7455950B80
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 15:08:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AhoJiFeqqnaGmUen9cbFdIDTan2XJxwt0LeLBoI3w0c=; b=kWIHRSaVlmYKsx
	+8C3E/kTRxWg4i9RxBRg65nDF3UirsHxCYYg2jgwQyQdXlfUv09lqd7begudUWfzhL5W/l0TIsHno
	htqbRLIL1LCVCJdINVczOIgBrxYGL0135qiGyfuaUoKeng+uJTllOhxvtVQE4VjQUeaj/rIpxvzp+
	eGes6C65Y08n/3J5NsmS/I/LDSLW8v6rYc2sfJmRZomtnE8aLnOCIuh7YsGFooGgmCs3ItFRhCj83
	PRva5qfRtq6zGhkEGb+AlRVx1AKHI38V3s57cb+hNQjxYmGv0kNeZ3eBSUEMA8IZVqZPypoQuxxRQ
	Q9lfk7HMDFGSbCpyQrYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOhs-0005iX-1M; Mon, 24 Jun 2019 13:08:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOhg-0005hf-8I
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 13:08:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4F0C4344;
 Mon, 24 Jun 2019 06:08:11 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EC5173F71E;
 Mon, 24 Jun 2019 06:08:09 -0700 (PDT)
Date: Mon, 24 Jun 2019 14:08:07 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH 09/59] KVM: arm64: nv: Add nested virt VCPU primitives
 for vEL2 VCPU state
Message-ID: <20190624130807.GS2790@e103592.cambridge.arm.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-10-marc.zyngier@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621093843.220980-10-marc.zyngier@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_060812_333582_4AAF67C2 
X-CRM114-Status: GOOD (  16.87  )
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
Cc: kvm@vger.kernel.org, Julien Thierry <julien.thierry@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 10:37:53AM +0100, Marc Zyngier wrote:
> From: Christoffer Dall <christoffer.dall@arm.com>
> 
> When running a nested hypervisor we commonly have to figure out if
> the VCPU mode is running in the context of a guest hypervisor or guest
> guest, or just a normal guest.
> 
> Add convenient primitives for this.
> 
> Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>  arch/arm64/include/asm/kvm_emulate.h | 55 ++++++++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
> index 39ffe41855bc..8f201ea56f6e 100644
> --- a/arch/arm64/include/asm/kvm_emulate.h
> +++ b/arch/arm64/include/asm/kvm_emulate.h
> @@ -191,6 +191,61 @@ static inline void vcpu_set_reg(struct kvm_vcpu *vcpu, u8 reg_num,
>  		vcpu_gp_regs(vcpu)->regs.regs[reg_num] = val;
>  }
>  
> +static inline bool vcpu_mode_el2_ctxt(const struct kvm_cpu_context *ctxt)
> +{
> +	unsigned long cpsr = ctxt->gp_regs.regs.pstate;
> +	u32 mode;
> +
> +	if (cpsr & PSR_MODE32_BIT)
> +		return false;
> +
> +	mode = cpsr & PSR_MODE_MASK;
> +
> +	return mode == PSR_MODE_EL2h || mode == PSR_MODE_EL2t;

We could also treat PSR_MODE32_BIT and PSR_MODE_MASK as a single field,
similarly as in the next patch, say:

	switch (ctxt->gp_regs.regs.pstate & (PSR_MODE32_BIT | PSR_MODE_MASK)) {
	case PSR_MODE_EL2h:
	case PSR_MODE_EL2t:
		return true;
	}

	return false;

(This is blatant bikeshedding...)

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
