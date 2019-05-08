Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC0A17617
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 12:35:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5HioE+U94WKddxVPF4WQhqFYWLUNV8qhqgIv/j9harA=; b=H1C1w4+avKw/F5
	vjLBn3KaOuePRgpAu7ZqGRSjwCUBU0rQw3WnhaYjl009BMgh702dSYZM7YsUc4dGO454M7DbdgOqO
	gXPKWhqzGzyVOBCHcMKKrTMQqh4cCWbLpRjJkUBTazKdwmICjQwb0ngvxxXqVUO2rzmTyrjZpZPFv
	80Bek4syL3/3K/+z7HCYusrm3d2VDJw+riMxU7d4Wu5f8Ohqtr3mW7pBfEKiQwU1YXkbWbnEsRsAC
	bWZnbQrqTncqDYREQVkHTiIHrcgMLEaVQRtzrzfqTRGFD06TX75PWrYZqlmDIxdagKYYtpUVD+Vdv
	lteJLaCrpI4BWyRYXy5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOJvP-000161-4t; Wed, 08 May 2019 10:35:47 +0000
Received: from mail-eopbgr130052.outbound.protection.outlook.com
 ([40.107.13.52] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOJv8-0000wu-2m
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 10:35:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N9NhfFMu93xfl0CWUaGF9oD/zfbeliOHhlwzrPu3zIs=;
 b=m9ukk62zbV/MFyKGu1qjPuaUgOPKwtrcJi94eUwP7OGiPzYmKdTVoibRg8cudgcIpa/YePYVxn2t6xf9cjGjhLlW4+SHWQskoZPXr1x/CrbDeNwQSUbJz+vyVhYk7c8Gg7O9J+S21ILAj3Y+ghqPoF7lvN53tK/Qm8KRdSH68XA=
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com (20.176.215.158) by
 AM0PR04MB4962.eurprd04.prod.outlook.com (20.177.41.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Wed, 8 May 2019 10:35:28 +0000
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be]) by AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be%7]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 10:35:28 +0000
From: Wen He <wen.he_1@nxp.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: [v1 2/4] arm64: dts: ls1028a: Add properties for HDP Controller.
Thread-Topic: [v1 2/4] arm64: dts: ls1028a: Add properties for HDP Controller.
Thread-Index: AQHVBYnAtCzb3wJHv0OIGxIVzag2KA==
Date: Wed, 8 May 2019 10:35:27 +0000
Message-ID: <20190508103703.40885-2-wen.he_1@nxp.com>
References: <20190508103703.40885-1-wen.he_1@nxp.com>
In-Reply-To: <20190508103703.40885-1-wen.he_1@nxp.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR03CA0037.apcprd03.prod.outlook.com
 (2603:1096:203:2f::25) To AM0PR04MB4865.eurprd04.prod.outlook.com
 (2603:10a6:208:c4::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=wen.he_1@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3cdeb172-3138-42ae-cb97-08d6d3a0e30c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4962; 
x-ms-traffictypediagnostic: AM0PR04MB4962:
x-microsoft-antispam-prvs: <AM0PR04MB4962540C2521C692653DA6EDE2320@AM0PR04MB4962.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:983;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(136003)(346002)(376002)(39860400002)(199004)(189003)(478600001)(66946007)(186003)(2616005)(476003)(53936002)(66556008)(99286004)(4326008)(66066001)(73956011)(1076003)(66446008)(36756003)(64756008)(305945005)(316002)(7736002)(54906003)(2501003)(110136005)(76176011)(52116002)(6506007)(386003)(256004)(2201001)(102836004)(86362001)(446003)(11346002)(66476007)(5660300002)(26005)(6116002)(3846002)(14454004)(2906002)(6512007)(8936002)(71190400001)(71200400001)(486006)(50226002)(6486002)(6436002)(68736007)(25786009)(8676002)(81166006)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4962;
 H:AM0PR04MB4865.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 09Y5cqYZJB57YnHWgzPWlv9gdbetUmmPi7He22S711scsjuUmN5b7HjUjdXG1tic4Qd4+u8AFaaWG9vHuCF2TcRa7+Oiky3WXIOFQQS0llDirNAR0//n0CdDnxqvKWxm/hSQ4KLHoeSSb+0m/WGaJYJhS6WXAgLpiCPOKrCHp/CAVTp8+rCfzeLsK8I4KvoabXOyguBYsa1Wq6bATFYpi4+2LR607WwanKu8rAKwKZAKLpK0KqYYHHEhwCDj09awgXrBYdwQ1FyT2gIVV//xh5PHpl2cCdlWTvV7QASI8xTRhetASm4B6Fr6jlq/S/eht1XkYg9dIof0RCxLZ4O25oUdjZMDx6AB1+fbYxsXmGw8r2sjZyzYZSNN+CfTlIRZ2AEgnEbZQntRHm/R9qNVIL+tvooDsOoKPCvBFOygBLI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cdeb172-3138-42ae-cb97-08d6d3a0e30c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 10:35:27.9756 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4962
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_033530_118461_4F39961F 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Wen He <wen.he_1@nxp.com>, Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch enables the HDP controller driver on the LS1028A.

Signed-off-by: Alison Wang <aslion.wang@nxp.com>
Signed-off-by: Wen He <wen.he_1@nxp.com>
---
 .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index c0a13f9e5b95..158fdf26a117 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -91,6 +91,13 @@
 		clock-output-names= "pclk";
 	};
 
+	hdpclk: clock-hdpcore {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <162500000>;
+		clock-output-names= "hdpclk";
+	};
+
 	reboot {
 		compatible ="syscon-reboot";
 		regmap = <&dcfg>;
@@ -467,7 +474,25 @@
 
 		port {
 			dp0_out: endpoint {
+				remote-endpoint = <&dp1_out>;
+			};
+		};
+	};
 
+	hdp: display@f200000 {
+		compatible = "fsl,ls1028a-dp";
+		reg = <0x0 0xf1f0000 0x0 0xffff>,
+		    <0x0 0xf200000 0x0 0xfffff>;
+		interrupts = <0 221 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&sysclk>, <&hdpclk>, <&dpclk>,
+			 <&dpclk>, <&dpclk>, <&pclk>, <&dpclk>;
+		clock-names = "clk_ipg", "clk_core", "clk_pxl",
+			      "clk_pxl_mux", "clk_pxl_link", "clk_apb",
+			      "clk_vif";
+
+		port {
+			dp1_out: endpoint {
+				remote-endpoint = <&dp0_out>;
 			};
 		};
 	};
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
