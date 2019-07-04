Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5F95F2F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 08:37:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q7m3WRQ2MReSKOGA6p17ULyodbL/naUC6NKrztZVBHA=; b=gRdnK4KxtNdhx+
	8XXBmJ/UiBCaI+r38Swkt8S+ECt8T6I+aNQRq4yiSQtAcsVGso6o7/E5fYWR3ei7moENDnTfgcmUT
	xQzOCqoWZGBrdls/yKQ/ssUmf16VeitFWQcS212RoB1ZqXCWSVi+mPM+EwEiyg7Y1FAIepJwM0pzx
	W2k8P16f1P6tufjQARmPjHzAE+3VGIZl8ZmsCgC61+Qav09YeNWRjWKdZ92lpry2pkOlO+AynVjo2
	L38ZLAJ+w+xuuMRwIQ/WmdFEZbrx04m/q3nMUDw0ldZbjXs+vFRkRJ38PotRqIVprFhkCPcBBU7nr
	8lM9chec/Kjf3jV4GuVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hivMi-0000zg-Rs; Thu, 04 Jul 2019 06:37:08 +0000
Received: from mail-eopbgr40048.outbound.protection.outlook.com ([40.107.4.48]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hivLt-0000Xx-9D
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 06:36:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2zvhJxy+/VT8/geBJOCit8CRBU1IjRO26ApHidHFX80=;
 b=g4zOfCUJ6gHoZhCcFjOpB19ZMsYl48K8QijFaoxt/6hqoUgQEETXvFLJ6PcwR/POhAkPrV0uP6J2/70OgFgUule7FMBQJAnnSVKpCgVbZZMYrAn7QidDkbnVildnotFH/J3sh6iH60KVevdZ/C6EXHWQcuGTpqqK6B3Le2WgU1Y=
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com (52.133.46.11) by
 AM0PR0402MB3810.eurprd04.prod.outlook.com (52.133.39.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Thu, 4 Jul 2019 06:36:15 +0000
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::dd66:8e13:93f0:65eb]) by AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::dd66:8e13:93f0:65eb%7]) with mapi id 15.20.2032.019; Thu, 4 Jul 2019
 06:36:15 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 Richard Zhu <hongxing.zhu@nxp.com>
Subject: [RFC 2/2] arm64: dts: imx8qxp: add the rpmsg support
Thread-Topic: [RFC 2/2] arm64: dts: imx8qxp: add the rpmsg support
Thread-Index: AQHVMjLHiSg2fXbpNU25ac/l48MBWw==
Date: Thu, 4 Jul 2019 06:36:15 +0000
Message-ID: <1562220905-13875-3-git-send-email-hongxing.zhu@nxp.com>
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
x-ms-office365-filtering-correlation-id: 89824b49-8040-4880-f317-08d70049e9d9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR0402MB3810; 
x-ms-traffictypediagnostic: AM0PR0402MB3810:
x-microsoft-antispam-prvs: <AM0PR0402MB381078BD23162538072E20168CFA0@AM0PR0402MB3810.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0088C92887
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(136003)(376002)(396003)(346002)(189003)(199004)(316002)(6116002)(3846002)(110136005)(7736002)(66066001)(186003)(50226002)(2501003)(305945005)(478600001)(26005)(14444005)(256004)(25786009)(14454004)(2906002)(4326008)(446003)(11346002)(2616005)(476003)(486006)(76176011)(386003)(6506007)(8936002)(102836004)(7049001)(52116002)(6436002)(99286004)(8676002)(71200400001)(71190400001)(5660300002)(81166006)(81156014)(36756003)(66556008)(64756008)(66476007)(66446008)(68736007)(86362001)(73956011)(66946007)(6486002)(6512007)(53936002)(2201001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0402MB3810;
 H:AM0PR0402MB3570.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KrbtEgzEYfNeRkqVzxchecUnFYGauS282DXGTfbpYBwGycoMT5Mgun/7wyZ6Tx51hqgRj47npaAab7HvbWKEFSS0Dn1i1+6OYZoW7FEqjvvtOA2hBxwIhPog+nRT7SMkeRhYuXD2MWu+xSWRotshPPigGQAmHd0gqciNEcTWcEMX2eIMw1KBhx88og8Nj2/u2z1G+vnfQRHh4v2t7JbtMlnGk21HZc/KVLlFcc202+S8qp6UsQuXgMpny3xGH8wn0kpu0gm0mmWuowKO2XAeITM7qIz6qMqHqeNUHVchr5cmoETsDIbaYsxjIvgDC1fvpaPIgPaTMs5oSTG5I0peRJrwBnx4GH8nJe1BjLW5Ty9+cQC8VMwMvbg9+l4RYPOjb93CoW8sNoR+szYUguuYD/eX/dmoM0/XmAUzLulr7wo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89824b49-8040-4880-f317-08d70049e9d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2019 06:36:15.4830 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hongxing.zhu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3810
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_233617_331577_3CF84CE9 
X-CRM114-Status: GOOD (  12.45  )
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

Add the rpmsg support.
- Setup the rpmsg reserved memory, one is used for vring, the other one
is used for shared buffers.
- The mailbox of the lsio mu5a is used by rpmsg on imx8qxp platforms.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 36 +++++++++++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi    | 23 +++++++++++++++++
 2 files changed, 59 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
index bfdada2..83cf611b 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
@@ -20,6 +20,32 @@
 		reg = <0x00000000 0x80000000 0 0x40000000>;
 	};
 
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		/*
+		 * 0x8800_0000 ~ 0x8FFF_FFFF is reserved for M4
+		 * Shouldn't be used at A core and Linux side.
+		 *
+		 */
+		m4_reserved: m4@0x88000000 {
+			no-map;
+			reg = <0 0x88000000 0 0x8000000>;
+		};
+
+		rpmsg_reserved: rpmsg@0x90000000 {
+			no-map;
+			reg = <0 0x90000000 0 0x400000>;
+		};
+		rpmsg_dma_reserved:rpmsg_dma@0x90400000 {
+			compatible = "shared-dma-pool";
+			no-map;
+			reg = <0 0x90400000 0 0x100000>;
+		};
+	};
+
 	reg_usdhc2_vmmc: usdhc2-vmmc {
 		compatible = "regulator-fixed";
 		regulator-name = "SD1_SPWR";
@@ -136,6 +162,16 @@
 	};
 };
 
+&rpmsg{
+	/*
+	 * 64K for one rpmsg instance:
+	 */
+	vdev-nums = <2>;
+	reg = <0x0 0x90000000 0x0 0x20000>;
+	memory-region = <&rpmsg_dma_reserved>;
+	status = "okay";
+};
+
 &usdhc1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc1>;
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 05fa0b7..e211fff 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -544,6 +544,14 @@
 			status = "disabled";
 		};
 
+		lsio_mu5: mailbox@5d200000 {
+			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+			reg = <0x5d200000 0x10000>;
+			interrupts = <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <2>;
+			power-domains = <&pd IMX_SC_R_MU_5A>;
+		};
+
 		lsio_mu13: mailbox@5d280000 {
 			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
 			reg = <0x5d280000 0x10000>;
@@ -558,4 +566,19 @@
 			#clock-cells = <1>;
 		};
 	};
+
+	rpmsg: rpmsg{
+		compatible = "fsl,imx8qxp-rpmsg";
+		/* up to now, the following channels are used in imx rpmsg
+		 * - tx1/rx1: messages channel.
+		 * - general interrupt1: remote proc finish re-init rpmsg stack
+		 *   when A core is partition reset.
+		 */
+		mbox-names = "tx", "rx", "rxdb";
+		mboxes = <&lsio_mu5 0 1
+			  &lsio_mu5 1 1
+			  &lsio_mu5 3 1>;
+		mub-partition = <3>;
+		status = "disabled";
+	};
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
