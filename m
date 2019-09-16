Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F58B3BBF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 15:47:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SfQxWNiToxzWPKdP02I8PTabiLEGaMGJQoNF3jwtWwM=; b=kan2MkayqBCxCd
	IYoWjgvM3gfBnTtERFwZV00o71mxA18r+kpiqW0UWi/VN66SwZO/Pk/vLze5ns/zSpu1ROjXlc49B
	Jt7z/tLvmCTyUXq91m0WIUUm+/5i+Q2iS1cTEd2WguK8sRNnSoy6jPVzTXJdckKLSzjhCl2EW5zSj
	9P8PnY89OVXLwlRH0NdgX1kHLuoEyBT3RuxNV3dQsZ+TDVAORH+smJLaX+jULNFAuZOT4sSiKmx9P
	09C6fxtBAFOxJUJgDL9VXlNOUUbm6J8maYjcauViTNBHzGEt6civLFiFnCukq0QQNgRNXzqPf4peB
	3ozz4AKHeRLpyejyp0NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9rLQ-0002tv-5c; Mon, 16 Sep 2019 13:47:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9rL5-0002s3-Ce; Mon, 16 Sep 2019 13:46:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E1E8A337;
 Mon, 16 Sep 2019 06:46:45 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 596C63F67D;
 Mon, 16 Sep 2019 06:46:45 -0700 (PDT)
Date: Mon, 16 Sep 2019 14:46:43 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: pci: amlogic,meson-pcie: Add G12A
 bindings
Message-ID: <20190916134643.GT9720@e119886-lin.cambridge.arm.com>
References: <20190916125022.10754-1-narmstrong@baylibre.com>
 <20190916125022.10754-2-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916125022.10754-2-narmstrong@baylibre.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_064647_532450_76AE41CA 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com, maz@kernel.org,
 gouwa@khadas.com, Rob Herring <robh@kernel.org>, khilman@baylibre.com,
 nick@khadas.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 repk@triplefau.lt, linux-pci@vger.kernel.org, bhelgaas@google.com,
 linux-amlogic@lists.infradead.org, yue.wang@Amlogic.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 02:50:17PM +0200, Neil Armstrong wrote:
> Add PCIE bindings for the Amlogic G12A SoC, the support is the same
> but the PHY is shared with USB3 to control the differential lines.
> 
> Thus this adds a phy phandle to control the PHY, and only requires the
> MIPI clock for the Amlogic AXG SoC Family.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

>  .../devicetree/bindings/pci/amlogic,meson-pcie.txt   | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/amlogic,meson-pcie.txt b/Documentation/devicetree/bindings/pci/amlogic,meson-pcie.txt
> index efa2c8b9b85a..84fdc422792e 100644
> --- a/Documentation/devicetree/bindings/pci/amlogic,meson-pcie.txt
> +++ b/Documentation/devicetree/bindings/pci/amlogic,meson-pcie.txt
> @@ -9,13 +9,16 @@ Additional properties are described here:
>  
>  Required properties:
>  - compatible:
> -	should contain "amlogic,axg-pcie" to identify the core.
> +	should contain :
> +	- "amlogic,axg-pcie" for AXG SoC Family
> +	- "amlogic,g12a-pcie" for G12A SoC Family
> +	to identify the core.
>  - reg:
>  	should contain the configuration address space.
>  - reg-names: Must be
>  	- "elbi"	External local bus interface registers
>  	- "cfg"		Meson specific registers
> -	- "phy"		Meson PCIE PHY registers
> +	- "phy"		Meson PCIE PHY registers for AXG SoC Family
>  	- "config"	PCIe configuration space
>  - reset-gpios: The GPIO to generate PCIe PERST# assert and deassert signal.
>  - clocks: Must contain an entry for each entry in clock-names.
> @@ -23,12 +26,13 @@ Required properties:
>  	- "pclk"       PCIe GEN 100M PLL clock
>  	- "port"       PCIe_x(A or B) RC clock gate
>  	- "general"    PCIe Phy clock
> -	- "mipi"       PCIe_x(A or B) 100M ref clock gate
> +	- "mipi"       PCIe_x(A or B) 100M ref clock gate for AXG SoC Family
>  - resets: phandle to the reset lines.
>  - reset-names: must contain "phy" "port" and "apb"
> -       - "phy"         Share PHY reset
> +       - "phy"         Share PHY reset for AXG SoC Family
>         - "port"        Port A or B reset
>         - "apb"         Share APB reset
> +- phys: should contain a phandle to the shared phy for G12A SoC Family
>  - device_type:
>  	should be "pci". As specified in designware-pcie.txt
>  
> -- 
> 2.22.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
