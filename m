Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 038311BE885
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 22:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Yw3gSfilmUugGUaH6senh6byPwZUZL3utbvRCU58Evk=; b=IQETqZLUhOKovupUDZ0SL0/lp
	S8yJD1lrZX6BCLUCbLOaJEZ8utMgRX3UMjy5QHXaPUkuBT1CGuLPwyBKvNjGrVEX+3lJb6uBx0/WF
	6QU5u1R49AbnKPnx9avaAfrCdyuqMNCr3uEqEUj5qNjWomR6ssijINd2wAOLFOF5UQH/fcN8w/khT
	c1t6T5Qr/4skkALhXqvdCf04IV4uPsbLQBPRu4jb+idLLvlUIE3zkov4nI0RBq34INWlFab2Ds7Tg
	RPiRku6AXdgQZuLGjvRQTLEfSPXACn5hRzlzRvsDbNJr24y9ZRaBPcNYPAeZB6NDAtPpJIL0vXAo2
	+DwZed8Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtGc-0005Xt-Us; Wed, 29 Apr 2020 20:25:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtGE-0005XK-1t; Wed, 29 Apr 2020 20:24:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D6F311063;
 Wed, 29 Apr 2020 13:24:48 -0700 (PDT)
Received: from [10.37.12.43] (unknown [10.37.12.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9EF1A3F68F;
 Wed, 29 Apr 2020 13:24:45 -0700 (PDT)
Subject: Re: [PATCH] thermal: power_allocate: add upper and lower limits
To: Michael Kao <michael.kao@mediatek.com>
References: <20200424071601.2636-1-michael.kao@mediatek.com>
 <accb83e0-ffbe-b6e3-6bf9-e7cc8b9fe19c@arm.com>
 <1588156776.3573.1.camel@mtksdccf07>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <03286571-c110-7f5e-a911-24f8c3e4fd42@arm.com>
Date: Wed, 29 Apr 2020 21:24:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1588156776.3573.1.camel@mtksdccf07>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_132450_185148_049839CA 
X-CRM114-Status: GOOD (  25.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/29/20 11:39 AM, Michael Kao wrote:
> On Fri, 2020-04-24 at 10:22 +0100, Lukasz Luba wrote:
>> Hi Michael,
>>
>> On 4/24/20 8:16 AM, Michael Kao wrote:
>>> The upper and lower limits of thermal throttle state in the
>>> device tree do not apply to the power_allocate governor.
>>> Add the upper and lower limits to the power_allocate governor.
>>>
>>> Signed-off-by: Michael Kao <michael.kao@mediatek.com>
>>> ---
>>>    drivers/thermal/thermal_core.c | 2 +-
>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/thermal/thermal_core.c b/drivers/thermal/thermal_core.c
>>> index 9a321dc548c8..f6feed2265bd 100644
>>> --- a/drivers/thermal/thermal_core.c
>>> +++ b/drivers/thermal/thermal_core.c
>>> @@ -598,7 +598,7 @@ int power_actor_set_power(struct thermal_cooling_device *cdev,
>>>    	if (ret)
>>>    		return ret;
>>>    
>>> -	instance->target = state;
>>> +	instance->target = clamp_val(state, instance->lower, instance->upper);
>>>    	mutex_lock(&cdev->lock);
>>>    	cdev->updated = false;
>>>    	mutex_unlock(&cdev->lock);
>>>
>>
>> Thank you for the patch and having to look at it. I have some concerns
>> with this approach. Let's analyze it further.
>>
>> In default the cooling devices in the thermal zone which is used by IPA
>> do not have this 'lower' and 'upper' limits. They are set to
>> THERMAL_NO_LIMIT in DT to give full control to IPA over the states.
>>
>> This the function 'power_actor_set_power' actually translates granted
>> power to the state that device will run for the next period.
>> The IPA algorithm has already split the power budget.
>> Now what happen when the 'lower' value will change the state to a state
>> which consumes more power than was calculated in the IPA alg... It will
>> became unstable.
>>
>> I would rather see a change which uses these 'lower' and 'upper' limits
>> before the IPA do the calculation of the power budget. But this wasn't
>> a requirement and we assumed that IPA has full control over the cooling
>> device (which I described above with this DT THERMAL_NO_LIMIT).
>>
>> Is there a problem with your platform that it has to provide some
>> minimal performance, so you tried to introduce this clamping?
>>
>> Regards,
>> Lukasz
> 
> 
> Hi Lukasz,
> 
> I refer to the documentation settings of the thermal device tree
> (Documentation / devicetree / bindings / thermal / thermal.txt).
> 
> It shows that cooling-device is a mandatory property, so max/min cooling
> state should be able to support in framework point of view.
> Otherwise, the limitation should be added in binding document.
> 
> Different hardware mechanisms have different heat dissipation
> capabilities.
> Limiting the input heat source can slow down the heat accumulation and
> temperature burst.
> We want to reduce the accumulation of heat at high temperature by
> limiting the minimum gear of thermal throttle.

I agree that these 'lower' and 'upper' limits shouldn't be just
ignored as is currently. This patch clamps the value at late stage,
though.

Let me have a look how it could be taken into account in the early
stage, before the power calculation and split are done. Maybe there
is a clean way to inject this.

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
