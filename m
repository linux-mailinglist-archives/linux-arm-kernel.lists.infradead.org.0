Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEEB371491
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 11:06:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DILl7WQ2mprOnaqcmIKeZ/sKi2hdnUsM7rHOWYpXURM=; b=eYIcYKEHZyGrdzIWvGapFbMze
	rCalqIAk0/zIC2A1tRP2pwrmDUJAJfE/bB+P/tPGLBaQfXBpS6Kw4bFS+zEd/yB+b+5WkQGkw+vGg
	ZlrMEI1HHYWavWpgEf376bZnxe4wEC0HG8O+hbeZRZDC/l0rYcmrQ9fsVepnztfDq0AShPiWnBxyi
	vHy3d0IQHIDrKoij6Ud28rczvcILo9gbY+iv6cyi/m4EBt7mR8SgHJjehonYtclPEOERdmeXo95VU
	8PqsmSzGnD3GreTe8Zt5NdXuduKO021qAzcRZFrpOxLNuTevnh8mPKxbr0yb7zh6gc7z0wKNzZLI6
	Qmcu5IENA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqkb-0001YU-TX; Tue, 23 Jul 2019 09:06:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpqjv-0001Xx-1n
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 09:05:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9ADA9344;
 Tue, 23 Jul 2019 02:05:39 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8220D3F71F;
 Tue, 23 Jul 2019 02:05:38 -0700 (PDT)
Subject: Re: [PATCH] coresight: etm4x: lazily allocate memory for save_state
To: mathieu.poirier@linaro.org, andrew.murray@arm.com
References: <20190711160114.634-6-andrew.murray@arm.com>
 <20190712150056.15775-1-andrew.murray@arm.com>
 <CANLsYkyE2erOeSM69XTVL-oizFj6WhXLcSKGT2qnFr0ArNskzA@mail.gmail.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <88f1e83b-8f16-a5bf-d68e-b840a4302f90@arm.com>
Date: Tue, 23 Jul 2019 10:05:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CANLsYkyE2erOeSM69XTVL-oizFj6WhXLcSKGT2qnFr0ArNskzA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_020543_180432_13988D16 
X-CRM114-Status: GOOD (  20.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: alexander.shishkin@linux.intel.com, coresight@lists.linaro.org,
 leo.yan@linaro.org, Sudeep.Holla@arm.com, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 22/07/2019 21:32, Mathieu Poirier wrote:
> Hi Andrew,
> 
> Sorry for the late reply - you patch got lost under the pile.
> 
> On Fri, 12 Jul 2019 at 09:01, Andrew Murray <andrew.murray@arm.com> wrote:
>>
>> I had intended to lazily allocate memory for the save_state structure when
>> it is first used. Following is a patch that I will squash into "[PATCH v3 5/6]
>> coresight: etm4x: save/restore state across CPU low power states" on my
>> next respin. I thought I'd share it here to get some feedback along with
>> the rest of v3.
>>
>> Thanks,
>>
>> Andrew Murray
>>
>> ---
>>   drivers/hwtracing/coresight/coresight-etm4x.c | 14 +++++++++++---
>>   drivers/hwtracing/coresight/coresight-etm4x.h |  2 +-
>>   2 files changed, 12 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
>> index b0bd8158bf13..cd02372194bc 100644
>> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
>> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
>> @@ -1112,6 +1112,13 @@ static int etm4_cpu_save(struct etmv4_drvdata *drvdata)
>>          struct etmv4_save_state *state;
>>          struct device *etm_dev = &drvdata->csdev->dev;
>>
>> +       if (!drvdata->save_state) {
>> +               drvdata->save_state = devm_kmalloc(etm_dev,
>> +                               sizeof(struct etmv4_save_state), GFP_KERNEL);
> 
> GFP_KERNEL may sleep and will not work in the context where
> etm4_cpu_save() is called.

Thats right and it is not worth making this GFP_ATOMIC either. We could simply
decide this at probe time or when the save_restore is modified dynamically via
callbacks.

Suzuki

> 
> Thanks,
> Mathieu
> 
>> +               if (!drvdata->save_state)
>> +                       return -ENOMEM;
>> +       }
>> +
>>          /*
>>           * As recommended by 3.4.1 ("The procedure when powering down the PE")
>>           * of ARM IHI 0064D
>> @@ -1134,7 +1141,7 @@ static int etm4_cpu_save(struct etmv4_drvdata *drvdata)
>>                  goto out;
>>          }
>>
>> -       state = &drvdata->save_state;
>> +       state = drvdata->save_state;
>>
>>          state->trcprgctlr = readl(drvdata->base + TRCPRGCTLR);
>>          state->trcprocselr = readl(drvdata->base + TRCPROCSELR);
>> @@ -1234,9 +1241,10 @@ static int etm4_cpu_save(struct etmv4_drvdata *drvdata)
>>   static void etm4_cpu_restore(struct etmv4_drvdata *drvdata)
>>   {
>>          int i;
>> -       struct etmv4_save_state *state;
>> +       struct etmv4_save_state *state = drvdata->save_state;
>>
>> -       state = &drvdata->save_state;
>> +       if (WARN_ON_ONCE(!state))
>> +               return;
>>
>>          CS_UNLOCK(drvdata->base);
>>
>> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.h b/drivers/hwtracing/coresight/coresight-etm4x.h
>> index c31634c64f87..a70cafbbb8cf 100644
>> --- a/drivers/hwtracing/coresight/coresight-etm4x.h
>> +++ b/drivers/hwtracing/coresight/coresight-etm4x.h
>> @@ -441,7 +441,7 @@ struct etmv4_drvdata {
>>          bool                            atbtrig;
>>          bool                            lpoverride;
>>          struct etmv4_config             config;
>> -       struct etmv4_save_state         save_state;
>> +       struct etmv4_save_state         *save_state;
>>          bool                            state_needs_restore;
>>   };
>>
>> --
>> 2.21.0
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
