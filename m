Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FA91BBF74
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 15:27:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RKTfWN/84k/pW96rWgK6+89eFphj4lUVVysmbMAeYGQ=; b=YjwzE6jvOSAJPA
	q4znl99l7AdIkRTIGSpSp3oPh3927qaXg9P84HkwB98wTPUJNELj4f3g82tZvqDj6V3ybyiLIgnPB
	7wGJs3Qiu5Y+3MNK9x8lYvNIBtIzxtlc1Urj7DhKzB2agogmLourdH/lKm0/BgjDPWoAEFEP4HRZx
	hgNgFiX1D5dHLMdv+3YiGlmSwwIBSolqhEXD2iO6uEBCLaMaGKXNE6bAMFV+FBTAuojrrkItNc9YU
	lj/rbx9gReJXQV1rpt46Ah2ivXF6V//W6/DRNgrhnJwGC1byFFU2ccqiFyqaCzNJfNB6HhWSmCWQy
	qwrGzbZjFDwEFDT1k3KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQGN-0003Pw-1c; Tue, 28 Apr 2020 13:27:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQAC-0004le-71
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 13:20:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 679AB31B;
 Tue, 28 Apr 2020 06:20:39 -0700 (PDT)
Received: from [10.37.8.217] (unknown [10.37.8.217])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2AF0E3F68F;
 Tue, 28 Apr 2020 06:20:37 -0700 (PDT)
Subject: Re: [PATCH] arm64/vdso: Remove unused makefile variable
To: Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
References: <d8baa0e5-0e20-9f58-5e79-34a272f86d1d@infradead.org>
 <20200427203520.GA23186@willie-the-truck>
 <c3c48a79-6a0c-2bae-16a8-507f05ee5473@arm.com>
 <CAMj1kXHoEbG_Ff21Qs1eQJ=3zuqE_RuMzVWbmopv5FP52pqJgQ@mail.gmail.com>
 <20200428124353.GB6791@willie-the-truck>
 <CAMj1kXH=fZHb5DcWZ+J735zU+LqwdUU2fUYk4XQoh3ZFE+WYTw@mail.gmail.com>
 <20200428131652.GE6791@willie-the-truck>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <6867209d-9254-645b-a1f9-4699a30ad12a@arm.com>
Date: Tue, 28 Apr 2020 14:21:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200428131652.GE6791@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_062040_356843_68EF0ED7 
X-CRM114-Status: GOOD (  23.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Geoff Levand <geoff@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 4/28/20 2:16 PM, Will Deacon wrote:
> On Tue, Apr 28, 2020 at 03:02:43PM +0200, Ard Biesheuvel wrote:
>> On Tue, 28 Apr 2020 at 14:43, Will Deacon <will@kernel.org> wrote:
>>>
>>> On Tue, Apr 28, 2020 at 01:52:55PM +0200, Ard Biesheuvel wrote:
>>>> On Tue, 28 Apr 2020 at 12:45, Vincenzo Frascino
>>>> <vincenzo.frascino@arm.com> wrote:
>>>>> On 4/27/20 9:35 PM, Will Deacon wrote:
>>>>>> [+Vincenzo]
>>>>>>
>>>>>> On Fri, Apr 24, 2020 at 08:58:49AM -0700, Geoff Levand wrote:
>>>>>>> The vdso makefile variable VDSO_LDFLAGS is defined, but never used,
>>>>>>> so remove it.
>>>>>>>
>>>>>>> Signed-off-by: Geoff Levand <geoff@infradead.org>
>>>>>>> ---
>>>>>>>
>>>>>>> Hi,
>>>>>>>
>>>>>>> This seems to be left over from a code cleanup that missed it.
>>>>>>
>>>>>> While I agree that this isn't used, I'm wondering why '-Bsymbolic' is used
>>>>>> to link the compat vDSO but not the native one. It seems weird to differ
>>>>>> in this regard.
>>>>>>
>>>>>> Vincenzo? Looks like you added this unused variable in 28b1a824a4f44
>>>>>> ("arm64: vdso: Substitute gettimeofday() with C implementation").
>>>>>>
>>>>>
>>>>> My understanding is that "-Bsymbolic" is required by both compat and normal vdso
>>>>> because when the shared library is built it adds a flag in the dynamic section
>>>>> of the binary called DT_SYMBOLIC which alters the dynamic linker's symbol
>>>>> resolution algorithm to search for references for a symbol inside the library
>>>>> first and then into the executable.
>>>>>
>>>>
>>>> DT_SYMBOLIC doesn't (or shouldn't) change the dynamic linking
>>>> behavior. It informs the linker that ELF symbol preemption may not
>>>> work, since the .so has bound internal references to its exported
>>>> symbols to the internal versions directly, rather than allowing the
>>>> application to supersede (i.e., 'preempt') them. This is an obscure
>>>> feature that isn't really relevant for the VDSO, since we carefully
>>>> control what we export from the .so anyway (via the linker script's
>>>> VERSIONS section)
>>>>
>>>>> This becomes useful for example when an executable built with -fPIC is trying to
>>>>> call a public vDSO function from assembly (bl symbol).
>>>>>
>>>>> The issue here seems to be that I used VDSO_LDFLAGS instead of ldflags-y. I can
>>>>> post a patch and Cc stable. Adding Geoff as Reported-by.
>>>>>
>>>>
>>>> I think it can be removed.
>>>
>>> Hmm, so I did a little bit more digging because -Bsymbolic is used to link
>>> the vDSO on arm, mips, sparc and x86. Commit 6f121e548f83 ("x86, vdso:
>>> Reimplement vdso.so preparation in build-time C") suggests that it's a good
>>> idea to prevent any unexpected dynamic relocations appearing in the vDSO
>>> object.
>>>
>>
>> In the x86 case, there are internal calls to the exported routines,
>> and without Bsymbolic, those are routed via a GOT/PLT so that the
>> application can override those symbols. For instance, under the normal
>> ELF symbol preemption rules, the x86 VDSO should use the application's
>> version of __kernel_vsyscall() if it exists as a global symbol, and so
>> the interposable dynamic relocation is made to point to the
>> application's version of the symbol. That is why x86 needs -Bsymbolic.
>>
>> That issue does not exist on arm64, as far as I can tell. It doesn't
>> really hurt either to have the option, but it would be good to perhaps
>> annotate why we are keeping it.
> 
> Yes, so I think we either remove it for arm, arm64 compat and arm64 native
> or we add it to arm64 native for consistency/over-zealous future-proofing.
> In either case, we need to document it somewhere so we don't run into this
> again in future.
> 
> Vincenzo -- are you able to send a patch, please?
>

Already working on it. My preference is to keep it, I am adding documentation to
the patch notes and in the Makefile.

> Will
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
