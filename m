Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD251D393A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 20:39:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tYCvBw02E7OjV9GA3x5cK/CVZzaCcOmqTb4UFTtWevw=; b=pNzL8g+im2ysniqV9BZAsOQH1
	QiwKEzMS6uD+5nzCPU4+MKmAFe+vTRbxPlVluGCnuXtW9bDdESOYBc56iT+O+Rs7nl8aWW3cOwRp9
	08nL31DImMuSpvadtsj4TkZC4grqjJn1APgox6cM0W+EvFI7LmEJXUt83XIfufB8TUBK3KMUDCiJe
	aZ1HWkstpWwD7uSBO3Jiwi0TGmuZ16v4+uAi6N4zm6akeAtwsKpWVE9ryvn9kTuDVPl1jAKNe8VN8
	hRNXa4fb7ibjNhTz2rGlCFPUw1Mci/YLcsTGtoZ8Uumk1QfjtlIz7Rc/SPY7Gk8QSF+xPEY7t6wuo
	l5iIuOaAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZIlk-0007mp-Rz; Thu, 14 May 2020 18:39:44 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZIla-0007lv-7n
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 18:39:38 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589481574; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=GGdwcTBM4BOYqS3NJ4QzufQIMTIAR3b8muj5z/wqzWc=;
 b=pGr4BBQInyqXQueDbBF0IeRCpn9UwlkNChoMEYHRQpruIJZJWDzhTGq2F1A65DmZSkGmEhmR
 CD78DtuuAEvWkqP0KxnOM16sK3hw2Ok5E+MPd0WCL92bbA8MDZP9B1lpb9hmXBGM7v8RXGdK
 5XraFo9MbCj6vpNRVU/kSdavZZA=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ebd905d.7f903d5d59d0-smtp-out-n03;
 Thu, 14 May 2020 18:39:25 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id F226CC433D2; Thu, 14 May 2020 18:39:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D48C7C4478C;
 Thu, 14 May 2020 18:39:23 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 15 May 2020 00:09:23 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH] coresight: etm4x: Add support to disable trace unit power
 up
In-Reply-To: <20200514180055.GA29384@xps15>
References: <20200514105915.27516-1-saiprakash.ranjan@codeaurora.org>
 <20200514180055.GA29384@xps15>
Message-ID: <2c932d57288508cc72a6ee323cf5595e@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_113934_834890_C1BC189D 
X-CRM114-Status: GOOD (  21.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Stephen Boyd <swboyd@chromium.org>, Tingwei Zhang <tingwei@codeaurora.org>,
 Leo Yan <leo.yan@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On 2020-05-14 23:30, Mathieu Poirier wrote:
> Good morning Sai,
> 
> On Thu, May 14, 2020 at 04:29:15PM +0530, Sai Prakash Ranjan wrote:
>> From: Tingwei Zhang <tingwei@codeaurora.org>
>> 
>> On some Qualcomm Technologies Inc. SoCs like SC7180, there
>> exists a hardware errata where the APSS (Application Processor
>> SubSystem)/CPU watchdog counter is stopped when ETM register
>> TRCPDCR.PU=1.
> 
> Fun stuff...
> 

Yes :)

>> Since the ETMs share the same power domain as
>> that of respective CPU cores, they are powered on when the
>> CPU core is powered on. So we can disable powering up of the
>> trace unit after checking for this errata via new property
>> called "qcom,tupwr-disable".
>> 
>> Signed-off-by: Tingwei Zhang <tingwei@codeaurora.org>
>> Co-developed-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> 
> Co-developed-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> Signed-off-by: Tingwei Zhang <tingwei@codeaurora.org>
> 

Tingwei is the author, so if I understand correctly, his signed-off-by
should appear first, am I wrong?

>> ---
>>  .../devicetree/bindings/arm/coresight.txt     |  6 ++++
>>  drivers/hwtracing/coresight/coresight-etm4x.c | 29 
>> ++++++++++++-------
> 
> Please split in two patches.
> 

Sure, I will split the dt-binding into separate patch, checkpatch did 
warn.

>>  2 files changed, 25 insertions(+), 10 deletions(-)
>> 
>> diff --git a/Documentation/devicetree/bindings/arm/coresight.txt 
>> b/Documentation/devicetree/bindings/arm/coresight.txt
>> index 846f6daae71b..d2030128fe46 100644
>> --- a/Documentation/devicetree/bindings/arm/coresight.txt
>> +++ b/Documentation/devicetree/bindings/arm/coresight.txt
>> @@ -108,6 +108,12 @@ its hardware characteristcs.
>>  	* arm,cp14: must be present if the system accesses ETM/PTM 
>> management
>>  	  registers via co-processor 14.
>> 
>> +	* qcom,tupwr-disable: boolean. Indicates that trace unit power up 
>> can
>> +	  be disabled on Qualcomm Technologies Inc. systems where ETMs are 
>> in
>> +	  the same power domain as their CPU cores. This property is 
>> required
>> +	  to identify such systems with hardware errata where the CPU 
>> watchdog
>> +	  counter is stopped when TRCPDCR.PU=1.
>> +
> 
> I think something like "qcom,skip-power-up" would be clearer.
> 
> Also, a better choice of words is that TRCPDCR.PU does not have to be 
> set on
> Qualcomm...
> 

Yes "qcom,skip-power-up" is a lot better, thanks. Also will use 
something as
you suggested for description.

>>  * Optional property for TMC:
>> 
>>  	* arm,buffer-size: size of contiguous buffer space for TMC ETR
>> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c 
>> b/drivers/hwtracing/coresight/coresight-etm4x.c
>> index fb0f5f4f3a91..6886b44f6947 100644
>> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
>> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
>> @@ -104,6 +104,11 @@ struct etm4_enable_arg {
>>  	int rc;
>>  };
>> 
>> +static inline bool etm4_can_disable_tupwr(struct device *dev)
>> +{
>> +	return fwnode_property_present(dev_fwnode(dev), 
>> "qcom,tupwr-disable");
>> +}
>> +
> 
> Please call fwnode_property_present() at initialisation time to set a 
> new
> drvdata::skip_power_up variable.  From there just switch on that in
> etm4_enable/disable_hw().
> 

Will do, thanks.

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
