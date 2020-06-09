Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A741F399E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 13:25:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pdwpwsDU7KLMHZZKAKfj0UZN1Teuq1sjFhC1CEsRomU=; b=RnNXTwDkuJdbo5
	ak7v6C31NyiGU2uNTdgWkM9kNkejWUv366hBFoflaXCutEUhLIFzNMhlR5j0nG/ETv7B6jbnH7rxJ
	OlhChnNiNLd10V35a4Vvn0aa4+MLSYQIMmTMxv7Z7yfwEl11AwadAbZocXgKB+/GUhxQ8n7JmQ2at
	wNUC297/rlxYovlIM81IGaODYFIFVDjhHTHkyT0gbspJfnkGL/HUwGhswohqndCQRvtToFbvdL1Ss
	vTQiXlonOPnb/67kiwpZsL6MylSVYbH300ExBo/YlO9GPVsa5n778NK1t6jZCbWXFebsIlyrv6EK4
	N0pS7ppLn+6y24P8KiLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jicNZ-0003Bp-Q5; Tue, 09 Jun 2020 11:25:17 +0000
Received: from mail-eopbgr20070.outbound.protection.outlook.com ([40.107.2.70]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jicM7-0002CC-TB
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 11:23:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bJ3eX1D54W2wYfeSL6z9AKsp0SY5d5ymMbzOsabwACn1K16qv+aeqktcO1H2cTE3jlRjjqLEvfH2ZAwR7n1HkCy8TdgE4m5v5/tk/1pLosTw7Z/fvOG+z4ROfT7/CUtIXxfkgDRUDY0XwehiNVab3PG/4QaDm/iFjSDBoNLKPcAPs1gvn0syMI3OZDduCRWfnm0OUAzGiQhZCj1ij2/tD2jPjytAFe9JEQX/oIxgeMJja7pRNOGuPn1l1bQ6pCCm+pn6jPSy2eHGUQXAG6mOUtHgEjBYLAZBYE+QIPLYjcc2m8T3iuKoZqRUSAW/hMIcuWQHjFz/zOvuMu0Adqhaow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v9vjlQyqVDnTL6D2PcHulwJP09ovPZl4b6VF3ZnoUME=;
 b=j2iu+sJGjmfDsEife+WTnDRvJGVf4iSRgZ+e7/RNi4gIIPrC5r8e1i+Fw74791og5XN96OjpNB0K9GEYrSs4U07UIsh5HqyKtLL7m1swFveL1x4Ev75ofZmRAv/Gr2dwCml7HNM3mkr7c+uJoaI5DCPIu1HINroZ8y6yV0OYCfmBk3trTaHzeyn04Gc2vs7ffZqycifAd9P2bjomUlXpMtMvcR9czerYyYb0nf+ugPiNOjaI+u/PO26LyEVmFnRAxfofMcgddMN+AohWdQUtoX0SPX57JvOpcDHZ9nEN8X7Ms4qP9ZgKWzX4/xQP5+gIJM77a+SZv0Zrd0t0qIFLlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v9vjlQyqVDnTL6D2PcHulwJP09ovPZl4b6VF3ZnoUME=;
 b=cyDn+hvBrL6D2cGflsV6Yre8E/YeZST9zz/Wy14eYy5AhsnokF8y4GbvtaBQVQ+H3dy6qZw8vHb+RK7PVTVok/0w/WJJ2ZmvxTqOp427mGviT44OmMJIG1H5VDaOZ9ld4h1pyvD0SCR2b7kitzG54vGgepXHCgVamOH/VdXyoU0=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com (2603:10a6:803:127::18)
 by VE1PR04MB6589.eurprd04.prod.outlook.com (2603:10a6:803:128::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.19; Tue, 9 Jun
 2020 11:23:45 +0000
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::5086:ae9e:6397:6b03]) by VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::5086:ae9e:6397:6b03%7]) with mapi id 15.20.3066.023; Tue, 9 Jun 2020
 11:23:45 +0000
From: Li Jun <jun.li@nxp.com>
To: balbi@kernel.org,
	shawnguo@kernel.org
Subject: [PATCH 4/6] arm64: dtsi: imx8mp: add usb nodes
Date: Tue,  9 Jun 2020 19:12:43 +0800
Message-Id: <1591701165-12872-5-git-send-email-jun.li@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591701165-12872-1-git-send-email-jun.li@nxp.com>
References: <1591701165-12872-1-git-send-email-jun.li@nxp.com>
X-ClientProxiedBy: SG2PR02CA0069.apcprd02.prod.outlook.com
 (2603:1096:4:54::33) To VE1PR04MB6528.eurprd04.prod.outlook.com
 (2603:10a6:803:127::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR02CA0069.apcprd02.prod.outlook.com (2603:1096:4:54::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.18 via Frontend Transport; Tue, 9 Jun 2020 11:23:42 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 6c2af535-833c-4c67-e7e0-08d80c67926f
X-MS-TrafficTypeDiagnostic: VE1PR04MB6589:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6589FCE426AC977C1531E15F89820@VE1PR04MB6589.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:849;
X-Forefront-PRVS: 042957ACD7
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bo+lFgJbHKsjQLb9/9JhbkrLkOJIOI27ypm9Qj7KfrMqbJiACZBFB0CHec/d0rd89S7Lw/au2z3tus7sDc2TUj0wNtEqo+uiBLcNvW2cR3SM7GdTQ6QZTL5VNOweVqkg3VY/JCk1L9EXiMSJ6/6Kp36L/yOCXOmtpjkGPsHu4f49aXENcsGXFcsrGkpnRHFWG5jGrAyLafi7g1VT+59N3WOoT4BJoxohiDPppXC2YyLZvVvQxAKxsb+Xm0GBa6bMEdjb0LPdJIsQ0aYAgznG7AlLAyUGfDu/tvOWBG94NA7IJA0DH8D3YavmB5MsiZPw7icmZkwWplvkjuXoI4QM7JhZjhjnIWqMl8+x8ZgBqeDd/eVRzf800bfT5Bdd3M1Jlv6jlXuFY7alqKgnYGvqrVNAjO9AbSscfJ1WU6JGjBg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6528.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(8676002)(4326008)(8936002)(66556008)(66476007)(5660300002)(66946007)(86362001)(16526019)(36756003)(498600001)(6506007)(69590400007)(2906002)(6512007)(26005)(2616005)(6486002)(83380400001)(956004)(52116002)(186003)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: GtwYerJbBGOc1gQHF+5++ciOXnS/wYCWY36PnU37Gp292ktyBBY77V8nTS5VTT2jpAmuPvdL1Ey/xNo4RzfyQTsP9M71nRNeZlHZf0j5zwycEGMYIruzI+xHQqIwayvokobC9fMdfifoPqQsuAiZXyVeUQ9PAbX1Rqn4qkD0W/QLrbDR/1QVueXzJez/LrImaf90v7zDf3iKAwjqNKj7c4SltQHXai/bBi3KSNdY3eA6/40/iSRKNXvEPKlUad9qaQB69SkrA0033NyX0psSE9/UJoeBKSEGpWJjzQ4Ev4JvxnvIo4xmeeG8Ji70Pa347zvcwcx1N4mOK0AUPBwP+oUcrAx2r9JMKmL1dC6d4FHz79jFQvtqj2eGVPpKgx2vc/CEGqsl+ZC2TthpUxU4Ixn67j1maJJarR/rc/QPmo1uHC2h9jnTN6imN0ukQjL86lhztlbDgDPRt/UxKCurov2b2K8M5x+YURV4C2BWpJk=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c2af535-833c-4c67-e7e0-08d80c67926f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2020 11:23:45.3315 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: of8FsjKhrxKCHA3Mp2WXinzZXrb2iqUagOpQM/jrrIT0SOobCAyggoxYPP/sSu5s
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6589
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_042347_947117_4F4EA1AA 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.2.70 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.2.70 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: peter.chen@nxp.com, gregkh@linuxfoundation.org, s.hauer@pengutronix.de,
 linux-usb@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

imx8mp integrates 2 identical dwc3 based USB3 controllers and
Synopsys phys, each instance has additional wakeup logic to
support low powe mode, so the glue layer need a node with dwc3
core sub node.

Signed-off-by: Li Jun <jun.li@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 79 +++++++++++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 9b1616e..b0a0de8 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -650,5 +650,84 @@
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-parent = <&gic>;
 		};
+
+		usb3_phy0: usb-phy@381f0040 {
+			compatible = "fsl,imx8mp-usb-phy";
+			reg = <0x381f0040 0x40>;
+			clocks = <&clk IMX8MP_CLK_USB_PHY_ROOT>;
+			clock-names = "phy";
+			assigned-clocks = <&clk IMX8MP_CLK_USB_PHY_REF>;
+			assigned-clock-parents = <&clk IMX8MP_CLK_24M>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		usb3_0: usb@32f10100 {
+			compatible = "fsl,imx8mp-dwc3";
+			reg = <0x32f10100 0x8>;
+			clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
+				 <&clk IMX8MP_CLK_HSIO_AXI_DIV>,
+				 <&clk IMX8MP_CLK_USB_ROOT>;
+			clock-names = "hsio", "bus", "suspend";
+			assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI_SRC>;
+			assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>;
+			assigned-clock-rates = <500000000>;
+			interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges;
+			status = "disabled";
+
+			usb_dwc3_0: dwc3@38100000 {
+				compatible = "snps,dwc3";
+				reg = <0x38100000 0x10000>;
+				interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+				phys = <&usb3_phy0>, <&usb3_phy0>;
+				phy-names = "usb2-phy", "usb3-phy";
+				snps,xhci-dis-64bit-support-quirk;
+				snps,dis-u2-freeclk-exists-quirk;
+				status = "disabled";
+			};
+
+		};
+
+		usb3_phy1: usb-phy@382f0040 {
+			compatible = "fsl,imx8mp-usb-phy";
+			reg = <0x382f0040 0x40>;
+			clocks = <&clk IMX8MP_CLK_USB_PHY_ROOT>;
+			clock-names = "phy";
+			assigned-clocks = <&clk IMX8MP_CLK_USB_PHY_REF>;
+			assigned-clock-parents = <&clk IMX8MP_CLK_24M>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		usb3_1: usb@32f10108 {
+			compatible = "fsl,imx8mp-dwc3";
+			reg = <0x32f10108 0x8>;
+			clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
+				 <&clk IMX8MP_CLK_HSIO_AXI_DIV>,
+				 <&clk IMX8MP_CLK_USB_ROOT>;
+			clock-names = "hsio", "bus", "suspend";
+			assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI_SRC>;
+			assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>;
+			assigned-clock-rates = <500000000>;
+			interrupts = <GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges;
+			status = "disabled";
+
+			usb_dwc3_1: dwc3@38200000 {
+				compatible = "snps,dwc3";
+				reg = <0x38200000 0x10000>;
+				interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
+				phys = <&usb3_phy1>, <&usb3_phy1>;
+				phy-names = "usb2-phy", "usb3-phy";
+				snps,xhci-dis-64bit-support-quirk;
+				snps,dis-u2-freeclk-exists-quirk;
+				status = "disabled";
+			};
+		};
 	};
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
