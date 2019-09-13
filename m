Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2203B226D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 16:44:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=us5Ut5MR97bWb94sFOh/czKCJYSyP1D8cxTJvaF9Cj0=; b=hyAEDoP89axS/+Y4CnHVUCTPW
	HfXzOyiox11TOTnftnz6qY9GwyFDcrPpgOxyB5lDY9Wjkq2XjUwsq6splGpZRrZIeb5qWPxFifShc
	wjDvKG3LMsD7qYA5JQ+qYu4kQeP7xsmQGSfLxQhAxwkmj/EwxkdMmdTpM/YL2ioO9hGiPTcMUzV9Y
	E9zlsB0OzaPC7W1Rn6DjJjdV8lGLhrdqlcz+vqDJTSa/eGvIOQksDaJvEz/Zxqrp3IpgXeJDUwjA+
	5aFDlkh4cXza1MDLNa08LUNrtiDhNS8/72rp88xhliDJnoryODweYWuyPg6WL3qAwQY+qEsFhRHtz
	j713IbpGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8mo2-0007cH-Vu; Fri, 13 Sep 2019 14:44:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8mno-0007bo-7C
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 14:44:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A350A1000;
 Fri, 13 Sep 2019 07:43:59 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B0EFA3F67D;
 Fri, 13 Sep 2019 07:43:58 -0700 (PDT)
Subject: Re: [PATCH] iommu/arm-smmu: Report USF more clearly
To: Qian Cai <cai@lca.pw>, will@kernel.org, joro@8bytes.org
References: <2762ffd4c196dc91d62e10eb8b753f256ea9b629.1568375317.git.robin.murphy@arm.com>
 <1568385318.5576.146.camel@lca.pw>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <e33fb57a-04de-1b97-2e8a-c51c17fea248@arm.com>
Date: Fri, 13 Sep 2019 15:43:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1568385318.5576.146.camel@lca.pw>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_074400_304421_A1EECAD6 
X-CRM114-Status: GOOD (  16.62  )
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
Cc: iommu@lists.linux-foundation.org, Douglas Anderson <dianders@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/09/2019 15:35, Qian Cai wrote:
> On Fri, 2019-09-13 at 12:48 +0100, Robin Murphy wrote:
>> Although CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT is a welcome tool
>> for smoking out inadequate firmware, the failure mode is non-obvious
>> and can be confusing for end users. Add some special-case reporting of
>> Unidentified Stream Faults to help clarify this particular symptom.
>>
>> CC: Douglas Anderson <dianders@chromium.org>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>   drivers/iommu/arm-smmu.c | 5 +++++
>>   drivers/iommu/arm-smmu.h | 2 ++
>>   2 files changed, 7 insertions(+)
>>
>> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
>> index b7cf24402a94..76ac8c180695 100644
>> --- a/drivers/iommu/arm-smmu.c
>> +++ b/drivers/iommu/arm-smmu.c
>> @@ -499,6 +499,11 @@ static irqreturn_t arm_smmu_global_fault(int irq, void *dev)
>>   	dev_err_ratelimited(smmu->dev,
>>   		"\tGFSR 0x%08x, GFSYNR0 0x%08x, GFSYNR1 0x%08x, GFSYNR2 0x%08x\n",
>>   		gfsr, gfsynr0, gfsynr1, gfsynr2);
>> +	if (IS_ENABLED(CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT) &&
>> +	    (gfsr & sGFSR_USF))
>> +		dev_err_ratelimited(smmu->dev,
>> +			"Stream ID %hu may not be described by firmware, try booting with \"arm-smmu.disable_bypass=0\"\n",
>> +			(u16)gfsynr1);
> 
> dev_err_once(), i.e., don't need to remind people to set "arm-
> smmu.disable_bypass=0" multiple times.

Indeed, but in many cases it then quickly gets buried by an unending 
storm of repeated faults (not every console has capture and scrollback...)

Given that it's a "this is why your machine is on fire" kind of message, 
I figured that it's probably best to err on the side of visibility.

Robin.

>>   
>>   	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_sGFSR, gfsr);
>>   	return IRQ_HANDLED;
>> diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
>> index c9c13b5785f2..46f7e161e83e 100644
>> --- a/drivers/iommu/arm-smmu.h
>> +++ b/drivers/iommu/arm-smmu.h
>> @@ -79,6 +79,8 @@
>>   #define ID7_MINOR			GENMASK(3, 0)
>>   
>>   #define ARM_SMMU_GR0_sGFSR		0x48
>> +#define sGFSR_USF			BIT(2)
>> +
>>   #define ARM_SMMU_GR0_sGFSYNR0		0x50
>>   #define ARM_SMMU_GR0_sGFSYNR1		0x54
>>   #define ARM_SMMU_GR0_sGFSYNR2		0x58

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
