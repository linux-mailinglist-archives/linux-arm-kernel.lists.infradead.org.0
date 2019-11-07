Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0E8F3BB1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 23:47:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RatWkP7a/UYi2ZQsKnr9EwiyHxGavZcKMHI7gTzJQTU=; b=e3XhMJ6Jz3QulU
	6BHH00lccCmQ3X2VhkVvCIqZ2hRU/yhWwP9W4ABMxAujC9BDuj5p04df1KT/6OnUudfvkcLK/mb6V
	3Rhu2nSBTNVQNIbLnFA+hHgtBzdwBOGzoe3200uEqZDwgCfKteh6EDU/BA943w9QK79Bk35gukiIR
	w9foTOTEmXEjXBk5rHkeaz+9n2g8x9xAW9HNQGqe8PtNkqIf3TBtueceYQSyMNjaKEXjEhEPjRmQ5
	sJVnMRHyK/3Z+49q46RWVH8xQ7TvZtLBABDN4SyHUP4CaefKiTAuBPNTxDi8/Ql7HOAgMpKx6e5Co
	eHRv8txp3nqJ021GPaiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSqYR-0004U1-SK; Thu, 07 Nov 2019 22:47:03 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSqYK-0004TQ-2X
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 22:46:57 +0000
Received: by mail-oi1-x241.google.com with SMTP id 22so3542493oip.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 14:46:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=amQWDmlGdEk6VIZvnzvC3PXl4QjX449VLWxbEA+kkns=;
 b=hX/QIOjtVkzlExtn1LqyXrmyI9I9vZhyZHkCpvmC5Ale44vry7ayGIKDeCOW9S9eWE
 JpeUDWKn0dzomnJvGQC6UlsW56ZHBQcAFlz9OGRK5JKMmF8OQJCvygqW3vGmRflED+jd
 7TVoAMvk/E/hCIVf+TF4Rw15L3pIjoLxe6vzgKi3MMKtHJGRkQ4P3udSwk7lQ/KkFi1q
 4+JwIHOVSXZPmO22hcGzdgMMwdD5dIgcqbDpY2MUuiExDnrRclHY9cxPzrywI1OJf+je
 DHDOJuou1WQXs1iIbJn26gQ/7aneup7yHphtwjJ2VHCPP00fXPXSMgDrk47Jvp42ikcP
 rLIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=amQWDmlGdEk6VIZvnzvC3PXl4QjX449VLWxbEA+kkns=;
 b=qIWC2xFwWbZ9wFz4X1L4yJLRjDadrPfYoQCJA9zVSW12VDG6q9RrnwTtZseq69ynth
 KYduPGnjF7hp12vfbwFp6DfgslKN/KiasaBObmCslcjgcdwM232mrL4pnTZjuHsmcahP
 7qPurpwgwJf4/njJ7yJp2kBOiAJZsZ8w0t/lWFmsIVMXMrkqs5TBmF7WpgR6NbNbklWS
 b+Sa7FkCIoHAEjyOtt6yxiGdAhImY7lKdELI4qXPO9hyI/y53E7Aj0DEUnFpVdCFsFuH
 XSZT7X8inE8iwRB6GhpmOeqyFeU3uw6VUC/OtGcVnybOw+XVi5pHpZRwkvnoHVnJBqxz
 NtGw==
X-Gm-Message-State: APjAAAXT20opN5ysR/WsS7HMsj5qYl4HUkjhgG2rpQl+Ipjcemz8bhHN
 yi7W/75wFgRsnm/Ai3F7Z9kYoNI597X02NWbvG0=
X-Google-Smtp-Source: APXvYqy7X5y3xi+caVjj34JWeqvFAD42ny9HBvVuYNQgKnsmmxiFAbNuD/jPPDzS6BjPiNY4G/MO7hwzdru7pOmcrd8=
X-Received: by 2002:aca:2303:: with SMTP id e3mr5878670oie.162.1573166814674; 
 Thu, 07 Nov 2019 14:46:54 -0800 (PST)
MIME-Version: 1.0
References: <20191106193609.19645-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191106193609.19645-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdVZwgVnq2kwjNJQHfvUH0sk6M7Hz-AJR82jMOsCNfW9wQ@mail.gmail.com>
 <CA+V-a8swtOUaxKnCdiTV5wvvxLEJ6XdODL=7bvQmFKY0zQTj2w@mail.gmail.com>
 <CAMuHMdXkbWkQgswMNL7Dw7_jucH+MsuAW+-CjoGVYsm=tjShRw@mail.gmail.com>
In-Reply-To: <CAMuHMdXkbWkQgswMNL7Dw7_jucH+MsuAW+-CjoGVYsm=tjShRw@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 7 Nov 2019 22:46:28 +0000
Message-ID: <CA+V-a8sS4gX8o__R_pHK2Otb=s_aAWbtvDLfOhAQAJb77Jz_Sw@mail.gmail.com>
Subject: Re: [PATCH 3/5] PCI: rcar: Add R-Car PCIe endpoint device tree
 bindings
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_144656_140631_330D0EF4 
X-CRM114-Status: GOOD (  34.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.csengg[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Geert,

On Thu, Nov 7, 2019 at 8:08 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
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
agreed driver probe could handle depending on the DT properties.
yes there is bit of common code and the first patch of the series prepares
for handling host and endpoint mode.

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
agreed.

> Rob/Mark: Any input from the DT maintainers?
>
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
>
yes they are fixed by the PCIe hardware and could be looked up by the driver
based on the compatible value.

Cheers,
--Prabhakar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
