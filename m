Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E206FDEB8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 11:10:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l3fIRorWuc8P4lXtjtpm2aErbiB++j3wo0ZA8mnQixI=; b=c+M724hMyuPqp6
	vT/ZJ4ssCdN2out2Kus12nSuGZqILpQVY454kFdiXByMx5zYLBajBw9O0pE5MOdNsjRGgvU8DMm0W
	0aK9sQYx/SuDhSP3AE+gpMnwCs3o5uDebRf777CnXx6S2+4Ul726Btoj4yQO+J9hwWVvRebmyKjKm
	PpnZN0VHoy+SoQOLjdGv0EjdPu1FKtGuvIcVNNutqO/RHcqzNIF5tcyaK7X3N9OUMEMCQiag7tx+5
	JqbIg/ckH41lgOXg6ZtYwKgdvZW1XKNnIY8wUlYceIL5YPceAouq2228RvdtpoGtexrIW8fo99OYv
	DWxG8dMcR62ny76xXzeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL2Ie-0005zu-N4; Mon, 29 Apr 2019 09:10:12 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL2IT-0005Yn-SX
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 09:10:03 +0000
Received: by mail-io1-xd42.google.com with SMTP id c3so8308800iok.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 02:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ih8hG8q4IaybDOZY3Rf+4Yk3q7/Hf/ofVFl1Lr6j8Cg=;
 b=Yg8Hx1TP+Xtcajo/o3u7dmrtAUiUf5kQ61hNmyMD8cDk0xnX7ESDyOG31M/myEMrxu
 d3nnhuCunolDisrREnv13MrAXTLI8uDDKnXTeQH8fBzt69Wy5ZcJvcosyFVK6iKeXW0P
 ntYz3tL8lBlbrJhPNOR2ySmOdL/ZwMNg5LtBJ3kKokCW2lfukjfKepQQudK7GomD9Ptt
 3vTUniHad/sMYapMoIK4a8/POJJyTYIRR3MUPqCpAqSVBIvXI3k+ztNG1BRUxMsDHevq
 UJWaODhPEv6PAgJjjDy+JbJts/UaIQnACJe+9p1sdS2mD27HO44GDQfm/RKQ26mmNgSB
 H4nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ih8hG8q4IaybDOZY3Rf+4Yk3q7/Hf/ofVFl1Lr6j8Cg=;
 b=pVYIGjiONc+XEEyiymkJLvi8UFKDbN9wFqS1I8MknDymIlSu9UPi5r60vHD7LtIT6A
 U/F7fwOTTSp9hU0HS2L0QB7tIUrPaOazB2ta+XgtvMMWEAynkykzDNLgGOkwoghChtwq
 IGdVn0e1mW8eKz7mVoHyxLREzIXSnkbINkozczBeTm2edI51kjvgU5lm0mrElq0XB7d5
 YxfgGZ0ag0UGieDIByfxieM1MCuIvJWayFdhBcHRC+5y0jiGpYhRJVsiFz1bd3cJNDEe
 9LVMN4pYK6XVhXiR0Q3XodzkKUm146dFJnQ2XCZjVz2kavEz47Mmmuah6SeCaWGHKuzV
 xdeA==
X-Gm-Message-State: APjAAAWV/mjt34vCrnKFaga+o+Y1FJL6A8c0Z5vnRATmkzwBjmwKoz13
 eFII9P5+KXsWpv2Ky1QZ/ZBiAmK4DbLHcLzYLrL0RGQadDQ=
X-Google-Smtp-Source: APXvYqwExWNhO+HkpzCjA7yLl1kJDbjA9zowSQDB5j+cHoChJNePooNkPCWJNFt+KhLzzF3EpTEB5EStbyOJbPBYAY8=
X-Received: by 2002:a6b:7b47:: with SMTP id m7mr495836iop.173.1556529000223;
 Mon, 29 Apr 2019 02:10:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190425102020.21533-1-ard.biesheuvel@linaro.org>
 <20190425102020.21533-3-ard.biesheuvel@linaro.org>
 <1fbbfc30-7389-5618-a046-ab8872882494@arm.com>
 <CAKv+Gu99JXhNnUPpfN274qN7+TJXvFTAatn_31yDDAcrU7LpaQ@mail.gmail.com>
 <eedc61f7-5c71-46eb-0f06-18daa9c5b5df@arm.com>
 <CAKv+Gu-RnR5=RqW7=GTaUYSpQUSTLpCfaUQfASxha-KhcxY4_g@mail.gmail.com>
 <CAKv+Gu_7tprJ7UOowQ+3fhoO2Sq2yJ8SKzcM5OiZE3eWm=o_Tw@mail.gmail.com>
In-Reply-To: <CAKv+Gu_7tprJ7UOowQ+3fhoO2Sq2yJ8SKzcM5OiZE3eWm=o_Tw@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 29 Apr 2019 11:09:48 +0200
Message-ID: <CAKv+Gu-7BNe9Zk-zPe1_SZmGH=5P+PubUc2G+03+ZWt=eD==Bg@mail.gmail.com>
Subject: Re: [RFC PATCH 2/3] irqchip/exiu: implement ACPI gpiolib/irqchip
 support
To: Marc Zyngier <marc.zyngier@arm.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_021001_992292_543E6D36 
X-CRM114-Status: GOOD (  27.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Graeme Gregory <graeme.gregory@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Masahisa Kojima <masahisa.kojima@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 27 Apr 2019 at 00:27, Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
>
> On Fri, 26 Apr 2019 at 13:45, Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
> >
> > On Fri, 26 Apr 2019 at 10:44, Marc Zyngier <marc.zyngier@arm.com> wrote:
> > >
> > > On 26/04/2019 09:24, Ard Biesheuvel wrote:
> > > > On Thu, 25 Apr 2019 at 17:33, Marc Zyngier <marc.zyngier@arm.com> wrote:
> > > >>
> > > >> Hi Ard,
> > > >>
> > > >> On 25/04/2019 11:20, Ard Biesheuvel wrote:
> > > >>> Expose the existing EXIU hierarchical irqchip domain code to permit
> > > >>> the interrupt controller to be used as the irqchip component of a
> > > >>> GPIO controller on ACPI systems.
> > > >>>
> > > >>> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > > >>> ---
> > > >>>  drivers/irqchip/irq-sni-exiu.c | 82 +++++++++++++++++---
> > > >>>  1 file changed, 73 insertions(+), 9 deletions(-)
> > > >>>
> > > >>
> > > >> [...]
> > > >>
> > > >>> +int exiu_acpi_init(struct platform_device *pdev, struct gpio_chip *gc)
> > > >>> +{
> > > >>> +     struct irq_domain *parent_domain = NULL, *domain;
> > > >>> +     struct resource *res;
> > > >>> +     int irq;
> > > >>> +
> > > >>> +     irq = platform_get_irq(pdev, 0);
> > > >>> +     if (irq > 0)
> > > >>> +             parent_domain = irq_get_irq_data(irq)->domain;
> > > >>> +
> > > >>> +     if (!parent_domain) {
> > > >>> +             dev_err(&pdev->dev, "unable to obtain parent domain\n");
> > > >>> +             return -ENODEV;
> > > >>> +     }
> > > >>> +
> > > >>> +     res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
> > > >>> +     if (!res) {
> > > >>> +             dev_err(&pdev->dev, "failed to parse memory resource\n");
> > > >>> +             return -ENXIO;
> > > >>> +     }
> > > >>> +
> > > >>> +     domain = exiu_init(parent_domain, dev_fwnode(&pdev->dev), res);
> > > >>> +     if (IS_ERR(domain)) {
> > > >>> +             dev_err(&pdev->dev, "failed to create IRQ domain (%ld)\n",
> > > >>> +                     PTR_ERR(domain));
> > > >>> +             return PTR_ERR(domain);
> > > >>> +     }
> > > >>> +
> > > >>> +     gc->irq.domain = domain;
> > > >>> +     gc->to_irq = exiu_acpi_gpio_to_irq;
> > > >>> +
> > > >>> +     dev_info(&pdev->dev, "%d interrupts forwarded\n", NUM_IRQS);
> > > >>> +
> > > >>> +     return 0;
> > > >>> +}
> > > >>> +EXPORT_SYMBOL(exiu_acpi_init);
> > > >>> +#endif
> > > >>>
> > > >>
> > > >> I must say I'm not overly keen on this function. Why can't this be
> > > >> probed as an ACPI device, creating the corresponding domain, and leaving
> > > >> to the GPIO driver the task of doing the GPIO stuff?
> > > >>
> > > >
> > > > Because ACPI only permits 'system' interrupts or GPIO interrupts, it
> > > > does not allow arbitrary device objects in the ACPI namespace to be
> > > > targeted as interrupt controllers.
> > >
> > > Hmmm. We already have at least one driver (irq-mbigen.c) that does
> > > exactly that. It uses interrupts from the GIC (it is notionally behind
> > > the ITS), and offers a bunch of interrupt lines itself. Why is it different?
> > >
> >
> > You are right, it isn't. It turns out that there is another way to
> > signal ACPI events based on interrupts, and it involves the ACPI0013
> > GED device. I will try to model it that way instead.
> >
>
> Unfortunately, this doesn't work either. The GED device can respond to
> GSIVs only, and so going via the EXIU doesn't work.
>
> I have attempted to hack it up via AML, but the GED driver uses a
> threaded interrupt, and so the interrupt is re-enabled at the GIC
> before the AML handler is executed (which clears it in the EXIU)
>
> For the RAS case, I guess we could let the firmware pick an arbitrary
> unused SPI and signal that directly into the GIC, but for the power
> button (which is physically wired to the EXIU), we have to model the
> EXIU either has a separate pseudo-GPIO controller, or as part of the
> real GPIO block.

(+ Mika)

I made some progress describing the EXIU and GPIO controllers as follow.

    Device (EXIU) {
      Name (_HID, "SCX0008")
      Name (_UID, Zero)
      Name (_CRS, ResourceTemplate () {
        Memory32Fixed (ReadWrite, SYNQUACER_EXIU_BASE, SYNQUACER_EXIU_SIZE)
        Interrupt (ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake) {
          144, 145, 146, 147, 148, 149, 150, 151,
          152, 153, 154, 155, 156, 157, 158, 159,
          160, 161, 162, 163, 164, 165, 166, 167,
          168, 169, 170, 171, 172, 173, 174, 175,
        }
      })
      Name (_DSD, Package () {
        ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301"),
        Package () {
          Package () { "socionext,spi-base", 112 },
        }
      })
    }

and

    Device (GPIO) {
      Name (_HID, "SCX0007")
      Name (_UID, Zero)
      Name (_CRS, ResourceTemplate () {
        Memory32Fixed (ReadWrite, SYNQUACER_GPIO_BASE, SYNQUACER_GPIO_SIZE)
        Interrupt (ResourceConsumer, Edge, ActiveLow,
ExclusiveAndWake, 0, "\\_SB.EXIU") {
          7,
        }
      })
      Name (_AEI, ResourceTemplate () {
        GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDefault, 0,
"\\_SB.GPIO")
        {
          7
        }
      })
      Method (_E07) {
        Notify (\_SB.PWRB, 0x80)
      }
    }

This is actually a fairly accurate depiction of reality: the EXIU is a
separate unit, and only some of the GPIOs are routed through it.

In the GPIO controller's to_irq() callback, I return the Linux IRQ
number based on the platform IRQ resources claimed by the GPIO device,
and I end up with something like

 46:          0 ... 0      EXIU   7 Edge      ACPI:Event

which looks correct to me. debugfs tells me it is mapped as

handler:  handle_fasteoi_irq
device:   (null)
status:   0x00000001
istate:   0x00000020
            IRQS_ONESHOT
ddepth:   0
wdepth:   1
dstate:   0x03404201
            IRQ_TYPE_EDGE_RISING
            IRQD_ACTIVATED
            IRQD_IRQ_STARTED
            IRQD_SINGLE_TARGET
            IRQD_WAKEUP_STATE
node:     0
affinity: 0-23
effectiv: 0
domain:  \_SB_.EXIU
 hwirq:   0x7
 chip:    EXIU
  flags:   0x55
             IRQCHIP_SET_TYPE_MASKED
             IRQCHIP_MASK_ON_SUSPEND
             IRQCHIP_SKIP_SET_WAKE
             IRQCHIP_EOI_THREADED
 parent:
    domain:  irqchip@(____ptrval____)-1
     hwirq:   0x97
     chip:    GICv3
      flags:   0x15
                 IRQCHIP_SET_TYPE_MASKED
                 IRQCHIP_MASK_ON_SUSPEND
                 IRQCHIP_SKIP_SET_WAKE

The EXIU domain is described as

name:   \_SB_.EXIU
 size:   32
 mapped: 1
 flags:  0x00000041
 parent: irqchip@(____ptrval____)-1
    name:   irqchip@(____ptrval____)-1
     size:   0
     mapped: 55
     flags:  0x00000041

Unfortunately, the system locks up entirely as soon as the interrupt
is triggered (I use a DIP switch in this case). So while the
description is accurate and the correct interrupt does get mapped,
something is still not working entirely as expected.

Any thoughts?

Thanks,
Ard.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
