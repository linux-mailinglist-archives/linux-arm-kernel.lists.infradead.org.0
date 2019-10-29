Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D1CE8702
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 12:30:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wPMfSVzrQYdAogfrS4D3fKjC67kKMpGJgZwiUD6/08U=; b=OpQz+JEMViDIPN
	qx6M57V07Vfz5EGr0UBtCCSycAJcyrRQPfipS/6YhGGnbw5oZHQJXSehSWjVPYK+/E+EWqofRbw2P
	007GR1UxnBTVqo5RES0UO3rQXibTxdcYDZGl+jO8QU5+R66tfjBne4+stWnmUPcwtNHfjbL9UXh7o
	7wxx8IOZhVP89/oXrlMYHGdkA5/Ta1dQO+BHbviJT+qIVIME57dfaja7CbrnnsE6sktjS2KRYaTJs
	hOhcjJV2nRrqBld94BBYS5ggZCCQvnl89b6BkO4C/3k4GcgEKnHnKHnXRF8t/T++jdDa6RjCx5RlD
	eW4WpXSSkWPPpev1sgTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPht-0001GY-N1; Tue, 29 Oct 2019 11:30:37 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPfV-0006YD-Rn
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 11:28:11 +0000
Received: from sntmail11s.snt-is.com (unknown [10.203.32.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id B7B2E73EDAA;
 Tue, 29 Oct 2019 12:28:07 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail11s.snt-is.com
 (10.203.32.181) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Tue, 29 Oct
 2019 12:28:07 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Tue, 29 Oct 2019 12:28:07 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Krzysztof Kozlowski <krzk@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
 Schrempf Frieder <frieder.schrempf@kontron.de>, Mark Rutland
 <mark.rutland@arm.com>, NXP Linux Team <linux-imx@nxp.com>, "Pengutronix
 Kernel Team" <kernel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 "Sascha Hauer" <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 08/11] ARM: dts: imx6ul-kontron-n6x1x-s: Remove an obsolete
 comment and fix indentation
Thread-Topic: [PATCH v2 08/11] ARM: dts: imx6ul-kontron-n6x1x-s: Remove an
 obsolete comment and fix indentation
Thread-Index: AQHVjkvvG/OJKetZEEClPJ8BNJG6Ow==
Date: Tue, 29 Oct 2019 11:28:07 +0000
Message-ID: <20191029112655.15058-9-frieder.schrempf@kontron.de>
References: <20191029112655.15058-1-frieder.schrempf@kontron.de>
In-Reply-To: <20191029112655.15058-1-frieder.schrempf@kontron.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: B7B2E73EDAA.A461D
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: devicetree@vger.kernel.org, festevam@gmail.com,
 kernel@pengutronix.de, krzk@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com,
 robh+dt@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_042810_241857_5111CFF6 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.69 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Frieder Schrempf <frieder.schrempf@kontron.de>

The ECSPI1 is not used for a FRAM chip, so remove the comment.
While at it, also change some whitespaces to tabs to comply with the
indentation style of the rest of the file.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
index d3eb21aa9014..e18a8bd239be 100644
--- a/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
+++ b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
@@ -256,7 +256,6 @@
 		>;
 	};
 
-	/* FRAM */
 	pinctrl_ecspi1: ecspi1grp {
 		fsl,pins = <
 			MX6UL_PAD_CSI_DATA07__ECSPI1_MISO	0x100b1
@@ -281,8 +280,8 @@
 
 	pinctrl_enet2_mdio: enet2mdiogrp {
 		fsl,pins = <
-			MX6UL_PAD_GPIO1_IO07__ENET2_MDC         0x1b0b0
-			MX6UL_PAD_GPIO1_IO06__ENET2_MDIO        0x1b0b0
+			MX6UL_PAD_GPIO1_IO07__ENET2_MDC		0x1b0b0
+			MX6UL_PAD_GPIO1_IO06__ENET2_MDIO	0x1b0b0
 		>;
 	};
 
@@ -295,10 +294,10 @@
 
 	pinctrl_gpio: gpiogrp {
 		fsl,pins = <
-			MX6UL_PAD_SNVS_TAMPER5__GPIO5_IO05	0x1b0b0 /* DOUT1 */
-			MX6UL_PAD_SNVS_TAMPER4__GPIO5_IO04	0x1b0b0 /* DIN1 */
-			MX6UL_PAD_SNVS_TAMPER1__GPIO5_IO01	0x1b0b0 /* DOUT2 */
-			MX6UL_PAD_SNVS_TAMPER0__GPIO5_IO00	0x1b0b0 /* DIN2 */
+			MX6UL_PAD_SNVS_TAMPER5__GPIO5_IO05	0x1b0b0	/* DOUT1 */
+			MX6UL_PAD_SNVS_TAMPER4__GPIO5_IO04	0x1b0b0	/* DIN1 */
+			MX6UL_PAD_SNVS_TAMPER1__GPIO5_IO01	0x1b0b0	/* DOUT2 */
+			MX6UL_PAD_SNVS_TAMPER0__GPIO5_IO00	0x1b0b0	/* DIN2 */
 		>;
 	};
 
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
