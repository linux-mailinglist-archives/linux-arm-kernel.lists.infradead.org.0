Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3F799937
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 18:32:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ro+so9iLS7iiTBqgYUrFd5ViC9AREo8c9ryO6WifQD8=; b=uNdQeomZRhGlty
	KWWCUhvEoQ4xvZE0di7Gl1WV9OVjlcQdHikfArohPRUntc/VDwFpzJsBTW5FiIW1n3rZSN1FFO30P
	qICvrX/u2s+zOpjkr9VTDnRLM1V6g17p+Yi7mULaAK9OgIP0e80Bs0ghgvLmduimaeB1nmNTHOWIy
	wQt1peMB7+ZzIa52azecP6cMs8CmkBIlrX/oQCVRm8K1/U2OfGecrhqN4IVPcCvIrsbOu7uR80ftH
	cnpnzSc/DdZGD2No1Ye/VZ6tqiskB4zRbyggmBmzlvVZLiIQLtwoNLjb3PRT/arUvGMiq6FFLWxbe
	I+r2GJYH37U8ltUlLw4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0q10-0003rH-DG; Thu, 22 Aug 2019 16:32:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0q0n-0003fq-OR
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 16:32:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A7AFD28;
 Thu, 22 Aug 2019 09:32:32 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 877293F718; Thu, 22 Aug 2019 09:32:31 -0700 (PDT)
Subject: Re: [PATCH v2 05/12] irqchip/gic: Prepare for more than 16 PPIs
To: Julien <julien.thierry.kdev@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Rob Herring <robh+dt@kernel.org>
References: <20190806100121.240767-1-maz@kernel.org>
 <20190806100121.240767-6-maz@kernel.org>
 <1b2675f6-f839-80f8-b7d8-a7d402085745@gmail.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <ccd1a1f2-d1a5-4f35-eb5e-ba5acd33e3ea@kernel.org>
Date: Thu, 22 Aug 2019 17:32:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1b2675f6-f839-80f8-b7d8-a7d402085745@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_093233_881379_DF9C6E0E 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Lokesh Vutla <lokeshvutla@ti.com>, John Garry <john.garry@huawei.com>,
 linux-kernel@vger.kernel.org,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Julien,

On 22/08/2019 17:11, Julien wrote:
> Hi Marc,
> 
> On 06/08/19 11:01, Marc Zyngier wrote:
>> GICv3.1 allows up to 80 PPIs (16 legaci PPIs and 64 Extended PPIs),
>> meaning we can't just leave the old 16 hardcoded everywhere.
>>
>> We also need to add the infrastructure to discover the number of PPIs
>> on a per redistributor basis, although we still pretend there is only
>> 16 of them for now.
>>
>> No functional change.
>>
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>   drivers/irqchip/irq-gic-common.c | 19 ++++++++++++-------
>>   drivers/irqchip/irq-gic-common.h |  2 +-
>>   drivers/irqchip/irq-gic-v3.c     | 22 +++++++++++++++-------
>>   drivers/irqchip/irq-gic.c        |  2 +-
>>   drivers/irqchip/irq-hip04.c      |  2 +-
>>   5 files changed, 30 insertions(+), 17 deletions(-)
>>
>> diff --git a/drivers/irqchip/irq-gic-common.c b/drivers/irqchip/irq-gic-common.c
>> index 6900b6f0921c..14110db01c05 100644
>> --- a/drivers/irqchip/irq-gic-common.c
>> +++ b/drivers/irqchip/irq-gic-common.c
>> @@ -128,26 +128,31 @@ void gic_dist_config(void __iomem *base, int gic_irqs,
>>   		sync_access();
>>   }
>>   
>> -void gic_cpu_config(void __iomem *base, void (*sync_access)(void))
>> +void gic_cpu_config(void __iomem *base, int nr, void (*sync_access)(void))
>>   {
>>   	int i;
>>   
>>   	/*
>>   	 * Deal with the banked PPI and SGI interrupts - disable all
>> -	 * PPI interrupts, ensure all SGI interrupts are enabled.
>> -	 * Make sure everything is deactivated.
>> +	 * private interrupts. Make sure everything is deactivated.
>>   	 */
>> -	writel_relaxed(GICD_INT_EN_CLR_X32, base + GIC_DIST_ACTIVE_CLEAR);
>> -	writel_relaxed(GICD_INT_EN_CLR_PPI, base + GIC_DIST_ENABLE_CLEAR);
>> -	writel_relaxed(GICD_INT_EN_SET_SGI, base + GIC_DIST_ENABLE_SET);
>> +	for (i = 0; i < nr; i += 32) {
> 
> You added "nr" as argument but if "nr" isn't a multiple of 32 weird 
> things might happen, no?
>
> It would be worth specifying that somewhere, and checking it with a WARN().

TBH, I'm unsure whether that's worth it. The architecture is completely
built around having the private interrupts in blocks of 32, and you can
only get something wrong if you misdecode the number of interrupts from
the registers.

> Maybe it might be worth reducing the granularity to manipulating 16 irqs 
> since there are 16 SGI + 16 PPI + 64 EPPI, but that might not be very 
> useful right now.

I don't see what this brings us at this point. The architecture doesn't
seem to go in the direction of adding more SGIs, so we're pretty safe on
that front...

Thanks,

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
