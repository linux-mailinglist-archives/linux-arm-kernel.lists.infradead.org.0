Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB2A7D8ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 12:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F0FCR6iGpZrx//zIeGrkVOvloYTWubbEUcLUv98Ekzw=; b=q4Bc0i/oxL8FbXFqxguUdjpOa
	eIs/Wkxn22r7lpJB/009W/CoLTYj11S9r3u2lmmR/Hq/2KvvXyNnqxJSvkIAW4RTgJTVzmBaahOli
	yoOB8Xta4KiZLRgx8174Wp/h5p9GO3/gchobOvTDi4/HM/SwMU1cSbUXZ9h/9GyOOBWRb46BFuEqN
	vxyeAkj1NgXKK1bzVYImCM+kuf+gnhygsGZZ/mAGyNzozEjjXef88E0FXFxzlpe/dmqgCvc8pJgLj
	f7mih/IoLxnB6D3ZlfaJ+blsY5JXoIZxbS6UIEnH/1UaKk2gRiJwApDqoDw0NL9gvhS5+a1HiBOb0
	3dfPkO9mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht7sk-0008Me-W4; Thu, 01 Aug 2019 10:00:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ht7se-0008M4-5f
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 10:00:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7A9001597;
 Thu,  1 Aug 2019 03:00:15 -0700 (PDT)
Received: from [10.32.8.205] (unknown [10.32.8.205])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 77F8E3F694;
 Thu,  1 Aug 2019 03:00:14 -0700 (PDT)
Subject: Re: [PATCH V4 1/2] perf: imx8_ddr_perf: add AXI ID filter support
To: Joakim Zhang <qiangqing.zhang@nxp.com>, "will@kernel.org"
 <will@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Frank Li <frank.li@nxp.com>
References: <20190731104351.3117-1-qiangqing.zhang@nxp.com>
 <ad9491ed-24c5-8553-94be-cc96479adaf6@arm.com>
 <DB7PR04MB46183D09C6AB61E6AA90386FE6DE0@DB7PR04MB4618.eurprd04.prod.outlook.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <5988bae3-e0db-a64d-8399-8ce65a92d970@arm.com>
Date: Thu, 1 Aug 2019 10:59:50 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <DB7PR04MB46183D09C6AB61E6AA90386FE6DE0@DB7PR04MB4618.eurprd04.prod.outlook.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_030016_700037_33FD40C9 
X-CRM114-Status: GOOD (  25.96  )
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
Cc: "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, dl-linux-imx <linux-imx@nxp.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-08-01 6:25 am, Joakim Zhang wrote:
[...]
>>> @@ -195,6 +214,18 @@ static int ddr_perf_event_init(struct perf_event
>> *event)
>>>    	struct hw_perf_event *hwc = &event->hw;
>>>    	struct perf_event *sibling;
>>>
>>> +	if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
>>> +		if (event->attr.config == 0x41)
>>> +			pmu->axi_id_read = event->attr.config1;
>>> +
>>> +		if (event->attr.config == 0x42)
>>> +			pmu->axi_id_write = event->attr.config1;
>>> +
>>> +		if (pmu->axi_id_read && pmu->axi_id_write &&
>>> +		    (pmu->axi_id_read != pmu->axi_id_write))
>>> +			return -EINVAL;
>>> +	}
>>
>> This isn't the correct approach that Mark outlined :(
>>
>> In event_init, you should validate that any filtering for the given event is
>> compatible with any other sibling events in the same group, but you should not
>> consider (and should definitely not change) the current state of the PMU at
>> that point. This step is about rejecting event configurations which could
>> *never* be successfully scheduled (since a group represents a set of events
>> which must be scheduled all at the same time).
>>
>> In event_add, you know the given event/group is sufficiently valid to
>> *potentially* be scheduled, given that it has passed the event_init checks, but
>> you then need to check that the filtering is compatible with all other events
>> *currently* counting on the PMU. If this fails, perf core will try to reschedule
>> the current events until the new one is able to run. That's why you need the
>> additional step of validating groups beforehand, because otherwise you could
>> end up with contradictory scheduling constraints at this point and never make
>> progress.
> 
> Hi Mark and Robin,
> 
> Thanks for all your kindly detailed explanation firstly.
> 
> My understanding from your comments, I need to validate the filtering (i.e. config1/axi_id) for *all* events in same group during event_init, right?
> But it's so strange for that axi_id is only for axi-id-read and axi-id-write event. We don't need to specify axi_id for any other events when mixed with these two events.

Sorry, I implicitly meant all *relevant* events - obviously there's 
nothing to check for events which don't have filtering anyway. All that 
matters is the case where we're asked to create a read/write event in a 
group which already has at least one other read/write event as a 
sibling. I've sketched out a quick (completely untested) example of one 
way to do that part below. The logic for event_add would be very 
similar, except instead of comparing the sibling against the event, 
there you'd compare the event against the current PMU state.

> If I can just check the axi-id-read and axi-id-write event during event_add and then pass the axi_id value to the filter register. Don't check the case that user
> specify both of them at the same time with different filtering value. Instead of checking it in the driver, I add the doc in Documentation/admin-guide/perf/ directory
> to note that axi-id-read and axi-id-write event should be specified separately, or specified at the same time with same axi_id value.

Sure, we could just rely on the user to get it right, but that means 
there's a fair chance that the user can inadvertently get it wrong, get 
nonsensical results, and waste a week trying to debug a perceived 
problem which doesn't actually exist. It's not difficult for the driver 
to perform the correct validation, so it's better for everyone if it does.

It also seems reasonable that a user might want to intentionally measure 
events on different IDs over the same run (but not in the same group), 
e.g. to compare the relative average bandwidth of two devices, perhaps 
to tune QoS parameters. That requires perf core to know it needs to 
rotate the events during the run, which will only happen if event_add 
does the right thing.

Robin.

----->8-----
diff --git a/drivers/perf/fsl_imx8_ddr_perf.c 
b/drivers/perf/fsl_imx8_ddr_perf.c
index 63fe21600072..f0f643831fda 100644
--- a/drivers/perf/fsl_imx8_ddr_perf.c
+++ b/drivers/perf/fsl_imx8_ddr_perf.c
@@ -189,11 +189,23 @@ static u32 ddr_perf_read_counter(struct ddr_pmu 
*pmu, int counter)
         return readl_relaxed(pmu->base + COUNTER_READ + counter * 4);
  }

+static bool ddr_perf_is_filtered(struct perf_event *event)
+{
+       return event->attr.config == 0x41 || event->attr.config == 0x42;
+}
+
+static u32 ddr_perf_filter_val(struct perf_event *event)
+{
+       return event->attr.config1;
+}
+
  static int ddr_perf_event_init(struct perf_event *event)
  {
         struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
         struct hw_perf_event *hwc = &event->hw;
         struct perf_event *sibling;
+       bool is_filtered;
+       u32 filter_val;

         if (event->attr.type != event->pmu->type)
                 return -ENOENT;
@@ -215,10 +227,17 @@ static int ddr_perf_event_init(struct perf_event 
*event)
                         !is_software_event(event->group_leader))
                 return -EINVAL;

+       is_filtered = ddr_perf_is_filtered(event);
+       filter_val = ddr_perf_filter_val(event);
+
         for_each_sibling_event(sibling, event->group_leader) {
                 if (sibling->pmu != event->pmu &&
                                 !is_software_event(sibling))
                         return -EINVAL;
+
+               if (is_filtered && ddr_perf_is_filtered(sibling) &&
+                   ddr_perf_filter_val(sibling) != filter_val)
+                       return -EINVAL;
         }

         event->cpu = pmu->cpu;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
