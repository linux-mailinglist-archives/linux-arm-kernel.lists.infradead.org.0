Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 406F97A5D0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 12:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8dm62WOAOM6m3Ka5/iVjfDe9U9biluL3fsLW8EXFPHw=; b=Lr7voUr0K02mU5CFBaRyQUZ+G
	pdx6OVQAvKcY8YaQnwNkwf+tNGYlQf4d55MTJGbzYjFkym3VaeDNgfo9U67VqXvnFzTyIEieTtnng
	Ml4kc0CCSwqZrCSqgcPNTFSWu83NODsTZfg0i+T/I5vhCoUYUd0gaCwthLHQejovhunmmPS9T+bx1
	uBvrK3+KgvwN6voKzik3/vcIxZdCA6C/Al/NPbw9eW6JKv1Ci0kmVF0Vehq1g9p9EGwYHxRzo0vvf
	u5dM5tvNfVgD7cyZ0iepW08V2r/Fl6yyt5CMtjKznhsSAD3iIYlVCVjY8jmileL/ZjtGUrRH69ULF
	08DrsGLPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsPBR-0004xM-BN; Tue, 30 Jul 2019 10:16:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsPAV-0004w6-0J
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 10:15:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3DB20344;
 Tue, 30 Jul 2019 03:15:37 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 25FD03F575;
 Tue, 30 Jul 2019 03:15:36 -0700 (PDT)
Subject: Re: [PATCH] coresight: etm4x: lazily allocate memory for save_state
To: andrew.murray@arm.com
References: <20190711160114.634-6-andrew.murray@arm.com>
 <20190712150056.15775-1-andrew.murray@arm.com>
 <CANLsYkyE2erOeSM69XTVL-oizFj6WhXLcSKGT2qnFr0ArNskzA@mail.gmail.com>
 <88f1e83b-8f16-a5bf-d68e-b840a4302f90@arm.com>
 <20190726112444.GA56241@e119886-lin.cambridge.arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <e3b4f639-e7e5-874b-0b1d-085a5e45cd6c@arm.com>
Date: Tue, 30 Jul 2019 11:15:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190726112444.GA56241@e119886-lin.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_031545_234834_31A9999B 
X-CRM114-Status: GOOD (  23.19  )
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
 coresight@lists.linaro.org, leo.yan@linaro.org, Sudeep.Holla@arm.com,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 26/07/2019 12:24, Andrew Murray wrote:
> On Tue, Jul 23, 2019 at 10:05:37AM +0100, Suzuki K Poulose wrote:
>>
>>
>> On 22/07/2019 21:32, Mathieu Poirier wrote:
>>> Hi Andrew,
>>>
>>> Sorry for the late reply - you patch got lost under the pile.
>>>
>>> On Fri, 12 Jul 2019 at 09:01, Andrew Murray <andrew.murray@arm.com> wrote:
>>>>
>>>> I had intended to lazily allocate memory for the save_state structure when
>>>> it is first used. Following is a patch that I will squash into "[PATCH v3 5/6]
>>>> coresight: etm4x: save/restore state across CPU low power states" on my
>>>> next respin. I thought I'd share it here to get some feedback along with
>>>> the rest of v3.
>>>>
>>>> Thanks,
>>>>
>>>> Andrew Murray
>>>>
>>>> ---
>>>>    drivers/hwtracing/coresight/coresight-etm4x.c | 14 +++++++++++---
>>>>    drivers/hwtracing/coresight/coresight-etm4x.h |  2 +-
>>>>    2 files changed, 12 insertions(+), 4 deletions(-)
>>>>
>>>> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
>>>> index b0bd8158bf13..cd02372194bc 100644
>>>> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
>>>> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
>>>> @@ -1112,6 +1112,13 @@ static int etm4_cpu_save(struct etmv4_drvdata *drvdata)
>>>>           struct etmv4_save_state *state;
>>>>           struct device *etm_dev = &drvdata->csdev->dev;
>>>>
>>>> +       if (!drvdata->save_state) {
>>>> +               drvdata->save_state = devm_kmalloc(etm_dev,
>>>> +                               sizeof(struct etmv4_save_state), GFP_KERNEL);
>>>
>>> GFP_KERNEL may sleep and will not work in the context where
>>> etm4_cpu_save() is called.
>>
>> Thats right and it is not worth making this GFP_ATOMIC either. We could simply
>> decide this at probe time or when the save_restore is modified dynamically via
>> callbacks.
> 
> I think it is simpler to change this to GFP_ATOMIC and leave it where it is.
> 
> As pm_save_enable can change at run time, we can't rely solely on allocating

Or we could make it static. You either need it on the system, irrespective of
what else happens or you don't need it at all. I agree that it helps with
testing.

> memory for this at probe time. We'd have to allocate memory in two places 1)
> a module_parm_cb callback for when the pm_save_enable parameter changes at
> run-time and 2) at probe time to find out the initial value of the
> pm_save_enable which may be set by kernel command line.
> 
> As the module_parm_cb callback is file-static we wouldn't know which drvdata
> to allocate the memory for. We could allocate it for any etmdrvdata member
> that isn't NULL - but this seems to add a lot of complexity - is this worth
> it to avoid a GFP_ATOMIC allocation? (If we fail the allocation we can return
> NOTIFY_BAD and stop the PM event.)

Ok, fair enough. If we are going for the GFP_ATOMIC allocation, please could we
release it once we have restored ? We don't want to be holding onto the ATOMIC
allocated memory forever.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
