Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D61295BAF1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 13:44:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=scVIRQWntBHvZICSsU4P3EqOPcByWhAcYtstyMbaMZQ=; b=gJUtLFskj0KMLaYNeMTR0Od1Xz
	zCsbswss+NOR/RV6B066gEP6x2ZI3WRQ83h3BCK0iHCutj+Qbd9Bsn0J68gg42VLQtKC9Lu41uxZJ
	iZK770DQhtFRdpfa9pEuchuOFbuHgmgnSDnCttXBcp9eJfPROABAmTabtslLGQGPXPJ6I69SN/xVC
	L0ThWp+esZhTK30aor0lIFhBcm4P+nFVr3plX9q3oXgLS4fE3fOpyiMcNnsZut7jZUWE2tStF+P+l
	NRJxGlJrGVSTwpFTJXK09M9osFJuCdiXvJXT0Vi1rOeb4UVdUv9fEIn3E1fmn93cDISBFom8DKX5l
	2b5VzsEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhuj6-00047W-JH; Mon, 01 Jul 2019 11:44:04 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhuij-0003lz-Gp
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 11:43:43 +0000
Received: by mail-wm1-x344.google.com with SMTP id s3so201530wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 04:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JYJgRH2Ze3yPGTUxWuKTviYfPr0ALPnjZTt1sDtuFy4=;
 b=JItaK0E6rA9Aws8ukFmmmWXC0Mu/kH8+FEoa/9+2Onn6mLdNDLPaqTQMz+c6oIuLtY
 ATrVfupa8nzwfaAPyL1HrbNea4cb6JoYTctexEofyr/9iFpwGNU4/RFYcV72TA6XfbAC
 A9EclClpdBKKaNTfFkB73zAgkg06YUr0t7V8EigvnFa9huLlwiSmQyzl62RIYVNGezYI
 ve+LoUYa6zqD/jwV+u3yAlvk+CvBjCCXp/+T+gN8zCs+Y0tbw7KkQ8Bd8ETdfN1Vtpro
 UgVjTD6XNmwJ3nUvKn0EFr43hRDRAuaxdpajnRRpZSRJEgaUnYX3yv4la4k/WfKybrx+
 PPMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JYJgRH2Ze3yPGTUxWuKTviYfPr0ALPnjZTt1sDtuFy4=;
 b=Bz8dQHKWM6RMcVMySAZbPQuAi5U0yol12cKSzq32rVg3CmhW4Zs+ZNbdMAjgYVaxav
 FFjZsbny8/b3wxPMe0NUccc85SXa3/EdYPzh+X53ayHM11uqTnGedR17ca5MsRHNaFTs
 l2fQ7ehQNF7nq9B/wK9E6iPYQHQzXm1xtdG2JBahMCiVO6yPQxNPQaKyef9E5zYQ637d
 pj4YD+ZaT4lpNBqYKGEo9LnzlAaW1Z8RXAJz2upVZV6jNpDsUhypytvSbedJnG/E0Kmf
 1RFMml7wNNqkp89g3OO6ehdUv3VV8dpA+zYSmtZvqCjZCSErj3E8AKIN4LivO394Oob/
 PifQ==
X-Gm-Message-State: APjAAAWbIPJMH22qFwTZ7QusgvfXV7Rxs4nBAMZVWb8zZpmd6W/R2qTF
 TgBD8eA+1s/8G/WImbhvpKg=
X-Google-Smtp-Source: APXvYqx253YFB556MIWU5JxxVYLmmy4RDyDUqXIbzIzQ7Wilnvan3p0A7bhNoHAVzb+4iPpdaPom3A==
X-Received: by 2002:a1c:a848:: with SMTP id r69mr16499081wme.12.1561981419987; 
 Mon, 01 Jul 2019 04:43:39 -0700 (PDT)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id r12sm10881261wrt.95.2019.07.01.04.43.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 01 Jul 2019 04:43:39 -0700 (PDT)
From: Oliver Graute <oliver.graute@gmail.com>
X-Google-Original-From: Oliver Graute <oliver.graute@kococonnector.com>
To: aisheng.dong@nxp.com
Subject: [PATCHv2 2/2] arm64: dts: add basic DTS for imx8qm-rom7720-a1 board
Date: Mon,  1 Jul 2019 13:42:46 +0200
Message-Id: <20190701114253.1538-3-oliver.graute@kococonnector.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190701114253.1538-1-oliver.graute@kococonnector.com>
References: <20190701114253.1538-1-oliver.graute@kococonnector.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_044341_570079_6D867415 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Vabhav Sharma <vabhav.sharma@nxp.com>, sboyd@kernel.org,
 Fabio Estevam <festevam@gmail.com>, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Bhaskar Upadhaya <bhaskar.upadhaya@nxp.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Sriram Dash <sriram.dash@nxp.com>, Pankaj Bansal <pankaj.bansal@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 Oliver Graute <oliver.graute@kococonnector.com>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add basic dts support for a Advantech iMX8QM Qseven Board

Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8qm-rom7720-a1.dts  | 221 ++++++++++++++++++
 2 files changed, 222 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index b8e5e3bd72c5..b013715c5be1 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -23,3 +23,4 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2160a-rdb.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qm-mek.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8qm-rom7720-a1.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts b/arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts
new file mode 100644
index 000000000000..229853f4097b
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts
@@ -0,0 +1,221 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/dts-v1/;
+
+#include "imx8qm.dtsi"
+
+/ {
+	model = "Advantech iMX8QM Qseven series";
+	compatible = "fsl,imx8qm";
+
+	board {
+		compatible = "proc-board";
+		board-type = "ROM-7720_A1";
+		board-cpu  = "iMX8QM";
+	};
+
+	chosen {
+		bootargs = "console=ttyLP0,115200 earlycon=lpuart32,0x5a060000,115200";
+		stdout-path = &dma_lpuart0;
+	};
+
+	cpus {
+		/delete-node/ cpu-map;
+		/delete-node/ cpu@100;
+		/delete-node/ cpu@101;
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x00000000 0x80000000 0 0x40000000>;
+	};
+
+	reg_usdhc2_vmmc: usdhc2_vmmc {
+		compatible = "regulator-fixed";
+		regulator-name = "sw-3p3-sd1";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio4 7 GPIO_ACTIVE_HIGH>;
+		off-on-delay = <3000>;
+		enable-active-high;
+	};
+};
+
+&dma_lpuart0 { /* console */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lpuart0>;
+	status = "okay";
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec1>;
+	phy-mode = "rgmii-txid";
+	phy-handle = <&ethphy0>;
+	fsl,magic-packet;
+	fsl,rgmii_rxc_dly;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <4>;
+			at803x,eee-disabled;
+			at803x,vddio-1p8v;
+		};
+	};
+};
+
+&usdhc1 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz>;
+	bus-width = <8>;
+	non-removable;
+	status = "okay";
+};
+
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
+	bus-width = <4>;
+	cd-gpios = <&gpio5 22 GPIO_ACTIVE_LOW>;
+	wp-gpios = <&gpio5 21 GPIO_ACTIVE_HIGH>;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_hog_1: hoggrp-1 {
+		fsl,pins = <
+			IMX8QM_USB_SS3_TC0_LSIO_GPIO4_IO03	  0x06000048
+		>;
+	};
+
+	pinctrl_fec1: fec1grp {
+		fsl,pins = <
+			IMX8QM_COMP_CTL_GPIO_1V8_3V3_ENET_ENETB_PAD	0x000014a0
+			IMX8QM_ENET0_MDC_CONN_ENET0_MDC			0x06000020
+			IMX8QM_ENET0_MDIO_CONN_ENET0_MDIO		0x06000020
+			IMX8QM_ENET0_RGMII_TX_CTL_CONN_ENET0_RGMII_TX_CTL	0x00000060
+			IMX8QM_ENET0_RGMII_TXC_CONN_ENET0_RGMII_TXC	0x00000060
+			IMX8QM_ENET0_RGMII_TXD0_CONN_ENET0_RGMII_TXD0	0x00000060
+			IMX8QM_ENET0_RGMII_TXD1_CONN_ENET0_RGMII_TXD1	0x00000060
+			IMX8QM_ENET0_RGMII_TXD2_CONN_ENET0_RGMII_TXD2	0x00000060
+			IMX8QM_ENET0_RGMII_TXD3_CONN_ENET0_RGMII_TXD3	0x00000060
+			IMX8QM_ENET0_RGMII_RXC_CONN_ENET0_RGMII_RXC	0x00000060
+			IMX8QM_ENET0_RGMII_RX_CTL_CONN_ENET0_RGMII_RX_CTL	0x00000060
+			IMX8QM_ENET0_RGMII_RXD0_CONN_ENET0_RGMII_RXD0	0x00000060
+			IMX8QM_ENET0_RGMII_RXD1_CONN_ENET0_RGMII_RXD1	0x00000060
+			IMX8QM_ENET0_RGMII_RXD2_CONN_ENET0_RGMII_RXD2	0x00000060
+			IMX8QM_ENET0_RGMII_RXD3_CONN_ENET0_RGMII_RXD3	0x00000060
+		>;
+	};
+
+	pinctrl_lpuart0: lpuart0grp {
+		fsl,pins = <
+			IMX8QM_UART0_RX_DMA_UART0_RX		0x06000020
+			IMX8QM_UART0_TX_DMA_UART0_TX		0x06000020
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			IMX8QM_EMMC0_CLK_CONN_EMMC0_CLK		0x06000041
+			IMX8QM_EMMC0_CMD_CONN_EMMC0_CMD		0x00000021
+			IMX8QM_EMMC0_DATA0_CONN_EMMC0_DATA0	0x00000021
+			IMX8QM_EMMC0_DATA1_CONN_EMMC0_DATA1	0x00000021
+			IMX8QM_EMMC0_DATA2_CONN_EMMC0_DATA2	0x00000021
+			IMX8QM_EMMC0_DATA3_CONN_EMMC0_DATA3	0x00000021
+			IMX8QM_EMMC0_DATA4_CONN_EMMC0_DATA4	0x00000021
+			IMX8QM_EMMC0_DATA5_CONN_EMMC0_DATA5	0x00000021
+			IMX8QM_EMMC0_DATA6_CONN_EMMC0_DATA6	0x00000021
+			IMX8QM_EMMC0_DATA7_CONN_EMMC0_DATA7	0x00000021
+			IMX8QM_EMMC0_STROBE_CONN_EMMC0_STROBE	0x00000041
+			IMX8QM_EMMC0_RESET_B_CONN_EMMC0_RESET_B	0x00000021
+		>;
+	};
+
+	pinctrl_usdhc1_100mhz: usdhc1grp100mhz {
+		fsl,pins = <
+			IMX8QM_EMMC0_CLK_CONN_EMMC0_CLK		0x06000040
+			IMX8QM_EMMC0_CMD_CONN_EMMC0_CMD		0x00000020
+			IMX8QM_EMMC0_DATA0_CONN_EMMC0_DATA0	0x00000020
+			IMX8QM_EMMC0_DATA1_CONN_EMMC0_DATA1	0x00000020
+			IMX8QM_EMMC0_DATA2_CONN_EMMC0_DATA2	0x00000020
+			IMX8QM_EMMC0_DATA3_CONN_EMMC0_DATA3	0x00000020
+			IMX8QM_EMMC0_DATA4_CONN_EMMC0_DATA4	0x00000020
+			IMX8QM_EMMC0_DATA5_CONN_EMMC0_DATA5	0x00000020
+			IMX8QM_EMMC0_DATA6_CONN_EMMC0_DATA6	0x00000020
+			IMX8QM_EMMC0_DATA7_CONN_EMMC0_DATA7	0x00000020
+			IMX8QM_EMMC0_STROBE_CONN_EMMC0_STROBE	0x00000040
+			IMX8QM_EMMC0_RESET_B_CONN_EMMC0_RESET_B	0x00000020
+		>;
+	};
+
+	pinctrl_usdhc1_200mhz: usdhc1grp200mhz {
+		fsl,pins = <
+			IMX8QM_EMMC0_CLK_CONN_EMMC0_CLK		0x06000040
+				IMX8QM_EMMC0_CMD_CONN_EMMC0_CMD		0x00000020
+			IMX8QM_EMMC0_DATA0_CONN_EMMC0_DATA0	0x00000020
+			IMX8QM_EMMC0_DATA1_CONN_EMMC0_DATA1	0x00000020
+			IMX8QM_EMMC0_DATA2_CONN_EMMC0_DATA2	0x00000020
+			IMX8QM_EMMC0_DATA3_CONN_EMMC0_DATA3	0x00000020
+			IMX8QM_EMMC0_DATA4_CONN_EMMC0_DATA4	0x00000020
+			IMX8QM_EMMC0_DATA5_CONN_EMMC0_DATA5	0x00000020
+			IMX8QM_EMMC0_DATA6_CONN_EMMC0_DATA6	0x00000020
+			IMX8QM_EMMC0_DATA7_CONN_EMMC0_DATA7	0x00000020
+			IMX8QM_EMMC0_STROBE_CONN_EMMC0_STROBE	0x00000040
+			IMX8QM_EMMC0_RESET_B_CONN_EMMC0_RESET_B	0x00000020
+		>;
+	};
+
+	pinctrl_usdhc2_gpio: usdhc2grpgpio {
+		fsl,pins = <
+			IMX8QM_USDHC1_DATA6_LSIO_GPIO5_IO21	0x00000021
+			IMX8QM_USDHC1_DATA7_LSIO_GPIO5_IO22	0x00000021
+			IMX8QM_USDHC1_RESET_B_LSIO_GPIO4_IO07	0x00000021
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			IMX8QM_USDHC1_CLK_CONN_USDHC1_CLK	0x06000041
+			IMX8QM_USDHC1_CMD_CONN_USDHC1_CMD	0x00000021
+			IMX8QM_USDHC1_DATA0_CONN_USDHC1_DATA0	0x00000021
+			IMX8QM_USDHC1_DATA1_CONN_USDHC1_DATA1	0x00000021
+			IMX8QM_USDHC1_DATA2_CONN_USDHC1_DATA2	0x00000021
+			IMX8QM_USDHC1_DATA3_CONN_USDHC1_DATA3	0x00000021
+			IMX8QM_USDHC1_VSELECT_CONN_USDHC1_VSELECT	0x00000021
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2grp100mhz {
+		fsl,pins = <
+			IMX8QM_USDHC1_CLK_CONN_USDHC1_CLK	0x06000040
+			IMX8QM_USDHC1_CMD_CONN_USDHC1_CMD	0x00000020
+			IMX8QM_USDHC1_DATA0_CONN_USDHC1_DATA0	0x00000020
+			IMX8QM_USDHC1_DATA1_CONN_USDHC1_DATA1	0x00000020
+			IMX8QM_USDHC1_DATA2_CONN_USDHC1_DATA2	0x00000020
+			IMX8QM_USDHC1_DATA3_CONN_USDHC1_DATA3	0x00000020
+			IMX8QM_USDHC1_VSELECT_CONN_USDHC1_VSELECT	0x00000020
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2grp200mhz {
+		fsl,pins = <
+			IMX8QM_USDHC1_CLK_CONN_USDHC1_CLK	0x06000040
+			IMX8QM_USDHC1_CMD_CONN_USDHC1_CMD	0x00000020
+			IMX8QM_USDHC1_DATA0_CONN_USDHC1_DATA0	0x00000020
+			IMX8QM_USDHC1_DATA1_CONN_USDHC1_DATA1	0x00000020
+			IMX8QM_USDHC1_DATA2_CONN_USDHC1_DATA2	0x00000020
+			IMX8QM_USDHC1_DATA3_CONN_USDHC1_DATA3	0x00000020
+			IMX8QM_USDHC1_VSELECT_CONN_USDHC1_VSELECT	0x00000020
+		>;
+	};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
