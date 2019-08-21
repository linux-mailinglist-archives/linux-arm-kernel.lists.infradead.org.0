Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D68B297CDE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 16:27:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pC0zt8HSJ/pv/Mad2x4ab8aZ5L/Sx7OOxyjRHtkV4gQ=; b=bRPnarYc8tIZ42
	f6fyOMD1akY5f8XFFHa81c9OR43B8fjpNL7fZbntbN8AwMeOtGuOtUJwxYmv5fhyO8fVn5onMqxiP
	GyahPnag2KigpMZFMWMg9CKK7VCQc30GNF5Z+NgJeSzvYpSsjdFrJ9xNqgZ4TEdrmRC/GyVCl7Lz1
	mzlZSNIj2ZFrP7m+KZMmdpg11X1vcpwYbEcj1I46qTsgiR5wWWlpJlEISe82I6jIEx7QjN2ykYlNG
	3IB/U9/d2pTv+z69gNJBbxDuD7oATqXhdGW0VAMSi1Ugk+pYN9kOIWoPT3mdFJnUNzzGMNfk84j+q
	32Nlol22zfXGA5QAszPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0RZp-0005Pm-31; Wed, 21 Aug 2019 14:27:05 +0000
Received: from atlmailgw2.ami.com ([63.147.10.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0RYf-0004U7-My
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 14:25:58 +0000
X-AuditID: ac10606f-d11ff70000003324-16-5d5d546dd669
Received: from atlms1.us.megatrends.com (atlms1.us.megatrends.com
 [172.16.96.144])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw2.ami.com (Symantec Messaging Gateway) with SMTP id
 C0.22.13092.D645D5D5; Wed, 21 Aug 2019 10:25:49 -0400 (EDT)
Received: from hongweiz-Ubuntu-AMI.us.megatrends.com (172.16.98.93) by
 atlms1.us.megatrends.com (172.16.96.144) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 21 Aug 2019 10:25:49 -0400
From: Hongwei Zhang <hongweiz@ami.com>
To: Andrew Jeffery <andrew@aj.id.au>, Linus Walleij
 <linus.walleij@linaro.org>, <linux-gpio@vger.kernel.org>
Subject: [v7 2/2] gpio: aspeed: Add SGPIO driver
Date: Wed, 21 Aug 2019 10:25:21 -0400
Message-ID: <1566397521-987-1-git-send-email-hongweiz@ami.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564603297-1391-3-git-send-email-hongweiz@ami.com>
References: <1564603297-1391-1-git-send-email-hongweiz@ami.com>
MIME-Version: 1.0
X-Originating-IP: [172.16.98.93]
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrFLMWRmVeSWpSXmKPExsWyRiBhgm5eSGysQc8WRotdlzksvsw9xWLx
 +/xfZospf5YzWWx6fI3Vonn1OWaLzfP/MFpc3jWHzYHD42r7LnaP9zda2T0ufjzG7HHn2h42
 j81L6j3Oz1jI6PF5k1wAexSXTUpqTmZZapG+XQJXxsvmU+wF30QrDtz4wdrAeEugi5GTQ0LA
 ROLxv1nMXYxcHEICu5gk7j1aAOUcZpQ4+2gSG0gVm4CaxN7Nc5hAbBGBPInD69+yghQxCzxm
 lNj9agNQEQeHsICBxLEVeiA1LAKqEs0nvjGChHkF7CRe9RRCLJOTuHmukxnE5hRwkPh2ZikT
 SImQgL3E1O/VIGFeAUGJkzOfsIDYzAISEgdfvAArFxKQlbh16DETxBgFied9j1kmMArMQtIy
 C0nLAkamVYxCiSU5uYmZOenlRnqJuZl6yfm5mxgh4Z2/g/HjR/NDjEwcjIcYJTiYlUR4K+ZE
 xQrxpiRWVqUW5ccXleakFh9ilOZgURLnXbXmW4yQQHpiSWp2ampBahFMlomDU6qBMaN26021
 Rc+yboS911XPNT16UXBaXcXDd0cdW33z/wiW3y7e53mQ9bWP7vdFc/RWP9X8nXj6/7mjUxdH
 LvvhzjI1N1pLf81hPu0PLUs2+s54UJi+4v1jNu9qHTPPLKG/l3haWosFnNOeOV7w/RLGuitm
 SpBe/II+iZOPdQ5Wisrf/NOret81TomlOCPRUIu5qDgRAOsOQLZdAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_072553_890236_933072CE 
X-CRM114-Status: GOOD (  20.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [63.147.10.42 listed in list.dnswl.org]
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
Cc: linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Joel Stanley <joel@jms.id.au>,
 Hongwei Zhang <hongweiz@ami.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Linus,

Thanks for your review! I just submitted v8 to the list, please help to review it again.

Since you have already merged the dt-binding document [v7 1/2], and I don't have your
update to this file, so to avoid confusion, I only include the driver code in v8.

Regards,
--Hongwei 

P.S. sorry previous response used wrong In-Reply-To ID, so resent it again.

> From:	Linus Walleij <linus.walleij@linaro.org>
> Sent:	Wednesday, August 14, 2019 4:09 AM
> To:	Hongwei Zhang
> Cc:	Andrew Jeffery; open list:GPIO SUBSYSTEM; Joel Stanley; linux-aspeed; Bartosz Golaszewski; 
> linux-kernel@vger.kernel.org; Linux ARM
> Subject:	Re: [v7 2/2] gpio: aspeed: Add SGPIO driver
> 
> Hi Hongwei,
> 
> thanks for your patch!
> 
> I have now merged the bindings so you only need to respin this patch.
> 
> On Wed, Jul 31, 2019 at 10:02 PM Hongwei Zhang <hongweiz@ami.com> wrote:
> 
> > Add SGPIO driver support for Aspeed AST2500 SoC.
> >
> > Signed-off-by: Hongwei Zhang <hongweiz@ami.com>
> > Reviewed-by:   Andrew Jeffery <andrew@aj.id.au>
> 
> I guess I need to go with this, there are some minor things I still want to be fixed:
> 
> > +static void __aspeed_sgpio_set(struct gpio_chip *gc, unsigned int 
> > +offset, int val)
> 
> I don't like __underscore_functions because their semantic is ambiguous.
> 

done, please see v8.

> Rename this something like aspeed_sgpio_commit() or whatever best fits the actual use.
> 
> > +static int aspeed_sgpio_setup_irqs(struct aspeed_sgpio *gpio,
> > +                                  struct platform_device *pdev) {
> (...)
> > +       rc = gpiochip_irqchip_add(&gpio->chip, &aspeed_sgpio_irqchip,
> > +                                 0, handle_bad_irq, IRQ_TYPE_NONE);
> (...)
> > +       gpiochip_set_chained_irqchip(&gpio->chip, &aspeed_sgpio_irqchip,
> > +                                    gpio->irq, 
> > + aspeed_sgpio_irq_handler);
> 
> We do not set up chained irqchips like this anymore, sorry.
> 
> I am currently rewriting all existing chained drivers to pass an initialized irqchip when registering the 
> whole gpio chip.
> See drivers/gpio/TODO.
> 
> Here are examples:
> https://lore.kernel.org/linux-gpio/20190811080539.15647-1-linus.walleij@linaro.org/
> https://lore.kernel.org/linux-gpio/20190812132554.18313-1-linus.walleij@linaro.org/
> 

done, please see v8.

> > +       /* set all SGPIO pins as input (1). */
> > +       memset(gpio->dir_in, 0xff, sizeof(gpio->dir_in));
> 
> Do the irqchip set-up here, before adding the gpio_chip.
> 
> > +       rc = devm_gpiochip_add_data(&pdev->dev, &gpio->chip, gpio);
> > +       if (rc < 0)
> > +               return rc;
> > +
> > +       return aspeed_sgpio_setup_irqs(gpio, pdev);
> 
> Yours,
> Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
