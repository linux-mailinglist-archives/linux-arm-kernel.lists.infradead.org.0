Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3100B1B46D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 16:07:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T8aYL3vdb78qdM00nKn/DforjRjQdXUS+RXB4fwCvNg=; b=CEYPOjNtfbdsGtDmrbwAWdntq
	0w61sM0mDKwivbExTK7ecvrpPAR8uzKjBIdMQRof4d9HpsOPscaJdX1hMZcHAVdeiBIswaq3FOubs
	iqywDAE5sY2toGBYSbMM7R3EMGMroU/BPHlK7kjs4e2YeXx4zTZuebJbizx3g2+sRWFiXf0AOYWTU
	9xNBiiq+qpelHflWZsuOV9MLefPPfFwUzU0+ERrvW41elFfK3Gd4bDQrIcW8AbAyOGA+W6bysmMVY
	mpDhBi27ZOuMS8kbFF7JyBM3mkj6LSxyb6T0OlUS1rFHvNNLwkUrH5r+ydH7/ksU/gtD8kfw0mYaY
	1era3Xt2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRG22-0003ow-EC; Wed, 22 Apr 2020 14:07:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRG1t-0003o8-Vc
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 14:07:11 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8AC872077D;
 Wed, 22 Apr 2020 14:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587564429;
 bh=Ydp+HSH/1XyIOqk56Lxy/+GbC3ZFcSR/6FAxFaOb2nE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=EWkwFwctcOsyKFAI4n3DUjoRKEcuGfrIPU1mkoPdOKoq2TumxieGGmxsVfD0oyIqx
 e1r7FYq431lQ0W1VuL/4HzGIyXPrwgvkYs2Z9wzfGIicm/6FDWagx+VP6GyMYxtjUg
 pdqiZH9Zao4SigAhHAe2MXe0HVND6s3Nbo5s8czI=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jRG1r-005WqO-UF; Wed, 22 Apr 2020 15:07:08 +0100
MIME-Version: 1.0
Date: Wed, 22 Apr 2020 15:07:07 +0100
From: Marc Zyngier <maz@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH 01/26] KVM: arm64: Check advertised Stage-2 page size
 capability
In-Reply-To: <32cc9a60-1b47-f3f7-d18d-d39db397ea55@arm.com>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-2-maz@kernel.org>
 <32cc9a60-1b47-f3f7-d18d-d39db397ea55@arm.com>
Message-ID: <06c3b2c9b23beeeb224d263077299039@kernel.org>
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
X-CRM114-CacheID: sfid-20200422_070710_055474_C4E4E243 
X-CRM114-Status: GOOD (  16.04  )
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

On 2020-04-22 14:40, Suzuki K Poulose wrote:
> Hi Marc,
> 
> On 04/22/2020 01:00 PM, Marc Zyngier wrote:
>> With ARMv8.5-GTG, the hardware (or more likely a hypervisor) can
>> advertise the supported Stage-2 page sizes.
>> 
>> Let's check this at boot time.
>> 
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>   arch/arm64/include/asm/kvm_host.h |  2 +-
>>   arch/arm64/include/asm/sysreg.h   |  3 +++
>>   arch/arm64/kernel/cpufeature.c    |  8 +++++++
>>   arch/arm64/kvm/reset.c            | 40 
>> ++++++++++++++++++++++++++++---
>>   virt/kvm/arm/arm.c                |  4 +---
>>   5 files changed, 50 insertions(+), 7 deletions(-)
>> 
>> diff --git a/arch/arm64/include/asm/kvm_host.h 
>> b/arch/arm64/include/asm/kvm_host.h
>> index 32c8a675e5a4a..7dd8fefa6aecd 100644
>> --- a/arch/arm64/include/asm/kvm_host.h
>> +++ b/arch/arm64/include/asm/kvm_host.h
>> @@ -670,7 +670,7 @@ static inline int kvm_arm_have_ssbd(void)
>>   void kvm_vcpu_load_sysregs(struct kvm_vcpu *vcpu);
>>   void kvm_vcpu_put_sysregs(struct kvm_vcpu *vcpu);
>>   -void kvm_set_ipa_limit(void);
>> +int kvm_set_ipa_limit(void);
>>     #define __KVM_HAVE_ARCH_VM_ALLOC
>>   struct kvm *kvm_arch_alloc_vm(void);
>> diff --git a/arch/arm64/include/asm/sysreg.h 
>> b/arch/arm64/include/asm/sysreg.h
>> index ebc6224328318..5d10c9148e844 100644
>> --- a/arch/arm64/include/asm/sysreg.h
>> +++ b/arch/arm64/include/asm/sysreg.h
>> @@ -686,6 +686,9 @@
>>   #define ID_AA64ZFR0_SVEVER_SVE2		0x1
>>     /* id_aa64mmfr0 */
>> +#define ID_AA64MMFR0_TGRAN4_2_SHIFT	40
>> +#define ID_AA64MMFR0_TGRAN64_2_SHIFT	36
>> +#define ID_AA64MMFR0_TGRAN16_2_SHIFT	32
>>   #define ID_AA64MMFR0_TGRAN4_SHIFT	28
>>   #define ID_AA64MMFR0_TGRAN64_SHIFT	24
>>   #define ID_AA64MMFR0_TGRAN16_SHIFT	20
>> diff --git a/arch/arm64/kernel/cpufeature.c 
>> b/arch/arm64/kernel/cpufeature.c
>> index 9fac745aa7bb2..9892a845d06c9 100644
>> --- a/arch/arm64/kernel/cpufeature.c
>> +++ b/arch/arm64/kernel/cpufeature.c
>> @@ -208,6 +208,14 @@ static const struct arm64_ftr_bits 
>> ftr_id_aa64zfr0[] = {
>>   };
>>     static const struct arm64_ftr_bits ftr_id_aa64mmfr0[] = {
>> +	/*
>> +	 * Page size not being supported at Stage-2 are not fatal. You
>> +	 * just give up KVM if PAGE_SIZE isn't supported there. Go fix
>> +	 * your favourite nesting hypervisor.
>> +	 */
>> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_EXACT, 
>> ID_AA64MMFR0_TGRAN4_2_SHIFT, 4, 1),
>> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_EXACT, 
>> ID_AA64MMFR0_TGRAN64_2_SHIFT, 4, 1),
>> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_EXACT, 
>> ID_AA64MMFR0_TGRAN16_2_SHIFT, 4, 1),
> 
> One minor issue with this is, if we get a system with cpus having 
> values
> 0 and 2 (both of which indicates the stage-2 support), we might reset
> the value to 1 for the feature indicating, we don't support and block
> KVM. But, we can blame the nesting hypervisor for not emulating this to
> (2). Do we need a comment to make this explicit here ?

Sure. How about something like:

"There is a small corner case where the hypervisor could explicitly 
advertise
  a given granule size at Stage-2 (value 2) on some vCPUs, and use the 
fallback
  to Stage-1 (value 0) for other vCPUs. Although this is not forbidden by 
the
  architecture, it indicates that the hypervisor is being silly (or 
buggy).
  We make no effort to cope with this and pretend that if these fields 
are
  inconsistent across vCPUs, then it isn't worth trying to bring KVM up."

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
