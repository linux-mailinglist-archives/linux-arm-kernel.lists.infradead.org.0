Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB5C4A4BE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 17:05:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x5qzrdAEO0s7UkaLL6/e5Za43nmWhly3Tobulw4m2WM=; b=b/ir870Gs0FchM
	iBVEmXl/05FFyJX5XpFSWov7r8LTqfmJ0xF7DQd7szFhzBbVd/L6IzFxZCwoL2d6zwN56YLDsC6xF
	0NX7gWFn54RraS78JEIY+zkwoBMuCKaCbYrj3X944xQoGg19mdLnMyC+cBb3MfZ9fHPEsXV7sY9b6
	E9L9LBewY35tckEOcwl7SLaLmwAJceuVQUL9T7kmuYc96aqDZQi3NQz/NBJA3MXGrPPlypsNV2Bzi
	TFMcZ/LwlalY/toBkKeJN24dPqpmiyAYu25qgxjQt3s8+3ecQmrd3bZ5T+nDxWQKAVSSlej/zp33G
	5VT9XgR8MefLcdZZVPDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFgJ-0005o8-PZ; Tue, 18 Jun 2019 15:05:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFfw-0005nf-Vo
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 15:05:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 27C852B;
 Tue, 18 Jun 2019 08:05:32 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2EB583F718;
 Tue, 18 Jun 2019 08:05:31 -0700 (PDT)
Subject: Re: [PATCH v2] KVM: arm64: Skip more of the SError vaxorcism
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
References: <20190610163034.116151-1-james.morse@arm.com>
 <1d806015-bbad-c2dd-2ff6-2a5bdb73e117@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <beb104a9-b7bb-399a-7f41-3072d5e0c001@arm.com>
Date: Tue, 18 Jun 2019 16:05:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1d806015-bbad-c2dd-2ff6-2a5bdb73e117@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_080533_101562_C44D555C 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Julien Thierry <julien.thierry@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 10/06/2019 17:58, Marc Zyngier wrote:
> On 10/06/2019 17:30, James Morse wrote:
>> During __guest_exit() we need to consume any SError left pending by the
>> guest so it doesn't contaminate the host. With v8.2 we use the
>> ESB-instruction. For systems without v8.2, we use dsb+isb and unmask
>> SError. We do this on every guest exit.
>>
>> Use the same dsb+isr_el1 trick, this lets us know if an SError is pending
>> after the dsb, allowing us to skip the isb and self-synchronising PSTATE
>> write if its not.
>>
>> This means SError remains masked during KVM's world-switch, so any SError
>> that occurs during this time is reported by the host, instead of causing
>> a hyp-panic.
> 
> Ah, that'd be pretty good.

I'll add a patch to re-mask it so this intent is clear, and the behaviour/performance
stuff is done in separate patches.


>> If you give gcc likely()/unlikely() hints in an if() condition, it
>> shuffles the generated assembly so that the likely case is immediately
>> after the branch. Lets do the same here.
>>
>> Signed-off-by: James Morse <james.morse@arm.com>
>> ---
>> This patch was previously posted as part of:
>> [v1] https://lore.kernel.org/linux-arm-kernel/20190604144551.188107-1-james.morse@arm.com/
>>
>>  arch/arm64/kvm/hyp/entry.S | 14 ++++++++++----
>>  1 file changed, 10 insertions(+), 4 deletions(-)
>>
>> diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
>> index a5a4254314a1..c2de1a1faaf4 100644
>> --- a/arch/arm64/kvm/hyp/entry.S
>> +++ b/arch/arm64/kvm/hyp/entry.S
>> @@ -161,18 +161,24 @@ alternative_if ARM64_HAS_RAS_EXTN
>>  	orr	x0, x0, #(1<<ARM_EXIT_WITH_SERROR_BIT)
>>  1:	ret
>>  alternative_else
>> -	// If we have a pending asynchronous abort, now is the
>> -	// time to find out. From your VAXorcist book, page 666:
>> +	dsb	sy		// Synchronize against in-flight ld/st
>> +	mrs	x2, isr_el1
> 
> The CPU is allowed to perform a system register access before the DSB
> completes if it doesn't have a side effect. Reading ISR_EL1 doesn't have
> such side effect, so you could end-up missing the abort. An ISB after
> DSB should cure that,

... bother ...


> but you'll need to verify that it doesn't make
> things much worse than what we already have.

Retested with isb in both patches, and Robin's better assembly.

This still saves the self-synchronising pstate modification, (of which we'd need two if we
want to keep SError masked over the rest of world-switch)

On Xgene:
| 5.2.0-rc2-00006-g9b94314 mean:3215 stddev:45
| 5.2.0-rc2-00007-g5d37b0b mean:3176 stddev:30
| with this patch 1.23% faster

On Seattle:
| 5.2.0-rc2-00006-g9b9431445730 mean:4474 stddev:10
| 5.2.0-rc2-00007-g5d37b0b5dd65 mean:4410 stddev:27
| with this patch: 1.44% faster


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
