Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0998D33A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 14:36:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RoTs8XervgSZQbOFcXmcVq6eoosvzmNjdec9ewCIATY=; b=CYjcLXt/KGknOYwD7ilzjw0is
	DnpAnH2qXoUIkR8ECSPEB3LtZbvKlHjiVo7kWtS/uzAWRYKi0s9QC3P1rVrmnNFgpVj32vDFdf9Qe
	fUKuqeS9gbA1T9ylV6bs0SYOt53C0TyauGAqmTECQSunN846RndZffq36nMJZs5R39IZ/B1ApawaB
	sw6HoiPxYsp2k37tJgXgze7h809252WXtg0T3Qoi1kTgDijvBRn6CCRR/WibZ9WrIct/AtdNyrwKN
	E9qqt1FujY3jFkS9y1jHKuQpRUmUBmUjIQlC2OgR0VVOVm0rCJOhm/oSDrFfdcZ01jUsHVRufw46B
	I+yJup7ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxsVV-0001Wv-VF; Wed, 14 Aug 2019 12:36:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxsV3-0001TN-II
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 12:35:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E6C5E28;
 Wed, 14 Aug 2019 05:35:29 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C7B423F706;
 Wed, 14 Aug 2019 05:35:28 -0700 (PDT)
Subject: Re: [PATCH v4 6/6] dt-bindings: arm: coresight: Add support for
 coresight-needs-save-restore
To: mike.leach@linaro.org, andrew.murray@arm.com
References: <20190730125157.884-1-andrew.murray@arm.com>
 <20190730125157.884-7-andrew.murray@arm.com>
 <9df0eea2-a9bd-3a93-ca51-9c3d2391a1cf@arm.com>
 <20190802143751.GP56241@e119886-lin.cambridge.arm.com>
 <CANLsYkyVMRh_L5BfwWk=s-obh+xiZfjwqXUJkwgaZYWmc6Kuww@mail.gmail.com>
 <20190814100152.GB43882@e119886-lin.cambridge.arm.com>
 <CAJ9a7Vj+bo2PMnh2fbMJnaHRwJm9jU689P+iZ4q8_Vg7-3SnDg@mail.gmail.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <718b5bdf-9828-f215-9a81-637308be3b49@arm.com>
Date: Wed, 14 Aug 2019 13:35:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAJ9a7Vj+bo2PMnh2fbMJnaHRwJm9jU689P+iZ4q8_Vg7-3SnDg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_053533_805690_8D91FD9E 
X-CRM114-Status: GOOD (  28.13  )
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
Cc: Al.Grant@arm.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com, coresight@lists.linaro.org,
 Sudeep.Holla@arm.com, leo.yan@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mike,

On 14/08/2019 12:06, Mike Leach wrote:
> Hi,
> 
> On Wed, 14 Aug 2019 at 11:01, Andrew Murray <andrew.murray@arm.com> wrote:
>>
>> On Sun, Aug 04, 2019 at 07:13:45AM -0600, Mathieu Poirier wrote:
>>> On Fri, 2 Aug 2019 at 08:37, Andrew Murray <andrew.murray@arm.com> wrote:
>>>>
>>>> On Fri, Aug 02, 2019 at 11:40:54AM +0100, Suzuki K Poulose wrote:
>>>>> Hi Andrew,
>>>>>
>>>>> On 30/07/2019 13:51, Andrew Murray wrote:
>>>>>> Some coresight components, because of choices made during hardware
>>>>>> integration, require their state to be saved and restored across CPU low
>>>>>> power states.

...

>>>>>> --- a/Documentation/devicetree/bindings/arm/coresight.txt
>>>>>> +++ b/Documentation/devicetree/bindings/arm/coresight.txt
>>>>>> @@ -92,6 +92,9 @@ its hardware characteristcs.
>>>>>>      * arm,cp14: must be present if the system accesses ETM/PTM management
>>>>>>        registers via co-processor 14.
>>>>>> +   * arm,coresight-needs-save-restore: boolean. Indicates that software
>>>>>> +     should save/restore state across power down.
>>>>>> +
>>>>>
>>>>> Do you think we could be a bit more descriptive here about when people could add
>>>>> it to the DT ? Here we don't mention when someone should use this property and
>>>>> it may be added to platforms where it may be absolutely unnecessary. How about :
>>>>>
>>>>> "Indicates that the hardware implementation may not honor the Powerup request
>>>>> from the software and thus might loose the register context on CPU power
>>>>> down (e.g, during CPUIdle). Software must save/restore the context during a
>>>>> CPU power transition cycle."
>>>>
>>>> How about the following:
>>>>
>>>> "Indicates that the hardware will loose register context on CPU power down (e.g.
>>>> CPUIdle), despite the TRCPDCR.PU bit being set."
>>>>
>>>> I'm keen to avoid making suggestions about what the kernel will do when it sees
>>>> this flag and thus prefer to focus on describing what the hardware does. So I
>>>> dropped your last sentence. However the name of the flag still implies policy
>>>> which I don't like.
>>>>
>>>> I also changed the 'may not honor' wording, I'm not sure if this is really the
>>>> case or if the spec is open to interpretation.
>>>>
>>>> It would great for this wording to also apply to other CS components though I
>>>> haven't investigated if these have a PU bit or something different.
>>>
>>> Exactly - the definition needs to be broad enough to apply to other CS
>>> components.  Mike what do you think would be appropriate for CTIs?
>>
> CTIs have no power control at all - i.e. no PU bit to request we stay
> up - and reside in the debug power domain. So they are coupled to the
> CS/CPU/ETM/ power domains and reliant on outside forces to request
> power.
> The expectation is that for a PE bound CTI, if debug is powered then
> it will be fully powered - so an ETM with PU respected, or the
> external debug logic with DBGNOPWRDWN respected should be sufficient
> for CTI to stay alive.

I am trying to understand why we need this property for CTI.
Don't we always need to save-restore the CTI controls on a CPU_DOWN for the
associated CTI ? Since it may not be really tied to an ETM (e.g, if the CTI is
purely used to handle CPU triggers, PMU etc,). If that is the case, do we need
this property for CTI at all ?

> 
>> How about we keep this short and simple:
>>
>> * arm,coresight-loses-context-with-cpu : boolean. Indicates that the hardware

nit: s/loses/looses ?

>>    will lose register context on CPU power down (e.g. CPUIdle).
>>
> 
> So the above name is generic enough to encompass the CTI as well.
> 
>> I could have added something like "... despite TRCPDCR.PU being set", or to
>> apply more generically: "... despite available register controls being set to
>> prevent such context loss". However whilst these are more informative - they
>> elude to some of reasons as to why context is lost and as we cannot be
>> exhaustive I'd rather not give a limited example.
>>
>> However if a longer explaination is required:
>>
>> * arm,coresight-loses-context-with-cpu : boolean. Indicates that the hardware
>>    will lose register context on CPU power down (e.g. CPUIdle). An example of
>>    where this may be needed are systems which contain a coresight component and
>>    CPU in the same power domain. When the CPU powers down the coresight
>>    component also powers down and loses its context.

This looks fine for me. But I am trying to understand the rationale behind
using this for CTI

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
