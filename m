Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F000A13A297
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 09:12:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1jElW/GS2ANpE6vm0Z5Z3G4GTvID02xmEV7X2Zzyas=; b=kIyX9ios4MMlXL
	BcAvWzmJg0vkoKfwrxqKrfsSioTqweqkA2ndAxjhXk4+ca2NaRO6bAvh51kgcpSKYnHtK2PbtPXdm
	btNjG8Bkd/5lsezzfll2XtVAYN4umx6Z5TK4L332wWh8FhDz7hVmf0LVbGGw2l6S+V7OgvOphFOiq
	COCsjSAxxUMPsV6W3EoD8+Y/4lo0ijFA921gxU+Q5bfKlyciiNPFiTW/H0yHuVeQVDOxxPHScGOVz
	nEAK6lgs4SEeBbJ5T3EVY0D12jtmLiaPPWPTRuVTVdTUWn01VoKstim7WVaXChT8VDj16PMtSXuPT
	T/dE4Jtv4dj/SPAB9h+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irHIq-0005BO-Se; Tue, 14 Jan 2020 08:11:56 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irHIa-00056L-T2; Tue, 14 Jan 2020 08:11:42 +0000
Received: by mail-oi1-x242.google.com with SMTP id p125so10967281oif.10;
 Tue, 14 Jan 2020 00:11:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ESgbHWyyXZkUE+Zt5y6qd3pCusxZlx2vlVaiZEg9MHY=;
 b=qs1x37BdbYn5t6+23mL0IE+dw5g0PGcS5ldK99AKnwJhurHow1kPcdhAGd29oDAm8D
 vZBnicg0mFy4ulUyWo0e8COjmB12/uPF+VtzOLHMl3i2Y1CA3Ok+t56Iw7roc0KjzqaL
 oP5L7jiNCAM4qY4BkmOi/LHpeFyDNKziaX5S1OHwT9HS2QKe7wriSs4oHZJxZyRmwF+I
 yVc/UuBYs6IkcHdWcknqLstN1X15uGDB/JZ1R29VlAT0nx8/An6hzNW9Qbqclaec5XYC
 4dh6dw3o/hl+Q22PdhB8rlk0cLlApYHShdgEnK3Tts+cco5LAo1nulGT+ZpVyzFZBbHQ
 SF7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ESgbHWyyXZkUE+Zt5y6qd3pCusxZlx2vlVaiZEg9MHY=;
 b=pw2YH1fTyun3YK0lHWZVuXRFEzTSAJOvM6r1/hL8l+DnmG91y+hNp31TZppOiKzd+Z
 VuhsghtGE1pO2alBCBNZTNuyRfmdtseJZeDTVHPo+Tpg0Bo1XHGqlQWQiSMdAzf5lVdQ
 eOD7/Z3fUF/e/l7j+axRHftCeWl+KcUBYcGTapeDooQoFNc7GEQ3cKdrFDD5b1F/G7ed
 DYeG4S8OykUF1Oe2JKEZ4A/yb6ntLbI5VPGnUuxIOeAwXVK7OCX+Sxyv+jpjetvRjDzY
 SkweAi/8Sk46WW53FIleO91b6/AwGzbfa3gEjDR0+tVs15Z1xE9qMmfmUwsS2jB79tLY
 QT7Q==
X-Gm-Message-State: APjAAAUaB9CSBo8ipUAb2A0pq5j/zEZH7yoTGSX1XFVzGLXc8DhzZw+s
 kmwhEsfULTr89c7SKesi9xA23x5p1XFHqhu+ytw=
X-Google-Smtp-Source: APXvYqzCDP1HlSPkjT+Ko+pskg045pRBOTrM+W3f2eEy7IcfuScVnML1cmr+MHU+++hW/8MQQKSTseULh6yeUpc2qVo=
X-Received: by 2002:aca:1309:: with SMTP id e9mr15897662oii.7.1578989498871;
 Tue, 14 Jan 2020 00:11:38 -0800 (PST)
MIME-Version: 1.0
References: <20200108162211.22358-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200108162211.22358-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200113212252.GA3120@bogus>
In-Reply-To: <20200113212252.GA3120@bogus>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 14 Jan 2020 08:11:12 +0000
Message-ID: <CA+V-a8sP=zTU1UAbXBWCpAn0uduNnUg+JEK0-y8G-4dV4AVVGQ@mail.gmail.com>
Subject: Re: [v3 4/6] dt-bindings: PCI: rcar: Add bindings for R-Car PCIe
 endpoint controller
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_001140_944509_05358B6A 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.csengg[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Will Deacon <will@kernel.org>, Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Frank Rowand <frowand.list@gmail.com>, Magnus Damm <magnus.damm@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
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

thank you for the review.

On Mon, Jan 13, 2020 at 9:23 PM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Jan 08, 2020 at 04:22:09PM +0000, Lad Prabhakar wrote:
> > This patch adds the bindings for the R-Car PCIe endpoint driver.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> >  .../devicetree/bindings/pci/rcar-pci-ep.yaml  | 76 +++++++++++++++++++
> >  1 file changed, 76 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
>
> Fails 'make dt_binding_check':
>
> Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml: $id:
> path/filename 'pci/rcar-pcie-ep.yaml' doesn't match actual filename
>
my bad fill that and post a v4.

Cheers,
--Prabhakar Lad
> >
> > diff --git a/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml b/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
> > new file mode 100644
> > index 000000000000..99c2a1174463
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
> > @@ -0,0 +1,76 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +# Copyright (C) 2020 Renesas Electronics Europe GmbH - https://www.renesas.com/eu/en/
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/pci/rcar-pcie-ep.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Renesas R-Car PCIe Endpoint
> > +
> > +maintainers:
> > +  - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - const: renesas,r8a774c0-pcie-ep
> > +      - const: renesas,rcar-gen3-pcie-ep
> > +
> > +  reg:
> > +    maxItems: 5
> > +
> > +  reg-names:
> > +    items:
> > +      - const: apb-base
> > +      - const: memory0
> > +      - const: memory1
> > +      - const: memory2
> > +      - const: memory3
> > +
> > +  power-domains:
> > +    maxItems: 1
> > +
> > +  resets:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    items:
> > +      - const: pcie
> > +
> > +  max-functions:
> > +    minimum: 1
> > +    maximum: 6
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - reg-names
> > +  - resets
> > +  - power-domains
> > +  - clocks
> > +  - clock-names
> > +  - max-functions
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/r8a774c0-cpg-mssr.h>
> > +    #include <dt-bindings/power/r8a774c0-sysc.h>
> > +
> > +     pcie0_ep: pcie-ep@fe000000 {
> > +            compatible = "renesas,r8a774c0-pcie-ep",
> > +                         "renesas,rcar-gen3-pcie-ep";
> > +            reg = <0 0xfe000000 0 0x80000>,
> > +                  <0x0 0xfe100000 0 0x100000>,
> > +                  <0x0 0xfe200000 0 0x200000>,
> > +                  <0x0 0x30000000 0 0x8000000>,
> > +                  <0x0 0x38000000 0 0x8000000>;
> > +            reg-names = "apb-base", "memory0", "memory1", "memory2", "memory3";
> > +            resets = <&cpg 319>;
> > +            power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
> > +            clocks = <&cpg CPG_MOD 319>;
> > +            clock-names = "pcie";
> > +            max-functions = /bits/ 8 <1>;
> > +    };
> > --
> > 2.20.1
> >
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
