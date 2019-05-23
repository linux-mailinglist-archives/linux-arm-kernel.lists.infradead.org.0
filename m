Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DC22741A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 03:48:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HqvNUEEZALq0GLCokH5NhYXgz3u7MGj6NGUFQo8Bv30=; b=sD+3MN6rmTNXnn
	kBpckmtlBvWdlQ5If0XDb3VHnU48yFR3+Pb1eFR0iOUDrMvCHoyFib3iFp7CKW7bmZKIipMlDuSMo
	fUDiu8kW5bjGsYAueDc5cpdACRz7sX5jE9sIM1ubRag3sxRl1i6rLYP+3ZbHUXZoIk8LepFu1D+Ug
	oGV2FBk6YrknVnuvAfGxRZGuX8mtjQgOieS1rhZyjeShfGFMCtw9azhuy6SwyDsUu98IGgeSxjyH1
	i+vXunRfEj5t6pTFVou1XsribDs/Feh9yhTRMmYgSeURz4vRCzhoK0oAB1Qq6zUaGWJXRx/3QY2BJ
	YSf+0Ijkt5/VkoqtoUDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTcpp-0007fF-H8; Thu, 23 May 2019 01:47:57 +0000
Received: from mail-eopbgr40060.outbound.protection.outlook.com ([40.107.4.60]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTcph-0007eq-VY
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 01:47:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=npPU9WFO4GFYAixvY2NBx7WIkmuJ91uDW1b6L0Jvwsg=;
 b=EXSdI4g81dMn0StMsIGAaadVcwTfh5WwPm0wGTo4nb3b9gnfx0zCpZlhsbLiTK4HNx+IFLVNfHirexqJLmIiwCsh1rkQIoYgNMG5MuZYg4f4vIYbV2PWleGxz5wilLMjxoGLOJwPs5pIJxS+s2KthPbKfGZO8SOi0vXNfEuWlvU=
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com (10.173.255.158) by
 AM5PR04MB3044.eurprd04.prod.outlook.com (10.173.254.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.17; Thu, 23 May 2019 01:47:43 +0000
Received: from AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::15e3:bb28:7e33:1adb]) by AM5PR04MB3299.eurprd04.prod.outlook.com
 ([fe80::15e3:bb28:7e33:1adb%7]) with mapi id 15.20.1922.017; Thu, 23 May 2019
 01:47:43 +0000
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li <leoyang.li@nxp.com>, 
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCHv3] arm64: dts: ls1028a: add flexspi nodes
Thread-Topic: [PATCHv3] arm64: dts: ls1028a: add flexspi nodes
Thread-Index: AQHVEQmDureenWGIPkqqXMOejO/D4g==
Date: Thu, 23 May 2019 01:47:42 +0000
Message-ID: <20190523014921.15020-1-xiaowei.bao@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2P15301CA0021.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::31) To AM5PR04MB3299.eurprd04.prod.outlook.com
 (2603:10a6:206:d::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xiaowei.bao@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b6b682a0-c735-416e-cd54-08d6df20a54a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM5PR04MB3044; 
x-ms-traffictypediagnostic: AM5PR04MB3044:
x-microsoft-antispam-prvs: <AM5PR04MB3044EE04B44779BE9A9C0029F5010@AM5PR04MB3044.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(39860400002)(366004)(346002)(376002)(189003)(199004)(14454004)(6486002)(5660300002)(6436002)(26005)(73956011)(66946007)(305945005)(64756008)(7736002)(81166006)(66476007)(66556008)(81156014)(66446008)(8676002)(66066001)(186003)(1076003)(256004)(8936002)(50226002)(6512007)(53936002)(478600001)(2906002)(386003)(6506007)(2501003)(36756003)(25786009)(99286004)(486006)(102836004)(4326008)(2616005)(110136005)(71200400001)(71190400001)(44832011)(476003)(3846002)(316002)(86362001)(52116002)(2201001)(68736007)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR04MB3044;
 H:AM5PR04MB3299.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XggY+XlbRQos+BGWFNcg7Lep9tYHdSHaGN6LlRFzb7lbUH7buqeFlK/JFrpU10Y9Jq+z2A3RfiRmL2LsuSZIUiYPHJsWec8T0soLqpIHtSvceWTu1qWTLKb7YPVPXSRLu9DyE81OTWI0KcbnrUkjShELslPFGKyFZFriyuNQLMFd+J3OKMF0l1A1z4zu6UUMb3Kq7ZziUamfjczJ7nnAG6+wHP2iD13gwM/XkInI0FuSpdqZtsSF0hcVW3V2D/z8sc+Pm2OEmMceu+/0vxTb7oWw1CEfICgZM0nLQD8gn/y4S98wJVeK3N0EfhpEiahdrVSZdl+0MYvEOaEtuCGrzKNN4DQCNf9PooCafEDYEytsVbLXB5TohdxgOLgPrcuYwoXyuR8W7b/b3T1x/8sHmocSbg9xK/j+4r1Lao0fLi0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6b682a0-c735-416e-cd54-08d6df20a54a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 01:47:43.0230 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xiaowei.bao@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB3044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_184750_021051_3E734BDB 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.60 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Xiaowei Bao <xiaowei.bao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Xiaowei Bao <xiaowei.bao@nxp.com>

Add fspi node property for LS1028A SoC for FlexSPI driver.
Property added for the FlexSPI controller and for the connected
slave device for the LS1028ARDB and LS1028AQDS target.
This is having one SPI-NOR flash device, mt35xu02g connected at
CS0.

Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
---
v3:
 - move the "spansion,m25p80" compatible property to the top.

 arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts |   15 +++++++++++++++
 arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts |   15 +++++++++++++++
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi    |   12 ++++++++++++
 3 files changed, 42 insertions(+), 0 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
index 5c3ff43..b8cabd3 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
@@ -166,6 +166,21 @@
 	};
 };
 
+&fspi {
+	status = "okay";
+	mt35xu02g: flash@0 {
+		compatible = "spansion,m25p80";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		m25p,fast-read;
+		spi-max-frequency = <20000000>;
+		reg = <0>;
+		/* The following setting enables 1-1-8 (CMD-ADDR-DATA) mode */
+		spi-rx-bus-width = <8>; /* 8 SPI Rx lines */
+		spi-tx-bus-width = <1>; /* 1 SPI Tx line */
+	};
+};
+
 &sai1 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
index f7d4da6..b5e052c 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
@@ -152,6 +152,21 @@
 	};
 };
 
+&fspi {
+	status = "okay";
+	mt35xu02g: flash@0 {
+		compatible = "spansion,m25p80";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		m25p,fast-read;
+		spi-max-frequency = <20000000>;
+		reg = <0>;
+		/* The following setting enables 1-1-8 (CMD-ADDR-DATA) mode */
+		spi-rx-bus-width = <8>; /* 8 SPI Rx lines */
+		spi-tx-bus-width = <1>; /* 1 SPI Tx line */
+	};
+};
+
 &duart0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index e8095cf..06d9c90 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -189,6 +189,18 @@
 			snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
 		};
 
+		fspi: spi@20c0000 {
+			compatible = "nxp,lx2160a-fspi";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x0 0x20c0000 0x0 0x10000>,
+			      <0x0 0x20000000 0x0 0x10000000>;
+			reg-names = "FSPI", "FSPI-memory";
+			interrupts = <0 25 0x4>; /* Level high type */
+			clocks = <&clockgen 4 3>, <&clockgen 4 3>;
+			clock-names = "fspi_en", "fspi";
+		};
+
 		i2c0: i2c@2000000 {
 			compatible = "fsl,vf610-i2c";
 			#address-cells = <1>;
-- 
1.7.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
