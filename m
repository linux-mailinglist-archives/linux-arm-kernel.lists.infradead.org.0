Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B4A3749B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 14:56:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gow2F4mBbG6iv14Z2YHVgtahe+to9yC4VzzswcL8uKA=; b=NdmwDw/1LNVK9XPQgf3NdprwQ
	g6OS88PJTBnArap0CWmJzQrLm3Zrdu2VHyQhVRrLXOeCZBjq6DNCIufdO/0t+yFSeFDixR6RuhMYy
	XoKWrsrSu1+N+R/W617mQx4rN9RLHv6ZEoYOfjzvfFTmb8Yf30KuSI8cX4DTVFACYxSOaiTgNtifo
	9dNFMWXWGBY7P3S6o/U5HYNFBCy+WbeTfAW/Zz6arYPHgZtWWHQomgqxSLKAUCSnXj/IVObOCi7P7
	/bfEfa43oiiMjJdIW1HE7lXMXKQX4Zn+oG4g+Ap/VGLR0Y0R8Sx3E9wl/VE6N83NYQxnnrm+v/7Sb
	f6S4nfwxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYrwZ-0004rO-91; Thu, 06 Jun 2019 12:56:35 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYrwS-0004qh-HW
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 12:56:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EE25B374;
 Thu,  6 Jun 2019 05:56:27 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0DA6C3F5AF;
 Thu,  6 Jun 2019 05:56:26 -0700 (PDT)
Subject: Re: [PATCH v4 17/30] coresight: Make device to CPU mapping generic
To: mike.leach@linaro.org
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
 <1558521304-27469-18-git-send-email-suzuki.poulose@arm.com>
 <CAJ9a7ViQq-bdAw7HOOkSxinC0jhRjpAr-oJVv5GLHfBRpFu6hw@mail.gmail.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <cb81b7e6-f698-6f90-411f-419598284477@arm.com>
Date: Thu, 6 Jun 2019 13:56:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAJ9a7ViQq-bdAw7HOOkSxinC0jhRjpAr-oJVv5GLHfBRpFu6hw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_055628_588587_8C4D7C55 
X-CRM114-Status: GOOD (  20.46  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mathieu.poirier@linaro.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 03/06/2019 11:07, Mike Leach wrote:
> Hi,
> 
> On Wed, 22 May 2019 at 11:37, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>>
>> The CoreSight components ETM and CPU-Debug are always associated
>> with CPUs. Replace the of_coresight_get_cpu() with a platform
>> agnostic helper, in preparation to add ACPI support.
>>
>> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
>> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
>> ---
>>   drivers/hwtracing/coresight/coresight-cpu-debug.c |  3 +--
>>   drivers/hwtracing/coresight/coresight-platform.c  | 18 +++++++++++++-----
>>   include/linux/coresight.h                         |  7 +------
>>   3 files changed, 15 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/hwtracing/coresight/coresight-cpu-debug.c b/drivers/hwtracing/coresight/coresight-cpu-debug.c
>> index e8819d7..07a1367 100644
>> --- a/drivers/hwtracing/coresight/coresight-cpu-debug.c
>> +++ b/drivers/hwtracing/coresight/coresight-cpu-debug.c
>> @@ -572,14 +572,13 @@ static int debug_probe(struct amba_device *adev, const struct amba_id *id)
>>          struct device *dev = &adev->dev;
>>          struct debug_drvdata *drvdata;
>>          struct resource *res = &adev->res;
>> -       struct device_node *np = adev->dev.of_node;
>>          int ret;
>>
>>          drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
>>          if (!drvdata)
>>                  return -ENOMEM;
>>
>> -       drvdata->cpu = np ? of_coresight_get_cpu(np) : 0;
>> +       drvdata->cpu = coresight_get_cpu(dev);
>>          if (per_cpu(debug_drvdata, drvdata->cpu)) {
>>                  dev_err(dev, "CPU%d drvdata has already been initialized\n",
>>                          drvdata->cpu);
>> diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
>> index 5d78f4f..ba8c146 100644
>> --- a/drivers/hwtracing/coresight/coresight-platform.c
>> +++ b/drivers/hwtracing/coresight/coresight-platform.c
>> @@ -151,12 +151,14 @@ static void of_coresight_get_ports(const struct device_node *node,
>>          }
>>   }
>>
>> -int of_coresight_get_cpu(const struct device_node *node)
>> +static int of_coresight_get_cpu(struct device *dev)
>>   {
>>          int cpu;
>>          struct device_node *dn;
>>
>> -       dn = of_parse_phandle(node, "cpu", 0);
>> +       if (!dev->of_node)
>> +               return 0;
>> +       dn = of_parse_phandle(dev->of_node, "cpu", 0);
>>          /* Affinity defaults to CPU0 */
>>          if (!dn)
>>                  return 0;
>> @@ -166,7 +168,6 @@ int of_coresight_get_cpu(const struct device_node *node)
>>          /* Affinity to CPU0 if no cpu nodes are found */
>>          return (cpu < 0) ? 0 : cpu;
>>   }
>> -EXPORT_SYMBOL_GPL(of_coresight_get_cpu);
>>
>>   /*
>>    * of_coresight_parse_endpoint : Parse the given output endpoint @ep
>> @@ -240,8 +241,6 @@ static int of_get_coresight_platform_data(struct device *dev,
>>          bool legacy_binding = false;
>>          struct device_node *node = dev->of_node;
>>
>> -       pdata->cpu = of_coresight_get_cpu(node);
>> -
>>          /* Get the number of input and output port for this component */
>>          of_coresight_get_ports(node, &pdata->nr_inport, &pdata->nr_outport);
>>
>> @@ -300,6 +299,14 @@ of_get_coresight_platform_data(struct device *dev,
>>   }
>>   #endif
>>
>> +int coresight_get_cpu(struct device *dev)
>> +{
>> +       if (is_of_node(dev->fwnode))
>> +               return of_coresight_get_cpu(dev);
> 
> No of_coresight_get_cpu() will be defined if CONFIG_OF _not_ defined.
> This will hit an implicit declaration compile error in this case.

Thanks for catching it and you're right. I will fix this.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
