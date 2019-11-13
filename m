Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 617D2FA7D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 05:08:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gMFRXedLLWbvc2ZrJyz56XFvbunwcN1E6nOm5M9cy6o=; b=SIlvbmHqD+Sb8u
	PSPpeP9jpOH8lsfa2zx3WabVD9+kgpow5mcViLnx3ugLj5uv8g9QbNQWHyuE/Ao+9eHHxRDbnZe92
	4TM/4J/voA9JlZOB2tBDl9VVyazXf2ZVCBtUewVxkOT80P+a/PzxfIUJDTsSiMTmx2/Dg80fxCmyp
	oqp+RirVAqLmKJ2eGOgGJBza7U9jez44q20hJ8JnNnARZcr7QgDZuXAft6AHaUUcvz4rklalrTq8V
	dVvveENQgMQZEfvHKc51lhe/7ZOlhjEAJKGw56vWHOZcnV0hzNrYZWXmIddv9XbH7/8hVJ2ROTq9Q
	ul/zMkfy+EdXXClwEWyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUjx4-0005mG-Ac; Wed, 13 Nov 2019 04:08:18 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUjwt-0005kz-Rn
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 04:08:09 +0000
Received: by mail-oi1-f195.google.com with SMTP id 22so547293oip.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 20:08:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SfWsvDTJzevdEjzMrngS03ZeASmUAsKr6Bk84qRvmhU=;
 b=c+/H3d28Db3zs9Px6w3inNhYjV4uKel7D1D11zsbAP5CuOP3i0q+fjTVGdkI4sraNE
 sG8iU+pAjboVBBRPtMyum+Iyr0FwXYZDxVynU2DEaDWqogOj2B7F7UcMKXvtwsVvW1fF
 T4dvM7oJBoeIqytxa5hvwF1+O0fy0yOTP7tgNaQVH8s8s1GN0g4+ojTu8Jt/NQC/5tAI
 K/BDZYM4l3svpkwHhBKab0W67isvowSyiWirR2CetphO+BjkkF+EMuMMeGqkQoqUV0Ln
 zo6XSXZodbwmEFqTfTeUdLh2TGlfkU41KgH4E61IRwhMXIthJmTzTqRkvJzvfxvQx5O6
 6hdQ==
X-Gm-Message-State: APjAAAX1zZYJoTpyZU8aoIytyRCYYyHKcZIzXdjekhbLJeGZvs4AHrdF
 u96CReEu4I15iFFx0f1GhA==
X-Google-Smtp-Source: APXvYqwRUjP0Ny/K1cwD676eUUZNEvW/sKvkoiqZmyITmDaRQZxyPexAR+dfGrVGINIfyHcGyj/tlQ==
X-Received: by 2002:aca:5cd5:: with SMTP id q204mr900116oib.14.1573618083945; 
 Tue, 12 Nov 2019 20:08:03 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e193sm296871oib.53.2019.11.12.20.08.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 20:08:03 -0800 (PST)
Date: Tue, 12 Nov 2019 22:08:02 -0600
From: Rob Herring <robh@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH 3/5] PCI: rcar: Add R-Car PCIe endpoint device tree
 bindings
Message-ID: <20191113040802.GA8269@bogus>
References: <20191106193609.19645-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191106193609.19645-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdVZwgVnq2kwjNJQHfvUH0sk6M7Hz-AJR82jMOsCNfW9wQ@mail.gmail.com>
 <CA+V-a8swtOUaxKnCdiTV5wvvxLEJ6XdODL=7bvQmFKY0zQTj2w@mail.gmail.com>
 <CAMuHMdXkbWkQgswMNL7Dw7_jucH+MsuAW+-CjoGVYsm=tjShRw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdXkbWkQgswMNL7Dw7_jucH+MsuAW+-CjoGVYsm=tjShRw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_200807_903006_AF49502D 
X-CRM114-Status: GOOD (  34.85  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pci <linux-pci@vger.kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Magnus Damm <magnus.damm@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, "Lad,
 Prabhakar" <prabhakar.csengg@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 09:08:35PM +0100, Geert Uytterhoeven wrote:
> Hi Prabhakar,
> 
> On Thu, Nov 7, 2019 at 10:26 AM Lad, Prabhakar
> <prabhakar.csengg@gmail.com> wrote:
> > On Thu, Nov 7, 2019 at 8:44 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > On Wed, Nov 6, 2019 at 8:36 PM Lad Prabhakar <prabhakar.csengg@gmail.com> wrote:
> > > > From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > >
> > > > This patch adds the bindings for the R-Car PCIe endpoint driver.
> > > >
> > > > Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > >
> > > Thanks for your patch!
> > >
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
> > > > @@ -0,0 +1,43 @@
> > > > +* Renesas R-Car PCIe Endpoint Controller DT description
> > > > +
> > > > +Required properties:
> > > > +           "renesas,pcie-ep-r8a774c0" for the R8A774C0 SoC;
> > > > +           "renesas,pcie-ep-rcar-gen3" for a generic R-Car Gen3 or
> > > > +                                    RZ/G2 compatible device.
> > >
> > > Unless I'm missing something, this is for the exact same hardware block as
> > > Documentation/devicetree/bindings/pci/rcar-pci.txt?
> > > So shouldn't you amend those bindings, instead of adding new compatible
> > > values?
> > > Please remember that DT describes hardware, not software policy.
> > > So IMHO choosing between host and endpoint is purely a configuration
> > > issue, and could be indicated by the presence or lack of some DT properties.
> > > E.g. host mode requires both "bus-range" and "device_type" properties,
> > > so their absence could indicate endpoint mode.
> > >
> > yes its the same hardware block as described in the rcar-pci.txt, I
> > did think about amending it
> > but  it might turn out to be bit messy,
> >
> > required properties host ======required properties Endpoint
> > ====================||==================
> > 1: reg                                || reg
> > 2:bus-range                      || reg names
> > 3: device_type                  || resets
> > 4: ranges                          || clocks
> > 5: dma-ranges                  || clock-names
> > 6: interrupts                      ||
> > 7: interrupt-cells               ||
> > 8: interrupt-map-mask     ||
> > 9: clocks                          ||
> > 10: clock-names             ||
> 
> We have a similar situation with SPI, where a controller can operate in
> master or slave mode, based on the absence or presence of the
> "spi-slave" DT property.
> 
> > and if I go ahead with the same compatible string that would mean to
> > add support for endpoint
> > mode in the host driver itself. I did follow the examples of
> 
> You can still have two separate drivers, binding against the same
> compatible value.  Just let the .probe() function return -ENODEV if it
> discovers (by looking at DT properties) if the node is configured for
> the other mode.
> Which brings us to my next questions: is there any code that could be
> shared between the drivers for the two modes?
> 
> > rockchip/cadence/designware where
> > its the same hardware block but has two different binding files one
> > for host mode and other for
> > endpoint mode.
> 
> Having two separate DT binding documents sounds fine to me, if unifying
> them makes things too complex.
> However, I think they should use the same compatible value, because the
> hardware block is the same, but just used in a different mode.
> 
> Rob/Mark: Any input from the DT maintainers?

Separate files makes sense because different modes will want to 
include different common schemas. We've generally been doing different 
compatibles too which makes validating the node has the right set of 
properties easier.
 
> > > > +- reg: Five register ranges as listed in the reg-names property
> > > > +- reg-names: Must include the following names
> > > > +       - "apb-base"
> > > > +       - "memory0"
> > > > +       - "memory1"
> > > > +       - "memory2"
> > > > +       - "memory3"
> > >
> > > What is the purpose of the last 4 regions?
> > > Can they be chosen by the driver, at runtime?
> > >
> > no the driver cannot choose them at runtime, as these are the only
> > PCIE memory(0/1/2/3) ranges
> > in the AXI address space where host memory can be mapped.
> 
> Are they fixed by the PCIe hardware, i.e. could they be looked up by the
> driver based on the compatible value?

That would be strange for a memory range.

Sounds like like 'ranges' though I'm not sure if 'ranges' for an EP 
makes sense or what that should look like.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
