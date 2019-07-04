Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 446ED5F2F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 08:36:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xKweMpOS0OaAMJs/AZizfdCU1bsImhH6gVfZHmF9pBg=; b=aQORXnEPXB3/BT
	XfNcEH6rS31r0AENNjVHIdn4QRq7VML3HajdOrBBtFaiOEb8rJcrcWK7bONgZ69mUTncrCWVKsnjq
	EoB/Qpm6Z7VTtWBZIWgioLCa3i3CqpWbc9KVDTvWTsAhttjjowtCywxHp6wg8/+rjsh3SBDmmUFu+
	gyg4MlSTOHFbd6bhvT5IYi85uv6PCwPzI0c7WaH+w8rd+YfvcKdhkUnSc8MQzo2OmDIi9a9J3mCXS
	G1XGWzzeKA+OLaL80c0l6C/cyQF0QsXrIKahoS71jnLDJ0r1TIyBhqCVgxC8jE5y1Z/Vb4I/7WM5L
	OQEJXFYbaUaL9+tlBE2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hivMQ-0000kB-PF; Thu, 04 Jul 2019 06:36:50 +0000
Received: from mail-eopbgr40048.outbound.protection.outlook.com ([40.107.4.48]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hivLr-0000Xx-JK
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 06:36:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=slzrwSGbZ92DOPRJYld59Wvfummo9C8K91DbUs017Xg=;
 b=gP8hMJtx6jfTLCzFvEtD/HAqhsF0ajteZMTag+2qAHnYh2+K7Pt6fS2gT0o9Zd5xVeL4gXwFLEbQ+GhiQqGp2i2eu23JrrfuLwvRw8rQfwfmAc3YSofCCjAZ0WlZi/v5mSjbsoetdwiGmjcKi2wkZoXLZgtovAnR0Gm1DbhFwSg=
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com (52.133.46.11) by
 AM0PR0402MB3810.eurprd04.prod.outlook.com (52.133.39.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Thu, 4 Jul 2019 06:36:13 +0000
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::dd66:8e13:93f0:65eb]) by AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::dd66:8e13:93f0:65eb%7]) with mapi id 15.20.2032.019; Thu, 4 Jul 2019
 06:36:13 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 Richard Zhu <hongxing.zhu@nxp.com>
Subject: [RFC 1/2] arm64: dts: imx8mq: add the rpmsg support
Thread-Topic: [RFC 1/2] arm64: dts: imx8mq: add the rpmsg support
Thread-Index: AQHVMjLFUVpr/iSrXkCKXi0vWvmICw==
Date: Thu, 4 Jul 2019 06:36:12 +0000
Message-ID: <1562220905-13875-2-git-send-email-hongxing.zhu@nxp.com>
References: <1562220905-13875-1-git-send-email-hongxing.zhu@nxp.com>
In-Reply-To: <1562220905-13875-1-git-send-email-hongxing.zhu@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0016.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:18::28) To AM0PR0402MB3570.eurprd04.prod.outlook.com
 (2603:10a6:208:1c::11)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hongxing.zhu@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 768e8be1-6776-4883-2909-08d70049e79d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR0402MB3810; 
x-ms-traffictypediagnostic: AM0PR0402MB3810:
x-microsoft-antispam-prvs: <AM0PR0402MB38104FEF07E11DCAF5B752AA8CFA0@AM0PR0402MB3810.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0088C92887
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(136003)(376002)(396003)(346002)(189003)(199004)(316002)(6116002)(3846002)(110136005)(7736002)(66066001)(186003)(50226002)(2501003)(305945005)(478600001)(26005)(14444005)(256004)(25786009)(14454004)(2906002)(4326008)(446003)(11346002)(2616005)(476003)(486006)(76176011)(386003)(6506007)(8936002)(102836004)(7049001)(52116002)(6436002)(99286004)(8676002)(71200400001)(71190400001)(5660300002)(81166006)(81156014)(36756003)(66556008)(64756008)(66476007)(66446008)(68736007)(86362001)(73956011)(66946007)(6486002)(6512007)(53936002)(2201001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0402MB3810;
 H:AM0PR0402MB3570.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: g/IArbtSBL1+QyM0KxLQHxiJCbb4z8NYoE+NQUzRnranv2rFvT1HT52O0mtYG5CbSAGhngNVKUgBnF2GjeHsegffBHwgrLQ5uB09z+/3hZou7EWFSFMBCn1pRVRAuNRSp+up0ZQ7TJnrCGD98cQJTdJZt5VZMQeRC2e+ie7yN8I5Q/fmKesaPN6JN4CiQRonf4TR2H2ue5eyiDzXbbbEx6hNFmQGYqjRTqkxV/Y+HQjim3pooeMlyWdOGwBpDfaVMbdV2Y6r7vknMTRzojUDd4LrfoNXj1ZEwEZ+F+GK+/+ATK7FpsGsO9HvheQ6e5OOfr/ExAcfDuLJydza+xYbVmjcKF3F0OpQszvDZspNk6Uk12CZBykKzc1TH58zrPVM4f0kbNZIyfk+riP/Mtuso0RUKPhmcyIxC6t04ZNO404=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 768e8be1-6776-4883-2909-08d70049e79d
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2019 06:36:12.7556 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hongxing.zhu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3810
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_233615_635894_3765764F 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the iMX8MQ RPMSG support.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
---
 arch/arm64/boot/dts/freescale/Makefile             |  2 +-
 arch/arm64/boot/dts/freescale/imx8mq-evk-rpmsg.dts | 67 ++++++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi          | 23 ++++++++
 3 files changed, 91 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-evk-rpmsg.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index c043aca..478f448 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -21,7 +21,7 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2160a-qds.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2160a-rdb.dtb
 
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
-dtb-$(CONFIG_ARCH_MXC) += imx8mq-evk.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mq-evk.dtb imx8mq-evk-rpmsg.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-devkit.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-rmb3.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-zest.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-evk-rpmsg.dts b/arch/arm64/boot/dts/freescale/imx8mq-evk-rpmsg.dts
new file mode 100644
index 0000000..185a5c4
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mq-evk-rpmsg.dts
@@ -0,0 +1,67 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2019 NXP
+ */
+
+/dts-v1/;
+
+#include "imx8mq-evk.dts"
+
+/ {
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		m4_reserved: m4@0x80000000 {
+			no-map;
+			reg = <0 0x80000000 0 0x1000000>;
+		};
+		rpmsg_reserved: rpmsg@0xb8000000 {
+			no-map;
+			reg = <0 0xb8000000 0 0x400000>;
+		};
+		rpmsg_dma_reserved:rpmsg_dma@0xb8400000 {
+			compatible = "shared-dma-pool";
+			no-map;
+			reg = <0 0xb8400000 0 0x100000>;
+		};
+	};
+};
+
+/*
+ * Regarding to the HW conflications, the following module should be disabled
+ * when M4 is running on evk board.
+ * gpt1, i2c2, pwm4, tmu, uart2, wdog3
+ */
+
+&i2c2 {
+	status = "disabled";
+};
+
+&pwm4 {
+	status = "disabled";
+};
+
+&rpmsg{
+	/*
+	 * 64K for one rpmsg instance:
+	 * --0xb8000000~0xb800ffff: pingpong
+	 */
+	vdev-nums = <1>;
+	reg = <0x0 0xb8000000 0x0 0x10000>;
+	memory-region = <&rpmsg_dma_reserved>;
+	status = "okay";
+};
+
+&tmu {
+	status = "disabled";
+};
+
+&uart2 {
+	status = "disabled";
+};
+
+&wdog3{
+	status = "disabled";
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 85008dc..93d90e2 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -777,6 +777,15 @@
 				status = "disabled";
 			};
 
+			mu: mu@30aa0000 {
+				compatible = "fsl,imx8mq-mu", "fsl,imx6sx-mu";
+				reg = <0x30aa0000 0x10000>;
+				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MQ_CLK_MU_ROOT>;
+				clock-names = "mu";
+				#mbox-cells = <2>;
+			};
+
 			usdhc1: mmc@30b40000 {
 				compatible = "fsl,imx8mq-usdhc",
 				             "fsl,imx7d-usdhc";
@@ -1032,4 +1041,18 @@
 			interrupt-parent = <&gic>;
 		};
 	};
+
+	rpmsg: rpmsg{
+		compatible = "fsl,imx8mq-rpmsg";
+		/* up to now, the following channels are used in imx rpmsg
+		 * - tx1/rx1: messages channel.
+		 * - general interrupt1: remote proc finish re-init rpmsg stack
+		 *   when A core is partition reset.
+		 */
+		mbox-names = "tx", "rx", "rxdb";
+		mboxes = <&mu 0 1
+			  &mu 1 1
+			  &mu 3 1>;
+		status = "disabled";
+	};
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
