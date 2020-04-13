Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B72E71A6D66
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 22:40:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=KpQn0wwqwraBD9nfzBu+VIRX30fv5RmtA5UhxPpk2zY=; b=WVOlCadER8W6EM
	BZ/a8L/NTeFhm6s/MfuTMgHkuPPluZJ5H7TAufwfpaKKZoirAHX9KVenvVz6KlymtSdh9cgEXZZQH
	dTHdWOfAQRTscs+bkIfV2Y5Orld1Ho9JGekbFIhHJcI/Joo9BY8sPmQDr/VqqEtJmvgCot5CwoHCW
	b4KnYQQoIyXozJpxQAzMqU4JeYb23jJ2nMceCAssDnOie5xzUh+W7DW6xp8Rap5ccKurCPvMvTycc
	w4XQDuNzaBi64LARs02RZagbMrBSI8LY7CpvFF7P1Gkb2PzyospVN/A/LAWIUPqDP6FNL/851N/Nx
	oZ/8Et8e6/u03K7AyajQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO5sZ-0005xC-3b; Mon, 13 Apr 2020 20:40:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO5sQ-0005wI-TY
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 20:40:20 +0000
Received: from localhost (mobile-166-175-184-103.mycingular.net
 [166.175.184.103])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3302A206DA;
 Mon, 13 Apr 2020 20:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586810418;
 bh=+desMrbn6DBSADncFMVbtCinH1NuMHe8VMUVzHzvUhg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=K+grn0wCVAMaCZ+CKcYOlRgma0a2RE49ArPcgwQ3ERs11Osyj7aHbzEn7JOKuBcRq
 o5Vx2m/F0YPTaNIjFpaRWPOTA0llVBie8D0PD1cXgU60Q/WfKZzvnKSc+kt2Wimo2g
 h7G6p9oIW1qy9BqjiC6U8g6kFMjk6GG8HZ58dydY=
Date: Mon, 13 Apr 2020 15:40:13 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Ansuel Smith <ansuelsmth@gmail.com>
Subject: Re: [PATCH 1/4] devicetree: bindings: pci: document tx-deempth tx
 swing and rx-eq property
Message-ID: <20200413204013.GA147778@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410004738.19668-2-ansuelsmth@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_134018_991279_9FDAA18C 
X-CRM114-Status: GOOD (  18.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Richard Zhu <hongxing.zhu@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-pci@vger.kernel.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Looks like "dt-bindings: PCI: " is the convention here.

  $ git log --oneline Documentation/devicetree/bindings/pci/
  11be8af70d86 dt-bindings: PCI: Convert PCIe Host/Endpoint in Cadence platform to DT schema
  69501078fc60 dt-bindings: PCI: cadence: Add PCIe RC/EP DT schema for Cadence PCIe
  847dbf4e1aba dt-bindings: PCI: Add PCI Endpoint Controller Schema
  f9f711efd441 arm64: tegra: Fix Tegra194 PCIe compatible string
  9f04d18b1edf dt-bindings: PCI: tegra: Add DT support for PCIe EP nodes in Tegra194
  6e5f77031cc9 dt-bindings: PCI: meson: Update PCIE bindings documentation
  3edeb49525bb dt-bindings: PCI: Add NXP Layerscape SoCs PCIe Gen4 controller
  34129bb831cc dt-bindings: PCI: intel: Fix dt_binding_check compilation failure

On Fri, Apr 10, 2020 at 02:47:35AM +0200, Ansuel Smith wrote:
> Document tx-deempth, tx swing and rx-eq property property used on some
> device (qcom ipq806x or imx6q) to tune and fix init error of the pci
> bridge.

s/tx-deempth/tx-deemph/ (in subject and commit log)
s/tx swing/tx-swing/ (both places also)
s/rx-eq/rx-equalization/ (ditto)
s/property property/properties/
s/pci/PCI/ in English text (not C variables, function names, etc).

If these are made generic, remove the "qcom ipq806x or imx6q" part.

> Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
> ---
>  Documentation/devicetree/bindings/pci/pci.txt | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/pci.txt b/Documentation/devicetree/bindings/pci/pci.txt
> index 29bcbd88f457..df37486f1853 100644
> --- a/Documentation/devicetree/bindings/pci/pci.txt
> +++ b/Documentation/devicetree/bindings/pci/pci.txt
> @@ -24,6 +24,24 @@ driver implementation may support the following properties:
>     unsupported link speed, for instance, trying to do training for
>     unsupported link speed, etc.  Must be '4' for gen4, '3' for gen3, '2'
>     for gen2, and '1' for gen1. Any other values are invalid.
> +- tx-deemph-gen1
> +   If present this property will tune the Transmit De-Emphasis level for GEN1 if
> +   supported by the driver.
> +- tx-deemph-gen2-3p5db
> +   If present this property will tune the Transmit De-Emphasis level for GEN2 in
> +   3.5db band if supported by the driver.
> +- tx-deempth-gen2-6db
> +   If present this property will tune the Transmit De-Emphasis level for GEN2 in
> +   6db band if supported by the driver.
> +- tx-swing-full
> +   If present this property will tune the Tx Swing Full value if supported by the
> +   driver.
> +- tx-swing-low
> +   If present this property will tune the Tx Swing Low value if supported by the

Wrap all of these to fit in 78 columns.  Some of them fit in 80
columns, which is sort of OK.  This one is 81, which is definitely too
long.

> +   driver.
> +- rx-equalization
> +   If present this property will tune the Rx equalization value if supported by
> +   the driver.
>  - reset-gpios:
>     If present this property specifies PERST# GPIO. Host drivers can parse the
>     GPIO and apply fundamental reset to endpoints.
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
