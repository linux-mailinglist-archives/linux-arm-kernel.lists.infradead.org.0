Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDE01BF864
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 14:46:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wBiNLeykV8oQEhzxo+Rh/Cb0fJBp8y3zzhJngqHxdx4=; b=KVGRld7JVb6Ap84NnrnBloKUh
	J2ZYpEVkci2FPA0jQ08zigUxKCsQpHKqZLZTV3et+bPmKL/xA5jpljjXf657ePlKdd6t9cRe59H0Z
	Og7sGyRoORxXoBl3BWCAYWhmSPLLVXXx/m9ab61eypPO2vMhybPoncSuEoESgWtJPzAxMrIqPeMml
	O2yCBntNfpj9nvoMlKHMmElYcMiYIfJ9AO5NrHVhJL2pTeZK1o+yPR255MQbv71ZMw4Zukya/3lRQ
	JKiPZIaHJigjze1HkliCZZ2LlLzGHBQYMiLU66baTSY7Qoyf/bxrmwjUZLytgDyTuqDXM83GmmrWn
	iP3m4/Ezg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU8Zm-0008LQ-ST; Thu, 30 Apr 2020 12:46:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU8Ze-0008Kh-8L
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 12:45:55 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B533B205ED;
 Thu, 30 Apr 2020 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588250753;
 bh=zc3JaJmBWam2fMuCXHmaLPhGYq0c/2wb8dNG5ZJxYjY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SrSWBQ6/k8OapgpOLCoiM+liIHO6EsmvBRD1hgViJ9NLdalanmfu1pxx3VHLv7s9X
 0Fgeyqk3gQ5TTsfP14dmOfXb8Z3NBuCu4vZReB4UTcU4qp8zLmqWpsLT4/kRktDDWP
 9SotYYwXonLcbgVKfayQHS+n5UNfN8pvpT637B6M=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jU8Zb-0081rl-W3; Thu, 30 Apr 2020 13:45:52 +0100
MIME-Version: 1.0
Date: Thu, 30 Apr 2020 13:45:51 +0100
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] KVM: arm64: Fix 32bit PC wrap-around
In-Reply-To: <20200430123104.GB22842@willie-the-truck>
References: <20200430101513.318541-1-maz@kernel.org>
 <20200430102556.GE19932@willie-the-truck>
 <897baec2a3fad776716bccf3027340fa@kernel.org>
 <20200430123104.GB22842@willie-the-truck>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <1c0175a09a90d2b7c0243e5bcec7cc9a@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: will@kernel.org, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_054554_361683_67A31E21 
X-CRM114-Status: GOOD (  24.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-30 13:31, Will Deacon wrote:
> On Thu, Apr 30, 2020 at 11:59:05AM +0100, Marc Zyngier wrote:
>> On 2020-04-30 11:25, Will Deacon wrote:
>> > On Thu, Apr 30, 2020 at 11:15:13AM +0100, Marc Zyngier wrote:
>> > > In the unlikely event that a 32bit vcpu traps into the hypervisor
>> > > on an instruction that is located right at the end of the 32bit
>> > > range, the emulation of that instruction is going to increment
>> > > PC past the 32bit range. This isn't great, as userspace can then
>> > > observe this value and get a bit confused.
>> > >
>> > > Conversly, userspace can do things like (in the context of a 64bit
>> > > guest that is capable of 32bit EL0) setting PSTATE to AArch64-EL0,
>> > > set PC to a 64bit value, change PSTATE to AArch32-USR, and observe
>> > > that PC hasn't been truncated. More confusion.
>> > >
>> > > Fix both by:
>> > > - truncating PC increments for 32bit guests
>> > > - sanitize PC every time a core reg is changed by userspace, and
>> > >   that PSTATE indicates a 32bit mode.
>> >
>> > It's not clear to me whether this needs a cc stable. What do you think?
>> > I
>> > suppose that it really depends on how confused e.g. QEMU gets.
>> 
>> It isn't so much QEMU itself that I'm worried about (the emulation 
>> shouldn't
>> really care about the PC), but the likes of GDB. So yes, a cc stable 
>> seems
>> to
>> be in order.
> 
> Okey doke.
> 
>> > > Signed-off-by: Marc Zyngier <maz@kernel.org>
>> > > ---
>> > >  arch/arm64/kvm/guest.c     | 4 ++++
>> > >  virt/kvm/arm/hyp/aarch32.c | 8 ++++++--
>> > >  2 files changed, 10 insertions(+), 2 deletions(-)
>> > >
>> > > diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
>> > > index 23ebe51410f0..2a159af82429 100644
>> > > --- a/arch/arm64/kvm/guest.c
>> > > +++ b/arch/arm64/kvm/guest.c
>> > > @@ -200,6 +200,10 @@ static int set_core_reg(struct kvm_vcpu *vcpu,
>> > > const struct kvm_one_reg *reg)
>> > >  	}
>> > >
>> > >  	memcpy((u32 *)regs + off, valp, KVM_REG_SIZE(reg->id));
>> > > +
>> > > +	if (*vcpu_cpsr(vcpu) & PSR_AA32_MODE_MASK)
>> > > +		*vcpu_pc(vcpu) = lower_32_bits(*vcpu_pc(vcpu));
>> >
>> > It seems slightly odd to me that we don't enforce this for *all* the
>> > registers when running as a 32-bit guest. Couldn't userspace be equally
>> > confused by a 64-bit lr or sp?
>> 
>> Fair point. How about this on top, which wipes the upper 32 bits for
>> each and every register in the current mode:
>> 
>> diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
>> index 2a159af82429..f958c3c7bf65 100644
>> --- a/arch/arm64/kvm/guest.c
>> +++ b/arch/arm64/kvm/guest.c
>> @@ -201,9 +201,12 @@ static int set_core_reg(struct kvm_vcpu *vcpu, 
>> const
>> struct kvm_one_reg *reg)
>> 
>>  	memcpy((u32 *)regs + off, valp, KVM_REG_SIZE(reg->id));
>> 
>> -	if (*vcpu_cpsr(vcpu) & PSR_AA32_MODE_MASK)
>> -		*vcpu_pc(vcpu) = lower_32_bits(*vcpu_pc(vcpu));
>> +	if (*vcpu_cpsr(vcpu) & PSR_AA32_MODE_MASK) {
>> +		int i;
>> 
>> +		for (i = 0; i < 16; i++)
>> +			*vcpu_reg32(vcpu, i) = (u32)*vcpu_reg32(vcpu, i);
> 
> I think you're missing all the funny banked registers that live all the 
> way
> up to x30 iirc.

No, they are all indirected via vcpu_reg32(), which has the magic 
tables.
And the whole point is that we only want to affect the current mode (no 
point
in repainting the FIQ registers if the PSR says USR).

Or am I missing something obvious?

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
