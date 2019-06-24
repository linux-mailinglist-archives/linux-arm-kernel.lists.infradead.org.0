Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5B151815
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 18:10:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nnP7xzj6E8pWlOI61egks4y4vq2Doe6iQ9dVnxI6Evo=; b=LOJmVyscRZF6SUwxgfagpGHd6
	FdTYYJ0npdgE/+m1TUDTT55PEx9kOAaX4EcEXykswGoIuQwTVl/imt7Uv4AtJx4vnvU9PU0Z8t0Wh
	qgcU1mlQf1H0VRnhBTXesU9pFiEm0384hG0VhzkIR1FS9WTOhIPpLGFxZSAU4OuuLEa9/UbR7LaEa
	VPExfZRTCH1ekErhICRRk9ZOta/M/AZ7t9QVXbsyk4pGCGCbm+wiC4ajKxrf1rQz7iUZlsA8CR7Xb
	s4cAsdcJhwGZl2y2lGRVFvOr422Xa30cqOGPT3vu2R0RwfL/iRN+79sr98QOvMQPl6UJge0mmBPSf
	8lol1soxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfRXt-0005jT-So; Mon, 24 Jun 2019 16:10:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfRXk-0005Qt-G4
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 16:10:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0CC9FC0A;
 Mon, 24 Jun 2019 09:10:06 -0700 (PDT)
Received: from [10.37.12.219] (unknown [10.37.12.219])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D8DBA3F71E;
 Mon, 24 Jun 2019 09:10:03 -0700 (PDT)
Subject: Re: [RFC PATCH v2 3/8] arm64/fpsimdmacros: Allow the macro "for" to
 be used in more cases
To: Dave Martin <Dave.Martin@arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
 <20190613161656.20765-4-julien.grall@arm.com>
 <20190621153241.GY2790@e103592.cambridge.arm.com>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <8ba85821-3734-9e3c-5696-bc5e315a28c4@arm.com>
Date: Mon, 24 Jun 2019 17:10:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190621153241.GY2790@e103592.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_091008_628205_1597BC8C 
X-CRM114-Status: GOOD (  24.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Anton.Kirilov@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oleg@redhat.com, zhang.lei@jp.fujitsu.com, alex.bennee@linaro.org,
 linux-arm-kernel@lists.infradead.org, Daniel.Kiss@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On 6/21/19 4:32 PM, Dave Martin wrote:
> On Thu, Jun 13, 2019 at 05:16:51PM +0100, Julien Grall wrote:
>> The current version of the macro "for" is only able to work when the
>> counter is used to generate registers using mnemonics. This is because
> 
> [*] Is this backwards?  Previously, we _can't_ substitute register
> numbers directly into proper instruction mnemonics: we have to use
> .insn with an expression to generate the opcode directly instead
> (possibly via a macro).

Hmm, yes this is backwards. I want to s/only able/not able/.

> 
> With this change we can paste the _for number straight into human-
> readable assembler mnemonics.
> 
>> gas is not able to evaluate the expression generated if used in
>> registers name (i.e x\n).
> 
> Nit: maybe: "a register name" or "a register's name"

Ok.

> 
>> Gas offers a way to evaluate macro arguments by using % in front of
>> them under the alternate macro mode [1].
> 
> This reference is obviously useful to reviewers, but I'm not sure about
> the life expectancy of such a URL.  It probably belongs after the
> tearoff line rather than in the commit message.

Sure.

> 
>> The implementation of "for" is updated to use the alternate macro mode
>> and %, so we can use the macro in more cases. As the alternate macro mode
>> may have side-effect, this is disabled when generating the body.
> 
> Nit: side-effects
> 
> Nit: I'd probably say "expanding the body", to be consistent with gas's
> own terminology.
> 
> (These are pedantic, and inessential to fix.)

I have fixed them :).

> 
>> While it is enough to prefix the argument of the macro "__for_body" with
>> %, the arguments of "__for" are also prefixed to get a more bearable
>> value in case of compilation error.
>>
>> [1] https://sourceware.org/binutils/docs/as/Altmacro.html
>>
>> Suggested-by: Dave Martin <dave.martin@arm.com>
>> Signed-off-by: Julien Grall <julien.grall@arm.com>
>>
>> ---
>>      Changes in v2:
>>          - Fix typo in the commit message
>> ---
>>   arch/arm64/include/asm/fpsimdmacros.h | 10 +++++++---
>>   1 file changed, 7 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/include/asm/fpsimdmacros.h b/arch/arm64/include/asm/fpsimdmacros.h
>> index 46843515d77b..e2ab77dd9b4f 100644
>> --- a/arch/arm64/include/asm/fpsimdmacros.h
>> +++ b/arch/arm64/include/asm/fpsimdmacros.h
>> @@ -177,19 +177,23 @@
>>   
>>   .macro __for from:req, to:req
>>   	.if (\from) == (\to)
>> -		_for__body \from
>> +		_for__body %\from
>>   	.else
>> -		__for \from, (\from) + ((\to) - (\from)) / 2
>> -		__for (\from) + ((\to) - (\from)) / 2 + 1, \to
>> +		__for %\from, %((\from) + ((\to) - (\from)) / 2)
>> +		__for %((\from) + ((\to) - (\from)) / 2 + 1), %\to
>>   	.endif
>>   .endm
>>   
>>   .macro _for var:req, from:req, to:req, insn:vararg
>>   	.macro _for__body \var:req
>> +		.noaltmacro
>>   		\insn
>> +		.altmacro
>>   	.endm
>>   
>> +	.altmacro
>>   	__for \from, \to
>> +	.noaltmacro
>>   
>>   	.purgem _for__body
>>   .endm
> 
> Looks OK to me.  With [*] addressed as appropriate, and modulo others'
> comments (if any):

This is the new commit message (I have taken the opportunity to reflow it):

commit 0dabd72ee773a62ec25fde289a60a9de908bf41b
Author: Julien Grall <julien.grall@arm.com>
Date:   Wed Dec 5 14:44:19 2018 +0000

     arm64/fpsimdmacros: Allow the macro "for" to be used in more cases

     The current version of the macro "for" is not able to work when the
     counter is used to generate registers using mnemonics. This is because
     gas is not able to evaluate the expression generated if used in
     register's name (i.e x\n).

     Gas offers a way to evaluate macro arguments by using % in front of
     them under the alternate macro mode.

     The implementation of "for" is updated to use the alternate macro mode
     and %, so we can use the macro in more cases. As the alternate macro
     mode may have side-effects, this is disabled when expanding the body.

     While it is enough to prefix the argument of the macro "__for_body"
     with %, the arguments of "__for" are also prefixed to get a more
     bearable value in case of compilation error.

     Suggested-by: Dave Martin <dave.martin@arm.com>
     Signed-off-by: Julien Grall <julien.grall@arm.com>

     ---

      For the alternate macro mode documentation, see:
        https://sourceware.org/binutils/docs/as/Altmacro.html

> 
> Reviewed-by: Dave Martin <Dave.Martin@arm.com>

Thank you!

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
