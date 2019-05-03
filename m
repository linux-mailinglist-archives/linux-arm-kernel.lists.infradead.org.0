Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6CF132F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 19:13:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hInonINQvzDDhYcooW97F2LsxN4F7hKJ+ykzeF9G/5U=; b=lLdara8SNrPtwuZOAF4XIhUZy
	a1H83b3diSuomuqI6E5svauT6VQcluAkhcAmmsnqX/q/VD8B87p3mqCNlOovzb/8siYxOtn09ddYu
	KIQjNM+0TRMXcjBPMOYue0JrUnbCCl6idV0BowU8veSfNOO2dfCnsmkA1Yj8QkmzE+pNuz6Ox99vO
	0gPLRDl9dEGMiswCMO3cdxMCCG3p1Tn0vsv5JaYxRjFiKG/1Mk33M9L71ZUyfiY5FzjirisBUyh5i
	HBY+NhBzhfeUBDUEV2Q1612EnOD/IKL2L4/Ije+UJNS2pEixoojo81KnUyj0XppSWOA//7+/wcuWH
	IEmEo6eVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMbko-0002D3-Ea; Fri, 03 May 2019 17:13:46 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMbkh-0002Cb-V1
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 17:13:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 93F5215A2;
 Fri,  3 May 2019 10:13:39 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 53B5F3F557;
 Fri,  3 May 2019 10:13:38 -0700 (PDT)
Subject: Re: [PATCH v2 08/36] coresight: tmc: Clean up device specific data
To: mathieu.poirier@linaro.org
References: <1555344260-12375-1-git-send-email-suzuki.poulose@arm.com>
 <1555344260-12375-9-git-send-email-suzuki.poulose@arm.com>
 <20190417212325.GC14163@xps15>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <61ccfc44-c062-fa3e-6de9-825def4e9891@arm.com>
Date: Fri, 3 May 2019 18:13:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190417212325.GC14163@xps15>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_101340_005857_08479FB5 
X-CRM114-Status: GOOD (  21.62  )
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
Cc: coresight@lists.linaro.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 robert.walker@arm.com, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu

On 17/04/2019 22:23, Mathieu Poirier wrote:
> On Mon, Apr 15, 2019 at 05:03:51PM +0100, Suzuki K Poulose wrote:
>> In preparation to use a consistent device naming scheme,
>> clean up the device link tracking in replicator driver.
>> Use the "coresight" device instead of the "real" parent device
>> for all internal purposes. All other requests (e.g, power management,
>> DMA operations) must use the "real" device which is the parent device.
>>
>> Since the CATU driver also uses the TMC-SG infrastructure, update
>> the callers to ensure they pass the appropriate device argument
>> for the tables.
>>
>> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
>> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>

>> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
>> index f684283..0911f9c 100644
>> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
>> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
>> @@ -153,10 +153,11 @@ static void tmc_pages_free(struct tmc_pages *tmc_pages,
>>   			   struct device *dev, enum dma_data_direction dir)
>>   {
>>   	int i;
>> +	struct device *real_dev = dev->parent;
> 
> I would have kept the 'dev' as it is quite obvious from the dev->parent that we
> are getting a reference on the parent.  That is just my opinion and it is
> entirely up to you.

"dev" is already an argument to the function. Hence the "real_dev" choice.

>> diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
>> index 487c537..3eeadcf 100644
>> --- a/drivers/hwtracing/coresight/coresight-tmc.h
>> +++ b/drivers/hwtracing/coresight/coresight-tmc.h
>> @@ -175,7 +175,6 @@ struct etr_buf {
>>    */
>>   struct tmc_drvdata {
>>   	void __iomem		*base;
>> -	struct device		*dev;
> 
> Please clean up the structure documentation.
> 
> With that and regardless of what you decide to do about the 'real_dev':

Done.

> 
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
