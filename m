Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 553B311E7C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 17:08:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6M5TxtzYGkoHAZanSaIWD21BKmCOp63uDBHgYCT2Q90=; b=b+JpqBedIcVj0a
	Bm9luNI857bFTgF/MnCuJFj4eYfUgJYwOtDNvalDJmNFcNe5oWSrkXuYI+1VKfjA1CTI8aHmUf+6q
	3G6P8MsQcBfhh7p59pjciWh4ui6cQlUCtzQpDMGO9TIZQ1wepCFQgthE957SHAfJP0H4XRnbafgsb
	WTAR8tl7M9PjTxFZ/BLt/pBdeQ0dBPKipMlfZfxcSWD0zGIsyx2TgJOleCEebF43W3atR762a21pm
	+qveaeaNHj27xpwYjAADvhbCJ/ZX+fq4IfmjQ6X85xeN/AoebMihhnY9uP9S5UFDw53T6s279FYew
	kH9PxK8JdE+DA9d6eKjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifnUL-0005sP-EI; Fri, 13 Dec 2019 16:08:21 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifnS9-0003ra-PD
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 16:06:07 +0000
Received: by mail-yw1-xc42.google.com with SMTP id z7so39951ywd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 08:06:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=diIP0k4eLIclWt3c/P5DOQ3zYxKekMVmETftkqEOchs=;
 b=U0zVNR1JYZrod79QD+eDZAcUrQLpJCzs1xbJF04ZdGD7FFvmgU+XZweRDwBFjV3VGc
 +1R7hzyluTLSRVoGCDYDrGROkXjBeQgBOPxARbQo7f+T0a5/5PX60jT1sxXV7D9iTAZO
 xbJyGbMXSWmC9Rbm8ywt9ZBLMKVLq8ty7Sy/M4pA1qWaRaaq/eu4JnBK6CSb90BZfpTU
 AZg/ySD0AYBh1c0vlCkURnEr/F6AzxrJcCr+yjFVum8cFKwDaaOLJmeH1ESJ6+Wob06l
 ubM8c2KvDJSJNZxJXDDNVxzxFgods0cj++bfgxYA7AJc8iKlvYacbNLmD/9GcY+VN7He
 YcNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=diIP0k4eLIclWt3c/P5DOQ3zYxKekMVmETftkqEOchs=;
 b=Zz71qdkapTOb92b+j6Q+/Q1aZe3F/0Qs7Ddenl0WL443PcUy3KolLza7zoexSNbmDM
 dwR8XOLWV7olnKGCTFmniAdWSDQTsEeYU9A6CVEFcC4mDxL4owR8DQb7D8HKYFqEuDs8
 pOiuruWQ4Uj/B0imRyRKkGVgQD2H5Uw7nRbMwoFJeapdyTwVE2rkqECm9m3/Ytkz6lTu
 TkqBxQ7rGeE3fRJoWmpFUWVZI8SPkI0UXPKbFb8ORZXI8NTFwjyEyLEkzuSrp7rWOkv0
 NRJ/XByOuUzU3w/NEor7MGmpoRX9KzscdbW2J9htw9Xf4kJzOcH4YvXoz8YBvsKjDVlf
 HPbA==
X-Gm-Message-State: APjAAAX2/r6gMAEU60Lgsy4OwHrlCRc4I3JtxDcSGC5vP8aWCuCoxtiE
 m6OZAjqAqPxcQINa2yzCwHSF+5ZF
X-Google-Smtp-Source: APXvYqyBJY9tyGyZZfmfIE+qd5Bdaurz+H3WDg5noJq3FlC0IeODXBcxvHA//Hh2Do1CdrtahGJS3g==
X-Received: by 2002:a0d:f443:: with SMTP id d64mr8872022ywf.125.1576253163588; 
 Fri, 13 Dec 2019 08:06:03 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id v38sm3984694ywh.63.2019.12.13.08.06.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 08:06:03 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 6/7] ARM64: dts: imx8mm: Fix clocks and power domain for
 USB OTG
Date: Fri, 13 Dec 2019 10:05:41 -0600
Message-Id: <20191213160542.15757-7-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213160542.15757-1-aford173@gmail.com>
References: <20191213160542.15757-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_080605_874408_1D9247F7 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 peng.fan@nxp.com, Fabio Estevam <festevam@gmail.com>, ping.bai@nxp.com,
 Adam Ford <aford173@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are two USB OTG controllers on the i.MX8M Mini, but currently
neither are functional.

According to the device tree entries published on the NXP kernel
for the imx8m mini, these both need to be assigned to the proper
clocks and power domain in order to function.

This patch configures both USB OTG controllers to enable a missing
clock and define the power domain so boards wishing to enable
the USB OTG can do so.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
V2:  No Change
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index f38bed94bce2..dbeee4059c55 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -865,8 +865,11 @@
 				interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MM_CLK_USB1_CTRL_ROOT>;
 				clock-names = "usb1_ctrl_root_clk";
-				assigned-clocks = <&clk IMX8MM_CLK_USB_BUS>;
-				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>;
+				assigned-clocks = <&clk IMX8MM_CLK_USB_BUS>,
+						  <&clk IMX8MM_CLK_USB_CORE_REF>;
+				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>,
+							 <&clk IMX8MM_SYS_PLL1_100M>;
+				power-domains = <&pgc_otg1>;
 				fsl,usbphy = <&usbphynop1>;
 				fsl,usbmisc = <&usbmisc1 0>;
 				status = "disabled";
@@ -884,8 +887,11 @@
 				interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MM_CLK_USB1_CTRL_ROOT>;
 				clock-names = "usb1_ctrl_root_clk";
-				assigned-clocks = <&clk IMX8MM_CLK_USB_BUS>;
-				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>;
+				assigned-clocks = <&clk IMX8MM_CLK_USB_BUS>,
+						  <&clk IMX8MM_CLK_USB_CORE_REF>;
+				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>,
+							 <&clk IMX8MM_SYS_PLL1_100M>;
+				power-domains = <&pgc_otg2>;
 				fsl,usbphy = <&usbphynop2>;
 				fsl,usbmisc = <&usbmisc2 0>;
 				status = "disabled";
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
