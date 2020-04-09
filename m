Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE38E1A32F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 13:11:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VXrdtlclX2qIOgvKx0YH0NC10bK92hPQ6QtHbc3ieOk=; b=Mhj7l/vUDltJ/JEPGIVtp8xQV
	igBMmzoWNP3DRgafMaAUJKCOFGqTuVmAYr8J5UO8WiwiWmYICmyAk+wM2obSxGoKynbp4cL4ojKwz
	9sAA8X5o0/NrOBCiKD4EMMeZphFmysj1tmwLYQ1FhuVLAINIGdExQ42ZjHNnfXJ5GgR/ou59M3527
	qA0N2ZvHSkVnYc0o8LuKK0U3lESe6P4cofRXDi6GukWvzAhbs0ClmRQPp4GM8/qLgT7/AvVkorEFD
	3OYRqiG9VROm7R34+9MP1okm/42zWZ0emnvGdfp1meGFrZIWpUzjAGgw2s/hH4UVyQLhLVMhYr5mG
	rGx8Oj1gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMV5y-0007hS-DF; Thu, 09 Apr 2020 11:11:42 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMV5r-0007h8-F1
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 11:11:36 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 039BBJcq106985;
 Thu, 9 Apr 2020 06:11:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1586430679;
 bh=E8tVnmNNO/6VeJ/pnizdaaUgKBPhHIA/HRlOTtiF0JQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=i/wAPC2YVcfdMrzt+LiAwyLGuDfxSYteoAx6ZWWevHYH2uXsA9oetr7TQF+Dm8wpI
 +n+92Em4VqNYwUC+jt67NhODhNELjbcatkrJocY+uTc6EbWYu/c81PKKzC4JR6OptM
 ECF8buK0rLt2enK/ZiDr5CvgM69VOwKHw1ABzNN4=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 039BBJPI045541;
 Thu, 9 Apr 2020 06:11:19 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 9 Apr
 2020 06:11:18 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 9 Apr 2020 06:11:18 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 039BBDME125366;
 Thu, 9 Apr 2020 06:11:13 -0500
Subject: Re: [PATCH] irqchip/ti-sci-inta: fix processing of masked irqs
To: Marc Zyngier <maz@kernel.org>
References: <20200408191532.31252-1-grygorii.strashko@ti.com>
 <20200409103144.3b2169bf@why>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <851d5063-475e-ea7b-6609-684b08283550@ti.com>
Date: Thu, 9 Apr 2020 14:11:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200409103144.3b2169bf@why>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_041135_627740_C61D9AF3 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Jason Cooper <jason@lakedaemon.net>, Lokesh Vutla <lokeshvutla@ti.com>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/04/2020 12:31, Marc Zyngier wrote:
> On Wed, 8 Apr 2020 22:15:32 +0300
> Grygorii Strashko <grygorii.strashko@ti.com> wrote:
> 
>> The ti_sci_inta_irq_handler() does not take into account INTA IRQs state
>> (masked/unmasked) as it uses INTA_STATUS_CLEAR_j register to get INTA IRQs
>> status, which provides raw status value.
>> This causes hard IRQ handlers to be called or threaded handlers to be
>> scheduled many times even if corresponding INTA IRQ is masked.
>> Above, first of all, affects the LEVEL interrupts processing and causes
>> unexpected behavior up the system stack or crash.
>>
>> Fix it by using the Interrupt Masked Status INTA_STATUSM_j register which
>> provides masked INTA IRQs status.
>>
>> Fixes: 9f1463b86c13 ("irqchip/ti-sci-inta: Add support for Interrupt Aggregator driver")
>> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
> 
> Given the failure mode, doesn't this deserve a Cc stable?

Sorry, was not sure how it works here.
"Fixes" tag now is usually enough to get included in stable.
Any way, I'll track it and if not included will re-send for stable.

> 
>> ---
>>   drivers/irqchip/irq-ti-sci-inta.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/irqchip/irq-ti-sci-inta.c b/drivers/irqchip/irq-ti-sci-inta.c
>> index 8f6e6b08eadf..7e3ebf6ed2cd 100644
>> --- a/drivers/irqchip/irq-ti-sci-inta.c
>> +++ b/drivers/irqchip/irq-ti-sci-inta.c
>> @@ -37,6 +37,7 @@
>>   #define VINT_ENABLE_SET_OFFSET	0x0
>>   #define VINT_ENABLE_CLR_OFFSET	0x8
>>   #define VINT_STATUS_OFFSET	0x18
>> +#define VINT_STATUS_MASKED_OFFSET	0x20
>>   
>>   /**
>>    * struct ti_sci_inta_event_desc - Description of an event coming to
>> @@ -116,7 +117,7 @@ static void ti_sci_inta_irq_handler(struct irq_desc *desc)
>>   	chained_irq_enter(irq_desc_get_chip(desc), desc);
>>   
>>   	val = readq_relaxed(inta->base + vint_desc->vint_id * 0x1000 +
>> -			    VINT_STATUS_OFFSET);
>> +			    VINT_STATUS_MASKED_OFFSET);
>>   
>>   	for_each_set_bit(bit, &val, MAX_EVENTS_PER_VINT) {
>>   		virq = irq_find_mapping(domain, vint_desc->events[bit].hwirq);
> 
> 
> Otherwise queued for post -rc1.

Thanks.

-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
