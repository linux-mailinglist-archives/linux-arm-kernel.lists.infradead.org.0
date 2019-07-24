Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EBB73055
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 15:56:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vDwjT7ZSg74pLMskLFAxc5v4jLdVJosvEy2eKIYTpFc=; b=SzvGNzEWTf0jERATKGGyDfpap
	831ce6CgeLG5d7Ct8OsUIGZ4j6yg96eSXW5sB9p9tZ9OYhTGxQP8ZjkO/RbkwQkCTXS1o11l9/goE
	TqemFk7Bj7Wop9Gt+WfTKZESm0N6jy4JOyU0GP618FcuSinS6b3dqC3LlerdT0xzsUWOyEXzUcEgg
	A78CMJnX+4tITmtdxk75Inn+07rUNUC6sNr8oHWnDD/0NC7rZecZhCR4vLwYj0svOnUMoXxPvZzne
	avk2N3RshqM1i160ySHvWV+rxBgyarbV/NTUjKRdJt2SfDkGW6ZWrwh28S2KCfspGohx1D94KjZ30
	s4f+JIQkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHlA-0003kT-H2; Wed, 24 Jul 2019 13:56:48 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHl0-0003je-L0
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 13:56:40 +0000
Received: by mail-lj1-x242.google.com with SMTP id r9so44595536ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 06:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=semihalf-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=54j3Rj1BXvYBjlVWokMkDuv8Oaagn4PllYy8yHElvpY=;
 b=NwZd6yqTUcteXpUZ0IGi33Soy/VPvyQzZ//L8nseZ2jkBr5cmxpituFU0uUN8X0zGy
 nwKaovJdV3763+hbbhbIArizrT86nxgiRscQKYUZiJ8WAr+3Y//LRvVDMXe9da6vmYSJ
 EU7GkkUGBUdRaT9bCIQkCHjyc5wH95o/ONyNMlbLoOz7XfRn9Q5YM8CRer0ziB+/ewXv
 TjClo7gCgUcE/jVq55UyQGOfZiYpEOnZuIckWX84vzCDOHpcBcXHIyx+pQkgruC55JTf
 88883q5PF/LlRsx4mh6kR1p1MiJqzAHWpCd4otRMU64nY0tiA0z3XRDb9/OY+69RB0fe
 R/Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=54j3Rj1BXvYBjlVWokMkDuv8Oaagn4PllYy8yHElvpY=;
 b=CifJ+CxJzbszOHl+AcAVui0JV9iR15yWzi/Jw4OigbgjAQwViXjwOH9K6w918e1lRq
 y9sxy0+MTA6/JDu8PJu0Ll5zLxW172myawe3aZaLzvXoE14xekplUNFLt3PQ4MfV8FiU
 4FTmDIAsaPufL795lkOpS9Fq6ahhmXeCcdPBuljVa1UhAwa3Pzjf/9h8C/i4D5idMNIF
 pEvlFtwzYXJpTASuGFDfDi48so+WRrbKQKuRaiHwF5xhcMGvCpS0LMJ4cn37iLbZvAlt
 vK2B1c1m14aN5fl9DmwdpegKeQlEwfyWs//hxYCxbu2ue5+psD+QdH4MahmVM38mfekN
 EdLw==
X-Gm-Message-State: APjAAAXaJMWM1kjkLBfwMrOa5iEKTvkNdelEC0CroC3ajXpdRQoyaCXP
 bHwQ1jpxs7AnqFKJV2IRrNlzz8ZMhS4=
X-Google-Smtp-Source: APXvYqxO6yaPyMuq/MsVLMDvTjMxjWahFQFdCvdqAa57e+Yug9UF5euQajKuVL6dDDPv1F8dFEhYvw==
X-Received: by 2002:a2e:8396:: with SMTP id x22mr44283342ljg.135.1563976595050; 
 Wed, 24 Jul 2019 06:56:35 -0700 (PDT)
Received: from [192.168.1.9] ([83.68.95.66])
 by smtp.googlemail.com with ESMTPSA id r17sm8675692ljc.85.2019.07.24.06.56.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 06:56:34 -0700 (PDT)
Subject: Re: [PATCH 43/59] KVM: arm64: nv: Trap and emulate AT instructions
 from virtual EL2
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-44-marc.zyngier@arm.com>
 <0411c636-adbd-98d0-5191-2b073daaf68e@semihalf.com>
 <327dfc0e-e7c9-0d18-2615-1db5b05121f4@arm.com>
From: Tomasz Nowicki <tn@semihalf.com>
Message-ID: <5b4719fc-d189-41fa-cb64-9a731a80bf7e@semihalf.com>
Date: Wed, 24 Jul 2019 15:56:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <327dfc0e-e7c9-0d18-2615-1db5b05121f4@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_065638_831254_CC5F6AB4 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24.07.2019 14:39, Marc Zyngier wrote:
> On 24/07/2019 11:25, Tomasz Nowicki wrote:
>> On 21.06.2019 11:38, Marc Zyngier wrote:
>>> From: Jintack Lim <jintack.lim@linaro.org>
>>>
>>> When supporting nested virtualization a guest hypervisor executing AT
>>> instructions must be trapped and emulated by the host hypervisor,
>>> because untrapped AT instructions operating on S1E1 will use the wrong
>>> translation regieme (the one used to emulate virtual EL2 in EL1 instead
>>> of virtual EL1) and AT instructions operating on S12 will not work from
>>> EL1.
>>>
>>> This patch does several things.
>>>
>>> 1. List and define all AT system instructions to emulate and document
>>> the emulation design.
>>>
>>> 2. Implement AT instruction handling logic in EL2. This will be used to
>>> emulate AT instructions executed in the virtual EL2.
>>>
>>> AT instruction emulation works by loading the proper processor
>>> context, which depends on the trapped instruction and the virtual
>>> HCR_EL2, to the EL1 virtual memory control registers and executing AT
>>> instructions. Note that ctxt->hw_sys_regs is expected to have the
>>> proper processor context before calling the handling
>>> function(__kvm_at_insn) implemented in this patch.
>>>
>>> 4. Emulate AT S1E[01] instructions by issuing the same instructions in
>>> EL2. We set the physical EL1 registers, NV and NV1 bits as described in
>>> the AT instruction emulation overview.
>>>
>>> 5. Emulate AT A12E[01] instructions in two steps: First, do the stage-1
>>> translation by reusing the existing AT emulation functions.  Second, do
>>> the stage-2 translation by walking the guest hypervisor's stage-2 page
>>> table in software. Record the translation result to PAR_EL1.
>>>
>>> 6. Emulate AT S1E2 instructions by issuing the corresponding S1E1
>>> instructions in EL2. We set the physical EL1 registers and the HCR_EL2
>>> register as described in the AT instruction emulation overview.
>>>
>>> 7. Forward system instruction traps to the virtual EL2 if the corresponding
>>> virtual AT bit is set in the virtual HCR_EL2.
>>>
>>>     [ Much logic above has been reworked by Marc Zyngier ]
>>>
>>> Signed-off-by: Jintack Lim <jintack.lim@linaro.org>
>>> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
>>> Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
>>> ---
>>>    arch/arm64/include/asm/kvm_arm.h |   2 +
>>>    arch/arm64/include/asm/kvm_asm.h |   2 +
>>>    arch/arm64/include/asm/sysreg.h  |  17 +++
>>>    arch/arm64/kvm/hyp/Makefile      |   1 +
>>>    arch/arm64/kvm/hyp/at.c          | 217 +++++++++++++++++++++++++++++++
>>>    arch/arm64/kvm/hyp/switch.c      |  13 +-
>>>    arch/arm64/kvm/sys_regs.c        | 202 +++++++++++++++++++++++++++-
>>>    7 files changed, 450 insertions(+), 4 deletions(-)
>>>    create mode 100644 arch/arm64/kvm/hyp/at.c
>>>
>>
>> [...]
>>
>>> +
>>> +void __kvm_at_s1e01(struct kvm_vcpu *vcpu, u32 op, u64 vaddr)
>>> +{
>>> +	struct kvm_cpu_context *ctxt = &vcpu->arch.ctxt;
>>> +	struct mmu_config config;
>>> +	struct kvm_s2_mmu *mmu;
>>> +
>>> +	/*
>>> +	 * We can only get here when trapping from vEL2, so we're
>>> +	 * translating a guest guest VA.
>>> +	 *
>>> +	 * FIXME: Obtaining the S2 MMU for a a guest guest is horribly
>>> +	 * racy, and we may not find it.
>>> +	 */
>>> +	spin_lock(&vcpu->kvm->mmu_lock);
>>> +
>>> +	mmu = lookup_s2_mmu(vcpu->kvm,
>>> +			    vcpu_read_sys_reg(vcpu, VTTBR_EL2),
>>> +			    vcpu_read_sys_reg(vcpu, HCR_EL2));
>>> +
>>> +	if (WARN_ON(!mmu))
>>> +		goto out;
>>> +
>>> +	/* We've trapped, so everything is live on the CPU. */
>>> +	__mmu_config_save(&config);
>>> +
>>> +	write_sysreg_el1(ctxt->sys_regs[TTBR0_EL1],	SYS_TTBR0);
>>> +	write_sysreg_el1(ctxt->sys_regs[TTBR1_EL1],	SYS_TTBR1);
>>> +	write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
>>> +	write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
>>> +	write_sysreg(kvm_get_vttbr(mmu),		vttbr_el2);
>>> +	/* FIXME: write S2 MMU VTCR_EL2 */
>>> +	write_sysreg(config.hcr & ~HCR_TGE,		hcr_el2);
>>
>> All below AT S1E* operations may initiate stage-1 PTW. And stage-1 table
>> walk addresses are themselves subject to stage-2 translation.
>>
>> So should we enable stage-2 translation here by setting HCR_VM bit?
> 
> Hopefully that's already the case, otherwise nothing works. Have you
> verified that it is actually clear at this stage?

Yes, HCR_EL2.VM is clear at this stage (cleared during guest exit when 
deactivating traps). The weird thing is that my Fastmodel is still 
working with HCR_EL2.VM=0 here and this path is being exercised.

Thanks,
Tomasz


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
