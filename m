Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E180D5880
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 00:08:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VGB+D26cMUHITIOnwWZWaXwt632HP25qeTOZr/vszYo=; b=lMr210Lf6ekk5e
	kgjj6Vv2Hw4tT6TZOhYgrmZxyRWS55w23APx/6S/wqt3XYtG9ocFiHw/VOjSfX2c5HecpL/CPd4tE
	ztb/fp6/v/mExla6QkaPjMxX9nb3B4x/w3ibAsVdikjZ8G2z1Jl3sijDH0hU74RQP3E13KnyDHEEe
	bOu19L0IGOX+H2StziLaXdEul87J3qzF3JP45v7s5CnUENS0ORVmujF+VdW2NAzXS7wd2j7gQK+XS
	ZaPvcOH5Lw0zzA2H0HS0PGyBmbyJdUDHqB/4DnU9Ls1bbdDqgKH8Kv5suRf99m/xehOVlfCkWf4FM
	1+hdyKDhVj7ihbD7Or5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJm2M-00042K-MF; Sun, 13 Oct 2019 22:08:26 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJm2D-00041B-Ag
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 22:08:19 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 4122D886BF;
 Mon, 14 Oct 2019 11:08:11 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1571004491;
 bh=ZiwZMJ1kog+luCdZE9iO2rK7RG0tvwIOK0Jnl3NwuK8=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=U3vIMeOYVUYBwAjqtvQGPDwcc3l8jC5B2fijA9rP1l2Ih7HPceCHMJ0Q68RXdmOiV
 4idxBq5MgS6C6aUjej5CtOGHQZLzfS1J1m9Kd0FX1ClLhbIUNujoaN9ztAUO9esucQ
 5wo91chIBvQLRNXbw5QV4g0YvPcr8YOlpYUSTW/nWw92PYo3SkR/X8n3+gGVGQhYYY
 +u+i8J5AJDayPdeD2XliRJQDWWppYQnRG/d1LaBk3UPaVPgMPMsecOZrK7sWc8rSL7
 lLuRcmP8i945XelgiCHKs7z5kdGF88waWG1mZ32hMSCD5eetisOZKlD5nSuLatwWcD
 hCbtm6imDyitQ==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5da3a04a0000>; Mon, 14 Oct 2019 11:08:10 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1156.6; Mon, 14 Oct 2019 11:08:10 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Mon, 14 Oct 2019 11:08:10 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>
Subject: Re: [PATCH 2/2] gpio: Add xgs-iproc driver
Thread-Topic: [PATCH 2/2] gpio: Add xgs-iproc driver
Thread-Index: AQHVelKfqTMwtSZC+US1bwD5O3MSY6dUQJAAgAQWQgA=
Date: Sun, 13 Oct 2019 22:08:10 +0000
Message-ID: <628c495994a0648d956bc663ea8fdcfa6f439802.camel@alliedtelesis.co.nz>
References: <20191004012525.26647-1-chris.packham@alliedtelesis.co.nz>
 <20191004012525.26647-3-chris.packham@alliedtelesis.co.nz>
 <CACRpkdYWLTjiSQo_VTeReL1CfEO3h_8ONbdCk=PD1x+oc2ggCg@mail.gmail.com>
In-Reply-To: <CACRpkdYWLTjiSQo_VTeReL1CfEO3h_8ONbdCk=PD1x+oc2ggCg@mail.gmail.com>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:94ca:f8ed:f039:abe3]
Content-ID: <C238D1579C45FD4AA892222FA25F7AA2@atlnz.lc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_150817_755371_F5160A77 
X-CRM114-Status: GOOD (  35.23  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "sbranden@broadcom.com" <sbranden@broadcom.com>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "rjui@broadcom.com" <rjui@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Richard Laing <Richard.Laing@alliedtelesis.co.nz>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-10-11 at 09:43 +0200, Linus Walleij wrote:
> Hi Chris!
> 
> Thanks for your patch!
> 
> On Fri, Oct 4, 2019 at 3:25 AM Chris Packham
> <chris.packham@alliedtelesis.co.nz> wrote:
> 
> > This driver supports the Chip Common A GPIO controller present on a
> > number of Broadcom switch ASICs with integrated SoCs. The controller is
> > similar to the pinctrl-nsp-gpio and pinctrl-iproc-gpio blocks but
> > different enough that a separate driver is required.
> > 
> > This has been ported from Broadcom's XLDK 5.0.3 retaining only the CCA
> > support (pinctrl-iproc-gpio covers CCB).
> > 
> > Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> 
> (...)
> 
> > +config GPIO_XGS_IPROC
> > +       tristate "BRCM XGS iProc GPIO support"
> > +       depends on OF_GPIO && (ARCH_BCM_IPROC || COMPILE_TEST)
> > +       select GPIO_GENERIC
> > +       select GPIOLIB_IRQCHIP
> 
> Nice reuse of abstractions.
> 
> > +static u32 iproc_gpio_readl(struct iproc_gpio_chip *chip, int reg)
> > +{
> > +       return readl(chip->base + reg);
> > +}
> > +
> > +static void iproc_gpio_writel(struct iproc_gpio_chip *chip, u32 val, int reg)
> > +{
> > +       writel(val, chip->base + reg);
> > +}
> 
> These wrappers don't really add anything do they? Just inline the
> direct readl()/writel() to base + reg everywhere instead.
> 

Will do.

> > +/* returns the corresponding gpio register bit */
> > +static int iproc_irq_to_gpio(struct iproc_gpio_chip *chip, u32 irq)
> > +{
> > +       struct irq_data *data = irq_domain_get_irq_data(chip->irq_domain, irq);
> > +
> > +       return data->hwirq;
> > +}
> 
> I would name it something clearer since "gpio" is pretty ambigous.
> 
> Like iproc_irq_to_gpio_offset()
> 
> Maybe this is also a bit of unnecessary wrapper?
> 

I'll look into it. We might already have the irq_data we need so the
callers could use "pin = d->hwirq;".

> > +static irqreturn_t iproc_gpio_irq_handler(int irq, void *data)
> > +{
> > +       struct iproc_gpio_chip *chip = (struct iproc_gpio_chip *)data;
> > +       struct gpio_chip gc = chip->gc;
> > +       int bit;
> > +       unsigned long int_bits = 0;
> > +       u32 int_status;
> > +
> > +       /* go through the entire GPIOs and handle all interrupts */
> > +       int_status = readl(chip->intr + CCA_INT_STS);
> > +       if (int_status & CCA_INT_F_GPIOINT) {
> > +               u32 event, level;
> > +
> > +               /* Get level and edge interrupts */
> > +               event = readl(chip->base + GPIO_CCA_INT_EVENT_MASK);
> > +               event &= readl(chip->base + GPIO_CCA_INT_EVENT);
> > +               level = readl(chip->base + GPIO_CCA_DIN);
> > +               level ^= readl(chip->base + GPIO_CCA_INT_LEVEL);
> > +               level &= readl(chip->base + GPIO_CCA_INT_LEVEL_MASK);
> > +               int_bits = level | event;
> > +
> > +               for_each_set_bit(bit, &int_bits, gc.ngpio)
> > +                       generic_handle_irq(
> > +                               irq_linear_revmap(chip->irq_domain, bit));
> > +       }
> > +
> > +       return  int_bits ? IRQ_HANDLED : IRQ_NONE;
> > +}
> 
> I think this should be a chained interrupt handler (see below how to
> register it).
> 
> See e.g. drivers/gpio/gpio-ftgpio010.c for an example:
> change function prototype, no return value, use
> chained_irq_enter/exit(irqchip, desc); etc.
> 

I don't think a chained interrupt handler can work. The problem is that
the parent irq on the SoC is shared between the gpio and uart0 (why
it's this way with two IP blocks in the same SoC I'll never know). When
a chained interrupt handler is registered I lose the serial interrupts.
Please correct me if there is some way to make the chained handlers
deal with sharing interrupts.

> > +static int iproc_gpiolib_input(struct gpio_chip *gc, u32 gpio)
> > +static int iproc_gpiolib_output(struct gpio_chip *gc, u32 gpio, int value)
> > +static void iproc_gpiolib_set(struct gpio_chip *gc, u32 gpio, int value)
> > +static int iproc_gpiolib_get(struct gpio_chip *gc, u32 gpio)
> 
> These callbacks seems to reimplement parts of GPIO_GENERIC
> that you should already be using.
> 
> Again look at drivers/gpio/gpio-ftgpio010.c() use bgpio_init()
> to set up the library callbacks, look in
> drivers/gpio/gpio-mmio.c for kerneldoc on the function.
> 

Will look into it.

> > +static int iproc_gpiolib_to_irq(struct gpio_chip *gc, u32 offset)
> > +{
> > +       struct iproc_gpio_chip *chip = gpiochip_get_data(gc);
> > +
> > +       return irq_linear_revmap(chip->irq_domain, offset);
> > +}
> 
> GPIOLIB_IRQCHIP provides a .to_irq() implementation
> so drop this and let the library handle this.
> 

Will that work if I've squirreled the irq_domain away in struct
iproc_gpio_chip? See above as to why I'm not using the embedded
gpio_irq_chip.

> > +static int iproc_gpio_probe(struct platform_device *pdev)
> > +{
> > +       struct device *dev = &pdev->dev;
> > +       struct device_node *dn = pdev->dev.of_node;
> > +       struct iproc_gpio_chip *chip;
> > +       u32 num_gpios;
> > +       int irq, ret;
> > +
> > +       chip = devm_kzalloc(dev, sizeof(*chip), GFP_KERNEL);
> > +       if (!chip)
> > +               return -ENOMEM;
> > +
> > +       chip->dev = dev;
> > +       platform_set_drvdata(pdev, chip);
> > +
> > +       chip->gc.label = dev_name(dev);
> > +
> > +       chip->base = devm_platform_ioremap_resource(pdev, 0);
> > +       if (IS_ERR(chip->base))
> > +               return PTR_ERR(chip->base);
> > +
> > +       /* Get number of GPIO pin */
> > +       if (of_property_read_u32(dn, "ngpios", &num_gpios)) {
> > +               dev_err(dev, "missing ngpios DT property\n");
> > +               return -EINVAL;
> > +       }
> 
> Maybe provide a sensible default?
> 

I don't know that there is one. On the particular SoC I have the number
is 12 but the datasheets I have access to are really hard to follow
(the SoC part is tacked on to the end of the datasheet for the switch
ASIC). 32 would be vaguely sane since they're all 32-bit wide
registers.

> > +       chip->gc.ngpio = num_gpios;
> > +       chip->gc.parent = dev;
> > +       chip->gc.of_node = dn;
> > +       chip->gc.direction_input = iproc_gpiolib_input;
> > +       chip->gc.direction_output = iproc_gpiolib_output;
> > +       chip->gc.set = iproc_gpiolib_set;
> > +       chip->gc.get = iproc_gpiolib_get;
> 
> Drop this and call bgpio_init() to set up the callbacks
> instead. However, set up .ngpio *after* calling
> bgpio_init() so users can't access the nonexisting
> gpios.
> 
> > +       chip->gc.to_irq = iproc_gpiolib_to_irq;
> 
> Drop this and use the GPIOLIB_IRQCHIP.
> 
> > +       ret = gpiochip_add_data(&chip->gc, chip);
> > +       if (ret) {
> > +               dev_err(dev, "unable to add GPIO chip\n");
> > +               return ret;
> > +       }
> 
> Why not use devm_gpiochip_add_data()?
> 
> > +       irq = platform_get_irq(pdev, 0);
> > +       if (irq > 0) {
> > +               u32 val, count;
> > +               struct irq_chip *irqc;
> > +
> > +               irqc = &chip->irqchip;
> > +               irqc->name = dev_name(dev);
> > +               irqc->irq_ack = iproc_gpio_irq_ack;
> > +               irqc->irq_mask = iproc_gpio_irq_mask;
> > +               irqc->irq_unmask = iproc_gpio_irq_unmask;
> > +               irqc->irq_set_type = iproc_gpio_irq_set_type;
> > +               irqc->irq_enable = iproc_gpio_irq_unmask;
> > +               irqc->irq_disable = iproc_gpio_irq_mask;
> > +               chip->intr = devm_platform_ioremap_resource(pdev, 1);
> > +               if (IS_ERR(chip->intr))
> > +                       return PTR_ERR(chip->intr);
> 
> Move all this above the [devm_]gpiochip_add_data()
> call and add:
> 
> struct gpio_irq_chip *girq;
> 
> girq = &chip->gc.irq;
> girq->chip = irqc;
> 
> etc follow the pattern from other drivers like the
> mentioned ftgpio010.c.
> 
> > +               /* Create irq domain */
> > +               chip->irq_domain = irq_domain_add_linear(dn, num_gpios,
> > +                               &irq_domain_simple_ops, chip);
> > +
> > +               if (!chip->irq_domain) {
> > +                       dev_err(dev, "Couldn't allocate IRQ domain\n");
> > +                       ret = -ENODEV;
> > +                       goto err_irq_domain;
> > +               }
> > +
> > +               /* Map each gpio pin to an IRQ and set the handler */
> > +               for (count = 0; count < num_gpios; count++) {
> > +                       int irq;
> > +
> > +                       irq = irq_create_mapping(chip->irq_domain, count);
> > +                       irq_set_chip_and_handler(irq, irqc, handle_simple_irq);
> > +                       irq_set_chip_data(irq, chip);
> > +               }
> 
> Drop this and let the generic GPIO irqchip handle
> the domain.
> 
> > +               /* Enable GPIO interrupts for CCA GPIO */
> > +               val = readl(chip->intr + CCA_INT_MASK);
> > +               val |= CCA_INT_F_GPIOINT;
> > +               writel(val, chip->intr + CCA_INT_MASK);
> 
> Move this before registering the chip.
> 
> > +               /* Install ISR for this GPIO controller */
> > +               ret = devm_request_irq(dev, irq, iproc_gpio_irq_handler,
> > +                                      IRQF_SHARED, chip->gc.label, chip);
> > +               if (ret) {
> > +                       dev_err(dev, "Fail to request IRQ%d: %d\n", irq, ret);
> > +                       goto err_irq_request;
> > +               }
> 
> Drop this and use the gpiolib irqchip library.

As I've said above I'm not sure I can due to sharing interrupts with
uart0. I'd be happy to be proven wrong as the generic irq code removes
a great deal of boiler plate for me.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
