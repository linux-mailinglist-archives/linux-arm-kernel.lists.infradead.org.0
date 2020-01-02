Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 603BD12E404
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 09:48:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TD32TnUZb9chv/IWLQx4CaQjYxzX7SeTqJqL7VwZwro=; b=WlHpWYJhIsNwTK
	lNOjIl5kuRVS7BxUgUApNXLCH94Ouf5QsSY2EB1j5Mo/IKpkDB6Wx7GsRmQYsfES2ZZnhHhPtRsD3
	FxfRCu9z9muRlUyfR+wdmKRpHm9QDZRHykjgaZcW4WDcOLfsFVWfmgNJRvKT1uKdBq0o9e/WEszOk
	r+w6RXU7LUBkIwVwPulhVZ0AIWnpI9zGIE0YltlZY6T+ABnmJEH+qkHzL9W2poP8ouViEjRRWUyk/
	xZ9bmSiJ7Fq85e6OLIY4Ne9k94aGuTbHEuHsIjAYioBzZQqsicrpzWX1w9mxdpXStoqEeEJoa4hU/
	x+sisnF1uTddqLldvH2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imw9W-0006Et-29; Thu, 02 Jan 2020 08:48:22 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imw9O-0006ED-Pd; Thu, 02 Jan 2020 08:48:16 +0000
Received: by mail-ot1-x344.google.com with SMTP id 59so56151763otp.12;
 Thu, 02 Jan 2020 00:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lYK3JQAmW07FRU5GuNZTgBOd+vjFiils6tG0VLmuyGE=;
 b=XvrNbulzxprjJqi8RpScnA140KqOgH0A3KIwDYeZHKhtNqXpKqoIH3DkDmMCVQ4mUL
 UwesBRnFDTc16aXYRWU9fFLStptClVcntJFNz6OyMjwF05UXavP3leAtsROoVh410vm+
 jUwytle5bVp/DrZEhUKPxt7VGX15m/li3nhKMCPQHhUUfTMLo4HrwFfUuHyhLRmPJosc
 ZVN+FIUAGNI58UFohnNWgK+pW61uPy/3SkM8oE8zY+MwPijr+Ibg7angTkInKzlKJqfa
 UB5p84iBYkGvBSTVKgL5bpv2MgeEExqeZUGno4Xaoq9OwJaoN+NtTQiaOofpO6zyJYpl
 4DsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lYK3JQAmW07FRU5GuNZTgBOd+vjFiils6tG0VLmuyGE=;
 b=mMHGPmcjRaYWbg8sfqzbLUx9W8X1xl2XTrJOeS0GhLmimZM6vsemEGhARav1RkogcQ
 PNFlpB2Q2HmK+eeyA+loIt/3gHtfAhZWPXg/y3irU75NL+iu3q7gyK8W5jOwoYgRFyz4
 rfo0nTgd9VP4nIShNAV4YWXE2bWNiCGw5xw2DgKr+Zbds5W+2CYArn3LBFYrOrMPTA97
 3iuC5eQvz4x1exbFA7kLcioyTBT7zUDpjWwBvBIRQXbI3i9haCwl/o4aXiSvnAUqjaZg
 T8kwBz7uCkERLxrqJ1JNZZEEo9rfUalLhX6rxHfOB1vxiiZbe39fxvNrtzVAxDk/GGDf
 Mzfg==
X-Gm-Message-State: APjAAAXunXshiFgYooE+FZLFRSXPBw11Xq36uLZFKFZOfSJQcuYYHJYR
 AphJv2k47AnxjexjIJPfW+D3ODtV4GKmWNmaI3w=
X-Google-Smtp-Source: APXvYqxeuKbXHxGtyzku07WE9C0N/ua7Tl5Z8JOlkhllIuUswqzYTzv/m5bf/QtdXNVE3v+FavUIVxFQjdB8xF8hNl8=
X-Received: by 2002:a05:6830:1188:: with SMTP id
 u8mr91290992otq.274.1577954893533; 
 Thu, 02 Jan 2020 00:48:13 -0800 (PST)
MIME-Version: 1.0
References: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191213084748.11210-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191219233525.GA9478@bogus>
In-Reply-To: <20191219233525.GA9478@bogus>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 2 Jan 2020 08:47:47 +0000
Message-ID: <CA+V-a8vO_3P3vDFVuKLJAK7v99E7qKVAei0Kmba8tKist7mAaw@mail.gmail.com>
Subject: Re: [v2 4/6] dt-bindings: PCI: rcar: Add bindings for R-Car PCIe
 endpoint controller
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_004814_832918_8CB2FFD0 
X-CRM114-Status: GOOD (  21.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.csengg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-pci <linux-pci@vger.kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Frank Rowand <frowand.list@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>,
 Arnd Bergmann <arnd@arndb.de>, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Simon Horman <horms@verge.net.au>, Bjorn Helgaas <bhelgaas@google.com>,
 LAK <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Tom Joseph <tjoseph@cadence.com>, Jingoo Han <jingoohan1@gmail.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

Thank you for the review.

On Thu, Dec 19, 2019 at 11:35 PM Rob Herring <robh@kernel.org> wrote:
>
> On Fri, Dec 13, 2019 at 08:47:46AM +0000, Lad Prabhakar wrote:
> > From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > This patch adds the bindings for the R-Car PCIe endpoint driver.
> >
> > Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> >  .../devicetree/bindings/pci/rcar-pci-ep.txt        | 37 ++++++++++++++++++++++
> >  1 file changed, 37 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
>
> Please make this a DT schema.
>
sure will do.

> >
> > diff --git a/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
> > new file mode 100644
> > index 0000000..7f0a97e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
> > @@ -0,0 +1,37 @@
> > +* Renesas R-Car PCIe Endpoint Controller DT description
> > +
> > +Required properties:
> > +         "renesas,pcie-ep-r8a774c0" for the R8A774C0 SoC;
>
> Normal ordering is: renesas,r8a774c0-pcie-ep
>
> > +         "renesas,pcie-ep-rcar-gen3" for a generic R-Car Gen3 or
> > +                                  RZ/G2 compatible device.
> > +
> > +         When compatible with the generic version, nodes must list the
> > +         SoC-specific version corresponding to the platform first
> > +         followed by the generic version.
> > +
> > +- reg: base address and length of the PCIe controller registers.
> > +- outbound-ranges: outbound windows base address and length including the flags.
> > +- resets: Must contain phandles to PCIe-related reset lines exposed by IP block
>
> How many?
>
should be one.

> > +- clocks: from common clock binding: clock specifiers for the PCIe controller
> > +      clock.
> > +- clock-names: from common clock binding: should be "pcie".
> > +
> > +Optional Property:
> > +- max-functions: Maximum number of functions that can be configured (default 1).
> > +
> > +Example:
> > +
> > +SoC-specific DT Entry:
> > +
> > +     pcie_ep: pcie_ep@fe000000 {
>
> pcie-ep@
>
will fix that.

Cheers,
--Prabhakar

> > +             compatible = "renesas,pcie-ep-r8a774c0", "renesas,pcie-rcar-gen2";
> > +             reg = <0 0xfe000000 0 0x80000>;
> > +             outbound-ranges = <0xa 0x0 0xfe100000 0 0x000100000
> > +                                0xa 0x0 0xfe200000 0 0x000200000
> > +                                0x6 0x0 0x30000000 0 0x008000000
> > +                                0x6 0x0 0x38000000 0 0x008000000>;
> > +             clocks = <&cpg CPG_MOD 319>;
> > +             clock-names = "pcie";
> > +             power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
> > +             resets = <&cpg 319>;
> > +     };
> > --
> > 2.7.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
