Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6B5B3BB9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 15:46:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XTAogfsUZTPQFCgXcwWOORcac1A/XReQ3qcdX+ZjzrE=; b=s84I2I3FlybYNx
	1J6fKsyMsIURHf9WDqNJycBWQT1JqSZpgEXEH08ucja4iA6h68ICvBvMlPUzG/G1RZ+oZwrfF8KXt
	caT/G7HB/7YZKcUnlqBffkA4yPXotmRwOKoZZKoAIYWHWfhkLSkjjMueNG/JeYtmlvkWCLVhyRwbk
	Upazr7qFJG522gtFfCp4vSYROEtp9OSwdfh3+G45IObgNyQgWyZHQjIGz9p70ptlvKjNl7KVpoxTW
	Oab0sI+Szgq5dWFlRZ2o6GO1O3DfWfLt1fbYhh0yUKgnj7Dap55k76tfgqMS0RRTjNylHgxMyrNLw
	I1DDpuzSzS3mIyMngoig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9rKU-0002ce-Qg; Mon, 16 Sep 2019 13:46:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9rKB-0002aA-BB; Mon, 16 Sep 2019 13:45:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7CD1F337;
 Mon, 16 Sep 2019 06:45:49 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E84043F67D;
 Mon, 16 Sep 2019 06:45:48 -0700 (PDT)
Date: Mon, 16 Sep 2019 14:45:47 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 6/6] arm64: dts: khadas-vim3: add commented support
 for PCIe
Message-ID: <20190916134546.GS9720@e119886-lin.cambridge.arm.com>
References: <20190916125022.10754-1-narmstrong@baylibre.com>
 <20190916125022.10754-7-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916125022.10754-7-narmstrong@baylibre.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_064551_477542_F4D78E06 
X-CRM114-Status: GOOD (  20.81  )
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
Cc: maz@kernel.org, lorenzo.pieralisi@arm.com, gouwa@khadas.com,
 khilman@baylibre.com, nick@khadas.com, linux-kernel@vger.kernel.org,
 kishon@ti.com, repk@triplefau.lt, linux-pci@vger.kernel.org,
 bhelgaas@google.com, linux-amlogic@lists.infradead.org, yue.wang@Amlogic.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 02:50:22PM +0200, Neil Armstrong wrote:
> The VIM3 on-board  MCU can mux the PCIe/USB3.0 shared differential
> lines using a FUSB340TMX USB 3.1 SuperSpeed Data Switch between
> an USB3.0 Type A connector and a M.2 Key M slot.
> The PHY driving these differential lines is shared between
> the USB3.0 controller and the PCIe Controller, thus only
> a single controller can use it.
> 
> The needed DT configuration when the MCU is configured to mux
> the PCIe/USB3.0 differential lines to the M.2 Key M slot is
> added commented and may be uncommented to disable USB3.0 from the
> USB Complex and enable the PCIe controller.
> 
> The End User is not expected to uncomment the following except for
> testing purposes, but instead rely on the firmware/bootloader to
> update these nodes accordingly if PCIe mode is selected by the MCU.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

> ---
>  .../amlogic/meson-g12b-a311d-khadas-vim3.dts  | 25 +++++++++++++++++++
>  .../amlogic/meson-g12b-s922x-khadas-vim3.dts  | 25 +++++++++++++++++++
>  .../boot/dts/amlogic/meson-khadas-vim3.dtsi   |  4 +++
>  .../dts/amlogic/meson-sm1-khadas-vim3l.dts    | 25 +++++++++++++++++++
>  4 files changed, 79 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
> index 3a6a1e0c1e32..124a80901084 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
> @@ -14,3 +14,28 @@
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
> + * The End User is not expected to uncomment the following except for
> + * testing purposes, but instead rely on the firmware/bootloader to
> + * update these nodes accordingly if PCIe mode is selected by the MCU.
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
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-s922x-khadas-vim3.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-s922x-khadas-vim3.dts
> index b73deb282120..bba98f982ad6 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-s922x-khadas-vim3.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-s922x-khadas-vim3.dts
> @@ -14,3 +14,28 @@
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
> + * The End User is not expected to uncomment the following except for
> + * testing purposes, but instead rely on the firmware/bootloader to
> + * update these nodes accordingly if PCIe mode is selected by the MCU.
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
> index 4fe7d33ebe8a..90815fa25ec6 100644
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
> index 5233bd7cacfb..dbbf29a0dbf6 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
> @@ -68,3 +68,28 @@
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
> + * The End User is not expected to uncomment the following except for
> + * testing purposes, but instead rely on the firmware/bootloader to
> + * update these nodes accordingly if PCIe mode is selected by the MCU.
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
> 2.22.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
