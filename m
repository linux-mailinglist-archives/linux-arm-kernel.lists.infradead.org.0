Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 381867CE4C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:27:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YrGTOJHdkCekQgiabKfr3wepX4JkAHEWuqwUYC3c+wo=; b=BT2Gei3/0Fm/+t
	JpQcAQzerFLs71a0TABNYiRpgSbshT0xiuPponDammEZNuiQYbCwwYtd1HxOyiYbXClJrWOkIxqyH
	RYyaJ/w9seo93/M678+EY2HQTIFMMLGMQPw2B86xjte9P2yi2z6kwh+tHISnycMAcv6PcVKQXS6ie
	etNEs4FovUGxYhR6ZYhyyxeKyNqUtcizhKayTWKphdb3h1000CN+j67m9jsBUBKhhpc6QXuPsCSBb
	b4sfvw22HrohbYXSSojPzei7mdUSRtLN0XK/eZ42Fo9jKkWvZQ1SDSovdEMaj1NJKlJVGDynqoCv3
	YWeeYcogd7njQRoonZgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvC0-000207-2o; Wed, 31 Jul 2019 20:27:24 +0000
Received: from atlmailgw2.ami.com ([63.147.10.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvBs-0001zN-Gf
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:27:17 +0000
X-AuditID: ac10606f-d11ff70000003324-75-5d41f9a38aec
Received: from atlms1.us.megatrends.com (atlms1.us.megatrends.com
 [172.16.96.144])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw2.ami.com (Symantec Messaging Gateway) with SMTP id
 AC.A0.13092.3A9F14D5; Wed, 31 Jul 2019 16:27:15 -0400 (EDT)
Received: from hongweiz-Ubuntu-AMI.us.megatrends.com (172.16.98.93) by
 atlms1.us.megatrends.com (172.16.96.144) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 31 Jul 2019 16:27:14 -0400
From: Hongwei Zhang <hongweiz@ami.com>
To: Andrew Jeffery <andrew@aj.id.au>, Linus Walleij
 <linus.walleij@linaro.org>, linux-gpio <linux-gpio@vger.kernel.org>, Joel
 Stanley <joel@jms.id.au>
Subject: [v6 2/2] gpio: aspeed: Add SGPIO driver
Date: Wed, 31 Jul 2019 16:25:45 -0400
Message-ID: <1564604745-1639-1-git-send-email-hongweiz@ami.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564500268-2627-3-git-send-email-hongweiz@ami.com>
References: <1564500268-2627-3-git-send-email-hongweiz@ami.com>
MIME-Version: 1.0
X-Originating-IP: [172.16.98.93]
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDLMWRmVeSWpSXmKPExsWyRiBhgu7in46xBqv3KVjsusxh8WXuKRaL
 3+f/MltM+bOcyWLT42usFs2rzzFbbJ7/h9Hi8q45bA4cHlfbd7F7vL/Ryu5x8eMxZo871/aw
 eWxeUu9xfsZCRo/Pm+QC2KO4bFJSczLLUov07RK4Mto+/GYruCtRcfn/ctYGxgvCXYycHBIC
 JhKtS84wdTFycQgJ7GKSeLtsCQuEc5hRYue3u4wgVWwCahJ7N88BqxIRmMUocevJLDaQBLPA
 HUaJDd3ZILawgIHEz8VP2bsYOThYBFQltj2SAgnzCthLXOg8wASxTU7i5rlOZhCbU8BBYv6V
 frC4EEjNi3UsEPWCEidnPmGBGC8hcfDFC2aIGlmJW4ceQ81RkHje95hlAiPQMQgts5C0LGBk
 WsUolFiSk5uYmZNebqSXmJupl5yfu4kREuL5Oxg/fjQ/xMjEwXiIUYKDWUmEd7G4fawQb0pi
 ZVVqUX58UWlOavEhRmkOFiVx3lVrvsUICaQnlqRmp6YWpBbBZJk4OKUaGNk0O9+mbH/U0dLm
 9kJg8hLdiVrTQ+senJu/PCgv4FhQ+xbZf7Yin2esuST96fnD15oz7MwXzPzsu7h5d3i69pV9
 9Tybvx7KYBVzSfdeJCr9xEq4YWbwHssw/6cpnZ/SI03YJlzQmaQ2/ap37OPVxwOUOX7O32OT
 k514jvf3ti9R6l/3Xb+Y2qzEUpyRaKjFXFScCAD4HFqxXwIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_132716_614878_52ED027B 
X-CRM114-Status: GOOD (  21.46  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [63.147.10.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Hongwei Zhang <hongweiz@ami.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Andrew,
Thanks so much for your help.

> From:	Andrew Jeffery <andrew@aj.id.au>
> Sent:	Tuesday, July 30, 2019 8:19 PM
> To:	Hongwei Zhang; Linus Walleij; linux-gpio@vger.kernel.org
> Cc:	Joel Stanley; linux-aspeed@lists.ozlabs.org; Bartosz Golaszewski; linux-kernel@vger.kernel.org; 
> linux-arm-kernel@lists.infradead.org
> Subject:	Re: [v6 2/2] gpio: aspeed: Add SGPIO driver
> 
> 
> 
> On Wed, 31 Jul 2019, at 00:55, Hongwei Zhang wrote:
> > Add SGPIO driver support for Aspeed AST2500 SoC.
> > 
> > Signed-off-by: Hongwei Zhang <hongweiz@ami.com>
> > ---
> >  drivers/gpio/sgpio-aspeed.c | 521 
> > ++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 521 insertions(+)
> >  create mode 100644 drivers/gpio/sgpio-aspeed.c
> > 
> > diff --git a/drivers/gpio/sgpio-aspeed.c b/drivers/gpio/sgpio-aspeed.c 
> > new file mode 100644 index 0000000..9a17b1a
> > --- /dev/null
> > +++ b/drivers/gpio/sgpio-aspeed.c
> > @@ -0,0 +1,521 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +/*
> > + * Copyright 2019 American Megatrends International LLC.
> > + *
> > + * Author: Karthikeyan Mani <karthikeyanm@amiindia.co.in>  */
> > +
> > +#include <linux/bitfield.h>
> > +#include <linux/clk.h>
> > +#include <linux/gpio/driver.h>
> > +#include <linux/hashtable.h>
> > +#include <linux/init.h>
> > +
> > +static void aspeed_sgpio_set(struct gpio_chip *gc, unsigned int
> > offset, int val)
> > +{
> > +	struct aspeed_sgpio *gpio = gpiochip_get_data(gc);
> > +	const struct aspeed_sgpio_bank *bank = to_bank(offset);
> > +	unsigned long flags;
> > +	void __iomem *addr;
> > +	u32 reg = 0;
> > +
> > +	spin_lock_irqsave(&gpio->lock, flags);
> > +
> > +	addr = bank_reg(gpio, bank, reg_val);
> > +
> > +	if (val)
> > +		reg |= GPIO_BIT(offset);
> > +	else
> > +		reg &= ~GPIO_BIT(offset);
> 
> reg is zero-initialised above and you haven't read from addr to assign to reg, so the else branch is 
> redundant (reg is already zeroed). This path has a bug - you're clearing the state of all GPIOs associated 
> with addr rather than just the GPIO associated with offset.
> 

you're correct, this is fixed in v7.

> > +
> > +	iowrite32(reg, addr);
> > +
> > +	spin_unlock_irqrestore(&gpio->lock, flags); }
> > +
> > +
> > +static int aspeed_sgpio_dir_out(struct gpio_chip *gc, unsigned int
> > offset, int val)
> > +{
> > +	struct aspeed_sgpio *gpio = gpiochip_get_data(gc);
> > +	unsigned long flags;
> > +
> > +	spin_lock_irqsave(&gpio->lock, flags);
> > +	gpio->dir_in[GPIO_BANK(offset)] &= ~GPIO_BIT(offset);
> > +	spin_unlock_irqrestore(&gpio->lock, flags);
> > +
> > +	aspeed_sgpio_set(gc, offset, val);
> 
> In this case you should probably have an unlocked variant of aspeed_sgpio_set() so you can call it inside 
> the the critical section above instead of needing to acquire/release the lock twice (once above and again 
> in aspeed_sgpio_set() as it stands).
> 

moved _sgpio_set() so only one pair of acquire/release lock used.

> Cheers,
> 
> Andrew
> 

Thanks,
--Hongwei

> > +
> > +	return 0;
> > +}
> > +
> > --
> > 2.7.4
> > 
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
