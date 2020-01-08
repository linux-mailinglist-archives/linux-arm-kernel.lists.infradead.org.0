Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F81134216
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 13:44:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vDhUCLJJ2+FWmE1M/JvA4FTN7gDqLJ1/Fw2NlNUSDEM=; b=E5E8r/8/lh68+2
	TLm1yGPO+ONk9EeuGXc6j44g3s2D425qzKKW4xr+xPn+XOjRjWhTIUzH1A6vK2BYPcUk8Al2bAN9s
	2bR3omZlCxT56TOewKE70dICcMW+5CsVbdzv/Fc5B8r1yys+sdYL0e/km+/cfbFjaNuHtgc4BA7LB
	HlWzJTg/TMciThNzCFRnickYCU63J97TUlko9jnc8YW9LSuroEZRK2ar10CNFAXJpZ/f5gspLxKKX
	eQ8Oc06gW5rsT+SJGR/DTb0XpFrQuov7CLtYrzOxquExlJ/S5iplyEI2WrlCSibpxYz54OQiX9NJr
	bIZ0Pomu6MKMqgQ4EN9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipAhc-0005Vf-Ph; Wed, 08 Jan 2020 12:44:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipAhU-0005V3-Kx
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 12:44:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 658EE31B;
 Wed,  8 Jan 2020 04:44:38 -0800 (PST)
Received: from [10.1.196.63] (e123195-lin.cambridge.arm.com [10.1.196.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 947923F703;
 Wed,  8 Jan 2020 04:44:36 -0800 (PST)
Subject: Re: [PATCH 1/3] KVM: arm64: correct PSTATE on exception entry
To: Mark Rutland <mark.rutland@arm.com>
References: <20191220150549.31948-1-mark.rutland@arm.com>
 <20191220150549.31948-2-mark.rutland@arm.com>
 <bace4197-a723-5312-3990-84232aab30d9@arm.com>
 <20200108111253.GA49203@lakrids.cambridge.arm.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <4be2f666-1139-0087-a69e-f8b779e71e11@arm.com>
Date: Wed, 8 Jan 2020 12:44:35 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200108111253.GA49203@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_044440_771446_D2D94992 
X-CRM114-Status: GOOD (  26.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Peter Maydell <peter.maydell@linaro.org>, Drew Jones <drjones@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, maz@kernel.org,
 stable@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 1/8/20 11:12 AM, Mark Rutland wrote:
> Hi Alex,
>
> On Fri, Dec 27, 2019 at 01:01:57PM +0000, Alexandru Elisei wrote:
>> On 12/20/19 3:05 PM, Mark Rutland wrote:
>>> When KVM injects an exception into a guest, it generates the PSTATE
>>> value from scratch, configuring PSTATE.{M[4:0],DAIF}, and setting all
>>> other bits to zero.
>>>
>>> This isn't correct, as the architecture specifies that some PSTATE bits
>>> are (conditionally) cleared or set upon an exception, and others are
>>> unchanged from the original context.
>>>
>>> This patch adds logic to match the architectural behaviour. To make this
>>> simple to follow/audit/extend, documentation references are provided,
>>> and bits are configured in order of their layout in SPSR_EL2. This
>>> layout can be seen in the diagram on ARM DDI 0487E.a page C5-429.
>>> +/*
>>> + * When an exception is taken, most PSTATE fields are left unchanged in the
>>> + * handler. However, some are explicitly overridden (e.g. M[4:0]). Luckily all
>>> + * of the inherited bits have the same position in the AArch64/AArch32 SPSR_ELx
>>> + * layouts, so we don't need to shuffle these for exceptions from AArch32 EL0.
>>> + *
>>> + * For the SPSR_ELx layout for AArch64, see ARM DDI 0487E.a page C5-429.
>>> + * For the SPSR_ELx layout for AArch32, see ARM DDI 0487E.a page C5-426.
>> The commit message mentions only the SPSR_ELx layout for AArch64.
> That was intentional; there I was only providing rationale for how to
> review the patch...
>
>>> + * Here we manipulate the fields in order of the AArch64 SPSR_ELx layout, from
>>> + * MSB to LSB.
> ... as also commented here.
>
> I can drop the reference from the commit message, if that's confusing?

It's fine as it is, no need to change it.

>
>>> + */
>>> +static unsigned long get_except64_pstate(struct kvm_vcpu *vcpu)
>>> +{
>>> +	unsigned long sctlr = vcpu_read_sys_reg(vcpu, SCTLR_EL1);
>>> +	unsigned long old, new;
>>> +
>>> +	old = *vcpu_cpsr(vcpu);
>>> +	new = 0;
>>> +
>>> +	new |= (old & PSR_N_BIT);
>>> +	new |= (old & PSR_Z_BIT);
>>> +	new |= (old & PSR_C_BIT);
>>> +	new |= (old & PSR_V_BIT);
>>> +
>>> +	// TODO: TCO (if/when ARMv8.5-MemTag is exposed to guests)
>>> +
>>> +	new |= (old & PSR_DIT_BIT);
>>> +
>>> +	// PSTATE.UAO is set to zero upon any exception to AArch64
>>> +	// See ARM DDI 0487E.a, page D5-2579.
>>> +
>>> +	// PSTATE.PAN is unchanged unless overridden by SCTLR_ELx.SPAN
>>> +	// See ARM DDI 0487E.a, page D5-2578.
>>> +	new |= (old & PSR_PAN_BIT);
>>> +	if (sctlr & SCTLR_EL1_SPAN)
>>> +		new |= PSR_PAN_BIT;
>> On page D13-3264, it is stated that the PAN bit is set unconditionally if
>> SCTLR_EL1.SPAN is clear, not set.
> very good spot, and that's a much better reference. 
>
> I had mistakenly assumed SPAN took effect when 0b1, since it wasn't
> called nSPAN, and page D5-2578 doesn't mention the polarity of the bit:
>
> | When ARMv8.1-PAN is implemented, the SCTLR_EL1.SPAN and SCTLR_EL2.SPAN
> | bits are used to control whether the PAN bit is set on an exception to
> | EL1 or EL2. 
>
> I've updated this to be:
>
> |	// PSTATE.PAN is unchanged unless SCTLR_ELx.SPAN == 0b0
> |	// SCTLR_ELx.SPAN is RES1 when ARMv8.1-PAN is not implemented
> |	// See ARM DDI 0487E.a, page D13-3264.
> |	new |= (old & PSR_PAN_BIT);
> |	if (!(sctlr & SCTLR_EL1_SPAN))
> |		new |= PSR_PAN_BIT;

Looks good.

>
> [...]
>
>> I've also checked the ARM ARM pages mentioned in the comments, and the
>> references are correct. The SPSR_EL2 layouts for exceptions taken from AArch64,
>> respectively AArch32, states are compatible with the way we create the SPSR_EL2
>> that will be used for eret'ing to the guest, just like the comment says.
> Thanks for confirming this!
>  
>> I have a suggestion. I think that in ARM ARM, shuffling things between sections
>> happens a lot less often than adding/removing things from one particular
>> section, so the pages referenced are more likely to change in later versions.
>> How about referencing the section instead of the exact page? Something like:
>> "This layout can be seen in the diagram on ARM DDI 0487E.a, section C5.2.18,
>> when an exception is taken from AArch64 state"?
> I did something like that initially, but the comments got very verbose,
> and so I moved to doc + page/section numbers alone.
>
> The section numbers and headings also vary between revisions of the ARM
> ARM, so I'd prefer to leave this as-is for now. I think it's always
> going to be necessary to look at the referenced version of the ARM ARM
> (in addition to a subsequent revision when updating things).

Makes sense.

Thanks,
Alex
>
> Thanks,
> Mark

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
