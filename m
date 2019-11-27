Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F132010BA26
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 22:01:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tWJg7Fso26AV2Gm1t6lIocLnuR6qDeu/TYnt+5LJHa8=; b=iVzdedE0HhfxSa
	h8n4h5KsIg/BknbLXXra3NX4uuzpR2l1vdb/Ufpd87qjzGT7jaVRBeOfxLyWfVm8WdTZ/xfrVWkbY
	ALymOldbzBH6v6cf7IVCDWCGq+nZXvqUstyVgL/5eozRxFBvDGJRqy3UC8Xpoqdnt4gj8eqih369g
	FRDXNxQhFnEFdT+FjJCSrMR7yKngbewNHlt/78nlB28IDndzzpaJalD5MJSVgjBITZmmeldSXO64t
	GaxknFiauzzAaRXyDLwuGZrgiZnOLPXCuv/7oQ0XLk0xMIQ6qTR3IozJN3SWLLD6JpjzvWN4jzKhf
	bLzWpAbfp71B2+nRGNIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia4RI-0007h9-Q6; Wed, 27 Nov 2019 21:01:32 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia4R9-0007fv-55
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 21:01:24 +0000
Received: by mail-ot1-x342.google.com with SMTP id k14so4623010otn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 13:01:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2ac89QnwXY1s2UQiWSXiKkMzWwZZELPTycnFpQTsI8k=;
 b=kvcHH3nnhTPYry+j463BIxgQ9Ii5HD9eMaJbuQd0OQtfseBeHWrGm+iBgVf46+0u+C
 Tc1N2LcLP/tpwdRodDCVa+57+u8Xg2FS5VVrpscrVh71OZCqvVsod3s/JFeIgTHCzwDn
 euFLQvQ5h7vzsk0i+3Hvh7RWWMwcR2JWjJA4/CZyStpzb3+87tBv9yBDzsTPqHiwQ7LB
 clZaaj5s70gJv8DNFLJ6toBOKPQa1iGYn1ZOqCPBK/MttFNhpehhGxAGJgOp+i1Ycj9N
 jYNDObQkN32HhWzV3OfHJZn6De8abVa/JW4gJYcw5MBXFGqYLSc/3QvMFvai3H93EXI7
 jFFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2ac89QnwXY1s2UQiWSXiKkMzWwZZELPTycnFpQTsI8k=;
 b=ZNT/n0t8B1GB4+svMzu9zPMDhYrPndPY7K266p9ZlCb7LPD0Q3T4xVbz2F80iq7wJc
 yWGrJIcc61XPdc3l4uty0DV1KnEpi/JiBhjA5StQjv8iADn9WQHaWW8qyrhWOvtNqrnY
 N+Q9C/uQJq5mZ1/jI7uq/+4rlBuUIcKGepANKFtHxnKXUGPt743UFLX+qWafKJWF4blO
 UeCpFbZKSjpZE/btuaan/fYgeV+ssVFyqgka1IEir2J6TjL71pbXWM78/v/IS4yYcMm2
 WxilEkLoGJxBb+xdLy68tsKP2p3yJD2hEKlMR92lsAIrVsDXvpTulCWuqc+9xcT5r58d
 dmCQ==
X-Gm-Message-State: APjAAAVu9M1m1x00yZi6+yExxulnmZlI2alfBr+cRweXKgDn+h1mmbZ7
 eBAqX8AtClxgdScoAosyiWjrxblS2iVmfcV+Tas=
X-Google-Smtp-Source: APXvYqzVAIMvmzOXzIjb8en0KWeCG4Yp6la02S+G7LSrtyaX1iBKqdgps6COS4Dy32ficJ3yWMXhqJdHmlcipenvR1c=
X-Received: by 2002:a05:6830:1089:: with SMTP id
 y9mr5269545oto.176.1574888481942; 
 Wed, 27 Nov 2019 13:01:21 -0800 (PST)
MIME-Version: 1.0
References: <20191106193609.19645-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191106193609.19645-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdVZwgVnq2kwjNJQHfvUH0sk6M7Hz-AJR82jMOsCNfW9wQ@mail.gmail.com>
 <CA+V-a8swtOUaxKnCdiTV5wvvxLEJ6XdODL=7bvQmFKY0zQTj2w@mail.gmail.com>
 <CAMuHMdXkbWkQgswMNL7Dw7_jucH+MsuAW+-CjoGVYsm=tjShRw@mail.gmail.com>
 <20191113040802.GA8269@bogus> <3b218f7f-78a8-c158-80ac-67a3b9f5970c@ti.com>
In-Reply-To: <3b218f7f-78a8-c158-80ac-67a3b9f5970c@ti.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 27 Nov 2019 21:00:55 +0000
Message-ID: <CA+V-a8u5B4CdQZw6dxKd2xfs56UsghMKMrRd=2g4yo8bmCgkXQ@mail.gmail.com>
Subject: Re: [PATCH 3/5] PCI: rcar: Add R-Car PCIe endpoint device tree
 bindings
To: Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_130123_195808_D9659471 
X-CRM114-Status: GOOD (  32.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pci <linux-pci@vger.kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Magnus Damm <magnus.damm@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kishon,

On Wed, Nov 27, 2019 at 5:45 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> Hi,
>
> On 13/11/19 9:38 AM, Rob Herring wrote:
> > On Thu, Nov 07, 2019 at 09:08:35PM +0100, Geert Uytterhoeven wrote:
> >> Hi Prabhakar,
> >>
> >> On Thu, Nov 7, 2019 at 10:26 AM Lad, Prabhakar
> >> <prabhakar.csengg@gmail.com> wrote:
> >>> On Thu, Nov 7, 2019 at 8:44 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> >>>> On Wed, Nov 6, 2019 at 8:36 PM Lad Prabhakar <prabhakar.csengg@gmail.com> wrote:
> >>>>> From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >>>>>
> >>>>> This patch adds the bindings for the R-Car PCIe endpoint driver.
> >>>>>
> >>>>> Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >>>>
> >>>> Thanks for your patch!
> >>>>
> >>>>> --- /dev/null
> >>>>> +++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
> >>>>> @@ -0,0 +1,43 @@
> >>>>> +* Renesas R-Car PCIe Endpoint Controller DT description
> >>>>> +
> >>>>> +Required properties:
> >>>>> +           "renesas,pcie-ep-r8a774c0" for the R8A774C0 SoC;
> >>>>> +           "renesas,pcie-ep-rcar-gen3" for a generic R-Car Gen3 or
> >>>>> +                                    RZ/G2 compatible device.
> >>>>
> >>>> Unless I'm missing something, this is for the exact same hardware block as
> >>>> Documentation/devicetree/bindings/pci/rcar-pci.txt?
> >>>> So shouldn't you amend those bindings, instead of adding new compatible
> >>>> values?
> >>>> Please remember that DT describes hardware, not software policy.
> >>>> So IMHO choosing between host and endpoint is purely a configuration
> >>>> issue, and could be indicated by the presence or lack of some DT properties.
> >>>> E.g. host mode requires both "bus-range" and "device_type" properties,
> >>>> so their absence could indicate endpoint mode.
> >>>>
> >>> yes its the same hardware block as described in the rcar-pci.txt, I
> >>> did think about amending it
> >>> but  it might turn out to be bit messy,
> >>>
> >>> required properties host ======required properties Endpoint
> >>> ====================||==================
> >>> 1: reg                                || reg
> >>> 2:bus-range                      || reg names
> >>> 3: device_type                  || resets
> >>> 4: ranges                          || clocks
> >>> 5: dma-ranges                  || clock-names
> >>> 6: interrupts                      ||
> >>> 7: interrupt-cells               ||
> >>> 8: interrupt-map-mask     ||
> >>> 9: clocks                          ||
> >>> 10: clock-names             ||
> >>
> >> We have a similar situation with SPI, where a controller can operate in
> >> master or slave mode, based on the absence or presence of the
> >> "spi-slave" DT property.
> >>
> >>> and if I go ahead with the same compatible string that would mean to
> >>> add support for endpoint
> >>> mode in the host driver itself. I did follow the examples of
> >>
> >> You can still have two separate drivers, binding against the same
> >> compatible value.  Just let the .probe() function return -ENODEV if it
> >> discovers (by looking at DT properties) if the node is configured for
> >> the other mode.
> >> Which brings us to my next questions: is there any code that could be
> >> shared between the drivers for the two modes?
> >>
> >>> rockchip/cadence/designware where
> >>> its the same hardware block but has two different binding files one
> >>> for host mode and other for
> >>> endpoint mode.
> >>
> >> Having two separate DT binding documents sounds fine to me, if unifying
> >> them makes things too complex.
> >> However, I think they should use the same compatible value, because the
> >> hardware block is the same, but just used in a different mode.
> >>
> >> Rob/Mark: Any input from the DT maintainers?
> >
> > Separate files makes sense because different modes will want to
> > include different common schemas. We've generally been doing different
> > compatibles too which makes validating the node has the right set of
> > properties easier.
> >
> >>>>> +- reg: Five register ranges as listed in the reg-names property
> >>>>> +- reg-names: Must include the following names
> >>>>> +       - "apb-base"
> >>>>> +       - "memory0"
> >>>>> +       - "memory1"
> >>>>> +       - "memory2"
> >>>>> +       - "memory3"
> >>>>
> >>>> What is the purpose of the last 4 regions?
> >>>> Can they be chosen by the driver, at runtime?
> >>>>
> >>> no the driver cannot choose them at runtime, as these are the only
> >>> PCIE memory(0/1/2/3) ranges
> >>> in the AXI address space where host memory can be mapped.
> >>
> >> Are they fixed by the PCIe hardware, i.e. could they be looked up by the
> >> driver based on the compatible value?
> >
> > That would be strange for a memory range.
> >
> > Sounds like like 'ranges' though I'm not sure if 'ranges' for an EP
> > makes sense or what that should look like.
>
> These are similar to "memory node" with multiple address, size pairs. I'm
> thinking if these should be added as a subnode within PCIe EP controller device
> tree node?
>
+1

something similar like below ?

       pcie_ep: pcie_ep@fe000000 {
               compatible = "renesas,pcie-r8a7791", "renesas,pcie-rcar-gen2";
               reg = <0 0xfe000000 0 0x80000>;
               reg-names = "apb-base";
               clocks = <&cpg CPG_MOD 319>;
               clock-names = "pcie";
               power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
               resets = <&cpg 319>;
               mem-region {
                       base =  <0x0 0xfe100000 0 0x100000>,
                                    <0x0 0xfe200000 0 0x200000>,
                                    <0x0 0x30000000 0 0x8000000>,
                                    <0x0 0x38000000 0 0x8000000>;
                };
       };

Cheers,
--Prabhakar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
