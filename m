Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D26B3AFD18
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 14:51:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WHqnRhdbPvpwPdLnV1s4QaeRbkZ9wwc1NKkE3HzHAIM=; b=IzO0hKm1gCHv9k
	CQ525qAh/c5jFIjwQTUOzjgxlUhbNqmglw8gy6lqFGT89iYu0C3wODvVuJ+RsCkeYw9RoI3oND/ja
	Pr9mgkE1ENL0077KMpxzuzuqdM4XiUKuDbtEqWj8G2MgoTlDDV/1Biu6dqB49LLMhBrZmXPr1BBd6
	kmU7qMF/g2rB9NSYErS3duIuTbuLMl5z9RD9VcWGCR80yS9OASrEbPRncVn/XFnR/GwjRz9p3HL1C
	LP7xSRpPWGJOlOHVYjyC0Rr1zR/kPIM0EDBe137sLv/AuX+L+tgFdjoWDjqMBeYsiLT5MTlHMoU6C
	cz4pvxcYc90Wz7WKOqtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i825g-00033U-2U; Wed, 11 Sep 2019 12:51:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8254-00031J-W2; Wed, 11 Sep 2019 12:50:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B50C1000;
 Wed, 11 Sep 2019 05:50:38 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 021F23F59C;
 Wed, 11 Sep 2019 05:50:37 -0700 (PDT)
Date: Wed, 11 Sep 2019 13:50:36 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 6/6] arm64: dts: khadas-vim3: add commented support for
 PCIe
Message-ID: <20190911125035.GU9720@e119886-lin.cambridge.arm.com>
References: <1567950178-4466-1-git-send-email-narmstrong@baylibre.com>
 <1567950178-4466-7-git-send-email-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567950178-4466-7-git-send-email-narmstrong@baylibre.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_055043_505093_A57E9949 
X-CRM114-Status: GOOD (  19.27  )
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
Cc: lorenzo.pieralisi@arm.com, khilman@baylibre.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, repk@triplefau.lt, maz@kernel.org,
 bhelgaas@google.com, linux-amlogic@lists.infradead.org, yue.wang@Amlogic.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 08, 2019 at 01:42:58PM +0000, Neil Armstrong wrote:
> The VIM3 on-board  MCU can mux the PCIe/USB3.0 shared differential
> lines using a FUSB340TMX USB 3.1 SuperSpeed Data Switch between
> an USB3.0 Type A connector and a M.2 Key M slot.
> The PHY driving these differential lines is shared between
> the USB3.0 controller and the PCIe Controller, thus only
> a single controller can use it.
> 
> The needed DT configuration when the MCU is configured to mux
> the PCIe/USB3.0 differential lines to the M.2 Key M slot is
> added commented and may uncommented to disable USB3.0 from the

*and may be*

> USB Complex and enable the PCIe controller.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  .../amlogic/meson-g12b-a311d-khadas-vim3.dts  | 22 +++++++++++++++++++
>  .../amlogic/meson-g12b-s922x-khadas-vim3.dts  | 22 +++++++++++++++++++
>  .../boot/dts/amlogic/meson-khadas-vim3.dtsi   |  4 ++++
>  .../dts/amlogic/meson-sm1-khadas-vim3l.dts    | 22 +++++++++++++++++++
>  4 files changed, 70 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
> index 3a6a1e0c1e32..0577b1435cbb 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
> @@ -14,3 +14,25 @@
>  / {
>  	compatible = "khadas,vim3", "amlogic,a311d", "amlogic,g12b";
>  };
> +
> +/*
> + * The VIM3 on-board  MCU can mux the PCIe/USB3.0 shared differential
> + * lines using a FUSB340TMX USB 3.1 SuperSpeed Data Switch between
> + * an USB3.0 Type A connector and a M.2 Key M slot.
> + * The PHY driving these differential lines is shared between
> + * the USB3.0 controller and the PCIe Controller, thus only
> + * a single controller can use it.
> + * If the MCU is configured to mux the PCIe/USB3.0 differential lines
> + * to the M.2 Key M slot, uncomment the following block to disable
> + * USB3.0 from the USB Complex and enable the PCIe controller.
> + */
> +/*
> +&pcie {
> +	status = "okay";
> +};
> +
> +&usb {
> +	phys = <&usb2_phy0>, <&usb2_phy1>;
> +	phy-names = "usb2-phy0", "usb2-phy1";
> +};

I assume there is no way other way to determine from the hardware which way
the mux is set?

Otherwise phy_g12a_usb3_pcie_xlate could determine the hardware mode, and
reject the phy instance with the wrong mode. Thus resulting in either the
PCI or USB to fail their probe. And avoiding the need to modify the DT on
boot.

Thanks,

Andrew Murray

> + */
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-s922x-khadas-vim3.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-s922x-khadas-vim3.dts
> index b73deb282120..1ef5c2f04f67 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-s922x-khadas-vim3.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-s922x-khadas-vim3.dts
> @@ -14,3 +14,25 @@
>  / {
>  	compatible = "khadas,vim3", "amlogic,s922x", "amlogic,g12b";
>  };
> +
> +/*
> + * The VIM3 on-board  MCU can mux the PCIe/USB3.0 shared differential
> + * lines using a FUSB340TMX USB 3.1 SuperSpeed Data Switch between
> + * an USB3.0 Type A connector and a M.2 Key M slot.
> + * The PHY driving these differential lines is shared between
> + * the USB3.0 controller and the PCIe Controller, thus only
> + * a single controller can use it.
> + * If the MCU is configured to mux the PCIe/USB3.0 differential lines
> + * to the M.2 Key M slot, uncomment the following block to disable
> + * USB3.0 from the USB Complex and enable the PCIe controller.
> + */
> +/*
> +&pcie {
> +	status = "okay";
> +};
> +
> +&usb {
> +	phys = <&usb2_phy0>, <&usb2_phy1>;
> +	phy-names = "usb2-phy0", "usb2-phy1";
> +};
> + */
> diff --git a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
> index 8647da7d6609..eac5720dc15f 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
> @@ -246,6 +246,10 @@
>  	linux,rc-map-name = "rc-khadas";
>  };
>  
> +&pcie {
> +	reset-gpios = <&gpio GPIOA_8 GPIO_ACTIVE_LOW>;
> +};
> +
>  &pwm_ef {
>          status = "okay";
>          pinctrl-0 = <&pwm_e_pins>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
> index 5233bd7cacfb..d9c7cbedce53 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
> @@ -68,3 +68,25 @@
>  	clock-names = "clkin1";
>  	status = "okay";
>  };
> +
> +/*
> + * The VIM3 on-board  MCU can mux the PCIe/USB3.0 shared differential
> + * lines using a FUSB340TMX USB 3.1 SuperSpeed Data Switch between
> + * an USB3.0 Type A connector and a M.2 Key M slot.
> + * The PHY driving these differential lines is shared between
> + * the USB3.0 controller and the PCIe Controller, thus only
> + * a single controller can use it.
> + * If the MCU is configured to mux the PCIe/USB3.0 differential lines
> + * to the M.2 Key M slot, uncomment the following block to disable
> + * USB3.0 from the USB Complex and enable the PCIe controller.
> + */
> +/*
> +&pcie {
> +	status = "okay";
> +};
> +
> +&usb {
> +	phys = <&usb2_phy0>, <&usb2_phy1>;
> +	phy-names = "usb2-phy0", "usb2-phy1";
> +};
> + */
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
