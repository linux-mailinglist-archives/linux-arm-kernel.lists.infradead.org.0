Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A35A3DE72
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 10:54:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HQl9C+fdl3mSLbEuirDVOLwtKmTkXQb15kH7gPuwN7A=; b=qpcO0tISHjagQ47VbBxN+TNzT
	4W0TktSakPAFBa0VlBQRSYyVnqIqkjpzesDjnhiMaZoSWZK67knooRjXP0CUu7t10b2S3+0wbK9Zw
	XD9W8Dfl+ADdO8eOzIiKsqULJF1kPF0D4Clp/sglorBtiC7LWCB4FIbtNo92srfILXJLFBwfpP7rp
	XbulaMjvmtyeOulGixlhBtgi/4sSmdRb0Qe0ccui8ZpocVPSrbG7sOUJdK0n00qMXFZgPzxJBf2X/
	VXwH/57S9JawSAz5aB7nXKrOn+O8u76+/ezso6fslh8kAwBpaXOvIE76SuZlEN6DsPkCMnaqb6Kbd
	qouKADdJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL23R-0007c1-QH; Mon, 29 Apr 2019 08:54:29 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL23L-0007ba-9G
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 08:54:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5561B80D;
 Mon, 29 Apr 2019 01:54:21 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 734CF3F71A;
 Mon, 29 Apr 2019 01:54:19 -0700 (PDT)
Subject: Re: [PATCH v2 33/36] coresight: acpi: Support for components
To: rjw@rjwysocki.net
References: <1555344260-12375-1-git-send-email-suzuki.poulose@arm.com>
 <1555344260-12375-34-git-send-email-suzuki.poulose@arm.com>
 <20190425174553.GB4080@xps15>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <876c6e2c-0a6a-1814-c9ad-1e81d16b0cb0@arm.com>
Date: Mon, 29 Apr 2019 09:54:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190425174553.GB4080@xps15>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_015423_336794_75E1A0FD 
X-CRM114-Status: GOOD (  22.30  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, robert.walker@arm.com,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rafael,

On 25/04/2019 18:45, Mathieu Poirier wrote:
> On Mon, Apr 15, 2019 at 05:04:16PM +0100, Suzuki K Poulose wrote:
>> All AMBA devices are handled via ACPI AMBA scan notifier
>> infrastructure. The platform devices get the ACPI id
>> added to their driver.
>>
>> Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
>> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
>> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
>> ---
>>   drivers/acpi/acpi_amba.c                           | 9 +++++++++
>>   drivers/hwtracing/coresight/coresight-replicator.c | 9 ++++++++-
>>   2 files changed, 17 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/acpi/acpi_amba.c b/drivers/acpi/acpi_amba.c
>> index 7f77c07..eef5a69 100644
>> --- a/drivers/acpi/acpi_amba.c
>> +++ b/drivers/acpi/acpi_amba.c
>> @@ -24,6 +24,15 @@
>>   
>>   static const struct acpi_device_id amba_id_list[] = {
>>   	{"ARMH0061", 0}, /* PL061 GPIO Device */
>> +	{"ARMHC500", 0}, /* ARM CoreSight ETM4x */
>> +	{"ARMHC501", 0}, /* ARM CoreSight ETR */
>> +	{"ARMHC502", 0}, /* ARM CoreSight STM */
>> +	{"ARMHC503", 0}, /* ARM CoreSight Debug */
>> +	{"ARMHC979", 0}, /* ARM CoreSight TPIU */
>> +	{"ARMHC97C", 0}, /* ARM CoreSight SoC-400 TMC, SoC-600 ETF/ETB */
>> +	{"ARMHC98D", 0}, /* ARM CoreSight Dynamic Replicator */
>> +	{"ARMHC9CA", 0}, /* ARM CoreSight CATU */
>> +	{"ARMHC9FF", 0}, /* ARM CoreSight Funnel */
>>   	{"", 0},
>>   };
>>   
>> diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
>> index 2eb489c..a8f42df 100644
>> --- a/drivers/hwtracing/coresight/coresight-replicator.c
>> +++ b/drivers/hwtracing/coresight/coresight-replicator.c
>> @@ -5,6 +5,7 @@
>>    * Description: CoreSight Replicator driver
>>    */
>>   
>> +#include <linux/acpi.h>
>>   #include <linux/amba/bus.h>
>>   #include <linux/kernel.h>
>>   #include <linux/device.h>
>> @@ -290,11 +291,17 @@ static const struct of_device_id static_replicator_match[] = {
>>   	{}
>>   };
>>   
>> +#ifdef CONFIG_ACPI
>> +static const struct acpi_device_id static_replicator_acpi_ids[] = {
>> +	{"ARMHC985", 0}, /* ARM CoreSight Static Replicator */
>> +};
>> +#endif
>>   static struct platform_driver static_replicator_driver = {
>>   	.probe          = static_replicator_probe,
>>   	.driver         = {
>>   		.name   = "coresight-replicator",
>> -		.of_match_table = static_replicator_match,
>> +		.of_match_table = of_match_ptr(static_replicator_match),
>> +		.acpi_match_table = ACPI_PTR(static_replicator_acpi_ids),
>>   		.pm	= &replicator_dev_pm_ops,
>>   		.suppress_bind_attrs = true,
>>   	},
> 
> For the coresight part: Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> 
> You probably want to split this patch in half so that Rafael can pick up the
> the first part of it in his tree.
> 


We have the CoreSight components span over AMBA and platform devices. This
series is almost getting ready, so for the next revision I would like to
get your view on how to split this particular patch.

We have components in AMBA and Platform devices. Would you prefer to split
the patch and pull the ACPI_AMBA changes above in to your tree ? Or are
you happy with Mathieu pushing this change together with the other ACPI
bindings support in the CoreSight drivers ?

FWIW, we should still be fine if we split and the patches reach at different
times. Please let me know your thoughts.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
