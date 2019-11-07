Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D6EF3934
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 21:09:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=llhQSobQ4hiFZvr5gY92I3N30Z6VxTzvSGLKk3R+MuU=; b=KND6GpfzG7wVEa
	caQ5neVIFb0cyHxxtqK4nXwj1o+6asYIcF2SutjdeXonUZViByTpX7Ond+q7vWk0cJS4sksNYZMaL
	I+7k8NJPn/ztDrp5i4j12Z/iVwLh3A5xLPyclH/vnlEcSp1pZAUYcLiPNzKXj9mov2+UEDpjthClA
	Us5IALtr84xc1/rhHvW7ZNp3ooLdnwMfnLhlr7aYM8dujPdpeZ6iyGwzC+PqNOg6uUi9W9yTtw4f6
	ErrY0WMogIPaeX0FsNbf5isOjX7xtI49wpxQ26YY8b/78RZenUgmla5y0GwU9jZhaPrzwhAQqp9Fw
	dI2uqFrlCsvRYLbRhdDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSo5V-0001Yd-45; Thu, 07 Nov 2019 20:09:01 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSo5J-0001WX-An
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 20:08:50 +0000
Received: by mail-ot1-f66.google.com with SMTP id m15so3131259otq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 12:08:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/M+7NEa9F4hcyStwS+O2CXj/DuZPkBH6ed1KATiGvQk=;
 b=MqVukZi6Taab6KiR6aVYL8ptCnrUolGWB/58P439Gcntwg7VpTfgmWO/Qq9W0OCfxQ
 0AeTp8Lk+BoLThznuM1gs3rOqdTrmCzUJZiM4S5kkE/nPVR26sNDSLs4Qc293lMnm2en
 eIMNx0Hj6KBTN/GVbU0ELHFnqAeTdk3EeUXRoUnGIIhcMoJSE+z0ZkDTyOAZS31bntIX
 H6qvX/fV4HVClm4/mPwqdXUypTIG+ATt9ZTxuNA6/kjKkyHsRTwABZajzqCbUG8B+EXv
 33tes8AdGwSzbBR9QqmoxI+emzfBLlszG2dHWtRMi9zzN9nsf7KQNIeykeEEQrFL5SJX
 w9dg==
X-Gm-Message-State: APjAAAUHZshfks4rqjwl33HMKckUl7e8lpKaJVRI2tgwmMNQON0Pa/XU
 LzTPfOok0DiXfC6SJbPrwtAIP8hCFi7L9n8mLt8=
X-Google-Smtp-Source: APXvYqxSdxE5q8o7kot3Q3VPWpmjiPKminjmiI4HTAqtu6579k67BzPvoy6LhYBLhEbydlStEWo7/83897A46FJL54w=
X-Received: by 2002:a9d:73cd:: with SMTP id m13mr4644863otk.145.1573157326980; 
 Thu, 07 Nov 2019 12:08:46 -0800 (PST)
MIME-Version: 1.0
References: <20191106193609.19645-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191106193609.19645-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdVZwgVnq2kwjNJQHfvUH0sk6M7Hz-AJR82jMOsCNfW9wQ@mail.gmail.com>
 <CA+V-a8swtOUaxKnCdiTV5wvvxLEJ6XdODL=7bvQmFKY0zQTj2w@mail.gmail.com>
In-Reply-To: <CA+V-a8swtOUaxKnCdiTV5wvvxLEJ6XdODL=7bvQmFKY0zQTj2w@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 7 Nov 2019 21:08:35 +0100
Message-ID: <CAMuHMdXkbWkQgswMNL7Dw7_jucH+MsuAW+-CjoGVYsm=tjShRw@mail.gmail.com>
Subject: Re: [PATCH 3/5] PCI: rcar: Add R-Car PCIe endpoint device tree
 bindings
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_120849_368404_7A8B5A5A 
X-CRM114-Status: GOOD (  30.07  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

On Thu, Nov 7, 2019 at 10:26 AM Lad, Prabhakar
<prabhakar.csengg@gmail.com> wrote:
> On Thu, Nov 7, 2019 at 8:44 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Wed, Nov 6, 2019 at 8:36 PM Lad Prabhakar <prabhakar.csengg@gmail.com> wrote:
> > > From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > >
> > > This patch adds the bindings for the R-Car PCIe endpoint driver.
> > >
> > > Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Thanks for your patch!
> >
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
> > > @@ -0,0 +1,43 @@
> > > +* Renesas R-Car PCIe Endpoint Controller DT description
> > > +
> > > +Required properties:
> > > +           "renesas,pcie-ep-r8a774c0" for the R8A774C0 SoC;
> > > +           "renesas,pcie-ep-rcar-gen3" for a generic R-Car Gen3 or
> > > +                                    RZ/G2 compatible device.
> >
> > Unless I'm missing something, this is for the exact same hardware block as
> > Documentation/devicetree/bindings/pci/rcar-pci.txt?
> > So shouldn't you amend those bindings, instead of adding new compatible
> > values?
> > Please remember that DT describes hardware, not software policy.
> > So IMHO choosing between host and endpoint is purely a configuration
> > issue, and could be indicated by the presence or lack of some DT properties.
> > E.g. host mode requires both "bus-range" and "device_type" properties,
> > so their absence could indicate endpoint mode.
> >
> yes its the same hardware block as described in the rcar-pci.txt, I
> did think about amending it
> but  it might turn out to be bit messy,
>
> required properties host ======required properties Endpoint
> ====================||==================
> 1: reg                                || reg
> 2:bus-range                      || reg names
> 3: device_type                  || resets
> 4: ranges                          || clocks
> 5: dma-ranges                  || clock-names
> 6: interrupts                      ||
> 7: interrupt-cells               ||
> 8: interrupt-map-mask     ||
> 9: clocks                          ||
> 10: clock-names             ||

We have a similar situation with SPI, where a controller can operate in
master or slave mode, based on the absence or presence of the
"spi-slave" DT property.

> and if I go ahead with the same compatible string that would mean to
> add support for endpoint
> mode in the host driver itself. I did follow the examples of

You can still have two separate drivers, binding against the same
compatible value.  Just let the .probe() function return -ENODEV if it
discovers (by looking at DT properties) if the node is configured for
the other mode.
Which brings us to my next questions: is there any code that could be
shared between the drivers for the two modes?

> rockchip/cadence/designware where
> its the same hardware block but has two different binding files one
> for host mode and other for
> endpoint mode.

Having two separate DT binding documents sounds fine to me, if unifying
them makes things too complex.
However, I think they should use the same compatible value, because the
hardware block is the same, but just used in a different mode.

Rob/Mark: Any input from the DT maintainers?

> > > +- reg: Five register ranges as listed in the reg-names property
> > > +- reg-names: Must include the following names
> > > +       - "apb-base"
> > > +       - "memory0"
> > > +       - "memory1"
> > > +       - "memory2"
> > > +       - "memory3"
> >
> > What is the purpose of the last 4 regions?
> > Can they be chosen by the driver, at runtime?
> >
> no the driver cannot choose them at runtime, as these are the only
> PCIE memory(0/1/2/3) ranges
> in the AXI address space where host memory can be mapped.

Are they fixed by the PCIe hardware, i.e. could they be looked up by the
driver based on the compatible value?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
