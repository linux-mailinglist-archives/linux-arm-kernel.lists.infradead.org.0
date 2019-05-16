Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0F020596
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 13:48:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KoWthdQLF0nW4cjCahwUJ2CGerMIpkTCv5aWhjpAkxU=; b=O0jekGoBduhosu
	RskOpTQ8gUqhP/PBb6A6Dij7mT+/xKWKJ9MGXeNtN0CGFtoVw6NYyz3jyHkwz8dPrwOSGeiA04/XO
	Zk9YxgUIv2MKlR/1Q+oGrvdMMzMoAAqEakUIb53GXKSs62F6V50uXKeTbLuWyDcEA1XkPRoGXokoE
	8TO5qDwiMPhXMypwJLr36GsQFrH9C9bzJtB0f2mj+NMWIS242DVyuWBfgyc3bxGWRXHgKDGZ9xZym
	8I8CybSbw5fkG0kcgBTXixqf22FJ6onapZdxyUfhORK4Hg7vc+ASpXcZeJT1C6hmXYI400ZP07KGx
	junnzZ/J3lgBTRZDpMZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hREs3-0005lJ-EO; Thu, 16 May 2019 11:48:23 +0000
Received: from mail-eopbgr50077.outbound.protection.outlook.com ([40.107.5.77]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hREqs-0004KA-Mt; Thu, 16 May 2019 11:47:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=emPu4oA7rZGgqt5hkO5rGrxd3tQizlqGGjgta4Lk38M=;
 b=pYAfyi0uP/l4zjYzAkPcLNpZoHZ2IFKK08aVC5B9qVmnrm7rvDNEW5E5SwoIIpq3tO+UIHk2UruDUwXy3SY1ss5u42LGMg5iWr16pGFjezyfReQ6vQ8ZJh03n3kReJA72DzzsS1hXFIW6l8kY4hdlHSumZ3BRZJ+BXMboksL17Y=
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com (52.133.43.147) by
 AM0PR0402MB3570.eurprd04.prod.outlook.com (52.133.46.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Thu, 16 May 2019 11:47:07 +0000
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd]) by AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd%2]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 11:47:07 +0000
From: Kuldeep Singh <kuldeep.singh@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-mtd@lists.infradead.org"
 <linux-mtd@lists.infradead.org>
Subject: [PATCH] arm64: dts: ls1088a: Add QSPI support
Thread-Topic: [PATCH] arm64: dts: ls1088a: Add QSPI support
Thread-Index: AQHVC90WsiIcFNyQDEaulymYQxAAng==
Date: Thu, 16 May 2019 11:47:07 +0000
Message-ID: <20190516114807.30817-3-kuldeep.singh@nxp.com>
References: <20190516114807.30817-1-kuldeep.singh@nxp.com>
In-Reply-To: <20190516114807.30817-1-kuldeep.singh@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PN1PR01CA0117.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00::33)
 To AM0PR0402MB3556.eurprd04.prod.outlook.com
 (2603:10a6:208:17::19)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kuldeep.singh@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [92.120.1.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5d84c893-f116-4ab0-90cd-08d6d9f4394c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR0402MB3570; 
x-ms-traffictypediagnostic: AM0PR0402MB3570:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM0PR0402MB35708CDDA16A47D2C1FF1D03E00A0@AM0PR0402MB3570.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(396003)(376002)(366004)(136003)(189003)(199004)(478600001)(5660300002)(6486002)(26005)(73956011)(4326008)(1076003)(6506007)(66066001)(386003)(44832011)(102836004)(2201001)(86362001)(446003)(66556008)(2616005)(486006)(11346002)(64756008)(476003)(53936002)(66476007)(66946007)(66446008)(3846002)(6436002)(71200400001)(71190400001)(52116002)(6116002)(76176011)(99286004)(305945005)(68736007)(2906002)(14444005)(256004)(8676002)(110136005)(6306002)(54906003)(50226002)(81166006)(6512007)(36756003)(7736002)(316002)(25786009)(81156014)(8936002)(186003)(14454004)(966005)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0402MB3570;
 H:AM0PR0402MB3556.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nOFx24dzIxwzrEC5gl/vwc2bA4dpnf1uRXkJm2kHGGzUtxw6PtY+hkfmr++iLcvoHUhiVS8YqrVbHt3ysKH4vuslrBJCcMAoNhDxGyU6WFVDbb6giKJNSShV/Mn4v7QtNyYgaL6eODMqTr+NJ0dtEbyk6XMeM01ko4rAA+ynu1X/8xqgbkI9PquNnK/GUzXNt+zBAv4q+hcvtmjA6DHJm0IylddSiUEeZ5GrZYoVOtMrDS4oILWBnnE2v2xI8K0aX+NbfKNEjpVK8ctT3PlPyeAqgivd1EN7MkT/Z6VFSxdKz5YWbnAEZiAfkZn1UGh5epj8idfL780ghiAL3y9/dreZgNmIVF06qkzBLZA4Y4YH/7bPdCklMC2KJZ54pZHWaaNEbaGeeLhHUjrvJeK6w/FRvP3K4jaDJDpsz+DbBbM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d84c893-f116-4ab0-90cd-08d6d9f4394c
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 11:47:07.7879 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3570
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_044710_746374_C95D8B83 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kuldeep Singh <kuldeep.singh@nxp.com>,
 "broonie@kernel.org" <broonie@kernel.org>, Ashish Kumar <ashish.kumar@nxp.com>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QSPI support is added for kernel version greater than 5.0 and supports
quad mode defined by
TX-WIDTH = <4>, RX-WIDTH = <4>

RDB/QDS has two 64MB flash from SPANSION(s25fs512s)

Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
---
Dependency on https://patchwork.ozlabs.org/patch/1100471/
Dependency on https://patchwork.ozlabs.org/patch/1100472/

 .../boot/dts/freescale/fsl-ls1088a-qds.dts    | 26 +++++++++++++++++++
 .../boot/dts/freescale/fsl-ls1088a-rdb.dts    | 26 +++++++++++++++++++
 .../arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 13 ++++++++++
 3 files changed, 65 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-qds.dts
index 6f48d21b97c0..f01f7fca9df7 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-qds.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-qds.dts
@@ -98,6 +98,32 @@
 	};
 };
 
+&qspi {
+	status = "okay";
+
+	qflash0: flash@0 {
+		compatible = "spansion,m25p80", "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		m25p,fast-read;
+		spi-max-frequency = <20000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <4>;
+		reg = <0>;
+	};
+
+	qflash1: flash@1 {
+		compatible = "spansion,m25p80", "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		m25p,fast-read;
+		spi-max-frequency = <20000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <4>;
+		reg = <1>;
+	};
+};
+
 &duart0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
index 8e925df6c01c..bdec7e996dbe 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
@@ -74,6 +74,32 @@
 	};
 };
 
+&qspi {
+	status = "okay";
+
+	qflash0: flash@0 {
+		compatible = "spansion,m25p80", "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		m25p,fast-read;
+		spi-max-frequency = <20000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <4>;
+		reg = <0>;
+	};
+
+	qflash1: flash@1  {
+		compatible = "spansion,m25p80", "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		m25p,fast-read;
+		spi-max-frequency = <20000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <4>;
+		reg = <1>;
+	};
+};
+
 &duart0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
index 661137ffa319..96424fd9cd2e 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
@@ -318,6 +318,19 @@
 			status = "disabled";
 		};
 
+		qspi: spi@20c0000 {
+			status = "disabled";
+			compatible = "fsl,ls2080a-qspi", "fsl,ls1088a-qspi";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x0 0x20c0000 0x0 0x10000>,
+			      <0x0 0x20000000 0x0 0x10000000>;
+			reg-names = "QuadSPI", "QuadSPI-memory";
+			interrupts = <0 25 0x4>; /* Level high type */
+			clocks = <&clockgen 4 3>, <&clockgen 4 3>;
+			clock-names = "qspi_en", "qspi";
+		};
+
 		i2c0: i2c@2000000 {
 			compatible = "fsl,vf610-i2c";
 			#address-cells = <1>;
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
