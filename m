Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FFDED517
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 22:18:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E5vMdooOXmPSgdRegJEIgtBwFenL1cOQ6xAUnSFrRqg=; b=Pj1NPaHYBcgzWS
	fCAQ4PxcgwbEqT1Un6pKOamWDJLp0IMdssGO8aGdOckd2MnSaoXijHIWzPGPxwHR0texK3wDvfGst
	YVPC6gJFTMVBi9UBremuIVCiljNYxyTZ6GJj/pz+YK10NE8SZw9tGeexMJ3WOXE3yHT+SnjtKnPr3
	L4RPKtZl7ZZtjSms64q9B8jA9Uq7Za8E5+/SEydY8IdVf1sKVOmkIJJt72R3F5Fvd37898vv6gx2F
	lNJ6ryeZZTZMTdczauF/tQILyUkeoLm/9TTyiKvMRVKuH42F+CoSScQcu9YrmPedm8Kastt1yrNgJ
	qpp3C0RYPuz1frHJmWSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRNG4-0005zG-0Y; Sun, 03 Nov 2019 21:18:00 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRNFw-0005yH-5T
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 21:17:54 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id A8FFD8365A;
 Mon,  4 Nov 2019 10:17:43 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1572815863;
 bh=dwIa5UBqxZ5+WyHNhpTgf/cGLb9kltXhBmUP4qmi7jE=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=ndWpDzkFk75cG//mnByCLXMkD1lu1yvb1b7YgyL/WPGfOZ9O8n9zTwpQtpMKNp16R
 DeJ6BvGIloDQerULQymfXYM93VpuiuRVQfjtKOMiRjf6fdnhbkKPrUdgD0w7FRjlTt
 LBDKByXEZJ2NEEEPcsXQf446JXEBB0Sklx7QLWl9wxWnw+D5ou942K8Cz3tyb841oR
 ecoJ+mIjpaCWtQbdSd8cQOv7JxZUd9vLF+YXXzvAj867RefIPuqru+9gZEyYIEKNDk
 WvtSC9IE8Pzds/kFRg5a1rDdLzoY8aBLtFg9HYE5tsj0pZ35LKy+N6Qrvzb5DUcDVm
 feIcG/xW3az7w==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5dbf43f50000>; Mon, 04 Nov 2019 10:17:43 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1156.6; Mon, 4 Nov 2019 10:17:40 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Mon, 4 Nov 2019 10:17:40 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "sbranden@broadcom.com" <sbranden@broadcom.com>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>, "linus.walleij@linaro.org"
 <linus.walleij@linaro.org>, "rjui@broadcom.com" <rjui@broadcom.com>
Subject: Re: [PATCH 1/2] pinctrl: bcm: nsp: use gpiolib infrastructure for
 interrupts
Thread-Topic: [PATCH 1/2] pinctrl: bcm: nsp: use gpiolib infrastructure for
 interrupts
Thread-Index: AQHVkFeSBgXJhb3KgUu11iFh5fDST6d2V0WAgALGW4A=
Date: Sun, 3 Nov 2019 21:17:39 +0000
Message-ID: <f6ac1bc26d404aa99b9b1f619552bdc441c37f6c.camel@alliedtelesis.co.nz>
References: <20191101015621.12451-1-chris.packham@alliedtelesis.co.nz>
 <20191101015621.12451-2-chris.packham@alliedtelesis.co.nz>
 <b681ed9d-a31a-e5cc-04ba-6f38a5cc745b@gmail.com>
In-Reply-To: <b681ed9d-a31a-e5cc-04ba-6f38a5cc745b@gmail.com>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:c5c6:9a61:cb8f:b19f]
Content-ID: <DEC19D1D8A2BCA428FDDA13688F0F327@atlnz.lc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_131752_791781_B35D2969 
X-CRM114-Status: GOOD (  25.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-11-01 at 19:55 -0700, Florian Fainelli wrote:
> 
> On 10/31/2019 6:56 PM, Chris Packham wrote:
> > Use more of the gpiolib infrastructure for handling interrupts. The
> > root interrupt still needs to be handled manually as it is shared with
> > other peripherals on the SoC.
> > 
> > This will allow multiple instances of this driver to be supported and
> > will clean up gracefully on failure thanks to the device managed APIs.
> > 
> > Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> > ---
> 
> Just a couple of comments below:
> 
> [snip]
> 
> > +		irqc->name = dev_name(dev);
> 
> The irq_chip used to be named "gpio-a" now it most likely will contain
> the address.unit-name notation from Device Tree, since this is visible
> in /proc/interrupts one might consider this to be an ABI breakage.
> 

Oops my bad. I'd even been told as much from another patch. Fixed in
v3.

> > +		irqc->irq_ack = nsp_gpio_irq_ack;
> > +		irqc->irq_mask = nsp_gpio_irq_mask;
> > +		irqc->irq_unmask = nsp_gpio_irq_unmask;
> > +		irqc->irq_set_type = nsp_gpio_irq_set_type;
> >  
> > -			irq_set_chip_and_handler(irq, &nsp_gpio_irq_chip,
> > -						 handle_simple_irq);
> > -			irq_set_chip_data(irq, chip);
> > -		}
> > +		val = readl(chip->base + NSP_CHIP_A_INT_MASK);
> > +		val = val | NSP_CHIP_A_GPIO_INT_BIT;
> > +		writel(val, (chip->base + NSP_CHIP_A_INT_MASK));
> >  
> >  		/* Install ISR for this GPIO controller. */
> > -		ret = devm_request_irq(&pdev->dev, irq, nsp_gpio_irq_handler,
> > -				       IRQF_SHARED, "gpio-a", chip);
> > +		ret = devm_request_irq(dev, irq, nsp_gpio_irq_handler,
> > +				       IRQF_SHARED, "gpio-a", &chip->gc);
> >  		if (ret) {
> >  			dev_err(&pdev->dev, "Unable to request IRQ%d: %d\n",
> >  				irq, ret);
> > -			goto err_rm_gpiochip;
> > +			return ret;
> >  		}
> >  
> > -		val = readl(chip->base + NSP_CHIP_A_INT_MASK);
> > -		val = val | NSP_CHIP_A_GPIO_INT_BIT;
> > -		writel(val, (chip->base + NSP_CHIP_A_INT_MASK));
> > +		girq = &chip->gc.irq;
> > +		girq->chip = irqc;
> > +		/* This will let us handle the parent IRQ in the driver */
> > +		girq->parent_handler = NULL;
> > +		girq->num_parents = 0;
> > +		girq->parents = NULL;
> > +		girq->default_type = IRQ_TYPE_NONE;
> > +		girq->handler = handle_simple_irq;
> 
> It might be worth creating a helper that can be called to initialize all
> relevant members to the values that indicate: let me manage the
> interrupt. This would make us more future proof with respect to
> assumptions being made in gpiolib as well as if new fields are added in
> the future. This would be a separate patch obviously.

For now I'll leave this as-is. Linus W was thinking about what an API
for devices requiring shared irqs would look like. If that happens soon
then then this driver could switch to use this API. If it's going to be
a while I'll look at adding a helper as suggested and updating the 3
drivers that I know of that could benefit from it.

> 
> Other than that:
> 
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
