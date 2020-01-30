Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE35314E452
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 21:54:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RBgi3gI0AQboovVHYHT7KrwZpL9diaYq1BukieRALgk=; b=CKse5II72LKe5h
	J2SNQB9ZIF703KE5GJU+gztjVAlLP+/pio5fHgOLIS+BeoP43KO/iztt5DB8S8blDdcVzMhFIyOjF
	dXfcm84TKUNOg4OcAT4gxt8dYSsX74rbBdFmxknVn4mdA55SHk2VPSEzS8GyFCJloTZGk26SpO5cN
	p0GnSMNQ2OCfaorztKZ1opkFmv/NV+45ef1qyGY52tCxEzDMxT4SWXxG/S6vG36Z/y6nHrQuZoSDI
	m92hYABL+TPsqW3fogebWLPF6OTON6vbgdF1RX6xA3ZYmd5qlzD2LKQYNRHHiRLnlztpBc2ePDeC0
	sUiRbOlbG4chRDOfachg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixGpu-0007Hh-Fq; Thu, 30 Jan 2020 20:54:50 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixGpl-0007Gc-Ji; Thu, 30 Jan 2020 20:54:44 +0000
Received: by mail-ot1-x343.google.com with SMTP id g15so4476704otp.3;
 Thu, 30 Jan 2020 12:54:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gywvdJG4S8zg1F0N8TnRS+h5mKkXnwAKlRZJYdtt1ZA=;
 b=fqfQnsIOmo8FmmJdsz2QjZwzZa6CYUyDAHwdulBh0jkPnMA2cImjHHcOxHjDXmQxpK
 T6gAsbqbhlv3FqXjp2FtLtncpIuSJcy8c0KH8OQQJTA88lgBhyNTywMuTRS39yqoLn9e
 otCeRvbEC+QbtcPgCrRsBKdFutoKjpNJThPflcqDwcA6dn9elZQwW4cAmhwrC0l8nrWf
 yuiA5qOtgXUUsuFXmYRkCEKFgLvGn+d6kknn2KBw3Y513xLJzFWTdVL5+bfddX62jeJc
 U1SjOTbI/s0t/d877OkaPGV10zeH/1DLghuVq4hmhPkuDAIUTiTWYoPaMvWgvAXhqAx7
 aSHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gywvdJG4S8zg1F0N8TnRS+h5mKkXnwAKlRZJYdtt1ZA=;
 b=dz2LbxJJsO1nfWXI2GdkRQhceNr+IA9FbSvNItXYW/glBot+WzNFGyg+ZYPxSFIdco
 FiTO3aNQF50531XOuoXji2hIVcBD18XR9BrvJsMpTyfpIV3pNebpc8sW2JZeqbujcJnh
 AVDRmDP5+m+VB9mfsx3eAKwG6twFXj6JSaOvgZ4133rDwUSxfP/7ogk2zwguTV/r2d4B
 TvkyS/ELI8xxveOguHCotVGG2+cYjXPwkrbnfIpndT5cTZkkGsQxM677OFxL1NS8byKZ
 PUIY7hJzBp7VgwbMrSGPvSp4JHf0ZXsbXUdbc18C4bPLdVx2LQ+TdsBiHAhc1k96suFl
 PKGA==
X-Gm-Message-State: APjAAAXeZcpk6NCNsOJPGSnUmPtS2X8W/xtHd9zsXMqMwWZ4cvZA/Bcf
 TU/l5KwBJZSl4bs/t4uizYwQkeLMBuMf8IcwuIQ=
X-Google-Smtp-Source: APXvYqwBCKF8eCODlztMB8ORP0u3uiwR5t2s2nCfZgKiHWS07FIMyZ3kn6caD7U18ugZfY2NZqr0ejOUQrOc2egVDVs=
X-Received: by 2002:a9d:64ca:: with SMTP id n10mr5023218otl.325.1580417680064; 
 Thu, 30 Jan 2020 12:54:40 -0800 (PST)
MIME-Version: 1.0
References: <20200108162211.22358-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200108162211.22358-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CA+V-a8s1Jx8uZiSr0uiryS492EbFRoFg9QTwkosZsuyfRYp-3g@mail.gmail.com>
 <9c65eb7a-539b-1fa3-f988-40c32aa8dfe3@ti.com>
In-Reply-To: <9c65eb7a-539b-1fa3-f988-40c32aa8dfe3@ti.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 30 Jan 2020 20:54:13 +0000
Message-ID: <CA+V-a8th3eysn0s2q9EEAqQb7vfd3bNcL=ow_z8tSWAC6K=iJw@mail.gmail.com>
Subject: Re: [v3 4/6] dt-bindings: PCI: rcar: Add bindings for R-Car PCIe
 endpoint controller
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_125441_674236_0433D11D 
X-CRM114-Status: GOOD (  23.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Wed, Jan 22, 2020 at 8:13 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> Hi Prabhakar,
>
> On 21/01/20 11:27 PM, Lad, Prabhakar wrote:
> > Hi Rob/Kishon,
> >
> > On Wed, Jan 8, 2020 at 4:22 PM Lad Prabhakar <prabhakar.csengg@gmail.com> wrote:
> >>
> >> This patch adds the bindings for the R-Car PCIe endpoint driver.
> >>
> >> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >> ---
> >>  .../devicetree/bindings/pci/rcar-pci-ep.yaml  | 76 +++++++++++++++++++
> >>  1 file changed, 76 insertions(+)
> >>  create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
> >>
> >> diff --git a/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml b/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
> >> new file mode 100644
> >> index 000000000000..99c2a1174463
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
> >> @@ -0,0 +1,76 @@
> >> +# SPDX-License-Identifier: GPL-2.0
> >> +# Copyright (C) 2020 Renesas Electronics Europe GmbH - https://www.renesas.com/eu/en/
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/pci/rcar-pcie-ep.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: Renesas R-Car PCIe Endpoint
> >> +
> >> +maintainers:
> >> +  - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >> +
> >> +properties:
> >> +  compatible:
> >> +    items:
> >> +      - const: renesas,r8a774c0-pcie-ep
> >> +      - const: renesas,rcar-gen3-pcie-ep
> >> +
> >> +  reg:
> >> +    maxItems: 5
> >> +
> >> +  reg-names:
> >> +    items:
> >> +      - const: apb-base
> >> +      - const: memory0
> >> +      - const: memory1
> >> +      - const: memory2
> >> +      - const: memory3
>
> As I had mentioned in the other patch, I'd prefer if we can create
> standard binding for representing the memory regions. IMHO we should
> create subnode for memory regions Each sub-node itself may or may not
> have more than one memory region.
>
> In your platform, since there can be only one allocation in a memory
> region, there should be 4 sub-nodes for each of the memory region and
> each node should have page_size (or some equivalent property) property
> to indicate page_size (= region_size).
>
> For a platform that doesn't have the restriction, there can be a single
> sub-node containing all the memory region.
>
> Let's wait for Rob's comment though.
>
Gentle ping.on the suggestions above.

Cheers,
--Prabhakar

> Thanks
> Kishon
> >> +
> >> +  power-domains:
> >> +    maxItems: 1
> >> +
> >> +  resets:
> >> +    maxItems: 1
> >> +
> >> +  clocks:
> >> +    maxItems: 1
> >> +
> >> +  clock-names:
> >> +    items:
> >> +      - const: pcie
> >> +
> >> +  max-functions:
> >> +    minimum: 1
> >> +    maximum: 6
> >> +
> >> +required:
> >> +  - compatible
> >> +  - reg
> >> +  - reg-names
> >> +  - resets
> >> +  - power-domains
> >> +  - clocks
> >> +  - clock-names
> >> +  - max-functions
> >> +
> > apart from dt_binding_check error are we OK with dt bindings ?
> >
> > Cheers,
> > --Prabhakar
> >
> >> +examples:
> >> +  - |
> >> +    #include <dt-bindings/clock/r8a774c0-cpg-mssr.h>
> >> +    #include <dt-bindings/power/r8a774c0-sysc.h>
> >> +
> >> +     pcie0_ep: pcie-ep@fe000000 {
> >> +            compatible = "renesas,r8a774c0-pcie-ep",
> >> +                         "renesas,rcar-gen3-pcie-ep";
> >> +            reg = <0 0xfe000000 0 0x80000>,
> >> +                  <0x0 0xfe100000 0 0x100000>,
> >> +                  <0x0 0xfe200000 0 0x200000>,
> >> +                  <0x0 0x30000000 0 0x8000000>,
> >> +                  <0x0 0x38000000 0 0x8000000>;
> >> +            reg-names = "apb-base", "memory0", "memory1", "memory2", "memory3";
> >> +            resets = <&cpg 319>;
> >> +            power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
> >> +            clocks = <&cpg CPG_MOD 319>;
> >> +            clock-names = "pcie";
> >> +            max-functions = /bits/ 8 <1>;
> >> +    };
> >> --
> >> 2.20.1
> >>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
