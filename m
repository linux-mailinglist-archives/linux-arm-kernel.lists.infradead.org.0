Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0EE3F2A92
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 10:26:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/3dpyEdFxBSoh6CO1Q+ZCzljoDmFHIIvLqhvsVQeC/E=; b=SwqNwEpSZmMeFk
	elh7v11+iBjjjovg8YBB3JlIMMBO9om98Db3y2AqAQKkWz5s9oTsC7P0Irrz3q6cg9Has1mqIRJGp
	5pBHb1khNvSs9xyKF4dmhPXPCoChabWpO/py+QW2/72dEHWBD6e3kA5fJt74InuFxi0vQymP9ot2I
	vR+qoaqj5MeR6Cu0eNftB1aoNanDyU/bkNUMoIYXZQf7M4TdcUDNDhuHjYrXYML7BS/yY0l9nBQbe
	6Bl9c0sNFU8GWqwGdM++eobWLR93NheKn1E8+T0MinTpCqUegBCTSRQny4bjK0TV24zPxHfhm7lDy
	amGu7NF953b5Qul/hCIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSe3l-0006ur-D7; Thu, 07 Nov 2019 09:26:33 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSe3O-0006ju-EK
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 09:26:13 +0000
Received: by mail-oi1-x244.google.com with SMTP id a14so1366123oid.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 01:26:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=svJecAxqhlBawitftrz5LXbFY8d5ATbDsx3obREbmBk=;
 b=JaRiVyVnWoErWMwSLJsT3edCIFkLrM3bw9K+3t2YOtpGSIe5jPWeSfJJ3zV3UcGXyj
 wwR2NS63eTI2jFJYHyvrY1LIrbvvYORCOjhiH8sOou1LG6PPH6s0hxYi668s+Ia/fGNp
 mD+dKjP+i/vpXdma4xZtepheZ7yutdc9rzN+mceieTuhWlkhAMrPEFb/Jt3ett6SzSg9
 ELmfrBZVVLKH9oU9mvJlKOogzz4Xf2ygwEAneNX6k9Q9/CL4uLnu6olfZ/Y8MyINIPDf
 l05fDkGxYqctkz/xtGJFKge5gK+fg8G8ZLe5jNs9w3+fRrpZp6HQVuJW4G6WswW642hk
 BRQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=svJecAxqhlBawitftrz5LXbFY8d5ATbDsx3obREbmBk=;
 b=OkIndQl32ADQzrlTc6RQCUyW+9LyMcIxsmXeX1pEueL5OgOH2ilEPxpz8zhDdI5KKc
 9BgrgEpnM2JVBhJR3uqLLoO9e/4ZJTmlE1ubJlaoUw6Uh45dRW4vnr+zgMHuycJEzSM9
 HtOpJHKWO4Xq2WqfkHyTmsHVD4RWgiles80aGmYeWdD1vANvz0tBSbhD0JDR+l4kNH9F
 lF6XKV6KcOMmJMb6hsyAbyS69G+XUtoJGGR63C39LPtNLeFSvYFGM1oANR+s/iEens3H
 ZZbKuiJjP4RKXwhGx6r1KNmHDxel0yZzPGOwcuUr86w9GZrT0I0HetKPc3gcH5Y8ZzPI
 33Dw==
X-Gm-Message-State: APjAAAWQEyEoCh4BPv0pnKVuGLKYljJ+/WwGk+5rnro7NkfnbHK1tKxb
 QOBi6j02Nx32YI5PwQKgBsb7o/gkqXzs2mx7r1U=
X-Google-Smtp-Source: APXvYqzl/mjJb58YCZv+1rPoz9YmBODStqICfxXp/t7vlm94pbfdzMz/foObeQbkPEnjt5Qa5497EWxx2Gk87u9uMzM=
X-Received: by 2002:aca:5cc6:: with SMTP id q189mr2405318oib.101.1573118768684; 
 Thu, 07 Nov 2019 01:26:08 -0800 (PST)
MIME-Version: 1.0
References: <20191106193609.19645-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191106193609.19645-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdVZwgVnq2kwjNJQHfvUH0sk6M7Hz-AJR82jMOsCNfW9wQ@mail.gmail.com>
In-Reply-To: <CAMuHMdVZwgVnq2kwjNJQHfvUH0sk6M7Hz-AJR82jMOsCNfW9wQ@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 7 Nov 2019 09:25:42 +0000
Message-ID: <CA+V-a8swtOUaxKnCdiTV5wvvxLEJ6XdODL=7bvQmFKY0zQTj2w@mail.gmail.com>
Subject: Re: [PATCH 3/5] PCI: rcar: Add R-Car PCIe endpoint device tree
 bindings
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_012610_496253_C781E7B4 
X-CRM114-Status: GOOD (  27.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
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
 Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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

Thank you for the review.

On Thu, Nov 7, 2019 at 8:44 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Prabhakar,
>
> On Wed, Nov 6, 2019 at 8:36 PM Lad Prabhakar <prabhakar.csengg@gmail.com> wrote:
> > From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > This patch adds the bindings for the R-Car PCIe endpoint driver.
> >
> > Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Thanks for your patch!
>
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
> > @@ -0,0 +1,43 @@
> > +* Renesas R-Car PCIe Endpoint Controller DT description
> > +
> > +Required properties:
> > +           "renesas,pcie-ep-r8a774c0" for the R8A774C0 SoC;
> > +           "renesas,pcie-ep-rcar-gen3" for a generic R-Car Gen3 or
> > +                                    RZ/G2 compatible device.
>
> Unless I'm missing something, this is for the exact same hardware block as
> Documentation/devicetree/bindings/pci/rcar-pci.txt?
> So shouldn't you amend those bindings, instead of adding new compatible
> values?
> Please remember that DT describes hardware, not software policy.
> So IMHO choosing between host and endpoint is purely a configuration
> issue, and could be indicated by the presence or lack of some DT properties.
> E.g. host mode requires both "bus-range" and "device_type" properties,
> so their absence could indicate endpoint mode.
>
yes its the same hardware block as described in the rcar-pci.txt, I
did think about amending it
but  it might turn out to be bit messy,

required properties host ======required properties Endpoint
====================||==================
1: reg                                || reg
2:bus-range                      || reg names
3: device_type                  || resets
4: ranges                          || clocks
5: dma-ranges                  || clock-names
6: interrupts                      ||
7: interrupt-cells               ||
8: interrupt-map-mask     ||
9: clocks                          ||
10: clock-names             ||

and if I go ahead with the same compatible string that would mean to
add support for endpoint
mode in the host driver itself. I did follow the examples of
rockchip/cadence/designware where
its the same hardware block but has two different binding files one
for host mode and other for
endpoint mode.

> > +- reg: Five register ranges as listed in the reg-names property
> > +- reg-names: Must include the following names
> > +       - "apb-base"
> > +       - "memory0"
> > +       - "memory1"
> > +       - "memory2"
> > +       - "memory3"
>
> What is the purpose of the last 4 regions?
> Can they be chosen by the driver, at runtime?
>
no the driver cannot choose them at runtime, as these are the only
PCIE memory(0/1/2/3) ranges
in the AXI address space where host memory can be mapped.

> > +- resets: Must contain phandles to PCIe-related reset lines exposed by IP block
> > +- clocks: from common clock binding: clock specifiers for the PCIe controller
> > +        clock.
> > +- clock-names: from common clock binding: should be "pcie".
> > +
> > +Optional Property:
> > +- max-functions: Maximum number of functions that can be configured (default 1).
> > +
> > +Example:
> > +
> > +SoC-specific DT Entry:
> > +
> > +       pcie_ep: pcie_ep@fe000000 {
> > +               compatible = "renesas,pcie-r8a7791", "renesas,pcie-rcar-gen2";
>
> These compatible values do not match with the ones above
> (but they match with what I'd like to see ;-)
>
my bad I'll update them to reflect the above.

Cheers,
--Prabhakar

> > +               reg = <0 0xfe000000 0 0x80000>,
> > +                       <0x0 0xfe100000 0 0x100000>,
> > +                       <0x0 0xfe200000 0 0x200000>,
> > +                       <0x0 0x30000000 0 0x8000000>,
> > +                       <0x0 0x38000000 0 0x8000000>;
> > +               reg-names = "apb-base", "memory0", "memory1", "memory2", "memory3";
> > +               clocks = <&cpg CPG_MOD 319>;
> > +               clock-names = "pcie";
> > +               power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
> > +               resets = <&cpg 319>;
> > +       };
>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
