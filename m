Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBAF1EB693
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 09:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PEntnZjzpeD1A9qaPfzCioIRWmsNLJ+DZbxpFq0Qlvw=; b=WHbEw4lZRHaCRhUC8WTQI+sut
	G/VGUm2c2f/uikII6Fdg7ZlyErbbRYS/C19LU4wqlit+bvRP7VhCB8utTXXyQ80huBtF98yVpHEl9
	Y0CME+OGgKiHSVRmF8tw5tw3eNdcLE3MsPRFQ1LF7cpHQ/dKk15FrosuiLbUSVdU66Xr+X8Do4Zqj
	2AqpWHIUC9NPvgIpY5f1FLryG1UN1M4dgQq7WpHgvnBwzoXImDc1l1YuI4o0/PYvQR1cfAcA0XsAP
	5AlQUp62oNEWPOIljiC2cnxnrIQG/7qxQvfNsSKCeemGNg9xbrlTCYLCuDV/fnN2LL1M3PnyMaa5D
	WUOdBlMRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg1NW-00026k-Lu; Tue, 02 Jun 2020 07:30:30 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg1NM-00025p-Oa
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 07:30:24 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591083023; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=t/U+WoycaFN2KK63K1sGkIxDUPZFgqtCuW351y3NGsQ=;
 b=Oh/BQV4HYwpZ/4/dJ1GHIqw8vakw0bRUJeY/2d384rYo0SEtwWIMK9QbFGOIiXWX0fx0u306
 BZSqN3tyUkQbXVL//QhjQDREuM7wqOnSzl02zBdT4Db87ItZ2PZ2HcpYZNKxqdsHX7B4p7so
 r1xFu0hw/4XMPd9p/I6M76G5Fhk=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-east-1.postgun.com with SMTP id
 5ed5ffff3131442d9531b913 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 02 Jun 2020 07:30:07
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 4C3E0C433CA; Tue,  2 Jun 2020 07:30:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4C199C433C6;
 Tue,  2 Jun 2020 07:30:05 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 02 Jun 2020 13:00:05 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 2/2] coresight: tmc: Add shutdown callback for TMC ETR/ETF
In-Reply-To: <20200601212858.GB24287@xps15>
References: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <20200601212858.GB24287@xps15>
Message-ID: <6d759cc28628ea72767c1304883630eb@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_003023_476278_BF0E5445 
X-CRM114-Status: GOOD (  26.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

Thanks for taking your time for review.

On 2020-06-02 02:58, Mathieu Poirier wrote:
> Hi Sai,
> 
> On top of the comments already privided by Mike, I have the following:
> 
> On Mon, Jun 01, 2020 at 01:32:26PM +0530, Sai Prakash Ranjan wrote:
>> Implement a shutdown callback to ensure ETR/ETF hardware is
>> properly shutdown in reboot/shutdown path. This is required
>> for ETR/ETF which has SMMU address translation enabled like
>> on SC7180 SoC and few others. If the hardware is still accessing
>> memory after SMMU translation is disabled as part of SMMU
>> shutdown callback in system reboot or shutdown path, then
>> IOVAs(I/O virtual address) which it was using will go on the bus
>> as the physical addresses which might result in unknown crashes
>> (NoC/interconnect errors). So we make sure from this shutdown
>> callback that the ETR/ETF is shutdown before SMMU translation is
>> disabled and device_link in SMMU driver will take care of ordering
>> of shutdown callbacks such that SMMU shutdown callback is not
>> called before any of its consumer shutdown callbacks.
>> 
>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> ---
>>  .../hwtracing/coresight/coresight-tmc-etf.c   |  4 +--
>>  .../hwtracing/coresight/coresight-tmc-etr.c   |  2 +-
>>  drivers/hwtracing/coresight/coresight-tmc.c   | 29 
>> +++++++++++++++++++
>>  drivers/hwtracing/coresight/coresight-tmc.h   |  3 ++
>>  4 files changed, 35 insertions(+), 3 deletions(-)
>> 
>> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c 
>> b/drivers/hwtracing/coresight/coresight-tmc-etf.c
>> index 36cce2bfb744..cba3e7592820 100644
>> --- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
>> +++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
>> @@ -85,7 +85,7 @@ static void __tmc_etb_disable_hw(struct tmc_drvdata 
>> *drvdata)
>>  	CS_LOCK(drvdata->base);
>>  }
>> 
>> -static void tmc_etb_disable_hw(struct tmc_drvdata *drvdata)
>> +void tmc_etb_disable_hw(struct tmc_drvdata *drvdata)
>>  {
>>  	__tmc_etb_disable_hw(drvdata);
>>  	coresight_disclaim_device(drvdata->base);
>> @@ -118,7 +118,7 @@ static int tmc_etf_enable_hw(struct tmc_drvdata 
>> *drvdata)
>>  	return 0;
>>  }
>> 
>> -static void tmc_etf_disable_hw(struct tmc_drvdata *drvdata)
>> +void tmc_etf_disable_hw(struct tmc_drvdata *drvdata)
>>  {
>>  	CS_UNLOCK(drvdata->base);
>> 
> 
> Why do we care about ETB and ETF when they both use RAM internal to the 
> device?
> Moreover, the system RAM they use is not dedicated and as such falls 
> back to the
> kernel's memory pool.
> 

Actually we don't, I added the disable for ETF/ETB for completeness 
since we are
adding shutdown callback for TMC devices and not just ETR although this 
issue applies
only for ETR and it doesn't hurt to disable these devices in shutdown 
path.

>> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c 
>> b/drivers/hwtracing/coresight/coresight-tmc-etr.c
>> index 625882bc8b08..b29c2db94d96 100644
>> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
>> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
>> @@ -1110,7 +1110,7 @@ static void __tmc_etr_disable_hw(struct 
>> tmc_drvdata *drvdata)
>> 
>>  }
>> 
>> -static void tmc_etr_disable_hw(struct tmc_drvdata *drvdata)
>> +void tmc_etr_disable_hw(struct tmc_drvdata *drvdata)
>>  {
>>  	__tmc_etr_disable_hw(drvdata);
>>  	/* Disable CATU device if this ETR is connected to one */
>> diff --git a/drivers/hwtracing/coresight/coresight-tmc.c 
>> b/drivers/hwtracing/coresight/coresight-tmc.c
>> index 5a271ebc4585..7e687a356fe0 100644
>> --- a/drivers/hwtracing/coresight/coresight-tmc.c
>> +++ b/drivers/hwtracing/coresight/coresight-tmc.c
>> @@ -540,6 +540,34 @@ static int tmc_probe(struct amba_device *adev, 
>> const struct amba_id *id)
>>  	return ret;
>>  }
>> 
>> +static void tmc_shutdown(struct amba_device *adev)
>> +{
>> +	struct tmc_drvdata *drvdata = amba_get_drvdata(adev);
>> +
>> +	if (!drvdata->enable)
>> +		goto out;
>> +
>> +	/*
>> +	 * We do not care about the active trace sessions here
>> +	 * since the system is going down unlike remove callback,
>> +	 * just make sure that the hardware is shutdown.
>> +	 */
>> +	switch (drvdata->config_type) {
>> +	case TMC_CONFIG_TYPE_ETB:
>> +		tmc_etb_disable_hw(drvdata);
>> +		break;
>> +	case TMC_CONFIG_TYPE_ETF:
>> +		tmc_etf_disable_hw(drvdata);
>> +		break;
>> +	case TMC_CONFIG_TYPE_ETR:
>> +		tmc_etr_disable_hw(drvdata);
>> +	}
>> +
>> +out:
>> +	misc_deregister(&drvdata->miscdev);
>> +	coresight_unregister(drvdata->csdev);
> 
> If a session is active when tmc_shutdown() is called, unregistering the 
> ETF/ETR
> will result in a kernel crash if the session is stopped before the 
> kernel has
> had the opportunity to shutdown.  It is the problem as trying to make 
> coresight
> drivers modular.
> 
> For this to really work the ongoing session would need to be stopped.  
> That
> would teardown the path and stop the sink.

I have tested this with and without active trace sessions multiple times 
on 2 devices
and did not observe a single crash. The crash should be easily triggered 
as per
what you are saying if we have active sessions but I do not see any 
crash.

> 
> That being said I'm sure that dependencies on an IOMMU isn't a problem 
> confined
> to coresight. I am adding Robin Murphy, who added this commit [1], to 
> the thread
> in the hope that he can provide guidance on the right way to do this.
> 

SMMU/IOMMU won't be able to do much here as it is the client's 
responsiblity to
properly shutdown and SMMU device link just makes sure that 
SMMU(supplier) shutdown is
called only after its consumers shutdown callbacks are called.

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
