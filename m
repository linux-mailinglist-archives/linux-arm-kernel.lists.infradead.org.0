Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C944370F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 16:03:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FwntI4J98VrbiuPWtzI+8BjUDaxDKmatY0LjhwOKssg=; b=FEk4BjUZrWjQyl
	waYVKyviD+6V9XBYyp+nTjgEp/XdpNXBxRwfeetYOOSt00dVwGxk4ocSXGxLQMIxn7qNDbp740t5w
	x7l+FKFwm8ke30C3O/B6sc6U55rDDvYdUpd24UQ7Rl7V+PxPCFJffPVB5y9Bj8ADQ/YfFs+afc7LK
	5tF9Uat6shocGAcY7cwevvathoXoLj9nqdgCeKr3dZxo/zjz9Gx6D9WDr0sMwydxfwDDzCyp3zPB9
	aYiErGxrWQFrwAjsUQizWWY5sqWktZ7Nr7E4ZrCITSz6kA3ZI5x/xUN0zpPjUuX/Hbb5UZiu/bQGB
	VuoTQUIU4UO1pmT3Qn2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbQK9-0001a9-HZ; Thu, 13 Jun 2019 14:03:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbQJw-0001Ze-A4
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 14:03:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 852BC3EF;
 Thu, 13 Jun 2019 07:03:15 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1320D3F718;
 Thu, 13 Jun 2019 07:03:13 -0700 (PDT)
Subject: Re: [PATCH v4 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.txt
To: Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>
References: <cover.1560339705.git.andreyknvl@google.com>
 <20190612142111.28161-1-vincenzo.frascino@arm.com>
 <20190612142111.28161-2-vincenzo.frascino@arm.com>
 <a90da586-8ff6-4bed-d940-9306d517a18c@arm.com>
 <20190613092054.GO28951@C02TF0J2HF1T.local>
 <dee7f192-d0f0-558e-3007-eba805c6f2da@arm.com>
 <6ebbda37-5dd9-d0d5-d9cb-286c7a5b7f8e@arm.com>
 <8e3c9537-de10-0d0d-f5bb-c33bde92443f@arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <5963d144-be9b-78d8-9130-ef92bc66b1fd@arm.com>
Date: Thu, 13 Jun 2019 15:03:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <8e3c9537-de10-0d0d-f5bb-c33bde92443f@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_070316_443376_53C86694 
X-CRM114-Status: GOOD (  25.36  )
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Andrey Konovalov <andreyknvl@google.com>, Will Deacon <Will.Deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 13/06/2019 13:28, Szabolcs Nagy wrote:
> On 13/06/2019 12:16, Vincenzo Frascino wrote:
>> Hi Szabolcs,
>>
>> thank you for your review.
>>
>> On 13/06/2019 11:14, Szabolcs Nagy wrote:
>>> On 13/06/2019 10:20, Catalin Marinas wrote:
>>>> Hi Szabolcs,
>>>>
>>>> On Wed, Jun 12, 2019 at 05:30:34PM +0100, Szabolcs Nagy wrote:
>>>>> On 12/06/2019 15:21, Vincenzo Frascino wrote:
>>>>>> +2. ARM64 Tagged Address ABI
>>>>>> +---------------------------
>>>>>> +
>>>>>> +From the kernel syscall interface prospective, we define, for the purposes
>>>>>                                      ^^^^^^^^^^^
>>>>> perspective
>>>>>
>>>>>> +of this document, a "valid tagged pointer" as a pointer that either it has
>>>>>> +a zero value set in the top byte or it has a non-zero value, it is in memory
>>>>>> +ranges privately owned by a userspace process and it is obtained in one of
>>>>>> +the following ways:
>>>>>> +  - mmap() done by the process itself, where either:
>>>>>> +    * flags = MAP_PRIVATE | MAP_ANONYMOUS
>>>>>> +    * flags = MAP_PRIVATE and the file descriptor refers to a regular
>>>>>> +      file or "/dev/zero"
>>>>>
>>>>> this does not make it clear if MAP_FIXED or other flags are valid
>>>>> (there are many map flags i don't know, but at least fixed should work
>>>>> and stack/growsdown. i'd expect anything that's not incompatible with
>>>>> private|anon to work).
>>>>
>>>> Just to clarify, this document tries to define the memory ranges from
>>>> where tagged addresses can be passed into the kernel in the context
>>>> of TBI only (not MTE); that is for hwasan support. FIXED or GROWSDOWN
>>>> should not affect this.
>>>
>>> yes, so either the text should list MAP_* flags that don't affect
>>> the pointer tagging semantics or specify private|anon mapping
>>> with different wording.
>>>
>>
>> Good point. Could you please propose a wording that would be suitable for this case?
> 
> i don't know all the MAP_ magic, but i think it's enough to change
> the "flags =" to
> 
> * flags have MAP_PRIVATE and MAP_ANONYMOUS set or
> * flags have MAP_PRIVATE set and the file descriptor refers to...
> 
> 

Fine by me.  I will add it the next iterations.

>>>>>> +  - a mapping below sbrk(0) done by the process itself
>>>>>
>>>>> doesn't the mmap rule cover this?
>>>>
>>>> IIUC it doesn't cover it as that's memory mapped by the kernel
>>>> automatically on access vs a pointer returned by mmap(). The statement
>>>> above talks about how the address is obtained by the user.
>>>
>>> ok i read 'mapping below sbrk' as an mmap (possibly MAP_FIXED)
>>> that happens to be below the heap area.
>>>
>>> i think "below sbrk(0)" is not the best term to use: there
>>> may be address range below the heap area that can be mmapped
>>> and thus below sbrk(0) and sbrk is a posix api not a linux
>>> syscall, the libc can implement it with mmap or whatever.
>>>
>>> i'm not sure what the right term for 'heap area' is
>>> (the address range between syscall(__NR_brk,0) at
>>> program startup and its current value?)
>>>
>>
>> I used sbrk(0) with the meaning of "end of the process's data segment" not
>> implying that this is a syscall, but just as a useful way to identify the mapping.
>> I agree that it is a posix function implemented by libc but when it is used with
>> 0 finds the current location of the program break, which can be changed by brk()
>> and depending on the new address passed to this syscall can have the effect of
>> allocating or deallocating memory.
>>
>> Will changing sbrk(0) with "end of the process's data segment" make it more clear?
> 
> i don't understand what's the relevance of the *end*
> of the data segment.
> 
> i'd expect the text to say something about the address
> range of the data segment.
> 
> i can do
> 
> mmap((void*)65536, 65536, PROT_READ|PROT_WRITE, MAP_FIXED|MAP_SHARED|MAP_ANON, -1, 0);
> 
> and it will be below the end of the data segment.
>

As far as I understand the data segment "lives" below the program break, hence
it is a way of describing the range from which the user can obtain a valid
tagged pointer.

Said that, I am not really sure on how do you want me to document this (my aim
is for this to be clear to the userspace developers). Could you please propose
something?

>>
>> I will add what you are suggesting about the heap area.
>>

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
