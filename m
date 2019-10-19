Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6346CDD993
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 18:05:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4TezASqC3Upe5CCiorDaqR31v9vz1MC//VmKgCPHn58=; b=LWNLuZGLyyKQsK
	ngiHJ0ysuB8BIBQV0JTybkz6EmJK47w2r+Fna0mNR6ZYRz0gYc3k9CyyD5xiUoIbF0W8XM9yugJTw
	wrX+q7UMSKYl8BDld8YljDecpwSf2JK3tLQ+YJLRNDfc4Ngs6+XgLp4LRGakyPY/G4mCtZIuilMMk
	HFERlREOSmEzMivjqsvKJv3Q9j0Y0SjwLzGlDqOs6yBn7DhgEk8Vva25tN2Tn8RHr4H7VjXONedcP
	l0wERzlSVqSTkoZSucqgaUIeKmB4ix1tV0rycYFEebHERXiq7cgwXzH+HP8MTnj0sTtJZKDb1DbAF
	p4QDCuwOmJwfIrrx4tzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLrES-0002lg-W9; Sat, 19 Oct 2019 16:05:33 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLrEK-0002kW-B3
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 16:05:26 +0000
Received: by mail-pl1-x644.google.com with SMTP id d22so4374438pls.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 19 Oct 2019 09:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=if4J4OgwfiN0nuHNDveKFrieOk+JvNfoIIbUEv3+cXc=;
 b=xldzWlYehnsHSzax+Grwy/OCfGyxfdF8CbYr7b5ajVBIXZjHn6/qNlENK/bDIMTjOv
 cbURxz6Jm1NBffNfDppnKGHp+ZYngR70NwwOXubKE028F4xXO+Yl76sPnermpnzdFFzc
 VAixnrTLSu+hOsxu26ni+2ZUnna9z1JbPN1jCb/0i6C/kS835njSSP2H92Z7qewxkOre
 mJB2vZ8lzOxEz/5t6fLjK8z98+1taapj+2e+z8+sLIYw+/VxQiu6Za/Z9wOXLbQsLblp
 gWnybt9VK1UdBx3eHz7x0iV0qsEhsFN2pU/pys2rACoNFcT8MluntRujrQjYkDIISG25
 i3yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=if4J4OgwfiN0nuHNDveKFrieOk+JvNfoIIbUEv3+cXc=;
 b=o8OUTQP8idZt5JaJvq34qKtQNVd9tK0AusBS5zYfcwzZcR9f00NWpsCUZvb7mrgl+T
 8J6dTk4Kp3oX4PvQsT5WNLVhi926raGkZboGbKWZdllg+JcyY/kzaMcl7ZejwSCw8Gee
 oMFw5MP3t8EFgSbh+w22AXkykLihm/3l0fNmzzhEs3tx/y7xdHye5xydVOxvqMnPmoYh
 DUHblVsUlJmuNiNCQf8HwLr9thRIF14+t66IsLx2E3NkVOaNZ1BHUc89M/qOwgmFqJa/
 Cbq4QwRwjT1ZPr7tc/P/2PGMWYSYFrKm1zBBo9mYk2tHIVcwCKVYQVicHhOo+BwlNaF7
 xgxw==
X-Gm-Message-State: APjAAAVFk6bbwZhF89bF1HrpCawQVQ9rIVHAfavsb5Uu14CzLNXzIo9t
 Aa+vsX+3dCPV/XK3VmfH+F3V
X-Google-Smtp-Source: APXvYqzxTyoVM/nCPhOi4590sHGLCt9a7zfWKZa1YFUHhDMOloiiBNQLsoPqoinoRGsW+JQAVUD7gg==
X-Received: by 2002:a17:902:aa41:: with SMTP id
 c1mr10283530plr.153.1571501119997; 
 Sat, 19 Oct 2019 09:05:19 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:1f:c4d3:81c6:faf1:b3a2:6750])
 by smtp.gmail.com with ESMTPSA id m19sm8557620pjl.28.2019.10.19.09.05.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 19 Oct 2019 09:05:19 -0700 (PDT)
Date: Sat, 19 Oct 2019 21:35:13 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2 3/4] gpio: Add RDA Micro GPIO controller support
Message-ID: <20191019160513.GA17631@Mani-XPS-13-9360>
References: <20191015173026.9962-1-manivannan.sadhasivam@linaro.org>
 <20191015173026.9962-4-manivannan.sadhasivam@linaro.org>
 <CACRpkdZRY138RAf8N2xGam89r66ik2vW44OZx0bDcCt4P2GBLA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdZRY138RAf8N2xGam89r66ik2vW44OZx0bDcCt4P2GBLA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_090524_415050_60AC1449 
X-CRM114-Status: GOOD (  34.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-unisoc@lists.infradead.org, Orson Zhai <orsonzhai@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Thanks for the review! Please see comments inline.

On Wed, Oct 16, 2019 at 02:41:32PM +0200, Linus Walleij wrote:
> Hi Manivannan!
> 
> Thanks for your patch!
> 
> On Tue, Oct 15, 2019 at 7:30 PM Manivannan Sadhasivam
> <manivannan.sadhasivam@linaro.org> wrote:
> 
> > Add support for GPIO controller from RDA Micro.
> >
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> Please use a little bit more verbose commit message, who
> made this hardware and what is it for. If you know!
> 

okay.

> > +config GPIO_RDA
> > +       bool "RDA Micro GPIO controller support"
> > +       depends on ARCH_RDA || COMPILE_TEST
> > +       depends on OF_GPIO
> > +       select GPIOLIB_IRQCHIP
> 
> select GPIO_GENERIC
> 

hmm.. I don't think this driver can use it. Please see the justification
below.

> > +#include <linux/bitops.h>
> 
> Do you need this or just <linux/bits.h>?
> 

I need this for for_each_set_bit() macro.

> > +#define RDA_GPIO_OEN_VAL               0x00
> > +#define RDA_GPIO_OEN_SET_OUT           0x04
> > +#define RDA_GPIO_OEN_SET_IN            0x08
> > +#define RDA_GPIO_VAL                   0x0c
> > +#define RDA_GPIO_SET                   0x10
> > +#define RDA_GPIO_CLR                   0x14
> > +#define RDA_GPIO_INT_CTRL_SET          0x18
> > +#define RDA_GPIO_INT_CTRL_CLR          0x1c
> > +#define RDA_GPIO_INT_CLR               0x20
> > +#define RDA_GPIO_INT_STATUS            0x24
> 
> This is a very clear cut MMIO GPIO so use GPIO_GENERIC with this
> hardware.
> 

So, I'd be happy to use gpio-mmio driver if applicable. In fact, I looked into
that while starting to write this driver since most of the `set*` APIs are
like dups. But one thing which blocked me was, `gpio_get` API.

As you can see in this driver, there are 2 separate registers needs to be
read in order to get the value. RDA_GPIO_VAL needs to be read when the pin
is in input state and RDA_GPIO_SET needs to be read when the pin is in output
state.

The MMIO driver relies on a single `dat` register to read the GPIO state and
this won't fit for this driver and hence my justification for not using it.

> > +static void rda_gpio_update(struct gpio_chip *chip, unsigned int offset,
> > +                           u16 reg, int val)
> 
> Maybe keep this if it saves code from the IRQ callbacks,
> inline it to register writes if it doesn't get called much.
> 

It is being called from multiple places, so I'd like to keep it as a normal
function.

> > +static int rda_gpio_direction_input(struct gpio_chip *chip, unsigned int offset)
> > +static int rda_gpio_direction_output(struct gpio_chip *chip,
> > +                                    unsigned int offset, int value)
> > +static int rda_gpio_get(struct gpio_chip *chip, unsigned int offset)
> > +static void rda_gpio_set(struct gpio_chip *chip, unsigned int offset, int value)
> 
> This can all be replaces by select GPIO_GENERIC and passing
> the right offsets into bgpio_init(). Look at for example
> gpio-ftgpio010.c and the documentation for bgpio_init()
> in gpio-mmio.c for help.
> 
> This will also implement get/set_multiple for you for
> free!
> 
> > +static void rda_gpio_irq_mask(struct irq_data *data)
> > +static void rda_gpio_irq_ack(struct irq_data *data)
> 
> Looks good
> 
> > +static int rda_gpio_set_irq(struct gpio_chip *chip, u32 offset,
> > +                           unsigned int flow_type)
> 
> Maybe _setup_irq()? Not sure, just that the name doesn't
> obviously imply how it is used as it is called from two
> places.
> 

Well, this routine sets the irq_type. But it has multiple usecase.
Like, it is being used to unmask as irq and also to set irq type.
So to be in a equillibrium state, I went for rda_gpio_set_irq().

> The rest of the IRQ code looks good!
> 
> > +static int rda_gpio_probe(struct platform_device *pdev)
> > +{
> > +       struct device_node *np = pdev->dev.of_node;
> > +       struct gpio_irq_chip *irq_chip;
> 
> Since irq_chip is the name of a struct in the kernel I usually
> just call this "girq" as in "GPIO irq chip".
> 

Ah, a name change again... will do ;-)

> > +       struct rda_gpio *rda_gpio;
> > +       u32 ngpios;
> > +       int ret;
> 
> Create a struct device *dev = &pdev->dev; helper variable
> to make the following code easier to read. (The pointer
> &pdev->dev is used in many places...)
> 

okay.

> > +       /*
> > +        * Not all ports have interrupt capability. For instance, on
> > +        * RDA8810PL, GPIOC doesn't support interrupt. So we must handle
> > +        * those also.
> > +        */
> > +       rda_gpio->irq = platform_get_irq(pdev, 0);
> > +
> > +       rda_gpio->base = devm_platform_ioremap_resource(pdev, 0);
> > +       if (IS_ERR(rda_gpio->base))
> > +               return PTR_ERR(rda_gpio->base);
> > +
> > +       spin_lock_init(&rda_gpio->lock);
> > +
> > +       rda_gpio->chip.label = dev_name(&pdev->dev);
> > +       rda_gpio->chip.ngpio = ngpios;
> > +       rda_gpio->chip.base = -1;
> > +       rda_gpio->chip.parent = &pdev->dev;
> > +       rda_gpio->chip.of_node = np;
> > +       rda_gpio->chip.get = rda_gpio_get;
> > +       rda_gpio->chip.set = rda_gpio_set;
> > +       rda_gpio->chip.direction_input = rda_gpio_direction_input;
> > +       rda_gpio->chip.direction_output = rda_gpio_direction_output;
> > +
> > +       if (rda_gpio->irq >= 0) {
> > +               rda_gpio->irq_chip.name = "rda-gpio",
> > +               rda_gpio->irq_chip.irq_ack = rda_gpio_irq_ack,
> > +               rda_gpio->irq_chip.irq_mask = rda_gpio_irq_mask,
> > +               rda_gpio->irq_chip.irq_unmask = rda_gpio_irq_unmask,
> > +               rda_gpio->irq_chip.irq_set_type = rda_gpio_irq_set_type,
> > +               rda_gpio->irq_chip.flags = IRQCHIP_SKIP_SET_WAKE,
> > +
> > +               irq_chip = &rda_gpio->chip.irq;
> > +               irq_chip->chip = &rda_gpio->irq_chip;
> > +               irq_chip->handler = handle_bad_irq;
> > +               irq_chip->default_type = IRQ_TYPE_NONE;
> > +               irq_chip->parent_handler = rda_gpio_irq_handler;
> > +               irq_chip->parent_handler_data = rda_gpio;
> > +               irq_chip->num_parents = 1;
> > +               irq_chip->parents = &rda_gpio->irq;
> 
> That works but ... please devm_kzalloc() like the other drivers
> do:
> 
> girq->parents = devm_kcalloc(dev, 1, sizeof(*girq->parents),
>                                      GFP_KERNEL);
>         if (!girq->parents) {
>                 ret = -ENOMEM;
> (...)
> 
> Unless you have a real good reason to optimize it. I just
> want it to follow the pattern since I want to minimize
> cognitive stress for the maintainers. (Me.)
> 

no issues for me, will do.

Thanks,
Mani

> Yours,
> Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
