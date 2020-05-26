Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 815FC1B46C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 16:00:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JCamoUPoObdsiDFE+WZvz5GRLETnHcMybfYBChfPYZI=; b=kHY7PSOx2Gx0MmomL+oKMu9Om
	BVSPurewAkSgop71JDlTp4Tr9azs0daU4HKyQQpOxgL5he+LNk13o28HT8wxdTLyKHx3fN3GpBArB
	HxjT/RLwdy1+buIeQ51UNKR+FLYfkdVFL0qNaFO3D1mkHRzxI9WgWJ17W31J0EQNXfbK5ESU6xq3L
	TfDWJ7/3NYgdoFeEheVHFR2u0A1YwHcalAtu1yjfBp7Kh8XSIBCe6hlzwIegeT3xlED2glbSZnRwP
	oHLPZjfTyZBp/lEkGnaGrm2IzwmpQ3GyF8h0AE1nY1UjJDAJ3Xw7lq5WO1LZ7Hhoxo05+X9z2zULw
	6H9mA6ZcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRFuw-0005ON-Ka; Wed, 22 Apr 2020 13:59:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRFuo-0005Mt-0L
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 13:59:51 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 280B22077D;
 Wed, 22 Apr 2020 13:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587563988;
 bh=OKor0O1lAwDsiHEhIHm+ZWkyVKAQBwA4AAHrzX1Q+v4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Mft597zjrjfiYPCTD7S4lA3sg14fCZ2v2U47Z6Du5U5NKrMl5NA1BpiDTbr2xAimj
 47DVnc9Fv7lo3ZnBI6UJOPGcZpV//wtWy4jdl3wOzpAv81yu35tKsTyUMnnhnGbfhl
 h4An5H97MXOwUnn3qKU24hiU2sZED7EywJKFlAAc=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jRFuk-005WlJ-HE; Wed, 22 Apr 2020 14:59:46 +0100
MIME-Version: 1.0
Date: Wed, 22 Apr 2020 14:59:46 +0100
From: Marc Zyngier <maz@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH 02/26] KVM: arm64: Move __load_guest_stage2 to kvm_mmu.h
In-Reply-To: <7bfefbb0-a467-3e43-6e22-466ae7184a1f@arm.com>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-3-maz@kernel.org>
 <7bfefbb0-a467-3e43-6e22-466ae7184a1f@arm.com>
Message-ID: <df8c5f459f449c5e1180dcb2a48d11b0@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: suzuki.poulose@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, dave.martin@arm.com, jintack@cs.columbia.edu,
 alexandru.elisei@arm.com, gcherian@marvell.com, prime.zeng@hisilicon.com,
 will@kernel.org, catalin.marinas@arm.com, mark.rutland@arm.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_065950_086564_13E71317 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, kvm@vger.kernel.org, jintack@cs.columbia.edu,
 andre.przywara@arm.com, christoffer.dall@arm.com, kvmarm@lists.cs.columbia.edu,
 will@kernel.org, gcherian@marvell.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, prime.zeng@hisilicon.com,
 catalin.marinas@arm.com, alexandru.elisei@arm.com, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On 2020-04-22 14:51, Suzuki K Poulose wrote:
> Hi Marc,
> 
> 
> On 04/22/2020 01:00 PM, Marc Zyngier wrote:
>> Having __load_guest_stage2 in kvm_hyp.h is quickly going to trigger
>> a circular include problem. In order to avoid this, let's move
>> it to kvm_mmu.h, where it will be a better fit anyway.
>> 
>> In the process, drop the __hyp_text annotation, which doesn't help
>> as the function is marked as __always_inline.
>> 
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
> 
>> ---
>>   arch/arm64/include/asm/kvm_hyp.h | 18 ------------------
>>   arch/arm64/include/asm/kvm_mmu.h | 17 +++++++++++++++++
>>   2 files changed, 17 insertions(+), 18 deletions(-)
>> 
>> diff --git a/arch/arm64/include/asm/kvm_hyp.h 
>> b/arch/arm64/include/asm/kvm_hyp.h
>> index fe57f60f06a89..dcb63bf941057 100644
>> --- a/arch/arm64/include/asm/kvm_hyp.h
>> +++ b/arch/arm64/include/asm/kvm_hyp.h
>> @@ -10,7 +10,6 @@
>>   #include <linux/compiler.h>
>>   #include <linux/kvm_host.h>
>>   #include <asm/alternative.h>
>> -#include <asm/kvm_mmu.h>
>>   #include <asm/sysreg.h>
>>     #define __hyp_text __section(.hyp.text) notrace
>> @@ -88,22 +87,5 @@ void deactivate_traps_vhe_put(void);
>>   u64 __guest_enter(struct kvm_vcpu *vcpu, struct kvm_cpu_context 
>> *host_ctxt);
>>   void __noreturn __hyp_do_panic(unsigned long, ...);
>>   -/*
>> - * Must be called from hyp code running at EL2 with an updated VTTBR
>> - * and interrupts disabled.
>> - */
>> -static __always_inline void __hyp_text __load_guest_stage2(struct kvm 
>> *kvm)
>> -{
>> -	write_sysreg(kvm->arch.vtcr, vtcr_el2);
>> -	write_sysreg(kvm_get_vttbr(kvm), vttbr_el2);
>> -
>> -	/*
>> -	 * ARM errata 1165522 and 1530923 require the actual execution of 
>> the
>> -	 * above before we can switch to the EL1/EL0 translation regime used 
>> by
>> -	 * the guest.
>> -	 */
>> -	asm(ALTERNATIVE("nop", "isb", ARM64_WORKAROUND_SPECULATIVE_AT_VHE));
>> -}
>> -
>>   #endif /* __ARM64_KVM_HYP_H__ */
>>   diff --git a/arch/arm64/include/asm/kvm_mmu.h 
>> b/arch/arm64/include/asm/kvm_mmu.h
>> index 30b0e8d6b8953..5ba1310639ec6 100644
>> --- a/arch/arm64/include/asm/kvm_mmu.h
>> +++ b/arch/arm64/include/asm/kvm_mmu.h
>> @@ -604,5 +604,22 @@ static __always_inline u64 kvm_get_vttbr(struct 
>> kvm *kvm)
>>   	return kvm_phys_to_vttbr(baddr) | vmid_field | cnp;
>>   }
>>   +/*
>> + * Must be called from hyp code running at EL2 with an updated VTTBR
>> + * and interrupts disabled.
>> + */
>> +static __always_inline void __load_guest_stage2(struct kvm *kvm)
>> +{
>> +	write_sysreg(kvm->arch.vtcr, vtcr_el2);
>> +	write_sysreg(kvm_get_vttbr(kvm), vttbr_el2);
>> +
>> +	/*
>> +	 * ARM erratum 1165522 requires the actual execution of the above
> 
> Is it intentional to drop the reference to errata 1530923 ?

No, that's obviously the effect of a bad conflict resolution during a 
rebase.
I'll fix it now, thanks for spotting it.

> Otherwise :
> 
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Cheers,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
