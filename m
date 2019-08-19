Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C24F92799
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 16:53:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vB8sKTCCeM4dOjekwHL3YbM0YiBE3uXUDTKNrbfRyHw=; b=d4ycFwexdGZUR+
	QTC7ELXYtDpaSVltE8W/c/Vegcy34crfYUJL7pOl9/jVNoqIvjkhpligRfe9CZjbL3EErALSee8o6
	j62RhMbimDhLvv3+YldCp0/oO+x9idNVpcGNE/Fqu+ontuomlRUuhEXp2tNlLrAUK9zEJnM02Upud
	Hc8uj5FMVyk4ZvuAuzWclFTktDYycRMLiw2Xt/f2z4ase6QOEIHvjMQtAQvguH/xu4CiouiNl088a
	x+KrUwRyLPXhT6sD2bp4KJz1GAbrYdmvMsq9aEwn/Y+qzjDOV/uKrTOGi1gJNNre/wtO+q7ttTkoL
	0a4g9xAesgrp1xndBgAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzj2C-00039f-Oz; Mon, 19 Aug 2019 14:53:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzj23-00038x-MW
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 14:53:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1E76928;
 Mon, 19 Aug 2019 07:53:14 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 9BB2D3F718; Mon, 19 Aug 2019 07:53:12 -0700 (PDT)
Subject: Re: [PATCH v2 01/12] irqchip/gic: Rework gic_configure_irq to take
 the full ICFGR base
To: Zenghui Yu <yuzenghui@huawei.com>
References: <20190806100121.240767-1-maz@kernel.org>
 <20190806100121.240767-2-maz@kernel.org>
 <a601236c-8128-ca7a-667f-12a4b7cefb89@huawei.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <e9129a9e-ebef-7108-d4a3-c91c22eb29a3@kernel.org>
Date: Mon, 19 Aug 2019 15:53:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <a601236c-8128-ca7a-667f-12a4b7cefb89@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_075315_782665_3614E0BC 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Jason Cooper <jason@lakedaemon.net>, Lokesh Vutla <lokeshvutla@ti.com>,
 John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/08/2019 15:26, Zenghui Yu wrote:
> Hi Marc,
> 
> On 2019/8/6 18:01, Marc Zyngier wrote:
>> gic_configure_irq is currently passed the (re)distributor address,
>> to which it applies an a fixed offset to get to the configuration
>> registers. This offset is constant across all GICs, or rather it was
>> until to v3.1...
>>
>> An easy way out is for the individual drivers to pass the base
>> address of the configuration register for the considered interrupt.
>> At the same time, move part of the error handling back to the
>> individual drivers, as things are about to change on that front.
>>
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>   drivers/irqchip/irq-gic-common.c | 14 +++++---------
>>   drivers/irqchip/irq-gic-v3.c     | 11 ++++++++++-
>>   drivers/irqchip/irq-gic.c        | 10 +++++++++-
>>   drivers/irqchip/irq-hip04.c      |  7 ++++++-
>>   4 files changed, 30 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/irqchip/irq-gic-common.c b/drivers/irqchip/irq-gic-common.c
>> index b0a8215a13fc..6900b6f0921c 100644
>> --- a/drivers/irqchip/irq-gic-common.c
>> +++ b/drivers/irqchip/irq-gic-common.c
>> @@ -63,7 +63,7 @@ int gic_configure_irq(unsigned int irq, unsigned int type,
>>   	 * for "irq", depending on "type".
>>   	 */
>>   	raw_spin_lock_irqsave(&irq_controller_lock, flags);
>> -	val = oldval = readl_relaxed(base + GIC_DIST_CONFIG + confoff);
>> +	val = oldval = readl_relaxed(base + confoff);
>>   	if (type & IRQ_TYPE_LEVEL_MASK)
>>   		val &= ~confmask;
>>   	else if (type & IRQ_TYPE_EDGE_BOTH)
>> @@ -83,14 +83,10 @@ int gic_configure_irq(unsigned int irq, unsigned int type,
>>   	 * does not allow us to set the configuration or we are in a
>>   	 * non-secure mode, and hence it may not be catastrophic.
>>   	 */
>> -	writel_relaxed(val, base + GIC_DIST_CONFIG + confoff);
>> -	if (readl_relaxed(base + GIC_DIST_CONFIG + confoff) != val) {
>> -		if (WARN_ON(irq >= 32))
>> -			ret = -EINVAL;
> 
> Since this WARN_ON is dropped, the comment above should also be updated.
> But what is the reason for deleting it?  (It may give us some points
> when we fail to set type for SPIs.)

The core code already warns in the case where irq_set_type() fails, and
the duplication of warnings is pretty superfluous.

Thanks,

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
