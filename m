Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 230912DC61
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 14:03:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=99WIOeuVoRddpwBJ/x1WogbZ42iYv+fSMfd76botJfU=; b=pO605zsE3YET0s
	5NqvDQAhM6dmsz7E/beomjVpO2XfAE+P4tq+AXduEIAGddZICYYn8V4i/rOPqCtnraPmtcn/T1LX1
	Q07fMvMaLJyzQlpFtN2AQFm0ohy9ll3W6c1TJcMfhNQ579CiUT0e/ZPztyEV9n9sIP+w2ih5oC6aU
	U5x8BC9r8JNQTZJkGUP6c7YV0GB0d/m/yW3uUoQWJiVAeRMq2nf/lKkc6dDQh5u8xd/IW5jmKyuR+
	jFfoODyk8PnxQPFua2cHEdOxdUOuIuvjddXaiJDIroS9VDzrq426KiENfOBXkKtjHXlTwjnMvXZ/8
	VW6adSenrAsW9jLLtz/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVxJA-0003rL-6K; Wed, 29 May 2019 12:03:52 +0000
Received: from mail-eopbgr130054.outbound.protection.outlook.com
 ([40.107.13.54] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVxJ2-0003qn-0l
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 12:03:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ylrqZaR6G8vxrql8vSfpgIDJEoJE6VA3lgeCtYzr1Hg=;
 b=dBdeNKx599rP487XECVlxNaJAfxW5UIN+Ceasst/q1djnHwQIBCN2M66/AfWuaTPnYxA8UI6WdCLAAJdtaXgtO5MNKx793MpkueLIyKDDr9esGoOFLWKXQLuJEi4pjzzjviMs8/U98+V4LWJvKVwGyM4uZhchqv9hN3q2U2oIjE=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB5998.eurprd04.prod.outlook.com (20.178.123.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Wed, 29 May 2019 12:03:40 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1%7]) with mapi id 15.20.1922.021; Wed, 29 May 2019
 12:03:40 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Jacky Bai <ping.bai@nxp.com>
Subject: [PATCH 1/3] ARM: dts: imx7d: Update cpufreq OPP table
Thread-Topic: [PATCH 1/3] ARM: dts: imx7d: Update cpufreq OPP table
Thread-Index: AQHVFhaNwoTPYZ2vJk+vUyTsOMXqbg==
Date: Wed, 29 May 2019 12:03:40 +0000
Message-ID: <b6a9b9f80534af5c12db30a0bb699ec850f85be7.1559131365.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: LO2P265CA0432.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a0::36) To VI1PR04MB5055.eurprd04.prod.outlook.com
 (2603:10a6:803:5a::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cfa204dc-6ffb-49a6-ef20-08d6e42db030
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5998; 
x-ms-traffictypediagnostic: VI1PR04MB5998:
x-microsoft-antispam-prvs: <VI1PR04MB5998BE5E4463FD4970BF6F58EE1F0@VI1PR04MB5998.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 0052308DC6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(39860400002)(366004)(376002)(136003)(199004)(189003)(6436002)(6512007)(73956011)(478600001)(66446008)(5660300002)(6116002)(6486002)(386003)(6506007)(102836004)(110136005)(25786009)(81156014)(305945005)(54906003)(3846002)(50226002)(6636002)(99286004)(7736002)(8936002)(68736007)(86362001)(53936002)(8676002)(52116002)(316002)(15650500001)(4326008)(81166006)(14454004)(66476007)(64756008)(66946007)(66556008)(118296001)(2906002)(26005)(186003)(256004)(486006)(476003)(2616005)(44832011)(14444005)(71200400001)(71190400001)(36756003)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5998;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FjJa4FZQYjX/bD79Ksr72UcjOme+lPNOttdl9oqW/PB8hrTLz8E29yWBHLrZpzIvJCQeAVe6Zoe9wxrS0prkO/Xkg4CyqdUyEJUG+P6T2NhxkAQX3/e+Eo+3lqEiRrLIGnHlfngwpTZjoGG2oXJpPdua831llmNbJe3bwtejoKxJUA3AEDflYvHT+6r+9naHlSPZva7hrNwIix7DPjQQRZYOIw9JcbcxRv+LfrghRLHxyMpNayLy2LYAuoJ/N3BZ7dO3gx6X+Q30YIl4EaS2xiFp3uqNA5ytas5bt9+7U4NfC0+AEv18QTNN9c4Ka1JoYhdacpBaPA2RjaRVtBWcnl2TIIWlZ25Tb8YAkiasfN5vuvPFjS5mDezQwPtFpFQHDpbA7rMvXtb4jBTTgas8DTcMrom74PgouXn90tktAic=
Content-ID: <4BE730BBE7BB2049A18DCE962E1E2DC7@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cfa204dc-6ffb-49a6-ef20-08d6e42db030
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2019 12:03:40.3060 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5998
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_050344_065528_5187AFAF 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to latest docs imx7d chips can go from 800 to 1200 mhz.
Maximum frequency is determined from two speed grading bits present in
OCOTP fuses at same location as other imx chips.

Also update to "typical" voltages from latest datasheet, 25mv higher
than current dts.

All imx7s parts are still fixed at 800mhz

Based on:
* IMX7DCEC Rev. 6, 03/2019
* IMX7SCEC Rev. 6, 03/2019
* IMX7DRM Rev. 1, 01/2018 Page 1102

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 arch/arm/boot/dts/imx7d.dtsi | 16 +++++++++++++---
 arch/arm/boot/dts/imx7s.dtsi |  4 ++++
 2 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx7d.dtsi b/arch/arm/boot/dts/imx7d.dtsi
index f33b560821b8..42528d2812a2 100644
--- a/arch/arm/boot/dts/imx7d.dtsi
+++ b/arch/arm/boot/dts/imx7d.dtsi
@@ -10,10 +10,12 @@
 	cpus {
 		cpu0: cpu@0 {
 			clock-frequency = <996000000>;
 			operating-points-v2 = <&cpu0_opp_table>;
 			#cooling-cells = <2>;
+			nvmem-cells = <&cpu_speed_grade>;
+			nvmem-cell-names = "speed_grade";
 		};
 
 		cpu1: cpu@1 {
 			compatible = "arm,cortex-a7";
 			device_type = "cpu";
@@ -37,19 +39,27 @@
 		compatible = "operating-points-v2";
 		opp-shared;
 
 		opp-792000000 {
 			opp-hz = /bits/ 64 <792000000>;
-			opp-microvolt = <975000>;
+			opp-microvolt = <1000000>;
 			clock-latency-ns = <150000>;
+			opp-supported-hw = <0xf>, <0xf>;
 		};
 
 		opp-996000000 {
 			opp-hz = /bits/ 64 <996000000>;
-			opp-microvolt = <1075000>;
+			opp-microvolt = <1100000>;
 			clock-latency-ns = <150000>;
-			opp-suspend;
+			opp-supported-hw = <0xc>, <0xf>;
+		};
+
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <1225000>;
+			clock-latency-ns = <150000>;
+			opp-supported-hw = <0x8>, <0xf>;
 		};
 	};
 
 	usbphynop2: usbphynop2 {
 		compatible = "usb-nop-xceiv";
diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index d8b4eb67146d..5b8292670b4b 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -549,10 +549,14 @@
 				};
 
 				tempmon_temp_grade: temp-grade@10 {
 					reg = <0x10 0x4>;
 				};
+
+				cpu_speed_grade: speed-grade@10 {
+					reg = <0x10 0x4>;
+				};
 			};
 
 			anatop: anatop@30360000 {
 				compatible = "fsl,imx7d-anatop", "fsl,imx6q-anatop",
 					"syscon", "simple-bus";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
