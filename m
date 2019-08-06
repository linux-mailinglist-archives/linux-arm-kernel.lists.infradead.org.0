Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 366F083071
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 13:15:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KsiRifRNDgMOUt0j7IA5W7EjXjmnI3nXCIEvDQb/irI=; b=N4eUFjYCs3/jJm
	eQPZaXdDDOrJbWxlVv5e2o7g/MnpwEBUg70rsIyKvn8QRKSJdbYr2OAORO9hmMTADuu9B7OKrkGhv
	fjBX7OrRr1A/WxqQEMU9h+7ZfXho4irPlEtRgU5Ro8RVeiFzWe5W8c56MzIPSxDl1TtTrTcVkM9mE
	4DGB3uh7ppLfjiMk6ssSaoI+9XZUR4mDveSRN8i7tVGsmrKaVAqwySIXOKlqaOkDPcHdmk9TNVn1V
	iYsrctlAPJ6VcBb9km2XqtX0rkEpbdsRIFowpdO/4Mc+lKPiRTltY/gNYANQ66S9F+u75HkCjOH4P
	7EllxkRd9tEiADXvA9zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huxRb-0001Co-Bu; Tue, 06 Aug 2019 11:15:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1huxRC-00013a-Pc
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 11:15:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD37B337;
 Tue,  6 Aug 2019 04:15:29 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 770E23F694; Tue,  6 Aug 2019 04:15:28 -0700 (PDT)
Subject: Re: [PATCH v2 10/12] irqchip/gic-v3: Warn about inconsistent
 implementations of extended ranges
To: Vladimir Murzin <vladimir.murzin@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
References: <20190806100121.240767-1-maz@kernel.org>
 <20190806100121.240767-11-maz@kernel.org>
 <e5512fcc-e24e-c29a-8a57-011d194e3c41@arm.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <26b27325-9b92-8152-7289-26561a7e468f@kernel.org>
Date: Tue, 6 Aug 2019 12:15:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <e5512fcc-e24e-c29a-8a57-011d194e3c41@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_041531_044027_1828D47F 
X-CRM114-Status: GOOD (  16.93  )
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

Hi Vladimir,

On 06/08/2019 11:15, Vladimir Murzin wrote:
> Hi Marc,
> 
> On 8/6/19 11:01 AM, Marc Zyngier wrote:
>> As is it usual for the GIC, it isn't disallowed to put together a system
>> that is majorly inconsistent, with a distributor supporting the
>> extended ranges while some of the CPUs don't.
>>
>> Kindly tell the user that things are sailing isn't going to be smooth.
>>
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>  drivers/irqchip/irq-gic-v3.c       | 5 +++++
>>  include/linux/irqchip/arm-gic-v3.h | 1 +
>>  2 files changed, 6 insertions(+)
>>
>> diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
>> index f53e58d398ba..334a10d9dbfb 100644
>> --- a/drivers/irqchip/irq-gic-v3.c
>> +++ b/drivers/irqchip/irq-gic-v3.c
>> @@ -1014,6 +1014,11 @@ static void gic_cpu_init(void)
>>  
>>  	gic_enable_redist(true);
>>  
>> +	WARN((gic_data.ppi_nr > 16 || GIC_ESPI_NR != 0) &&
>> +	     !(gic_read_ctlr() & ICC_CTLR_EL1_ExtRange),
>> +	     "Distributor has extended ranges, but CPU%d doesn't\n",
>> +	     smp_processor_id());
>> +
> 
> Should such setup be tainted?

I'm not completely sure. The system isn't really dead, but a whole range
of interrupts will not be able to make it to the CPU. It won't be less
reliable though.

I expect this to be more for system integration purposes (simulation
setup, for example), where something hasn't been setup correctly. Or to
spot implementation creativity, such as in the last patch.

I'm happy either way, TBH.

Thanks,

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
