Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B7BDE8D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 11:00:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fLD/Nl7tN1Va+6GokDNbmUAPIk/nm/1SfQwJBFIBqwQ=; b=Vx6JsEwhIAfyCA
	5K3ua1wzDpsh9lPcXaqOnFC4OOGwitkUOFN+dj3Yahb56lh75+84bXqguqMIkERlPf+Z8fAPKH/sZ
	FNDBf5bRjZiWGTkEmGQ/GjVFsdjLnJpdqYu8aSXNJl0ghw0Qv37RtLZcwd9F7N7VdG0NJCbnQUh3e
	15HcE0gJt12VKcuRlSw9aWwdF0SjIm6Mq5hZ2Cekn+CcRGSWhk+vkOTUqtWu4kbcii8j5p1VF/TGe
	Km1o+gkuY0PztUJUFTH0pYKJ1F7GipuwAui7bE2rMG4HYpxKKhmJ4it+R8fBVlupcEIpp53Q0R4jN
	TunMt/dKeajbvtTaUzuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL29N-0002JJ-No; Mon, 29 Apr 2019 09:00:37 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL299-0002Co-PK
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 09:00:25 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x3T903GW088945;
 Mon, 29 Apr 2019 04:00:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1556528404;
 bh=6AoMSEP6k0dB31rGEgSMYkvxlMJV2xJSnrQQRDzjTkg=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=QHusFS31q57Y1idKXPWuRPB3aAlPnoJ6+bqdgRkwp9l0rv6O9c4jqBlV85q7HRDyj
 vLWYrI7/yaTELtP7ZOi2HzAuXGXfn1Ki5cNYEvDS7aRbtXPMR4w8Y6R1Sxx1ntWnGV
 kGZzxdL54oGX44+iLcSQnOh0+5qIeqd8Cqz4t8/k=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x3T903xl065793
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 29 Apr 2019 04:00:03 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 29
 Apr 2019 04:00:03 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 29 Apr 2019 04:00:03 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x3T8xwEq020597;
 Mon, 29 Apr 2019 03:59:59 -0500
Subject: Re: [PATCH v7 11/14] irqchip: ti-sci-inta: Add support for Interrupt
 Aggregator driver
To: Marc Zyngier <marc.zyngier@arm.com>, Santosh Shilimkar
 <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>, Nishanth Menon
 <nm@ti.com>, <tglx@linutronix.de>, <jason@lakedaemon.net>
References: <20190420100950.7997-1-lokeshvutla@ti.com>
 <20190420100950.7997-12-lokeshvutla@ti.com>
 <bb768bc0-e18b-3794-8083-1612da10b0c1@ti.com>
 <79b34c45-023b-2df4-26f4-e151e74a46ac@arm.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <7d012633-e540-df8f-7c21-07702447cb8a@ti.com>
Date: Mon, 29 Apr 2019 14:29:33 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <79b34c45-023b-2df4-26f4-e151e74a46ac@arm.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_020023_916435_3F383AC8 
X-CRM114-Status: GOOD (  18.19  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Tony Lindgren <tony@atomide.com>, linus.walleij@linaro.org,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 29/04/19 2:17 PM, Marc Zyngier wrote:
> On 23/04/2019 11:00, Lokesh Vutla wrote:
>> Hi Marc,
> 
> [...]
> 
>>> +/**
>>> + * ti_sci_inta_set_type() - Update the trigger type of the irq.
>>> + * @data:	Pointer to corresponding irq_data
>>> + * @type:	Trigger type as specified by user
>>> + *
>>> + * Note: This updates the handle_irq callback for level msi.
>>> + *
>>> + * Return 0 if all went well else appropriate error.
>>> + */
>>> +static int ti_sci_inta_set_type(struct irq_data *data, unsigned int type)
>>> +{
>>> +	struct irq_desc *desc = irq_to_desc(data->irq);
>>> +
>>> +	/*
>>> +	 * .alloc default sets handle_edge_irq. But if the user specifies
>>> +	 * that IRQ is level MSI, then update the handle to handle_level_irq
>>> +	 */
>>> +	if (type & IRQF_TRIGGER_HIGH)
>>> +		desc->handle_irq = handle_level_irq;
>>> +
>>> +	return 0;
>>
>>
>> Returning error value is causing request_irq to fail, so still returning 0. Do
>> you suggest any other method to handle this?
> 
> But that is the very point, isn't it? If you pass the wrong triggering
> type to request_irq, it *must* fail. What you should have is something like:
> 
> switch (type & IRQ_TYPE_SENSE_MASK) {
> case IRQF_TRIGGER_HIGH:
> 	desc->handle_irq = handle_level_irq;
> 	return 0;
> case IRQ_TYPE_EDGE_RISING:
> 	return 0;
> default:
> 	return -EINVAL;
> }
> 
> (adjust as necessary).
> 
> What's wrong with this?

I get it. Will fix it in next version. I also got the firmware update as well.
If you are okay with rest of the series, I want to post the next version with
the firmware update.

Thanks and regards,
Lokesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
