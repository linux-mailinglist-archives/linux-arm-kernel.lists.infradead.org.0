Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBE385875
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 05:17:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G0f+0JXB7oeBwCanH4xyePs2aSEUfQTTZT6qwPU5PfQ=; b=rD1kCS2uBbcrm3
	uQh573nkk32pAuyX0HVyZH+u+xL8yxnj23SC7VZ4ol+93SXAS8f+/q508ap9+k2kTgdc75Q4TVlSi
	TZMZCb0n43b1WgLXQVGyySZiBtA7sPvzISy48hE6d2CyJy0aOiLvaOTSQLZhlQJaJksBlUAqCQzl3
	mBb8JSTucT5yxd35YYFWd0JSkGxk/SQmzl7DhqHiwnVi4eyXlnMdHRnzw0Hh3EJkPjqxplM/41Vw2
	EFitRXgQhOEBsTkI9WI9Bg9m/wnHLxRcYIk3nz/DrJraC0hzr0TML/jtaR/3u4R/lX95gQrsuOTDU
	hNQ3rWU3d9IomPVyPEYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvYvX-0001p4-Sf; Thu, 08 Aug 2019 03:17:20 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvYvJ-0001oQ-HD
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 03:17:07 +0000
Received: by mail-lf1-x143.google.com with SMTP id x3so11871110lfn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 20:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rnUHOWUIPfP9ynrvWp4SQXItGHBr8FB61123zRP5J8Q=;
 b=BH0IXUFL+vP1zsRxveeXqzCJ43z+rtm+YjJqPBZHvHK1l1hsTmsezZ8BfOyNh67rSF
 g0VFX1ZBtKgFB4TNVsIXR5sJcdbtlJSwbnvvixeoL4Upuq39m2ko/NLnMsZPLic2DoZz
 KcYt2TnQ7xJfMHjk6yNdXOqNEeoM0dn0PLKschTMiu8vuenorutWFXm32M1VB8Sy3yi6
 WAceL3rLWwt/def9UXP6XN5u+1kA9T0Ken0kFdc2HIIQSQcWFj/L7howJmbcWlDz8DaP
 C+wWnEcrSP7l1B1AqPJCeU1pXqxsuIO2eZzcIA3mJfkI9Ssxi3M7fUXG3VTzbJp+ihvb
 mS7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rnUHOWUIPfP9ynrvWp4SQXItGHBr8FB61123zRP5J8Q=;
 b=giKFDBNgjIm1tqcl3a4kNzcln/4VkppWPQcozhGUz1hzzdCIrPmCh6K4tYUTQJMjg3
 eZ/qxDojv9zrtOmeEW8FMlOKJ8vUAxNilnU10VL763imyLDBu5OexauWpaFGHjqxfBUJ
 m/AKu91Bb4rKYOogo3gKR8oBDxyUqa9AgVP9xghcJs8e5ngcFJ0Pfmtr+pS3nZ1Lq3mg
 0Wp0Tp0h471zDLBmY3Sqm9yDU6T4mOiGwprr9G7tH8U3XcmfoCuAm6/02HQMl93C47yT
 odVG3tWjj1+n7dFMmpv4XwAq8MjhbR4zhTzHUGogwAN8NZzvoRLNIkDH9wllNXEafYdx
 eKtg==
X-Gm-Message-State: APjAAAW/5v6YlxkJo3nI5vWl2IcCt0PWdx9naEwW6A5zW2YrUbB71jO5
 f25Ed3ZrqrCee36ileVrXF9/zJZq/kDBalRE6HA=
X-Google-Smtp-Source: APXvYqyvQohcFrXctenVwEh4IrZ4/iV/p9NGY3SiVj31blHqSYT1JCHoZXOJ6aaAaa3gfmuq3eH+8JYGYSnLeOUunTY=
X-Received: by 2002:a19:ec0c:: with SMTP id b12mr7870689lfa.107.1565234223364; 
 Wed, 07 Aug 2019 20:17:03 -0700 (PDT)
MIME-Version: 1.0
References: <8dec8f80b1269df040251a14b671f9c834c121cd.1565188354.git.baruch@tkos.co.il>
In-Reply-To: <8dec8f80b1269df040251a14b671f9c834c121cd.1565188354.git.baruch@tkos.co.il>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 8 Aug 2019 00:17:27 -0300
Message-ID: <CAOMZO5C9zBPZgc4CfR_h6hDg5vEXTzokCh9rbzNknZ4eE06qLw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: fsl: add support for Hummingboard Pulse
To: Baruch Siach <baruch@tkos.co.il>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_201705_579353_07ED7F64 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>, Jon Nettleton <jon@solid-run.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Baruch and Jon,

On Wed, Aug 7, 2019 at 11:32 AM Baruch Siach <baruch@tkos.co.il> wrote:
>
> From: Jon Nettleton <jon@solid-run.com>
>
> The SolidRun Hummingboard Pulse carrier board carries the SolidRun
> i.MX8MQ based SOM.
>
> Notably missing is PCIe support that depends on analog PLLOUT clock.
> Current imx clk driver does not support this clock.
>
> Signed-off-by: Jon Nettleton <jon@solid-run.com>
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> ---
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../freescale/imx8mq-hummingboard-pulse.dts   | 237 ++++++++++++++
>  .../boot/dts/freescale/imx8mq-sr-som.dtsi     | 309 ++++++++++++++++++

Please add an entry for this board in
Documentation/devicetree/bindings/arm/fsl.yaml

> +       regulators {
> +               compatible = "simple-bus";
> +               #address-cells = <1>;
> +               #size-cells = <0>;

No need for this "regulators {" node. You can just place
reg_usdhc2_vmmc directly outside of it.

> +
> +               reg_usdhc2_vmmc: usdhc2_vmmc {

Convention is reg_usdhc2_vmmc: regulator-usdhc2-vmmc {

> +                       compatible = "regulator-fixed";
> +                       regulator-name = "VSD_3V3";
> +                       regulator-min-microvolt = <3300000>;
> +                       regulator-max-microvolt = <3300000>;
> +                       gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
> +                       enable-active-high;
> +               };

> +&iomuxc {

We usually put the iomuxc node as the last one.

> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_hog>;
> +
> +       imx8mq-sr-hb {

No need for this imx8mq-sr-hb {

> +               pinctrl_hog: hoggrp {
> +                       fsl,pins = <
> +                               /* MikroBus Analog */
> +                               MX8MQ_IOMUXC_NAND_DATA05_GPIO3_IO11             0x41
> +                               /* MikroBus Reset */
> +                               MX8MQ_IOMUXC_SAI2_RXD0_GPIO4_IO23               0x41
> +                               /* The following 2 pins need to be commented out and
> +                                * reconfigured to enable RTS/CTS on UART3
> +                                */

Incorrect multi-lines comment style.

> +
> +               pinctrl_uart2: uart2grp {
> +                       fsl,pins = <
> +                               MX8MQ_IOMUXC_UART2_TXD_UART2_DCE_TX             0x49
> +                               MX8MQ_IOMUXC_UART2_RXD_UART2_DCE_RX             0x49
> +                               /* These pins are currently allocated to the
> +                                * uBLOX module on the SOM
> +                                */

Same here.

> +                               /* MX8MQ_IOMUXC_UART4_RXD_UART2_DCE_CTS_B               0x49 */
> +                               /* MX8MQ_IOMUXC_UART4_TXD_UART2_DCE_RTS_B               0x49 */

Just remove it?

> +                       >;
> +               };
> +
> +               pinctrl_uart3: uart3grp {
> +                       fsl,pins = <
> +                               MX8MQ_IOMUXC_UART3_TXD_UART3_DCE_TX             0x49
> +                               MX8MQ_IOMUXC_UART3_RXD_UART3_DCE_RX             0x49
> +                               /* These pins are by default GPIO on the Mikro Bus
> +                                * Header.  To use RTS/CTS on UART3 comment them out
> +                                * of the hoggrp and enable them here

Same comment about multi-line style.

> +                       fsl,pins = <
> +                               MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK                 0x8d
> +                               MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD                 0xcd
> +                               MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0             0xcd
> +                               MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1             0xcd
> +                               MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2             0xcd
> +                               MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3             0xcd
> +                               MX8MQ_IOMUXC_GPIO1_IO04_USDHC2_VSELECT          0xc1
> +                       >;
> +               };

> +&i2c2 {
> +       clock-frequency = <100000>;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_i2c2>;
> +       status = "okay";
> +
> +       typec_ptn5100: ptn5110@50 {
> +               compatible = "usb,tcpci";
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&pinctrl_typec>;
> +               reg = <0x50>;
> +               interrupt-parent = <&gpio1>;
> +               interrupts = <6 8>;
> +               ss-sel-gpios = <&gpio3 15 GPIO_ACTIVE_HIGH>;
> +               src-pdos = <0x380190c8>;

This property and others do not exist in mainline

Please see Documentation/devicetree/bindings/usb/typec-tcpci.txt and
arch/arm64/boot/dts/freescale/imx8mm-evk.dts for a reference.

> +&uart3 { /* Mikrobus */
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_uart3>;
> +       assigned-clocks = <&clk IMX8MQ_CLK_UART3>;
> +       assigned-clock-parents = <&clk IMX8MQ_SYS1_PLL_80M>;
> +       fsl,uart-has-rtscts;

Please use 'uart-has-rtscts' instead.

> +&fec1 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_fec1>;
> +       phy-mode = "rgmii-id";
> +       phy-handle = <&ethphy0>;
> +       phy-reset-gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
> +       phy-reset-duration = <2>;
> +       fsl,magic-packet;
> +       status = "okay";
> +
> +       mdio {
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +
> +               ethphy0: ethernet-phy@0 {
> +                       compatible = "ethernet-phy-ieee802.3-c22";
> +                       reg = <4>;

@0 does not match the reg property. Please fix it.

Also, make sure to build it with W=1 and do not introduce new warnings.

> +               };
> +       };
> +};
> +
> +&iomuxc {
> +       microsom {

No need for this node.

> +&i2c1 {
> +       clock-frequency = <400000>;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_i2c1>;
> +       status = "okay";
> +
> +       pmic: pfuze100@8 {

Node names should be generic: pmic@8

> +&qspi0 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_qspi>;
> +       status = "okay";
> +
> +       /* SPI flash; not assembled by default */
> +       n25q256a@0 {

flash@0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
