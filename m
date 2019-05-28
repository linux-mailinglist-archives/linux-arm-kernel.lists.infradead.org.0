Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7729A2C78E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:12:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U1GohRWEnCAYPdMTWmmMRO4iB/KbStIDTXusRoHoDXg=; b=oJBbd080tzfqVV
	57ZWs6soqRQiiIsy9iBSmX66nrh/5CTPStVjS1HRzMGsqlH9TuRPxPpJukTK6/0P1KGTdxl1RmUqe
	ejeWF0cFoVTEiYiSbM2SOCVhglzpmpSsOEMjEHFMlIlBnd7lnqsbmBX6q8fBC3EtZw/wfBSXmLQWC
	N9HQiApSGeYOxiUOU7orBFMLrotyi0lVD7VckysHl+X3HAN7ZPVqVRe82+pPgLKYI/mov35uPzn93
	fojbs2ooKlCasAkbgrS2IkD/0b0hcQLS4Z77MK+z8p7PU9SxsdD26znBXSnCWLM8oF/m3bv9lElsn
	/hhhbA/FRnpyiCTC2DDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbuR-0006Kk-FB; Tue, 28 May 2019 13:12:55 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbuK-0006KP-09
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 13:12:49 +0000
Received: by mail-it1-x141.google.com with SMTP id 9so3773272itf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 06:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ch6XsF4UkVDwbCtK10AE8N7qp77v0YkcnUzTiE/e8Wo=;
 b=UDHPDd6eadbAHYaP04Cm1XVM2x1yZoC0tAY4rfUmppJ96IeB9CdtarAqp26BGa1wNm
 EIIaAqWORDZNx/Eon9VS6GbvD4pOEXFnggl0fe1H9zbqLNEQvdv44lP7kwOqgjoBVqEN
 g9k5/ha0yYhZdGCRp08+rNai+C+qISbz64aHwjZtFR+X+UbF2XArTc+0mJuVUr4rUMfg
 suuEWe8fn6oKmbciozq2nCYcHcnMDIUTFH/1fkFuJ4b/DNY/ZoRVuxlWrAJMVpS2Cv18
 1jCYgODJS/naqPgxQwREU6vqcws1Yfh78Hn6Qabwx1GpKYPF7Xm7HzK4f57BRLIyaGpQ
 sPnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ch6XsF4UkVDwbCtK10AE8N7qp77v0YkcnUzTiE/e8Wo=;
 b=pYFefSOQeMFq+bHjIWZnOMrAQmS1STOcoTjuTa0AMBsap0GmB41WiY1hjNCr4WAJI6
 2SM0LxAPGLKYYK3VdRtb2vnVzP3Lq7ozXwozrwtNHhDqIi0fblQ8bgLSXxpRFB2DaMo+
 dyIXepOjg1vZvn4d/SKa0Hr9S3UOVK+BzKt0frmmI4HUmeSC9XVP/AC3Qa/voZuYNiRc
 VZ3Ky4LylN4yDnsnAw0PXAQCSxqlPrpTxrKsKgX+cpviaKvR2k1afXZOv6HAviWrgFZR
 vx2mimsEubBt8JL+PpYR88w1q08AcoZHVDZf0278s/QxHcRW9rU8BSv95ueA+s5IJJzD
 oHwg==
X-Gm-Message-State: APjAAAV1iL13skfosFYt23ilkuHDmz90leV0zdEMrD33tx8yJlcC0JlG
 KkO8tojyOxPVN9XC19XwOiOp4YUVw8jORqMPeqzmzA==
X-Google-Smtp-Source: APXvYqxLB1pPADB1FNuibHAgC0X75X9+avjoPthNYmISUQ4GARPimb8jbgaZz2VKax2H1f0/5DqrH9zrGOFDmB0KMxQ=
X-Received: by 2002:a24:910b:: with SMTP id i11mr3270618ite.76.1559049166968; 
 Tue, 28 May 2019 06:12:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190527112720.2266-1-ard.biesheuvel@linaro.org>
 <20190527112720.2266-2-ard.biesheuvel@linaro.org>
 <20190528130247.GA25151@redmoon>
In-Reply-To: <20190528130247.GA25151@redmoon>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 28 May 2019 15:12:34 +0200
Message-ID: <CAKv+Gu8ci4ksq0ZHi1Ngdejjx1dKsdfL3ruYjTwu+hyXigOHYQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] acpi/irq: implement helper to create hierachical
 domains
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_061248_048677_FAED72AF 
X-CRM114-Status: GOOD (  26.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Graeme Gregory <graeme.gregory@linaro.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Linus Walleij <linus.walleij@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Masahisa Kojima <masahisa.kojima@linaro.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 May 2019 at 15:02, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Mon, May 27, 2019 at 01:27:17PM +0200, Ard Biesheuvel wrote:
> > ACPI permits arbitrary producer->consumer interrupt links to be
> > described in AML, which means a topology such as the following
> > is perfectly legal:
> >
> >   Device (EXIU) {
> >     Name (_HID, "SCX0008")
> >     Name (_UID, Zero)
> >     Name (_CRS, ResourceTemplate () {
> >       ...
> >     })
> >   }
> >
> >   Device (GPIO) {
> >     Name (_HID, "SCX0007")
> >     Name (_UID, Zero)
> >     Name (_CRS, ResourceTemplate () {
> >       Memory32Fixed (ReadWrite, SYNQUACER_GPIO_BASE, SYNQUACER_GPIO_SIZE)
> >       Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, 0, "\\_SB.EXIU") {
> >         7,
> >       }
> >     })
> >     ...
> >   }
> >
> > The EXIU in this example is the external interrupt unit as can be found
> > on Socionext SynQuacer based platforms, which converts a block of 32 SPIs
> > from arbitrary polarity/trigger into level-high, with a separate set
> > of config/mask/unmask/clear controls.
> >
> > The existing DT based driver in drivers/irqchip/irq-sni-exiu.c models
> > this as a hierarchical domain stacked on top of the GIC's irqdomain.
> > Since the GIC is modeled as a DT node as well, obtaining a reference
> > to this irqdomain is easily done by going through the parent link.
> >
> > On ACPI systems, however, the GIC is not modeled as an object in the
> > namespace, and so device objects cannot refer to it directly. So in
> > order to obtain the irqdomain reference when driving the EXIU in ACPI
> > mode, we need a helper that implicitly grabs the default domain for
> > unqualified interrupts as the parent of the hierarchy.
>
> Nit: I do not think they are "unqualified".
>
> ACPI 6.3, table 6-237, Extended Interrupt Descriptor Definition:
>
> "Resource Source: (Optional) If present, the device that uses this
> descriptor consumes its resources from the resources produces by the
> named device object. If not present, the device consumes its resources
> out of a global pool."
>
> Where the global pool I _assume_ is the GSI domain, so it is the default
> expected behaviour (for once :))
>

By 'unqualified', I meant lacking an explicit description of the
producer of the resource. But I can change the wording if you prefer.

> > Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > ---
> >  drivers/acpi/irq.c   | 20 ++++++++++++++++++++
> >  include/linux/acpi.h |  7 +++++++
> >  2 files changed, 27 insertions(+)
> >
> > diff --git a/drivers/acpi/irq.c b/drivers/acpi/irq.c
> > index c3b2222e2129..39824a6bbcd5 100644
> > --- a/drivers/acpi/irq.c
> > +++ b/drivers/acpi/irq.c
> > @@ -295,3 +295,23 @@ void __init acpi_set_irq_model(enum acpi_irq_model_id model,
> >       acpi_irq_model = model;
> >       acpi_gsi_domain_id = fwnode;
> >  }
> > +
> > +/**
> > + * acpi_irq_create_hierarchy - Create a hierarchical IRQ domain with the default
> > + *                             GSI domain as its parent.
>
> Yes please comment parameters even if it is just a wrapper around
> the IRQ domain API.
>
> > +struct irq_domain *acpi_irq_create_hierarchy(unsigned int flags,
> > +                                          unsigned int size,
> > +                                          struct fwnode_handle *fwnode,
> > +                                          const struct irq_domain_ops *ops,
> > +                                          void *host_data)
> > +{
> > +     struct irq_domain *d = irq_find_matching_fwnode(acpi_gsi_domain_id,
> > +                                                     DOMAIN_BUS_ANY);
> > +
> > +     if (!d)
> > +             return NULL;
> > +
> > +     return irq_domain_create_hierarchy(d, flags, size, fwnode, ops,
> > +                                        host_data);
> > +}
> > diff --git a/include/linux/acpi.h b/include/linux/acpi.h
> > index 98440df7fe42..70de4bc30cea 100644
> > --- a/include/linux/acpi.h
> > +++ b/include/linux/acpi.h
> > @@ -23,6 +23,7 @@
> >
> >  #include <linux/errno.h>
> >  #include <linux/ioport.h>    /* for struct resource */
> > +#include <linux/irqdomain.h>
> >  #include <linux/resource_ext.h>
> >  #include <linux/device.h>
> >  #include <linux/property.h>
> > @@ -327,6 +328,12 @@ int acpi_isa_irq_to_gsi (unsigned isa_irq, u32 *gsi);
> >  void acpi_set_irq_model(enum acpi_irq_model_id model,
> >                       struct fwnode_handle *fwnode);
> >
> > +struct irq_domain *acpi_irq_create_hierarchy(unsigned int flags,
> > +                                          unsigned int size,
> > +                                          struct fwnode_handle *fwnode,
> > +                                          const struct irq_domain_ops *ops,
> > +                                          void *host_data);
> > +
> >  #ifdef CONFIG_X86_IO_APIC
> >  extern int acpi_get_override_irq(u32 gsi, int *trigger, int *polarity);
> >  #else
>
> Reviewed-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>

Thanks,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
