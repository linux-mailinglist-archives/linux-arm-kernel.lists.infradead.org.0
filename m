Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA6B184382
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 10:15:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D+PmIBDbyvm8VWw8SHq08V0M9ik/kGnojirBnU8msPY=; b=QVweIOElBHwGPsugj4FISR5i8
	kZ9UO8sXA90Jz7GvZAyEMWPErha4JOsNBQhv3U20MOVxCEAllauv5b+w3O5kC7AGSetEu8glirpEe
	UnsIjqygvpu3KwR0/n9jc8oMZSkhGCKLrZscBcnnrP9pve/dsUU/RJ+NqBEBip4fDfXph1tZC7wEJ
	qM/DHjGacPtNa2YHAIjsKG+ZWVr/Go7GlAUvzTx5Nd1vVKCz1J0SgLEiNvx3sAJ6Q6Wh+GoEE/Feq
	dRfqiCv5H2blvZVoFUIj9MgtnGyPh1LoXfdNESysskHeVZKG8RJzdxpfDAVGFvdvNlG0EulDiCeh/
	oXWLGdO/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgPV-0004P8-5O; Fri, 13 Mar 2020 09:15:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgOd-0003ju-6G
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 09:14:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8F18831B;
 Fri, 13 Mar 2020 02:14:22 -0700 (PDT)
Received: from [10.162.16.120] (a075563-lin.blr.arm.com [10.162.16.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C7C813F67D;
 Fri, 13 Mar 2020 02:14:18 -0700 (PDT)
Subject: Re: [PATCH v7 15/17] kconfig: Add support for 'as-option'
To: Masahiro Yamada <masahiroy@kernel.org>
References: <1584090304-18043-1-git-send-email-amit.kachhap@arm.com>
 <1584090304-18043-16-git-send-email-amit.kachhap@arm.com>
 <CAK7LNATKkdd5RqB-E0_F3WidxmdBZxhjc2g6bkgCxaUu2vO2eA@mail.gmail.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <ec853788-03f8-6c28-90f2-3daf0a113c6f@arm.com>
Date: Fri, 13 Mar 2020 14:44:17 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAK7LNATKkdd5RqB-E0_F3WidxmdBZxhjc2g6bkgCxaUu2vO2eA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_021423_437564_06520BD6 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 3/13/20 2:40 PM, Masahiro Yamada wrote:
> Hi Amit,
> 
> On Fri, Mar 13, 2020 at 6:06 PM Amit Daniel Kachhap
> <amit.kachhap@arm.com> wrote:
>>
>> From: Vincenzo Frascino <vincenzo.frascino@arm.com>
>>
>> Currently kconfig does not have a feature that allows to detect if the
>> used assembler supports a specific compilation option.
>>
>> Introduce 'as-option' to serve this purpose in the context of Kconfig:
>>
>>          config X
>>                  def_bool $(as-option,...)
>>
>> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
>> Cc: linux-kbuild@vger.kernel.org
> 
> 
> If you have a chance for v8,
> could you please drop these Cc lines?

Ok sure I will remember.

Cheers,
Amit

> 
> I had already given Ack, and am satisfied.
> I have no more comment.
> 
> Thanks.
> 
> 
> 
>> Acked-by: Masahiro Yamada <masahiroy@kernel.org>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
>> ---
>>   scripts/Kconfig.include | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
>> index 85334dc..a1c1925 100644
>> --- a/scripts/Kconfig.include
>> +++ b/scripts/Kconfig.include
>> @@ -31,6 +31,12 @@ cc-option = $(success,$(CC) -Werror $(CLANG_FLAGS) $(1) -S -x c /dev/null -o /de
>>   # Return y if the linker supports <flag>, n otherwise
>>   ld-option = $(success,$(LD) -v $(1))
>>
>> +# $(as-option,<flag>)
>> +# /dev/zero is used as output instead of /dev/null as some assembler cribs when
>> +# both input and output are same. Also both of them have same write behaviour so
>> +# can be easily substituted.
>> +as-option = $(success, $(CC) $(CLANG_FLAGS) $(1) -c -x assembler /dev/null -o /dev/zero)
>> +
>>   # $(as-instr,<instr>)
>>   # Return y if the assembler supports <instr>, n otherwise
>>   as-instr = $(success,printf "%b\n" "$(1)" | $(CC) $(CLANG_FLAGS) -c -x assembler -o /dev/null -)
>> --
>> 2.7.4
>>
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
