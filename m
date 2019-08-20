Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DB195ACA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 11:19:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Qu/8ctx+3WV/e0uHYwhoLm5hc7w7U/eSjFI/8aAogc=; b=ex+B5uUF6pG1fN
	E98Rs9Krjy9h0ZCXOKkAgwANXnb2jhg4nrlVLA4d3gsQCyKCZLV+o9Ev+Cus9jAof+0uiYXh4eKPN
	SLnP7WaogHjNzUxSfAoPCOLCkonvd8lil02uR5KXwB8Mgp97GmLLSNJCg6zggw9a++cI+zwvs9XUS
	WNf8HnO79BXQJkR202lloVAPJkJHLXENtJq9+um5iqWddtvlwvWnUrKmoZb/Ez2hXe4gxlWqbILVM
	aNQKp1zx4keWMe3zswehBQam7Ln9BQoePB3liJazBLgEQv3UIakAf7A3ZIYotDNoeVOzFx2avoWrW
	2gjFsepKu6SW0N7LDkrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i00Is-00061j-LV; Tue, 20 Aug 2019 09:19:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i00IA-000612-6Y
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 09:19:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D5821344;
 Tue, 20 Aug 2019 02:18:59 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 57B3B3F706; Tue, 20 Aug 2019 02:18:58 -0700 (PDT)
Subject: Re: [PATCH v2 04/12] irqchip/gic-v3: Add ESPI range support
To: Zenghui Yu <yuzenghui@huawei.com>
References: <20190806100121.240767-1-maz@kernel.org>
 <20190806100121.240767-5-maz@kernel.org>
 <9cbd6fc8-3fe9-39fc-10ca-724a1ec06e8d@huawei.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <30fe07e9-0670-d755-2173-dc71549a797b@kernel.org>
Date: Tue, 20 Aug 2019 10:18:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <9cbd6fc8-3fe9-39fc-10ca-724a1ec06e8d@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_021902_288283_9263FAD2 
X-CRM114-Status: GOOD (  16.13  )
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

On 19/08/2019 15:25, Zenghui Yu wrote:
> Hi Marc,
> 
> On 2019/8/6 18:01, Marc Zyngier wrote:
>> Add the required support for the ESPI range, which behave exactly like
>> the SPIs of old, only with new funky INTIDs.
>>
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>   drivers/irqchip/irq-gic-v3.c       | 85 ++++++++++++++++++++++++------
>>   include/linux/irqchip/arm-gic-v3.h | 17 +++++-
>>   2 files changed, 85 insertions(+), 17 deletions(-)
>>
>> diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
>> index db3bdedd7241..1ca4dde32034 100644
>> --- a/drivers/irqchip/irq-gic-v3.c
>> +++ b/drivers/irqchip/irq-gic-v3.c
>> @@ -51,13 +51,16 @@ struct gic_chip_data {
>>   	u32			nr_redist_regions;
>>   	u64			flags;
>>   	bool			has_rss;
>> -	unsigned int		irq_nr;
>>   	struct partition_desc	*ppi_descs[16];
>>   };
>>   
>>   static struct gic_chip_data gic_data __read_mostly;
>>   static DEFINE_STATIC_KEY_TRUE(supports_deactivate_key);
>>   
>> +#define GIC_ID_NR	(1U << GICD_TYPER_ID_BITS(gic_data.rdists.gicd_typer))
>> +#define GIC_LINE_NR	GICD_TYPER_SPIS(gic_data.rdists.gicd_typer)
> 
> This indicates the maximum SPI INTID that the GIC implementation
> supports, should we restrict it to no more than 1020?

I guess we could write it as max(GICD_TYPER_SPIS(...), 1020), but that's
not a material change (the registers backing the special range do exist).

> ITLinesNumber can be '11111', and I saw the following info on my host:
>      "GICv3: 992 SPIs implemented"

Yeah, the above should fix the print.

Thanks,

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
