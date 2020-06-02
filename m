Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD431EBD07
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 15:24:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RKs9rPkT4si17EJxcDoJYD7LF3G92xHhkVBkmflMpHA=; b=W4aFvNSzp2/p/+v4EOzQ0biWB
	rsELBpsDdHnqOmyVLL5hAr1mClNv5+X5VOUDqBGV4xs0oX8E22n17us799QQEFNEG7Dqlzd4jWr6u
	nL5Tm4buV7NLxPbaEouiPgqv5G0AF6FzeMrNlLZjUYq4CUvMRJAFYzH9gozwa8oWXu9Ahr97vriXt
	es7sCJUDdRoT4aOpq8r5MyDN8OQGBCuEMKkEJh92uyyANouqiCi0srsGjlX+Ezwo9JbTHkG2H7Ted
	VI6xBm+4Gtt419cjLHKaP/SrvWn4mk/H+R8wzwI4g6iXqOos3JSi8Sr100TIFs69nqw6y1cuBd9Tg
	bZrqpzEqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg6uQ-0007bZ-OX; Tue, 02 Jun 2020 13:24:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg6uJ-0007bB-RW
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 13:24:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 58DB41FB;
 Tue,  2 Jun 2020 06:24:42 -0700 (PDT)
Received: from [10.37.12.77] (unknown [10.37.12.77])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DA5DD3F305;
 Tue,  2 Jun 2020 06:24:37 -0700 (PDT)
Subject: Re: [PATCH v4 4/5] coresight: etm: perf: Add default sink selection
 to etm perf
To: mike.leach@linaro.org
References: <20200526104642.9526-1-mike.leach@linaro.org>
 <20200526104642.9526-5-mike.leach@linaro.org>
 <51fcc1b5-a4ab-04d1-e395-95df9f4745f7@arm.com>
 <CAJ9a7ViUVAttf3-Mb4zVeJ6+Ty=4yxg3MZeGPcGDc0UMVY_Xtg@mail.gmail.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <73ce6741-0361-7443-6714-56e8d64d49e1@arm.com>
Date: Tue, 2 Jun 2020 14:29:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CAJ9a7ViUVAttf3-Mb4zVeJ6+Ty=4yxg3MZeGPcGDc0UMVY_Xtg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_062443_976716_A25F4DAF 
X-CRM114-Status: GOOD (  31.05  )
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
Cc: coresight@lists.linaro.org, acme@kernel.org, mathieu.poirier@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/02/2020 02:12 PM, Mike Leach wrote:
> Hi Suzuki,
> 
> On Tue, 2 Jun 2020 at 12:40, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>>
>> On 05/26/2020 11:46 AM, Mike Leach wrote:
>>> Add default sink selection to the perf trace handling in the etm driver.
>>> Uses the select default sink infrastructure to select a sink for the perf
>>> session, if no other sink is specified.
>>>
>>> Signed-off-by: Mike Leach <mike.leach@linaro.org>
>>
>> This patch looks fine to me as such. But please see below for some
>> discussion on the future support for other configurations.
>>
>>
>>> ---
>>>    .../hwtracing/coresight/coresight-etm-perf.c    | 17 ++++++++++++++---
>>>    1 file changed, 14 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/hwtracing/coresight/coresight-etm-perf.c b/drivers/hwtracing/coresight/coresight-etm-perf.c
>>> index 84f1dcb69827..1a3169e69bb1 100644
>>> --- a/drivers/hwtracing/coresight/coresight-etm-perf.c
>>> +++ b/drivers/hwtracing/coresight/coresight-etm-perf.c
>>> @@ -226,9 +226,6 @@ static void *etm_setup_aux(struct perf_event *event, void **pages,
>>>                sink = coresight_get_enabled_sink(true);
>>>        }
>>>
>>> -     if (!sink)
>>> -             goto err;
>>> -
>>>        mask = &event_data->mask;
>>>
>>>        /*
>>> @@ -253,6 +250,16 @@ static void *etm_setup_aux(struct perf_event *event, void **pages,
>>>                        continue;
>>>                }
>>>
>>> +             /*
>>> +              * No sink provided - look for a default sink for one of the
>>> +              * devices. At present we only support topology where all CPUs
>>> +              * use the same sink [N:1], so only need to find one sink. The
>>> +              * coresight_build_path later will remove any CPU that does not
>>> +              * attach to the sink, or if we have not found a sink.
>>> +              */
>>> +             if (!sink)
>>> +                     sink = coresight_find_default_sink(csdev);
>>> +
>>
>> While we are here, should we remove the "find enabled sink" if the csink
>> is not specified via config. ? That step is problematic, as the user may
>> not remember which sinks were enabled. Also, we can't hit that with
>> perf tool as it prevents any invocation without sink (until this change).
>>
>> So may be this is a good time to get rid of that ?
>>
> 
> You are correct - the  'sink = coresight_get_enabled_sink(true);' was
> dead code until this patch.
> However - if someone has set up their system using sysfs to enable
> sinks, then should we not respect that rather than assume they made a
> mistake?

If someone really wants to use a specific sink, then they could always
specify it via the config attribute and it will be honoured. We need not
carry along this non-intuitive hinting.

> 
> Thinking about N:M topologies mentioned below - one method of handling
> this is to enable relevant sinks and then let perf trace on any cores
> that might use them.
> 
>> Also, we may need to do special handling for cases where there multiple
>> sinks (ETRS) and the cpus in the event mask has different preferred
>> sink. We can defer it for now as we don't claim to support such
>> configurations yet.
> 
> Yes - the newer topologies will need some changes - beyond what we are
> handling here.
> However - especially for 1:1 -  the best way may be to always use the
> default sink - as specifying multiple sinks on the perf command line
> may be problematical.
> 
>> When we do, we could either :
>>
>> 1) Make sure the event is bound to a single CPU, in which case
>> the sink remains the same for the event.
>>
>> OR
>>
>> 2) All the different "preferred" sinks (ETRs selected by the ETM) have
>> the same capabilitiy. i.e, we can move around the "sink" specific
>> buffers and use them where we end up using.
> 
> If here by "capabilities" we are talking about buffer vs system memory
> type sinks then I agree. We may need in future to limit the search

Not necessarily. e.g, if we ever get two different types of system
memory sinks, (e.g, a global ETR and a dedicate "new" sink for a
cluster), we can't keep switching between the two sinks depending on how
they use the buffers. (i.e, direct buffer vs double copy)

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
