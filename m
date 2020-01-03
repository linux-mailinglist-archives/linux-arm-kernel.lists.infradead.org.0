Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE30C12FA62
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 17:29:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZMqpFeydiJqZjUMw8MOMfnHB9+xc+aZWEr8m73i5cRw=; b=sK/hwGMHPoXlSn
	YcOgDrfSkcBwcNVUSbvcM0PQ5bTvR1njJFwGNrLNaXF7krsTn8ZTHE6VIwgh85x46vrwYKUmhgaS9
	I+SA7foqNFP4RYeA5eQqgYsPRG88OPbicg4rLRFWqbDxGfYvr7cXl+WTI04MhiUrbX9A3ThQX2b4v
	dyWkVGrPzYhq0ioUk44cGLJ9PI9wAFmmux4zEIybvIyxFxGchvg+M/4qlH5FYx976QYfkHcRx+iH+
	LzQ42sguC7W/OLsGE8+ue31QdOSAJ7ed+hgy5Ob6cbJ6YOpBmPjtqnG4pg3mce3DccPyUxXVfPFY+
	/WEhc0Wzf/cmGXlZU81w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inPph-0006u7-D1; Fri, 03 Jan 2020 16:29:53 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inPpb-0006sB-0i; Fri, 03 Jan 2020 16:29:48 +0000
Received: by mail-ot1-x344.google.com with SMTP id 66so61747962otd.9;
 Fri, 03 Jan 2020 08:29:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TP17Q6SBM8RfPS7JEf89IxBEEl+82WJKOot5C8K9N98=;
 b=qqjelQ0+Kba+Pvu7W6JzOzsWlxmU4Ap+PUQ1JAnf1w4z9lOX0l2NhJIYieVbWYkq+i
 tZnhI+JcVeUs9DSAbecaKFqKLjENQC/bJXsXocYpxG/SaqscK8CFG6Q3VMOkAPlGS+vG
 NXTkv9j3ucpnFzf2QRu0uiA74wdEuNrJJ6QSBTmxAcPD9TmNe9mnDfArKRMUVuVuQ3Ou
 fgGlmjc677XGKTIEGhvglgnnFTTlb2s+aE66EfKRY8Pqg2Hop+iVfDEArN2O7oDnkG69
 whfs/9FCtOBgZogqFllOd00fE8JMvYZwHR0GoFtWLyKVfcYf2bfe+Iok4a+DPiocc2+J
 udBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TP17Q6SBM8RfPS7JEf89IxBEEl+82WJKOot5C8K9N98=;
 b=kP2zdvdlNvrHBYW484tVQ6asbl1XrQerMQugq4Mf+ykDU07wUWwB57IFImaN253ec/
 7aCpdvCbc+/KXa5BUQmGANLEfKkvxG9OhOCg99QbvFoREf6CQYnuK3HKigAzQ5CcuWJl
 sT+rO0vAQBH3SQ/5zZt82QVO1hUDEi4PSvh+kgmN5ZZzS5OW8R5kWeI2BkGesZ698SHK
 r3W6PMsg6OYOCdINoQd63T4awTUsTp9yjkR89SnpOxpYErCb3/vZWZX0e1M9CNUByaEA
 vX3rvRinVMl5rc38Wl+IlLwJnLLZC9CiynHt9IaB1ctEKerdyb0Yzn4kOIap9v/p6HI3
 qL+A==
X-Gm-Message-State: APjAAAXKe4pMU+fQ7SJpjpuB/txMAUeuRRRUpfzknxAh7p/wv9cP0euk
 fbd7Xkfx3r+VKO5DhDtIoRJE1k3ee7jfmfbYtvY=
X-Google-Smtp-Source: APXvYqyx0qfOGlCgf+mbqVx1RA3NJa/iWXu/notHG2jRzI1XyQlklOpJtiW2znnOyK1gz/QnIOAs/YVhOvNs6/K2WcU=
X-Received: by 2002:a9d:5c02:: with SMTP id o2mr92142289otk.176.1578068984784; 
 Fri, 03 Jan 2020 08:29:44 -0800 (PST)
MIME-Version: 1.0
References: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191213084748.11210-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20191213084748.11210-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Fri, 3 Jan 2020 16:29:18 +0000
Message-ID: <CA+V-a8uZqwfbYNec7bPWf5RuZP-zVkAyAz8SMueJic5wU0zyBw@mail.gmail.com>
Subject: Re: [v2 4/6] dt-bindings: PCI: rcar: Add bindings for R-Car PCIe
 endpoint controller
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_082947_062266_ECFE9B45 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.csengg[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-pci <linux-pci@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>,
 Arnd Bergmann <arnd@arndb.de>, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Simon Horman <horms@verge.net.au>, LAK <linux-arm-kernel@lists.infradead.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Tom Joseph <tjoseph@cadence.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kishon/Rob,

On Fri, Dec 13, 2019 at 8:48 AM Lad Prabhakar
<prabhakar.csengg@gmail.com> wrote:
>
> From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> This patch adds the bindings for the R-Car PCIe endpoint driver.
>
> Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  .../devicetree/bindings/pci/rcar-pci-ep.txt        | 37 ++++++++++++++++++++++
>  1 file changed, 37 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
>
> diff --git a/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
> new file mode 100644
> index 0000000..7f0a97e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
> @@ -0,0 +1,37 @@
> +* Renesas R-Car PCIe Endpoint Controller DT description
> +
> +Required properties:
> +           "renesas,pcie-ep-r8a774c0" for the R8A774C0 SoC;
> +           "renesas,pcie-ep-rcar-gen3" for a generic R-Car Gen3 or
> +                                    RZ/G2 compatible device.
> +
> +           When compatible with the generic version, nodes must list the
> +           SoC-specific version corresponding to the platform first
> +           followed by the generic version.
> +
> +- reg: base address and length of the PCIe controller registers.
> +- outbound-ranges: outbound windows base address and length including the flags.
> +- resets: Must contain phandles to PCIe-related reset lines exposed by IP block
> +- clocks: from common clock binding: clock specifiers for the PCIe controller
> +        clock.
> +- clock-names: from common clock binding: should be "pcie".
> +
> +Optional Property:
> +- max-functions: Maximum number of functions that can be configured (default 1).
> +
> +Example:
> +
> +SoC-specific DT Entry:
> +
> +       pcie_ep: pcie_ep@fe000000 {
> +               compatible = "renesas,pcie-ep-r8a774c0", "renesas,pcie-rcar-gen2";
> +               reg = <0 0xfe000000 0 0x80000>;
> +               outbound-ranges = <0xa 0x0 0xfe100000 0 0x000100000
> +                                  0xa 0x0 0xfe200000 0 0x000200000
> +                                  0x6 0x0 0x30000000 0 0x008000000
> +                                  0x6 0x0 0x38000000 0 0x008000000>;
> +               clocks = <&cpg CPG_MOD 319>;
> +               clock-names = "pcie";
> +               power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
> +               resets = <&cpg 319>;
> +       };

Now that I have dropped "outbound-ranges", do the below bindings look good ?

- reg-names: Must include the following names
 - "apb-base" - Controller base
 - "memory0" - memory window 0 used by the host to map the pci address locally
 - "memory1" - memory window 1 used by the host to map the pci address locally
- "memory2" - memory window 2 used by the host to map the pci address locally
- "memory3" - memory window 3 used by the host to map the pci address locally

    pcie-ep: pcie_ep@fe000000 {
        compatible = "renesas,pcie-r8a774c0", "renesas,pcie-rcar-gen2";
        reg = <0 0xfe000000 0 0x80000>,
            <0x0 0xfe100000 0 0x100000>,
            <0x0 0xfe200000 0 0x200000>,
            <0x0 0x30000000 0 0x8000000>,
            <0x0 0x38000000 0 0x8000000>;
        reg-names = "apb-base", "memory0", "memory1", "memory2", "memory3";
        clocks = <&cpg CPG_MOD 319>;
        clock-names = "pcie";
        power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
        resets = <&cpg 319>;
    };

Cheers,
--Prabhakar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
