Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 007B86CE6A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 14:59:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4aQEaH68jknv7d+0K5QAxFBkgJI/4Y6ZSZcRux289Sc=; b=b02tKtLiyaIfSEj8fFMEAWOrD
	4yo8JlBHnIpycra2jkCOrYfjH4hhqMZ6yZHoPcP3Rlz4IORW3ibszx1KOPq5UEVL99EaucFJR8qOZ
	FLJz3P+84wffR+HiAKvBl6Sj2g2uMtg4jSL9+MHu0IdK58BGTeLLCuBpU3WR1uqouVb7tVpO5lDX1
	iS0sfvYv/yJjYVb2rsJ11JlAT7wRFBmOxGR1UbXJYvKZMmUrdzkg3+IbdbTNrWRMC24T4WgUYRrjC
	9At88q5jlxh8FYDNhMBhXtRf/aVqIQUk57pm+ulnJbpBVnz+WLEACIIZkCVJkmRu+4kVDi6DkhzJS
	10llFjBFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho60p-0000zb-H8; Thu, 18 Jul 2019 12:59:55 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho60Y-0000ny-6y
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 12:59:39 +0000
Received: by mail-pl1-x642.google.com with SMTP id i2so13876963plt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 05:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=semihalf-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=atP+mGMTGchneYH2iTLghjtexaPaP+1QBwUOEy78SoQ=;
 b=eGAzxvOgyGbgcw6hzkB3bPc54fIRZ4FFNBGxSOFXP6UPSvI2S9XCSnM7JnNrW61aBt
 Z7bHDbrMvDBV8ol9HbrNfqRNqEWbsVn54ENDSUWf5lxvBWRqTNCj8Dx58JIeXiyxGm9e
 KoQY378oeYbo2HKnzJnPB+q4BViitWWbu2UHIWqTRyK8hOOLk1WPbE/CSmxM7MDoLPkH
 DlbOaB692krBL2ckHLkmidml5kU57ph9rfFjNTKkiIkciKj+P7lGxJADOilYXcdcdJ75
 dy4aOv/idEvzRJnqarttHETzWttiUHTAHnfGgTZDGPoD44UyV5P7b0hcmCYpQnMIzGuo
 9Ylg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=atP+mGMTGchneYH2iTLghjtexaPaP+1QBwUOEy78SoQ=;
 b=j6tRe1LlkhL7NtO+xU0JQzRid7IIJ7pBdKzWXLklKE0p3nf48rQPaJ3peW4om7kksj
 VXKSP0XgZi6WF1JwXzgZhGbIVl8iytu9nGa8EPn/kKJYHulE03sSKTw6lgtYxeIR+DZW
 npXbOfZ9+/eicA1h+LH40l8dx8/1VNQijbh1p+XJN8ikSlau+xrpPQzibW+lEtxb9OYJ
 J1ygo4i8KsfJmwJwj4LJNMVg1Zr8pHbW77oebWdIoz6FCuzJO9S7e0A8FPQzf7afwEdb
 19wzB/EPRJ7YD9iehqToY8VeSxZ4WfK7sJ4GAq8ztKgMHtT7ZhN0YBrscrVjBp6MP4Pn
 7WQw==
X-Gm-Message-State: APjAAAWaYu0tAYYA85TiBeFz6YoVcRK8LlUUrWqKaoQSC76UHcRXeNw3
 DyBTi/weaTqStBYyDUD6gscQFAypL0Y=
X-Google-Smtp-Source: APXvYqzeSI0Zhi+cvrep5Rn7UoyzsfqmFzXeSFaf9z7sDXtIoXD5xr0T8UxGY2XRp/sva4FdZQKdCw==
X-Received: by 2002:a17:902:8c83:: with SMTP id
 t3mr49434534plo.93.1563454775421; 
 Thu, 18 Jul 2019 05:59:35 -0700 (PDT)
Received: from [10.0.0.22] (31-172-191-173.noc.fibertech.net.pl.
 [31.172.191.173]) by smtp.googlemail.com with ESMTPSA id
 h11sm27647072pfn.120.2019.07.18.05.59.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 05:59:34 -0700 (PDT)
Subject: Re: [PATCH 43/59] KVM: arm64: nv: Trap and emulate AT instructions
 from virtual EL2
To: Alexandru Elisei <alexandru.elisei@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-44-marc.zyngier@arm.com>
 <4cd8b175-7676-0d3b-2853-365a346e1302@arm.com>
 <852db652-5318-113b-083c-baf12eb58593@semihalf.com>
 <6537c8d2-3bda-788e-8861-b70971a625cb@arm.com>
From: Tomasz Nowicki <tn@semihalf.com>
Message-ID: <55c544fa-d1c6-bb26-beb6-88ca1c4e554e@semihalf.com>
Date: Thu, 18 Jul 2019 14:59:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <6537c8d2-3bda-788e-8861-b70971a625cb@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_055938_260283_2A37699E 
X-CRM114-Status: GOOD (  21.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On 18.07.2019 14:36, Alexandru Elisei wrote:
> On 7/18/19 1:13 PM, Tomasz Nowicki wrote:
> 
>> Hello Alex,
>>
>> On 09.07.2019 15:20, Alexandru Elisei wrote:
>>> On 6/21/19 10:38 AM, Marc Zyngier wrote:
>>>> From: Jintack Lim<jintack.lim@linaro.org>
>>>>
>>>> When supporting nested virtualization a guest hypervisor executing AT
>>>> instructions must be trapped and emulated by the host hypervisor,
>>>> because untrapped AT instructions operating on S1E1 will use the wrong
>>>> translation regieme (the one used to emulate virtual EL2 in EL1 instead
>>> I think that should be "regime".
>>>
>>>> of virtual EL1) and AT instructions operating on S12 will not work from
>>>> EL1.
>>>>
>>>> This patch does several things.
>>>>
>>>> 1. List and define all AT system instructions to emulate and document
>>>> the emulation design.
>>>>
>>>> 2. Implement AT instruction handling logic in EL2. This will be used to
>>>> emulate AT instructions executed in the virtual EL2.
>>>>
>>>> AT instruction emulation works by loading the proper processor
>>>> context, which depends on the trapped instruction and the virtual
>>>> HCR_EL2, to the EL1 virtual memory control registers and executing AT
>>>> instructions. Note that ctxt->hw_sys_regs is expected to have the
>>>> proper processor context before calling the handling
>>>> function(__kvm_at_insn) implemented in this patch.
>>>>
>>>> 4. Emulate AT S1E[01] instructions by issuing the same instructions in
>>>> EL2. We set the physical EL1 registers, NV and NV1 bits as described in
>>>> the AT instruction emulation overview.
>>> Is item number 3 missing, or is that the result of an unfortunate typo?
>>>
>>>> 5. Emulate AT A12E[01] instructions in two steps: First, do the stage-1
>>>> translation by reusing the existing AT emulation functions.  Second, do
>>>> the stage-2 translation by walking the guest hypervisor's stage-2 page
>>>> table in software. Record the translation result to PAR_EL1.
>>>>
>>>> 6. Emulate AT S1E2 instructions by issuing the corresponding S1E1
>>>> instructions in EL2. We set the physical EL1 registers and the HCR_EL2
>>>> register as described in the AT instruction emulation overview.
>>>>
>>>> 7. Forward system instruction traps to the virtual EL2 if the corresponding
>>>> virtual AT bit is set in the virtual HCR_EL2.
>>>>
>>>>     [ Much logic above has been reworked by Marc Zyngier ]
>>>>
>>>> Signed-off-by: Jintack Lim<jintack.lim@linaro.org>
>>>> Signed-off-by: Marc Zyngier<marc.zyngier@arm.com>
>>>> Signed-off-by: Christoffer Dall<christoffer.dall@arm.com>
>>>> ---
>>>>    arch/arm64/include/asm/kvm_arm.h |   2 +
>>>>    arch/arm64/include/asm/kvm_asm.h |   2 +
>>>>    arch/arm64/include/asm/sysreg.h  |  17 +++
>>>>    arch/arm64/kvm/hyp/Makefile      |   1 +
>>>>    arch/arm64/kvm/hyp/at.c          | 217 +++++++++++++++++++++++++++++++
>>>>    arch/arm64/kvm/hyp/switch.c      |  13 +-
>>>>    arch/arm64/kvm/sys_regs.c        | 202 +++++++++++++++++++++++++++-
>>>>    7 files changed, 450 insertions(+), 4 deletions(-)
>>>>    create mode 100644 arch/arm64/kvm/hyp/at.c
>>>>
>> [...]
>>
>>>> +
>>>> +void __kvm_at_s1e01(struct kvm_vcpu *vcpu, u32 op, u64 vaddr)
>>>> +{
>>>> +	struct kvm_cpu_context *ctxt = &vcpu->arch.ctxt;
>>>> +	struct mmu_config config;
>>>> +	struct kvm_s2_mmu *mmu;
>>>> +
>>>> +	/*
>>>> +	 * We can only get here when trapping from vEL2, so we're
>>>> +	 * translating a guest guest VA.
>>>> +	 *
>>>> +	 * FIXME: Obtaining the S2 MMU for a a guest guest is horribly
>>>> +	 * racy, and we may not find it.
>>>> +	 */
>>>> +	spin_lock(&vcpu->kvm->mmu_lock);
>>>> +
>>>> +	mmu = lookup_s2_mmu(vcpu->kvm,
>>>> +			    vcpu_read_sys_reg(vcpu, VTTBR_EL2),
>>>> +			    vcpu_read_sys_reg(vcpu, HCR_EL2));
>>>   From ARM DDI 0487D.b, the description for AT S1E1R (page C5-467, it's the same
>>> for the other at s1e{0,1}* instructions):
>>>
>>> [..] Performs stage 1 address translation, with permisions as if reading from
>>> the given virtual address from EL1, or from EL2 [..], using the following
>>> translation regime:
>>> - If HCR_EL2.{E2H,TGE} is {1, 1}, the EL2&0 translation regime, accessed from EL2.
>>>
>>> If the guest is VHE, I don't think there's any need to switch mmus. The AT
>>> instruction will use the physical EL1&0 translation regime already on the
>>> hardware (assuming host HCR_EL2.TGE == 0), which is the vEL2&0 regime for the
>>> guest hypervisor.
>> Here we want to run AT for L2 (guest guest) EL1&0 regime and not the L1
>> (guest hypervisor) so we have to lookup and switch to nested VM MMU
>> context. Or did I miss your point?
>>
>> Thanks,
>> Tomasz
> 
> What I mean to say is that if the L1 guest has set HCR_EL2.{E2H, TGE} = {1, 1}, then the instruction affects the vEL2&0 translation regime (as per the instruction description in the arhitecture), which is already loaded. The AT instruction will affect the L1 guest hypervisor, not the L2 guest.
> 
> In other words:
> 
> if (!vcpu_el2_e2h_is_set(vcpu) || !vcpu_el2_tge_is_set(vcpu))
>          /* switch mmus, the instruction affects the L2 guest (the guest guest) */
> else
>          /* do not switch mmus, the instruction affects the L1 guest hypervisor which is loaded */
> 
> I hope this makes things clearer.
> 

Yes, now I see your point, obviously you are right.

Thanks,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
