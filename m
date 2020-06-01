Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1496F1EA848
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 19:15:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nPW9w+TjgoWXRbX78kXjCNNHIffhsTUAX8pLXtQU1rE=; b=ShDh01aacegAoFOIgJoHEBq0R
	aP86peRoRMFKVKbLWiKH6RYgsVLtfSODEa8K+EY/pjEb+u5BdE2L92Nq2TWBkVyGYAQIqj5I22kOX
	t3Wqp7B5aZT04VZLXtmY+vHk4IJRWdz8zVmZbvqhZZlgw6/XiKqq/yO5ONTw7YtmDSJJLxMEn+6JT
	s7GrlMt7SI44y6sIr/xOpHEu44ly/RZ0PBCkWMemYDqKyC6AE3wMg2bimaRd/zUa0FdDp+Lk6gE91
	srpuTBTFrFKbrGuVn+V8KTv9r5fwdFY74ZwkRmO/kBYzyXzf5mHASpOkaNwOQZrz8JHZULrU05Ud1
	lVgfuhrKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfo1w-00039c-7N; Mon, 01 Jun 2020 17:15:20 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfo1n-0002zK-KQ
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 17:15:13 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591031711; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=IRcNB0OpS0geFxfNcF8I6B/taWV6RDssBF+tdvwyM3o=;
 b=MXAgVOdUi1vPE5mCCufKepaPLI7LANRkR1MqLOSN6ijFh3UuZKg6JQ7GiYuavQ0J+9KYZz6r
 RBAsposT4vjxE48waaldvSh3AN/Z4X4Bz0NnKZX8pV42PbB7Nm3uobIsKj165ebxIxWQ56HZ
 yqWWqYZwTAHvwcevf2RRr6OxP2k=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-west-2.postgun.com with SMTP id
 5ed5379e98f4fc41d0a37346 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 01 Jun 2020 17:15:10
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 2EE8BC433CB; Mon,  1 Jun 2020 17:15:10 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 55B32C433C9;
 Mon,  1 Jun 2020 17:15:09 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 01 Jun 2020 22:45:09 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH 2/2] coresight: tmc: Add shutdown callback for TMC ETR/ETF
In-Reply-To: <CAJ9a7VgxDru8P_RXE2ewGkSA2mfCNvOp+hMuNLB4AszXBOUp1g@mail.gmail.com>
References: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <CAJ9a7VgxDru8P_RXE2ewGkSA2mfCNvOp+hMuNLB4AszXBOUp1g@mail.gmail.com>
Message-ID: <f3c3a52effa9828d47712a9d4f852dfc@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_101511_956549_D14F1ADB 
X-CRM114-Status: GOOD (  17.89  )
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mike,

Thanks for the review.

On 2020-06-01 19:05, Mike Leach wrote:
> Hi,
> 
> On Mon, 1 Jun 2020 at 09:02, Sai Prakash Ranjan
> <saiprakash.ranjan@codeaurora.org> wrote:
>> 
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
>>         CS_LOCK(drvdata->base);
>>  }
>> 
>> -static void tmc_etb_disable_hw(struct tmc_drvdata *drvdata)
>> +void tmc_etb_disable_hw(struct tmc_drvdata *drvdata)
>>  {
>>         __tmc_etb_disable_hw(drvdata);
>>         coresight_disclaim_device(drvdata->base);
>> @@ -118,7 +118,7 @@ static int tmc_etf_enable_hw(struct tmc_drvdata 
>> *drvdata)
>>         return 0;
>>  }
>> 
>> -static void tmc_etf_disable_hw(struct tmc_drvdata *drvdata)
>> +void tmc_etf_disable_hw(struct tmc_drvdata *drvdata)
>>  {
>>         CS_UNLOCK(drvdata->base);
>> 
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
>>         __tmc_etr_disable_hw(drvdata);
>>         /* Disable CATU device if this ETR is connected to one */
>> diff --git a/drivers/hwtracing/coresight/coresight-tmc.c 
>> b/drivers/hwtracing/coresight/coresight-tmc.c
>> index 5a271ebc4585..7e687a356fe0 100644
>> --- a/drivers/hwtracing/coresight/coresight-tmc.c
>> +++ b/drivers/hwtracing/coresight/coresight-tmc.c
>> @@ -540,6 +540,34 @@ static int tmc_probe(struct amba_device *adev, 
>> const struct amba_id *id)
>>         return ret;
>>  }
>> 
>> +static void tmc_shutdown(struct amba_device *adev)
>> +{
>> +       struct tmc_drvdata *drvdata = amba_get_drvdata(adev);
>> +
> 
> Take drvdata->spinlock here? The tmc_xxx_disable_hw functions are
> normally called with the spinlock claimed.
> 

Sure will take spinlock here.

>> +       if (!drvdata->enable)
> 
> As per previous patch drvdata->mode can be used here.
> 

Yes, will use mode here and drop enable flag in the next version.

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
