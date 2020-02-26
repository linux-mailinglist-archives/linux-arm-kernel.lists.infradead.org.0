Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC94170C5E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 00:11:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PZX1X84xVm2sIt0Sgo4A3cjGCmtIpBHnGq3rm91xnFU=; b=MKbrvWP/HBovTwxEk9Z8Q8oUY
	PKt3RrxuT3e11iwSONVl8cvqzznOEm6RMXYlPciubNQ2S68ethWRvqgIcdMqDd9VW59BVBPiKgeNS
	Y5b6wxDuVCijZ7ADoRmmMPtCKOZs9611MnecBLabU15g64sgsrDvQTOwPYGEhLGcJZXf3ERCCvVHK
	KSGPUKVx2XaYpR0xXS5Gj36ezgYyrpP1o/qp6RtX+F86d+B+/3GQvPcYnPiwjbQ3Zqu2HTbvKiQ63
	W3Vfsvwj1/1aGPQeo2Oux/pOCb7aryj9v2/0WiKmlWsgKadvuEjnILa0HfBAj6YF3XYSI16ThQoMN
	cgqG28YDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j75pa-0008Ox-FE; Wed, 26 Feb 2020 23:11:06 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j75pO-0008O8-Li
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 23:10:56 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1582758653; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=LwIg2ej0qktnR5lwlPkQCTHuArHrJYoONAMEHJ0gpmM=;
 b=Oepbpcw1EWrR+ueIjYNvFMc/ZNRbMm+b3fjlmiK6qzBvyLBvuOLinx+P+5aaTnsVr0aYL2A5
 rH/kgr5Q7nUp74sbtJGMd/QzTwKx6ervTfYhL57XJFYFF9qx+cLGaHyshwc/honuwxD10lCp
 zDRKsxs7IvstT/hng2woM6Zurxs=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e56faea.7fe30e556ca8-smtp-out-n01;
 Wed, 26 Feb 2020 23:10:34 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 31646C4479D; Wed, 26 Feb 2020 23:10:33 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.134.64.128] (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sidgup)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 12203C43383;
 Wed, 26 Feb 2020 23:10:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 12203C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sidgup@codeaurora.org
Subject: Re: [PATCH 1/2] remoteproc: core: Add an API for booting with
 firmware name
To: Mathieu Poirier <mathieu.poirier@linaro.org>
References: <1582164713-6413-1-git-send-email-sidgup@codeaurora.org>
 <1582164713-6413-2-git-send-email-sidgup@codeaurora.org>
 <20200224183043.GA9477@xps15>
From: Siddharth Gupta <sidgup@codeaurora.org>
Message-ID: <bbccf58a-2c3a-38f3-bd63-e7aeb8213b34@codeaurora.org>
Date: Wed, 26 Feb 2020 15:10:31 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200224183043.GA9477@xps15>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_151054_776552_A66B2106 
X-CRM114-Status: GOOD (  25.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ohad@wizery.com, tsoni@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 bjorn.andersson@linaro.org, rishabhb@codeaurora.org, psodagud@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Mathieu,

On 2/24/2020 10:30 AM, Mathieu Poirier wrote:

> Hi Siddharth,
>
> On Wed, Feb 19, 2020 at 06:11:52PM -0800, Siddharth Gupta wrote:
>> Add an API which allows to change the name of the firmware to be booted on
>> the specified rproc. This change gives us the flixibility to change the
>> firmware at run-time depending on the usecase. Some remoteprocs might use
>> a different firmware for testing, production and development purposes,
>> which may be selected based on the fuse settings during bootup.
>>
>> Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
>> ---
>>   drivers/remoteproc/remoteproc_core.c | 34 ++++++++++++++++++++++++++++++++++
>>   include/linux/remoteproc.h           |  1 +
>>   2 files changed, 35 insertions(+)
>>
>> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
>> index 097f33e..5ab65a4 100644
>> --- a/drivers/remoteproc/remoteproc_core.c
>> +++ b/drivers/remoteproc/remoteproc_core.c
>> @@ -1779,6 +1779,40 @@ int rproc_boot(struct rproc *rproc)
>>   EXPORT_SYMBOL(rproc_boot);
>>   
>>   /**
>> + * rproc_boot_with_fw() - boot a remote processor with the specified firmware
>> + * @rproc: handle of a remote processor
>> + * @firmware: name of the firmware to boot with
>> + *
>> + * Change the name of the firmware to be loaded to @firmware in the rproc
>> + * structure, and call rproc_boot().
>> + *
>> + * Returns 0 on success, and an appropriate error value otherwise.
>> + */
>> +int rproc_boot_with_fw(struct rproc *rproc, const char *firmware)
>> +{
>> +	char *p;
>> +
>> +	if (!rproc) {
>> +		pr_err("invalid rproc handle\n");
>> +		return -EINVAL;
>> +	}
>          if (!rproc || !firmware)
>                  return -EINVAL;
>
> There is no user involved here so no point in printing anything.  If @rproc or
> @firmware is NULL than callers should be smart enough to figure it out from the
> error code.

I was trying to mimic the behaviour of rproc_boot here actually, since 
we were trying to make this
an API for users to directly boot with firmware name.

>
>> +
>> +	if (firmware) {
>> +		p = kstrdup(firmware, GFP_KERNEL);
>> +		if (!p)
>> +			return -ENOMEM;
> As in firmware_store() I think it is a good idea to mandate the MCU be offline
> before changing the firmware name.  That way we avoid situations where what is
> running on the MCU is not what gets reported in sysfs.

Sure, that makes sense.

>> +
>> +		mutex_lock(&rproc->lock);
>> +		kfree(rproc->firmware);
>> +		rproc->firmware = p;
>> +		mutex_unlock(&rproc->lock);
>> +	}
>> +
>> +	return rproc_boot(rproc);
> Function rproc_boot() is also an exported symbol and belongs in the caller -
> please move it out of here.  When that is done rproc_boot_with_fw() can become
> rproc_set_firmware_name() and concentrate on doing just that.

Okay sounds good.

>
>> +}
>> +EXPORT_SYMBOL(rproc_boot_with_fw);
> Although choosing the firmware image to boot without user involvement seems like
> a valid scenario to me, this can't be added until there is an actual user of
> this API.
That's true. We have a few cases downstream where we need this 
functionality. We were wondering
if anyone else might have use of such functionality, and create an 
upstream API in that case. Your
suggestion of creating rproc_set_firmware_name() is a better approach 
for sure though. We're looking
at creating a new remoteproc (platform) driver which will need this 
functionality.
>> +
>> +/**
>>    * rproc_shutdown() - power off the remote processor
>>    * @rproc: the remote processor
>>    *
>> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
>> index 16ad666..e2eaba9 100644
>> --- a/include/linux/remoteproc.h
>> +++ b/include/linux/remoteproc.h
>> @@ -609,6 +609,7 @@ rproc_of_resm_mem_entry_init(struct device *dev, u32 of_resm_idx, int len,
>>   			     u32 da, const char *name, ...);
>>   
>>   int rproc_boot(struct rproc *rproc);
>> +int rproc_boot_with_fw(struct rproc *rproc, const char *firmware);
>>   void rproc_shutdown(struct rproc *rproc);
>>   void rproc_report_crash(struct rproc *rproc, enum rproc_crash_type type);
>>   int rproc_coredump_add_segment(struct rproc *rproc, dma_addr_t da, size_t size);
>> -- 
>> Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
>> a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
