Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8B82C78F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UiaHEIfY3WcyaBSwPYwdxLVpvLwpxVUrHa7OSj5qCD4=; b=uTgXIFKjCWQJIs
	6IVCe4mWPIo73vnjjTaKpL51hSotaUYuq4AsILv36p10rxBRix++dy3zGmiE+4ooZvVPKKmbIy7FI
	x3SiBwErACcZNtd1pCTleELWzckFfAA6soWrqmO4jaO72ZvJ4NtToPXG8TMc/ysATR1AwAFw7FttS
	1gEpCXua5YU9uGOomMz/HF1/AgefwGcChg/G+1Z5RuIbNgeWIw7hT4gI1Vj3kxrsh07/7MDp/E1jj
	zoNsgEoyJlB8bPY15a+sV/99NXOieBrcBV6kSC+DxtdhBFi/lnrbmB6Y+iFg8R1IH4hbgWw5DmD8k
	skopE2gS/2H1ZsrlnK/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbuh-0006bv-Og; Tue, 28 May 2019 13:13:11 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbuT-0006WX-2Y
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 13:12:58 +0000
Received: by mail-it1-x144.google.com with SMTP id h20so4205908itk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 06:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LGidpikOk3gFKCEpFN2Vpze39VdGj7YWoOUOht53ZfY=;
 b=oV86f4NqmhlHkcJh2rWNymzheFl8WV2TPMwq9FwNwZcPBEInGaL/uPUrCPKG/3KOhk
 2L+nSHnGap6rGYFoTnt1r+ThdpkRjZcbrg8OfEJ8XsZaZPjH6c0KWRlF7A0ziu3S5zpO
 XL1OwyFZHLBENGonYAc5AQ2cFXYOGMCE8WbvyVZfwot2KVjp/IOou112vdblLSdxxEox
 8MLlZ8h4zs9K8rtuiPinav5hcX3a6Gkl5x8ZR5lOBg+K50V3yg9etiiuJhi/0ny3bOwt
 9TzdVC9eYixxom6i85+fM4uRLAOD4BQ2PuFZ7uvCI60p43i8EM87ybRtbKBuZJN70p8H
 1ppQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LGidpikOk3gFKCEpFN2Vpze39VdGj7YWoOUOht53ZfY=;
 b=IVZjCiVph085X6nX9pJxsTlAMyYWFTPKvsnmh9fVbL+39FOkkOUtVl+xvvxzaAlJ9q
 8Ecg3RhH9VG/GqMFoZ1KnZNE/W9HEJM86Xau6PCzWKIAByUCSAzGf7GfBGev5YFA/pA5
 QPHTV6lrNRqZzGZmhxycQiyhmHiNYBoAB74sGYmaIZKmLS5QgJE/i/LPmFm2YqzYPLHG
 R7/ZxdD7/8QVNubaGfWFiGw9pWBFSWhgMUt9XwKdhnno6pX/Dk3TJLTwvBVmNzS1sN9L
 oFORmS+u4eehVcyOdbrfj3ZqFCVLM7L0JqTTrp3Bq4Pz8bJx18f32UWfJW/JtZwAulm8
 3u9w==
X-Gm-Message-State: APjAAAUBaq2RW4nqnWivL+PbgUCJObWCCH59HAY8sjICqwtW2kZZsrgt
 genibz4b1jZPl7wHYY4Stn5EUz+KhbtKXFd7RPPi3Q==
X-Google-Smtp-Source: APXvYqxh9xMHBYVyEjG0Z0MufOg7ad/5kV8XBfdSlA9dhu8netpmbxXVs3EleLkHkvEmdLU0lp0CSUw9JLEOfidkstg=
X-Received: by 2002:a24:d00e:: with SMTP id m14mr2792618itg.153.1559049176014; 
 Tue, 28 May 2019 06:12:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190527112720.2266-1-ard.biesheuvel@linaro.org>
 <20190527112720.2266-2-ard.biesheuvel@linaro.org>
 <1c3213ed-bdd6-755e-9cb9-693943410326@arm.com>
In-Reply-To: <1c3213ed-bdd6-755e-9cb9-693943410326@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 28 May 2019 15:12:42 +0200
Message-ID: <CAKv+Gu898dbWjdE8a8_KrhcWfrDmOP81NxWwDpACMvER5LZ0=A@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] acpi/irq: implement helper to create hierachical
 domains
To: Marc Zyngier <marc.zyngier@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_061257_124860_A2D079A7 
X-CRM114-Status: GOOD (  24.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Graeme Gregory <graeme.gregory@linaro.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
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

On Tue, 28 May 2019 at 14:54, Marc Zyngier <marc.zyngier@arm.com> wrote:
>
> Hi Ard,
>
> On 27/05/2019 12:27, Ard Biesheuvel wrote:
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
> >
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
> > + */
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
> >
>
> Should we consider exporting this function to modules?
>

Good point, we probably should.


> Otherwise (and with Mika's comments addressed), looks good to me.
>
> Thanks,
>
>         M.
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
