Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A8878A50
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 13:18:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sWhGrOg3CC4C7N5QVCkbjJ0iVlxYprjfLKz5nFawr7I=; b=EXMU13HVNhtY0O
	24Dx+WN4RsQkxvD4tSlVFOg2QOOpkv8mx+mDemQn+usPtgnF/EkzddVUlcFca/NSNrRY4b57zWd2H
	+L8tsbz92fxBliuvHtTUFdWo+/bugoONRMKmFKkPrj+Qx4E8b8maGHFhXNaX0RtYfxLDieCggCvxK
	4cEAKobovy9Qu56GlH9gF9FLmG9JusAUXFpg+KvzHMOA817G8Wb6aGeefcQ7E12F5uqoXHa4hD8Cj
	9KMgtFnIeBG2qJVdjsQz/18Xqi/CUqb9By5Lmo6dCiMMvqpWYcz9fnlBAVdAboZ22wXJtXTRtL/yY
	MSqXO8lifUX9b8MsuGWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs3fq-0001dQ-Dr; Mon, 29 Jul 2019 11:18:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs3fj-0001cm-DZ
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 11:18:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D0B2F28;
 Mon, 29 Jul 2019 04:18:30 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3916F3F694;
 Mon, 29 Jul 2019 04:18:30 -0700 (PDT)
Subject: Re: build error
To: Matteo Croce <mcroce@redhat.com>
References: <CAGnkfhySwXY7YwuQezyx6cEpemZW4Hox1_4fQJm3-5hvM3G6gw@mail.gmail.com>
 <20190729095047.k45isr7etq3xkyvr@willie-the-truck>
 <1cfad84e-5a98-99bd-07c2-9db0cf37292b@arm.com>
 <CAGnkfhxXHPfMZVMy4Wjmy39E3Oh2U8FjVU8p8PprCnj5QFLMEg@mail.gmail.com>
 <cc6f9c8f-a4a1-7c71-1f89-72e1e8dd0cc8@arm.com>
 <CAGnkfhx6St+MYQuR_Duguk4Q9ieuL7sLCTL=G76-eqUcCAbpoA@mail.gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <c8581164-168d-a4a0-46de-4bdd7f7dedbf@arm.com>
Date: Mon, 29 Jul 2019 12:18:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAGnkfhx6St+MYQuR_Duguk4Q9ieuL7sLCTL=G76-eqUcCAbpoA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_041831_504062_9C4C72FF 
X-CRM114-Status: GOOD (  16.22  )
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
Cc: Will Deacon <will@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/07/2019 12:12, Matteo Croce wrote:
> On Mon, Jul 29, 2019 at 1:08 PM Vincenzo Frascino
> <vincenzo.frascino@arm.com> wrote:
>>
>> Hi Matteo,
>>
>> On 29/07/2019 11:25, Matteo Croce wrote:
>>> On Mon, Jul 29, 2019 at 12:16 PM Vincenzo Frascino
>>> <vincenzo.frascino@arm.com> wrote:
>>>>
>>>> Hi Matteo and Will,
>>>>
>>>>
>>>> If I try to build a fresh kernel on my machine with the standard "make mrproper
>>>> && make defconfig && make" I do not see the reported issue (Please see below
>>>> scissors).
>>>>
>>>> At this point would be interesting to know more about how Matteo is building the
>>>> kernel, and try to reproduce the issue here.
>>>>
>>>> @Matteo, could you please provide the full .config and the steps you used to
>>>> generate it? Is it an 'oldconfig'?
>>>>
>>>
>>> Hi,
>>>
>>> yes, this is an oldconfig from a vanilla 5.2, I attach it
>>> (the non gzipped config was dropped by the ML filter)
>>>
>>>
>>
>> I tried your config file and seems working correctly:
>>
>> # cp ~/config ../linux-out/.config
>> # make oldconfig
>> # make
>>
>> arch/arm64/Makefile:56: CROSS_COMPILE_COMPAT not defined or empty, the compat
>> vDSO will not be built
>>
>> ---
>>
>> Could you please send to me the config file that does not contain:
>> CONFIG_CROSS_COMPILE_COMPAT_VDSO=""
>>
>> The original one I mean, on which you did not run make oldconfig.
>> My suspect at this point is that the string passed to
>> CONFIG_CROSS_COMPILE_COMPAT_VDSO is not completely empty.
>>
>> In fact if I do CONFIG_CROSS_COMPILE_COMPAT_VDSO=" " (single space),
>> I do have a failure similar to the one you reported.
>>
> 
> That's what I initially thought, but the string is effectively empty:
> 
> # make
> arch/arm64/Makefile:58: *** gcc not found, check CROSS_COMPILE_COMPAT.  Stop.
> # grep CROSS_COMPILE_COMPAT_VDSO .config |hexdump -C
> 00000000  43 4f 4e 46 49 47 5f 43  52 4f 53 53 5f 43 4f 4d  |CONFIG_CROSS_COM|
> 00000010  50 49 4c 45 5f 43 4f 4d  50 41 54 5f 56 44 53 4f  |PILE_COMPAT_VDSO|
> 00000020  3d 22 22 0a                                       |="".|
> 00000024
> 
> 

Ok, it is strange though that your config file works in my environment. Could
you please provide to me the starting .config file?

Could you please confirm as well that "make mrproper && make defconfig && make"
builds correctly for you?

Last but not least, are you on any irc channel? Might help speeding up the
debugging if we talk there.

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
