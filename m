Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC827561B9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 07:31:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oNSEqjEzOJf+YvLEyDYQ3ARV2gHl8ib2yoNBTjSH4fo=; b=lINJSEOSSCJK0G
	p9FxW7/DDHLBIFBlJNC9lLpoEY+woRiOOG57J2s0JwoYBHXLOuNBTaQn5W2mwVZiHw87eF40Wl3Hl
	ekrCrGlnsplimVpWQLdjSwKa8/MCQrC+pzXnslF+y9wRr+lF4RxuqIAKjWHPC15IAkAYN2zntKrXu
	BW6HFaXVfVH3xjayrxlxuVqan+M5oAdYP+1e6jSmVT6SgNl+myezqADi/RXbM4lEFZLoWFcplunYm
	hr+KIrLw9P32JCq7TDSVV3l/nMAaye2H0/3r8OH4T/lFhOOR02HgKNq9+gKo0qhbj3mdB5lBrj7bu
	IXZU4gt1BlpL07YwR1MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg0X8-0008Jt-5h; Wed, 26 Jun 2019 05:31:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hg0Wb-0008Ip-R7
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 05:31:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 53F592B;
 Tue, 25 Jun 2019 22:31:14 -0700 (PDT)
Received: from [10.37.8.13] (unknown [10.37.8.13])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DA5A33F246;
 Tue, 25 Jun 2019 22:33:01 -0700 (PDT)
Subject: Re: [PATCH 26/59] KVM: arm64: nv: Respect the virtual HCR_EL2.NV bit
 setting
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-27-marc.zyngier@arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <8ad1b436-9325-2abb-648d-2cd3a3c9b113@arm.com>
Date: Wed, 26 Jun 2019 06:31:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190621093843.220980-27-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_223118_013167_3BFABCF6 
X-CRM114-Status: GOOD (  23.78  )
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
> Forward traps due to HCR_EL2.NV bit to the virtual EL2 if they are not
> coming from the virtual EL2 and the virtual HCR_EL2.NV bit is set.
> 
> In addition to EL2 register accesses, setting NV bit will also make EL12
> register accesses trap to EL2. To emulate this for the virtual EL2,
> forword traps due to EL12 register accessses to the virtual EL2 if the
> virtual HCR_EL2.NV bit is set.
> 
> This is for recursive nested virtualization.
> 
> Signed-off-by: Jintack Lim <jintack.lim@linaro.org>
> [Moved code to emulate-nested.c]
> Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>  arch/arm64/include/asm/kvm_arm.h    |  1 +
>  arch/arm64/include/asm/kvm_nested.h |  2 ++
>  arch/arm64/kvm/emulate-nested.c     | 28 ++++++++++++++++++++++++++++
>  arch/arm64/kvm/handle_exit.c        |  6 ++++++
>  arch/arm64/kvm/sys_regs.c           | 18 ++++++++++++++++++
>  5 files changed, 55 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/kvm_arm.h b/arch/arm64/include/asm/kvm_arm.h
> index 48e15af2bece..d21486274eeb 100644
> --- a/arch/arm64/include/asm/kvm_arm.h
> +++ b/arch/arm64/include/asm/kvm_arm.h
> @@ -24,6 +24,7 @@
>  
>  /* Hyp Configuration Register (HCR) bits */
>  #define HCR_FWB		(UL(1) << 46)
> +#define HCR_NV		(UL(1) << 42)
>  #define HCR_API		(UL(1) << 41)
>  #define HCR_APK		(UL(1) << 40)
>  #define HCR_TEA		(UL(1) << 37)
> diff --git a/arch/arm64/include/asm/kvm_nested.h b/arch/arm64/include/asm/kvm_nested.h
> index 645e5e11b749..61e71d0d2151 100644
> --- a/arch/arm64/include/asm/kvm_nested.h
> +++ b/arch/arm64/include/asm/kvm_nested.h
> @@ -11,5 +11,7 @@ static inline bool nested_virt_in_use(const struct kvm_vcpu *vcpu)
>  }
>  
>  int handle_wfx_nested(struct kvm_vcpu *vcpu, bool is_wfe);
> +extern bool forward_traps(struct kvm_vcpu *vcpu, u64 control_bit);
> +extern bool forward_nv_traps(struct kvm_vcpu *vcpu);
>  
>  #endif /* __ARM64_KVM_NESTED_H */
> diff --git a/arch/arm64/kvm/emulate-nested.c b/arch/arm64/kvm/emulate-nested.c
> index f829b8b04dc8..c406fd688b9f 100644
> --- a/arch/arm64/kvm/emulate-nested.c
> +++ b/arch/arm64/kvm/emulate-nested.c
> @@ -24,6 +24,27 @@
>  
>  #include "trace.h"
>  
> +bool forward_traps(struct kvm_vcpu *vcpu, u64 control_bit)

Should this one be static?

> +{
> +	bool control_bit_set;
> +
> +	if (!nested_virt_in_use(vcpu))
> +		return false;
> +
> +	control_bit_set = __vcpu_sys_reg(vcpu, HCR_EL2) & control_bit;
> +	if (!vcpu_mode_el2(vcpu) && control_bit_set) {
> +		kvm_inject_nested_sync(vcpu, kvm_vcpu_get_hsr(vcpu));
> +		return true;
> +	}
> +	return false;
> +}
> +
> +bool forward_nv_traps(struct kvm_vcpu *vcpu)
> +{
> +	return forward_traps(vcpu, HCR_NV);
> +}
> +
> +
>  /* This is borrowed from get_except_vector in inject_fault.c */
>  static u64 get_el2_except_vector(struct kvm_vcpu *vcpu,
>  		enum exception_type type)
> @@ -55,6 +76,13 @@ void kvm_emulate_nested_eret(struct kvm_vcpu *vcpu)
>  	u64 spsr, elr, mode;
>  	bool direct_eret;
>  
> +	/*
> +	 * Forward this trap to the virtual EL2 if the virtual
> +	 * HCR_EL2.NV bit is set and this is coming from !EL2.
> +	 */
> +	if (forward_nv_traps(vcpu))
> +		return;
> +
>  	/*
>  	 * Going through the whole put/load motions is a waste of time
>  	 * if this is a VHE guest hypervisor returning to its own
> diff --git a/arch/arm64/kvm/handle_exit.c b/arch/arm64/kvm/handle_exit.c
> index 39602a4c1d61..7e8b1ec1d251 100644
> --- a/arch/arm64/kvm/handle_exit.c
> +++ b/arch/arm64/kvm/handle_exit.c
> @@ -72,6 +72,12 @@ static int handle_smc(struct kvm_vcpu *vcpu, struct kvm_run *run)
>  {
>  	int ret;
>  
> +	/*
> +	 * Forward this trapped smc instruction to the virtual EL2.
> +	 */
> +	if ((vcpu_read_sys_reg(vcpu, HCR_EL2) & HCR_TSC) && forward_nv_traps(vcpu))

Not sure I understand why this would be only when the guest hyp also has
NV set.

If the guest hyp requested to trap smc instructions and that we received
one while in vel1, shouldn't we always forward it to the guest hyp to
let it implement the smc response the way it wants?

Cheers,

Julien

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
