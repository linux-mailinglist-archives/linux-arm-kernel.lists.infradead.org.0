Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4761B468F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 15:46:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=URDOfcS4Uc0Jty7QoD1Z/RHObPVbQnDYkb29MAXTRBQ=; b=lfagTDX8YvhCOCbvd3tStiljP
	APBiezFOHSooUC4SmrWX51Z3HCBpQq1xVCSoYJmQ2rITDNS/z4Y2Orl3Kzb2oCPh8smL//pdPThxH
	2szb5nWz22AccjIS8Qolah07EoxWP6tfTycD21MG9XAHq62uclphfCdoHrgVlvzyfN+a+fX+I2Aej
	FlSVcj8GXukLILrcg+RE2nzH7v2oeU36QcJzfkH1Su2yOy5squMpkP/PnqY00y/aqWy561I2AOJmp
	XZpgddmvfMqsxMlMoQPBVXcrzeNW5I2+IoZphHGrw+H4qs/gYLo7AoOgaasl+sNhY7heiLA3SIol1
	7g+vOiRBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRFi2-0005ZX-A8; Wed, 22 Apr 2020 13:46:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRFhj-0005TL-KL
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 13:46:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CE6E531B;
 Wed, 22 Apr 2020 06:46:18 -0700 (PDT)
Received: from [10.37.12.172] (unknown [10.37.12.172])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6BEC03F68F;
 Wed, 22 Apr 2020 06:46:15 -0700 (PDT)
Subject: Re: [PATCH 02/26] KVM: arm64: Move __load_guest_stage2 to kvm_mmu.h
To: maz@kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-3-maz@kernel.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <7bfefbb0-a467-3e43-6e22-466ae7184a1f@arm.com>
Date: Wed, 22 Apr 2020 14:51:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200422120050.3693593-3-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_064619_820945_8CA97B63 
X-CRM114-Status: GOOD (  20.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, will@kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, dave.martin@arm.com, gcherian@marvell.com,
 james.morse@arm.com, prime.zeng@hisilicon.com, catalin.marinas@arm.com,
 alexandru.elisei@arm.com, jintack@cs.columbia.edu,
 julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,


On 04/22/2020 01:00 PM, Marc Zyngier wrote:
> Having __load_guest_stage2 in kvm_hyp.h is quickly going to trigger
> a circular include problem. In order to avoid this, let's move
> it to kvm_mmu.h, where it will be a better fit anyway.
> 
> In the process, drop the __hyp_text annotation, which doesn't help
> as the function is marked as __always_inline.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>

> ---
>   arch/arm64/include/asm/kvm_hyp.h | 18 ------------------
>   arch/arm64/include/asm/kvm_mmu.h | 17 +++++++++++++++++
>   2 files changed, 17 insertions(+), 18 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
> index fe57f60f06a89..dcb63bf941057 100644
> --- a/arch/arm64/include/asm/kvm_hyp.h
> +++ b/arch/arm64/include/asm/kvm_hyp.h
> @@ -10,7 +10,6 @@
>   #include <linux/compiler.h>
>   #include <linux/kvm_host.h>
>   #include <asm/alternative.h>
> -#include <asm/kvm_mmu.h>
>   #include <asm/sysreg.h>
>   
>   #define __hyp_text __section(.hyp.text) notrace
> @@ -88,22 +87,5 @@ void deactivate_traps_vhe_put(void);
>   u64 __guest_enter(struct kvm_vcpu *vcpu, struct kvm_cpu_context *host_ctxt);
>   void __noreturn __hyp_do_panic(unsigned long, ...);
>   
> -/*
> - * Must be called from hyp code running at EL2 with an updated VTTBR
> - * and interrupts disabled.
> - */
> -static __always_inline void __hyp_text __load_guest_stage2(struct kvm *kvm)
> -{
> -	write_sysreg(kvm->arch.vtcr, vtcr_el2);
> -	write_sysreg(kvm_get_vttbr(kvm), vttbr_el2);
> -
> -	/*
> -	 * ARM errata 1165522 and 1530923 require the actual execution of the
> -	 * above before we can switch to the EL1/EL0 translation regime used by
> -	 * the guest.
> -	 */
> -	asm(ALTERNATIVE("nop", "isb", ARM64_WORKAROUND_SPECULATIVE_AT_VHE));
> -}
> -
>   #endif /* __ARM64_KVM_HYP_H__ */
>   
> diff --git a/arch/arm64/include/asm/kvm_mmu.h b/arch/arm64/include/asm/kvm_mmu.h
> index 30b0e8d6b8953..5ba1310639ec6 100644
> --- a/arch/arm64/include/asm/kvm_mmu.h
> +++ b/arch/arm64/include/asm/kvm_mmu.h
> @@ -604,5 +604,22 @@ static __always_inline u64 kvm_get_vttbr(struct kvm *kvm)
>   	return kvm_phys_to_vttbr(baddr) | vmid_field | cnp;
>   }
>   
> +/*
> + * Must be called from hyp code running at EL2 with an updated VTTBR
> + * and interrupts disabled.
> + */
> +static __always_inline void __load_guest_stage2(struct kvm *kvm)
> +{
> +	write_sysreg(kvm->arch.vtcr, vtcr_el2);
> +	write_sysreg(kvm_get_vttbr(kvm), vttbr_el2);
> +
> +	/*
> +	 * ARM erratum 1165522 requires the actual execution of the above

Is it intentional to drop the reference to errata 1530923 ?

Otherwise :

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
