Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9D81E3AB6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 09:37:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5NcFYSN+J7LOs6lSd0bv+TlxWRxygUUUCrHPec02Klk=; b=vCewPhDpzNXyk+sy5bE/V0EeE
	LtTM38yRpPLH/8GEe3I3YqhSo4vpzn1yd7OwTGP8MgTPBfQ9h8Hc9P2xOZMH8mrnzlfXfY4Xcor/o
	HRmMYtmL9UxeSvJNs+3D2JYGCSJjQa7LD/Tfu4w7LFNU1o5LHYE2jPNIi6os9PemjGfIDbd23/4WI
	VDgDHO3Uc5HFzTEFiQ76LAWK9nC3qofIExwZnoGyHwjiVncqR7/nXCpnkOrHU1rhvGq4WikY840lv
	Te2N+tgfqyhoVylKuSYdAtJZiXELUXazcdYEh3hHVkHFNds2mHYZJvk7WugC02CbR5FZ94eVHjRaZ
	y4lEDFnUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdqcr-0003GL-8X; Wed, 27 May 2020 07:37:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdqcf-0003FZ-V2
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 07:37:11 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E832207CB;
 Wed, 27 May 2020 07:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590565029;
 bh=0M1mFsGDTKIzE9/6yoIC6rR97OlF6HfqERxEr8t9U4c=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=YvrR6OuBxoy9z1BVf2rExUxfPg3agb10ofmlmcyMDTTaeYIAOmn8QaXB7vdbF/Sbv
 +lYSGpYQS82+AuEAc32Sb3Ec2u2bVkqX9hEFUam+DAFG69l8iWDqGzKBW+GSHqu9kT
 StqP/6DkYMcG2bufjcuOoS4XdXvDOS+W5gGuFn3A=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jdqcd-00FdBE-0J; Wed, 27 May 2020 08:37:07 +0100
MIME-Version: 1.0
Date: Wed, 27 May 2020 08:37:06 +0100
From: Marc Zyngier <maz@kernel.org>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH RFCv2 7/9] kvm/arm64: Support async page fault
In-Reply-To: <e1230110-b51f-b8b8-60d9-372660c5c387@redhat.com>
References: <20200508032919.52147-1-gshan@redhat.com>
 <20200508032919.52147-8-gshan@redhat.com>
 <20200526123424.GF1363@C02TD0UTHF1T.local>
 <e1230110-b51f-b8b8-60d9-372660c5c387@redhat.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <28c74819f42306e66370ddaf88f16918@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: gshan@redhat.com, mark.rutland@arm.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, will@kernel.org, catalin.marinas@arm.com,
 james.morse@arm.com, suzuki.poulose@arm.com, drjones@redhat.com,
 eric.auger@redhat.com, aarcange@redhat.com, shan.gavin@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_003710_037872_A76ADA0D 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, aarcange@redhat.com,
 drjones@redhat.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, eric.auger@redhat.com, james.morse@arm.com,
 shan.gavin@gmail.com, will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-27 05:05, Gavin Shan wrote:
> Hi Mark,
> 

[...]

>>> +struct kvm_vcpu_pv_apf_data {
>>> +	__u32	reason;
>>> +	__u8	pad[60];
>>> +	__u32	enabled;
>>> +};
>> 
>> What's all the padding for?
>> 
> 
> The padding is ensure the @reason and @enabled in different cache
> line. @reason is shared by host/guest, while @enabled is almostly
> owned by guest.

So you are assuming that a cache line is at most 64 bytes.
It is actualy implementation defined, and you can probe for it
by looking at the CTR_EL0 register. There are implementations
ranging from 32 to 256 bytes in the wild, and let's not mention
broken big-little implementations here.

[...]

>>> +bool kvm_arch_can_inject_async_page_not_present(struct kvm_vcpu 
>>> *vcpu)
>>> +{
>>> +	u64 vbar, pc;
>>> +	u32 val;
>>> +	int ret;
>>> +
>>> +	if (!(vcpu->arch.apf.control_block & KVM_ASYNC_PF_ENABLED))
>>> +		return false;
>>> +
>>> +	if (vcpu->arch.apf.send_user_only && vcpu_mode_priv(vcpu))
>>> +		return false;
>>> +
>>> +	/* Pending page fault, which ins't acknowledged by guest */
>>> +	ret = kvm_async_pf_read_cache(vcpu, &val);
>>> +	if (ret || val)
>>> +		return false;
>>> +
>>> +	/*
>>> +	 * Events can't be injected through data abort because it's
>>> +	 * going to clobber ELR_EL1, which might not consued (or saved)
>>> +	 * by guest yet.
>>> +	 */
>>> +	vbar = vcpu_read_sys_reg(vcpu, VBAR_EL1);
>>> +	pc = *vcpu_pc(vcpu);
>>> +	if (pc >= vbar && pc < (vbar + vcpu->arch.apf.no_fault_inst_range))
>>> +		return false;
>> 
>> Ah, so that's when this `no_fault_inst_range` is for.
>> 
>> As-is this is not sufficient, and we'll need t be extremely careful
>> here.
>> 
>> The vectors themselves typically only have a small amount of stub 
>> code,
>> and the bulk of the non-reentrant exception entry work happens
>> elsewhere, in a mixture of assembly and C code that isn't even 
>> virtually
>> contiguous with either the vectors or itself.
>> 
>> It's possible in theory that code in modules (or perhaps in eBPF JIT'd
>> code) that isn't safe to take a fault from, so even having a 
>> contiguous
>> range controlled by the kernel isn't ideal.
>> 
>> How does this work on x86?
>> 
> 
> Yeah, here we just provide a mechanism to forbid injecting data abort. 
> The
> range is fed by guest through HVC call. So I think it's guest related 
> issue.
> You had more comments about this in PATCH[9]. I will explain a bit more 
> there.
> 
> x86 basically relies on EFLAGS[IF] flag. The async page fault can be 
> injected
> if it's on. Otherwise, it's forbidden. It's workable because exception 
> is
> special interrupt to x86 if I'm correct.
> 
>            return (vmcs_readl(GUEST_RFLAGS) & X86_EFLAGS_IF) &&
>                   !(vmcs_read32(GUEST_INTERRUPTIBILITY_INFO) &
>                         (GUEST_INTR_STATE_STI | 
> GUEST_INTR_STATE_MOV_SS));

I really wish this was relying on an architected exception delivery
mechanism that can be blocked by the guest itself (PSTATE.{I,F,A}).
Trying to guess based on the PC won't fly. But these signals are
pretty hard to multiplex with anything else. Like any form of
non-architected exception injection, I don't see a good path forward
unless we start considering something like SDEI.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
