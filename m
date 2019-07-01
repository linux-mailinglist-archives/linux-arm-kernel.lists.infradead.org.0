Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1185B75C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 10:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PpnvVOjK768KPRHPpLGcp0hjFAT1xMRnGDAbNvQPvfo=; b=GkSrMEjwvtMWyOAlNnYz3qszh
	pd/FFVyOk240qY5tHmMYyNkZVtviPrXlzPD8KeA1j3PENXGXce2wyVawCGDE0eiXae3MZb5U4iplS
	selzqNtG1jU7PZJ5uarbPbLcwPriq9iPSDCIfok4hwg6khtC9NwZHU/iBMduHe0pv0YGbqETc3VDA
	wXMfKRnlOYhk9Q+fahFsb3tK4u0wNA2kVk1JfObTW5gZQ3N25o0ut9IYLxZ8N3pcX0DGZY+a7WSE4
	DO7LEZGb44hd3B+HeaC1twu/b8dyN1zf6F36WOfTqZmjkCbcRJP3B3sBKFG7MV//oxARu89I4Zd6x
	tqIp9D6ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhs9W-0005c9-4o; Mon, 01 Jul 2019 08:59:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hhs8x-0005Nw-DZ
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 08:58:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8CAB92B;
 Mon,  1 Jul 2019 01:58:32 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 698153F718;
 Mon,  1 Jul 2019 01:58:31 -0700 (PDT)
Subject: Re: [PATCH v2 2/5] coresight: etm4x: use explicit barriers on
 enable/disable
To: leo.yan@linaro.org, andrew.murray@arm.com
References: <20190627083525.37463-1-andrew.murray@arm.com>
 <20190627083525.37463-3-andrew.murray@arm.com>
 <20190628024529.GC20296@leoy-ThinkPad-X240s>
 <20190628083523.GG34530@e119886-lin.cambridge.arm.com>
 <20190628085154.GD32370@leoy-ThinkPad-X240s>
 <20190628090013.GI34530@e119886-lin.cambridge.arm.com>
 <20190628094116.GF32370@leoy-ThinkPad-X240s>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <ff3c3659-930a-1572-588b-9cb040f38e4f@arm.com>
Date: Mon, 1 Jul 2019 09:58:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190628094116.GF32370@leoy-ThinkPad-X240s>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_015835_679313_65D3E4F5 
X-CRM114-Status: GOOD (  23.45  )
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
Cc: mathieu.poirier@linaro.org, alexander.shishkin@linux.intel.com,
 coresight@lists.linaro.org, stable@vger.kernel.org, Sudeep.Holla@arm.com,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leo,

On 28/06/2019 10:41, Leo Yan wrote:
> Hi Andrew,
> 
> On Fri, Jun 28, 2019 at 10:00:14AM +0100, Andrew Murray wrote:
>> On Fri, Jun 28, 2019 at 04:51:54PM +0800, Leo Yan wrote:
>>> Hi Andrew,
>>>
>>> On Fri, Jun 28, 2019 at 09:35:24AM +0100, Andrew Murray wrote:
>>>
>>> [...]
>>>
>>>>>> @@ -454,7 +458,8 @@ static void etm4_disable_hw(void *info)
>>>>>>   	control &= ~0x1;
>>>>>>   
>>>>>>   	/* make sure everything completes before disabling */
>>>>>> -	mb();
>>>>>> +	/* As recommended by 7.3.77 of ARM IHI 0064D */
>>>>>> +	dsb(sy);
>>>>>
>>>>> Here the old code should be right, mb() is the same thing with
>>>>> dsb(sy).
>>>>>
>>>>> So we don't need to change at here?
>>>>
>>>> Correct - on arm64 there is no difference between mb and dsb(sy) so no
>>>> functional change on this hunk.
>>>>
>>>> In repsonse to Suzuki's feedback on this patch, I've updated the commit
>>>> message to describe why I've made this change, as follows:
>>>>       
>>>> "On armv8 the mb macro is defined as dsb(sy) - Given that the etm4x is
>>>> only used on armv8 let's directly use dsb(sy) instead of mb(). This
>>>> removes some ambiguity and makes it easier to correlate the code with
>>>> the TRM."
>>>>
>>>> Does that make sense?
>>>
>>> On reason for preferring to use mb() rather than dsb(sy) is for
>>> compatibility cross different architectures (armv7, armv8, and
>>> so on ...).  Seems to me mb() is a general API and transparent for
>>> architecture's difference.
>>>
>>> dsb(sy) is quite dependent on specific Arm architecture, e.g. some old
>>> Arm architecures might don't support dsb(sy); and we are not sure later
>>> it will change for new architectures.
>>
>> Yes but please note that the KConfig for this driver depends on ARM64.
> 
> Understood your point.
> 
> I am a bit suspect it's right thing to always set dependency on ARM64
> for ETMv4 driver.  The reason is Armv8 CPU can also run with aarch32
> mode in EL1.
> 
> If we let ETMv4 driver to support both aarch32 and aarch64, then we
> will see dsb(sy) might break building for some old Arm arches.

If we add support for ETMv4 on aarch32, I would recommend adding a "dsb"
explicitly for aarch32 to make sure, it doesn't default to something else
that the mb() may cover up as. There is no point in creating another level
of indirection when the architecture is clear about it and the ETMv4 supporting
architectures must implement "dsb". Had this been in a generic code, I would
be happy to retain mb(). But this is specific to the ETMv4 driver and we know
that dsb must be there.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
