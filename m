Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C91232F21
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 14:00:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmZ30sWVuWZHSqyIP4YWv2LstNDwrr6mRR1+FKQ2FLk=; b=NtvNiAccCRJdXK
	UH+1nNADPw3tDSp0MjkO/jee63Z57VygNlhBmvpTqbNIIpUqy8B355xuxWHy7QQ2wQmyYU7CG+tkH
	srftJZvoDkcDt9kLDdSsppttJ427BTb2HvHYS8XCAoEsooJxbDJWTXqKl/13Jz0e4ZcUi0ybVeH6w
	i7Isnjl5mxCt7x7P2H1LSUs3bhQLDf0vyi1uoR8sCCa3K7VdgokubltmmHax4KSnyksipLU4kKFIG
	pkhL9O2yR+CV1irwaZI63+tZ6W4+ztBLfuZkqJinfrGgoymTPenfWNQ+jZjxgKHdz3XxxmhLODpqN
	h5PfSxqjt7oBPpi2QDWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXlds-0005EV-LX; Mon, 03 Jun 2019 12:00:44 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXldj-0005DP-Fu; Mon, 03 Jun 2019 12:00:37 +0000
Received: by mail-io1-xd44.google.com with SMTP id u13so14063140iop.0;
 Mon, 03 Jun 2019 05:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Vm4ARhjP7lZU5KIyEbHtOOR6KEna+CUnlTc6GUhKUa4=;
 b=jluM5/sH5QqMqPP0q9YgxKtgssTzAbbDmzc8lRImAlXgnM7aHOq4+XjZ1WCY7p1YDA
 f062zMeiw1fqRPU4jJ7rCSicj0sWqMTzEg1jSdRTIrSz6VHz04REMjyyq3NZAULgh0qa
 DP74/rhY+TU51XrjNBjB68D8WSenwSQ8h3VKoPz2RwhItguO7NqSsh6hfaXeiJstnjiP
 meqa17PMxNhL7cXG0WEW/nWStB1acaFLT371EE/aD5g34CFLj/z7XzapT4JCRsdCcHgV
 LKlly1Z/GHXgew+a+Oe39YipeOC51X4opu8yKnjT4RQjzmVBCA+DGWUtB5kcaavSipkj
 MdwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vm4ARhjP7lZU5KIyEbHtOOR6KEna+CUnlTc6GUhKUa4=;
 b=Q947+MG7pdNPvmgxnK7bJ9tTgVNf6lkf0PHcWPrV2/b8NtZbTW8r16/IP5Immr/qo5
 CWTDlOs1SFLRalhJniODPcl+IS+zucUM7qDmWB/+5C1c6IDbqaAX6vXYlszXp4o/qoMU
 As/dlcHb4kHqnMQdeIKXUhOqqyIOg8eroyRQtFp0fU4iq7mQtt5tRVM7rUnLSo8rX0US
 tkkrDQxZkTeWdhSBvKZ8dAZ/tTTWE5yUqu3c38tz/GdbYiK5R8vXCqM2cJSVEoyxXN0w
 7KQX+Wurk73UHk7p0i8y8065p5G3GstxbW/XGhbBuccWd489Hoh5nX6OAfHdQo918Rc8
 Vj0w==
X-Gm-Message-State: APjAAAUXgGgp0k3YHsbh1sjMlDSDPXgETKooKnp2TL1v+RruE4cQXV1R
 JaeXmyqUu0M2JPeMMpJ+i1TuWrRN7bk3BE6snPA=
X-Google-Smtp-Source: APXvYqzINR7xXf/RUhwE8B8vmM0BQvPtx2qn/UlOp4Wu3bR34coa/MVOvYdLlCsfynrxtuZ/nWeLkgZOk1oMV94rG9c=
X-Received: by 2002:a5e:aa15:: with SMTP id s21mr5777419ioe.221.1559563234079; 
 Mon, 03 Jun 2019 05:00:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190603091008.2382-1-narmstrong@baylibre.com>
 <20190603091008.2382-4-narmstrong@baylibre.com>
In-Reply-To: <20190603091008.2382-4-narmstrong@baylibre.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 3 Jun 2019 17:30:22 +0530
Message-ID: <CANAwSgT964PY6OMkS-hoqBf39Np99-tzfGbpXGdLtxF600eDtQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] arm64: dts: meson: Add minimal support for
 Odroid-N2
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_050035_536346_AA805DD9 
X-CRM114-Status: GOOD (  24.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Niel,

On Mon, 3 Jun 2019 at 14:41, Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> This patch adds basic support for :
> - Amlogic G12B, which is very similar to G12A
> - The HardKernel Odroid-N2 based on the S922X SoC
>
> The Amlogic G12B SoC is very similar with the G12A SoC, sharing
> most of the features and architecture, but with these differences :
> - The first CPU cluster only has 2xCortex-A53 instead of 4
> - G12B has a second cluster of 4xCortex-A73
> - Both cluster can achieve 2GHz instead of 1,8GHz for G12A
> - CPU Clock architecture is difference, thus needing a different
>   compatible to handle this slight difference
> - Supports a MIPI CSI input
> - Embeds a Mali-G52 instead of a Mali-G31, but integration is the same
>
> Actual support is done in the same way as for the GXM support, including
> the G12A dtsi and redefining the CPU clusters.
> Unlike GXM, the first cluster is different, thus needing to remove
> the last 2 cpu nodes of the first cluster.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  arch/arm64/boot/dts/amlogic/Makefile          |   1 +
>  .../boot/dts/amlogic/meson-g12b-odroid-n2.dts | 289 ++++++++++++++++++
>  arch/arm64/boot/dts/amlogic/meson-g12b.dtsi   |  82 +++++
>  3 files changed, 372 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
>
> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
> index e129c03ced14..07b861fe5fa5 100644
> --- a/arch/arm64/boot/dts/amlogic/Makefile
> +++ b/arch/arm64/boot/dts/amlogic/Makefile
> @@ -3,6 +3,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-axg-s400.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12a-sei510.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12a-u200.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12a-x96-max.dtb
> +dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-nanopi-k2.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-nexbox-a95x.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-odroidc2.dtb
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> new file mode 100644
> index 000000000000..161d8f0ff4f3
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> @@ -0,0 +1,289 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 BayLibre, SAS
> + * Author: Neil Armstrong <narmstrong@baylibre.com>
> + */
> +
> +/dts-v1/;
> +
> +#include "meson-g12b.dtsi"
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/gpio/meson-g12a-gpio.h>
> +
> +/ {
> +       compatible = "hardkernel,odroid-n2", "amlogic,g12b";
> +       model = "Hardkernel ODROID-N2";
> +
> +       aliases {
> +               serial0 = &uart_AO;
> +               ethernet0 = &ethmac;
> +       };
> +
> +       chosen {
> +               stdout-path = "serial0:115200n8";
> +       };
> +
> +       memory@0 {
> +               device_type = "memory";
> +               reg = <0x0 0x0 0x0 0x40000000>;
> +       };
> +
> +       emmc_pwrseq: emmc-pwrseq {
> +               compatible = "mmc-pwrseq-emmc";
> +               reset-gpios = <&gpio BOOT_12 GPIO_ACTIVE_LOW>;
> +       };
> +
> +       leds {
> +               compatible = "gpio-leds";
> +
> +               blue {
> +                       label = "n2:blue";
> +                       gpios = <&gpio_ao GPIOAO_11 GPIO_ACTIVE_HIGH>;
> +                       linux,default-trigger = "heartbeat";
> +               };
> +       };
> +
> +       tflash_vdd: regulator-tflash_vdd {
> +               compatible = "regulator-fixed";
> +
> +               regulator-name = "TFLASH_VDD";
> +               regulator-min-microvolt = <3300000>;
> +               regulator-max-microvolt = <3300000>;
> +
> +               gpio = <&gpio_ao GPIOAO_8 GPIO_ACTIVE_HIGH>;
> +               enable-active-high;
> +       };
> +
> +       tf_io: gpio-regulator-tf_io {
> +               compatible = "regulator-gpio";
> +
> +               regulator-name = "TF_IO";
> +               regulator-min-microvolt = <1800000>;
> +               regulator-max-microvolt = <3300000>;
> +
> +               gpios = <&gpio_ao GPIOAO_9 GPIO_ACTIVE_HIGH>;
> +               gpios-states = <0>;
> +
> +               states = <3300000 0
> +                         1800000 1>;
> +       };
> +
> +       flash_1v8: regulator-flash_1v8 {
> +               compatible = "regulator-fixed";
> +               regulator-name = "FLASH_1V8";
> +               regulator-min-microvolt = <1800000>;
> +               regulator-max-microvolt = <1800000>;
> +               vin-supply = <&vcc_3v3>;
> +               regulator-always-on;
> +       };
> +
> +       main_12v: regulator-main_12v {
> +               compatible = "regulator-fixed";
> +               regulator-name = "12V";
> +               regulator-min-microvolt = <12000000>;
> +               regulator-max-microvolt = <12000000>;
> +               regulator-always-on;
> +       };
> +
> +       vcc_5v: regulator-vcc_5v {
> +               compatible = "regulator-fixed";
> +               regulator-name = "5V";
> +               regulator-min-microvolt = <5000000>;
> +               regulator-max-microvolt = <5000000>;
> +               regulator-always-on;

As per odroid-n2_rev0.4_20190307 schematic its missing.
                  vin-supply =  <&main_12v>;

With this please add my.
Tested-by: Anand Moon <linux.amoon@gmail.com>

Best Regards
-Anand
> +       };
> +
> +       vcc_1v8: regulator-vcc_1v8 {
> +               compatible = "regulator-fixed";
> +               regulator-name = "VCC_1V8";
> +               regulator-min-microvolt = <1800000>;
> +               regulator-max-microvolt = <1800000>;
> +               vin-supply = <&vcc_3v3>;
> +               regulator-always-on;
> +       };
> +
> +       vcc_3v3: regulator-vcc_3v3 {
> +               compatible = "regulator-fixed";
> +               regulator-name = "VCC_3V3";
> +               regulator-min-microvolt = <3300000>;
> +               regulator-max-microvolt = <3300000>;
> +               vin-supply = <&vddao_3v3>;
> +               regulator-always-on;
> +               /* FIXME: actually controlled by VDDCPU_B_EN */
> +       };
> +
> +       hub_5v: regulator-hub_5v {
> +               compatible = "regulator-fixed";
> +               regulator-name = "HUB_5V";
> +               regulator-min-microvolt = <5000000>;
> +               regulator-max-microvolt = <5000000>;
> +               vin-supply = <&vcc_5v>;
> +
> +               /* Connected to the Hub CHIPENABLE, LOW sets low power state */
> +               gpio = <&gpio GPIOH_5 GPIO_ACTIVE_HIGH>;
> +               enable-active-high;
> +       };
> +
> +       usb_pwr_en: regulator-usb_pwr_en {
> +               compatible = "regulator-fixed";
> +               regulator-name = "USB_PWR_EN";
> +               regulator-min-microvolt = <5000000>;
> +               regulator-max-microvolt = <5000000>;
> +               vin-supply = <&vcc_5v>;
> +
> +               /* Connected to the microUSB port power enable */
> +               gpio = <&gpio GPIOH_6 GPIO_ACTIVE_HIGH>;
> +               enable-active-high;
> +       };
> +
> +       vddao_1v8: regulator-vddao_1v8 {
> +               compatible = "regulator-fixed";
> +               regulator-name = "VDDAO_1V8";
> +               regulator-min-microvolt = <1800000>;
> +               regulator-max-microvolt = <1800000>;
> +               vin-supply = <&vddao_3v3>;
> +               regulator-always-on;
> +       };
> +
> +       vddao_3v3: regulator-vddao_3v3 {
> +               compatible = "regulator-fixed";
> +               regulator-name = "VDDAO_3V3";
> +               regulator-min-microvolt = <3300000>;
> +               regulator-max-microvolt = <3300000>;
> +               vin-supply = <&main_12v>;
> +               regulator-always-on;
> +       };
> +
> +       hdmi-connector {
> +               compatible = "hdmi-connector";
> +               type = "a";
> +
> +               port {
> +                       hdmi_connector_in: endpoint {
> +                               remote-endpoint = <&hdmi_tx_tmds_out>;
> +                       };
> +               };
> +       };
> +};
> +
> +&cec_AO {
> +       pinctrl-0 = <&cec_ao_a_h_pins>;
> +       pinctrl-names = "default";
> +       status = "disabled";
> +       hdmi-phandle = <&hdmi_tx>;
> +};
> +
> +&cecb_AO {
> +       pinctrl-0 = <&cec_ao_b_h_pins>;
> +       pinctrl-names = "default";
> +       status = "okay";
> +       hdmi-phandle = <&hdmi_tx>;
> +};
> +
> +&ext_mdio {
> +       external_phy: ethernet-phy@0 {
> +               /* Realtek RTL8211F (0x001cc916) */
> +               reg = <0>;
> +               max-speed = <1000>;
> +       };
> +};
> +
> +&ethmac {
> +       pinctrl-0 = <&eth_pins>, <&eth_rgmii_pins>;
> +       pinctrl-names = "default";
> +       status = "okay";
> +       phy-mode = "rgmii";
> +       phy-handle = <&external_phy>;
> +       amlogic,tx-delay-ns = <2>;
> +};
> +
> +&gpio {
> +       /*
> +        * WARNING: The USB Hub on the Odroid-N2 needs a reset signal
> +        * to be turned high in order to be detected by the USB Controller
> +        * This signal should be handled by a USB specific power sequence
> +        * in order to reset the Hub when USB bus is powered down.
> +        */
> +       usb-hub {
> +               gpio-hog;
> +               gpios = <GPIOH_4 GPIO_ACTIVE_HIGH>;
> +               output-high;
> +               line-name = "usb-hub-reset";
> +       };
> +};
> +
> +&hdmi_tx {
> +       status = "okay";
> +       pinctrl-0 = <&hdmitx_hpd_pins>, <&hdmitx_ddc_pins>;
> +       pinctrl-names = "default";
> +       hdmi-supply = <&vcc_5v>;
> +};
> +
> +&hdmi_tx_tmds_port {
> +       hdmi_tx_tmds_out: endpoint {
> +               remote-endpoint = <&hdmi_connector_in>;
> +       };
> +};
> +
> +&ir {
> +       status = "okay";
> +       pinctrl-0 = <&remote_input_ao_pins>;
> +       pinctrl-names = "default";
> +};
> +
> +/* SD card */
> +&sd_emmc_b {
> +       status = "okay";
> +       pinctrl-0 = <&sdcard_c_pins>;
> +       pinctrl-1 = <&sdcard_clk_gate_c_pins>;
> +       pinctrl-names = "default", "clk-gate";
> +
> +       bus-width = <4>;
> +       cap-sd-highspeed;
> +       max-frequency = <50000000>;
> +       disable-wp;
> +
> +       cd-gpios = <&gpio GPIOC_6 GPIO_ACTIVE_LOW>;
> +       vmmc-supply = <&tflash_vdd>;
> +       vqmmc-supply = <&tf_io>;
> +
> +};
> +
> +/* eMMC */
> +&sd_emmc_c {
> +       status = "okay";
> +       pinctrl-0 = <&emmc_pins>, <&emmc_ds_pins>;
> +       pinctrl-1 = <&emmc_clk_gate_pins>;
> +       pinctrl-names = "default", "clk-gate";
> +
> +       bus-width = <8>;
> +       cap-mmc-highspeed;
> +       mmc-ddr-1_8v;
> +       mmc-hs200-1_8v;
> +       max-frequency = <200000000>;
> +       disable-wp;
> +
> +       mmc-pwrseq = <&emmc_pwrseq>;
> +       vmmc-supply = <&vcc_3v3>;
> +       vqmmc-supply = <&flash_1v8>;
> +};
> +
> +&uart_AO {
> +       status = "okay";
> +       pinctrl-0 = <&uart_ao_a_pins>;
> +       pinctrl-names = "default";
> +};
> +
> +&usb {
> +       status = "okay";
> +       vbus-supply = <&usb_pwr_en>;
> +};
> +
> +&usb2_phy0 {
> +       phy-supply = <&vcc_5v>;
> +};
> +
> +&usb2_phy1 {
> +       /* Enable the hub which is connected to this port */
> +       phy-supply = <&hub_5v>;
> +};
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
> new file mode 100644
> index 000000000000..9e88e513b22d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
> @@ -0,0 +1,82 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 BayLibre, SAS
> + * Author: Neil Armstrong <narmstrong@baylibre.com>
> + */
> +
> +#include "meson-g12a.dtsi"
> +
> +/ {
> +       compatible = "amlogic,g12b";
> +
> +       cpus {
> +               cpu-map {
> +                       cluster0 {
> +                               core0 {
> +                                       cpu = <&cpu0>;
> +                               };
> +
> +                               core1 {
> +                                       cpu = <&cpu1>;
> +                               };
> +                       };
> +
> +                       cluster1 {
> +                               core0 {
> +                                       cpu = <&cpu100>;
> +                               };
> +
> +                               core1 {
> +                                       cpu = <&cpu101>;
> +                               };
> +
> +                               core2 {
> +                                       cpu = <&cpu102>;
> +                               };
> +
> +                               core3 {
> +                                       cpu = <&cpu103>;
> +                               };
> +                       };
> +               };
> +
> +               /delete-node/ cpu@2;
> +               /delete-node/ cpu@3;
> +
> +               cpu100: cpu@100 {
> +                       device_type = "cpu";
> +                       compatible = "arm,cortex-a73";
> +                       reg = <0x0 0x100>;
> +                       enable-method = "psci";
> +                       next-level-cache = <&l2>;
> +               };
> +
> +               cpu101: cpu@101 {
> +                       device_type = "cpu";
> +                       compatible = "arm,cortex-a73";
> +                       reg = <0x0 0x101>;
> +                       enable-method = "psci";
> +                       next-level-cache = <&l2>;
> +               };
> +
> +               cpu102: cpu@102 {
> +                       device_type = "cpu";
> +                       compatible = "arm,cortex-a73";
> +                       reg = <0x0 0x102>;
> +                       enable-method = "psci";
> +                       next-level-cache = <&l2>;
> +               };
> +
> +               cpu103: cpu@103 {
> +                       device_type = "cpu";
> +                       compatible = "arm,cortex-a73";
> +                       reg = <0x0 0x103>;
> +                       enable-method = "psci";
> +                       next-level-cache = <&l2>;
> +               };
> +       };
> +};
> +
> +&clkc {
> +       compatible = "amlogic,g12b-clkc";
> +};
> --
> 2.21.0
>
>
> _______________________________________________
> linux-amlogic mailing list
> linux-amlogic@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-amlogic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
