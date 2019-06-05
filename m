Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6805235AD6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 13:04:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CgHUA38xkL2BBOzorWR4XlMmDCcZxieZ88G6mXdmtxU=; b=ggLCcUbg89WVQJ
	sU00w8FBZldUqS1Ihsjt4KbTEUsnNC303Mmd3CsOYKEvt8ssW7SDqBIP7DnwXp+vOwwYoy5FX2+uv
	ZQT2PP7aKhc+ztzzLeeCDrb09bbHB+57+yEW8wsBleIUZID50Nz7Zvyeg7pYXAmja5yoqJIWuQc7t
	S5KFZkQ4OKkpiklJ2ggDHGxk8iYzaT2GPRA89r9g2qok3tg9EMg0Mt1Xoffynbzxo1ee79S7M/AFV
	bSv489eeYI20GNv7GMICvdlEj5dx3gudZirj639zCjXp3z3SOjZQsVh8Yrx9juop/0jjgGepWZLcY
	TY4DjdrVs2RrxkWmsVgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYTi9-0005VL-MG; Wed, 05 Jun 2019 11:04:05 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYTi2-0005V1-RA
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 11:04:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6AC3915AB;
 Wed,  5 Jun 2019 04:03:58 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 350463F690;
 Wed,  5 Jun 2019 04:03:57 -0700 (PDT)
Subject: Re: [PATCH v1 2/6] KVM: arm64: Consume pending SError as early as
 possible
To: Julien Thierry <julien.thierry@arm.com>
References: <20190604144551.188107-1-james.morse@arm.com>
 <20190604144551.188107-3-james.morse@arm.com>
 <e8a742cd-9b37-c4b3-f34a-4663081a8529@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <b5419a11-d378-2e21-98ce-b084874d0903@arm.com>
Date: Wed, 5 Jun 2019 12:03:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <e8a742cd-9b37-c4b3-f34a-4663081a8529@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_040358_886966_968B71BC 
X-CRM114-Status: GOOD (  22.79  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Julien,

On 05/06/2019 10:00, Julien Thierry wrote:
> On 04/06/2019 15:45, James Morse wrote:
>> On systems with v8.2 we switch the 'vaxorcism' of guest SError with an
>> alternative sequence that uses the ESB-instruction, then reads DISR_EL1.
>> This saves the unmasking and re-masking of asynchronous exceptions.
>>
>> We do this after we've saved the guest registers and restored the
>> host's. Any SError that becomes pending due to this will be accounted
>> to the guest, when it actually occurred during host-execution.
>>
>> Move the ESB-instruction as early as possible. Any guest SError
>> will become pending due to this ESB-instruction and then consumed to
>> DISR_EL1 before the host touches anything.

> Since you're moving the ESB from a HAS_RAS alternative location to a
> normal location, it might be worth noting in the commit message that the
> ESB is a NOP when RAS is not implemented, to clarify that we are not
> uselessly adding a barrier (or potentially undefined instruction).

Sure.


>> This lets us account for host/guest SError precisely on the guest
>> exit exception boundary.

>> diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
>> index 914036e6b6d7..b8d37a987b34 100644
>> --- a/arch/arm64/kvm/hyp/hyp-entry.S
>> +++ b/arch/arm64/kvm/hyp/hyp-entry.S
>> @@ -230,6 +230,7 @@ ENDPROC(\label)
>>  .macro valid_vect target
>>  	.align 7
>>  661:
>> +	esb
> 
> Having said the above, if the kernel is built without RAS support (you
> have to disable some of options enabled by default to get to that) but
> runs on a CPU that does have the RAS extention, should we execute a nop
> instead of an esb (so have an alternative here)?

That's an interesting corner! The esb-instruction would have consumed any guest-SError,
but we'd never read DISR_EL1 because that undefs, so it lives behind the RAS extension
support. The effect is guest-SError going missing.


> Also, when we have the smccc workaround installed we do two esb, is that
> intentional/necessary?

> Could we have only one esb at the start of hyp_ventry (and "only" 26
> nops after it) for KVM_INDIRECT_VECTORS? Or does this not affect
> performance that much to be of interest?

Ugh, because kvm_patch_vector_branch() that does the preamble work, and jumps over the
'real' vectors preamble depends on CONFIG_HARDEN_EL2_VECTORS, not
CONFIG_HARDEN_BRANCH_PREDICTOR. (I thought the vector tail was always generated...)

Is it harmless? aarch64/functions/ras/AArch64.ESBOperation says DISR_EL1 is overwritten if
a physical SError is pending. For this to be a problem, we'd need two, and the second one
would have to be caused by the smccc workaround (possibly by the firmware portion). This
would be accounted to the guest, which could be a problem. But either the stack has
uncorrected errors (so we aren't going to make it out of KVM alive), or firmware causes
SError. (I'm struggling to care...)

...

Would getting the unpatched kvm_patch_vector_branch() region to do the pre-amble work and
jump over it work?

We'd end up with ESB-instruction at the top of the unpatched-vector, which may be
overwritten with the smccc-workaround, which also contains an ESB-instruction.
kvm_patch_vector_branch() generates the other half of the preamble but the
unpatched-vector needs to do the same so support all the combinations.

I think this makes the addition to this Gordian-knot of code easier to reason about, which
is a good enough reason to do it!


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
