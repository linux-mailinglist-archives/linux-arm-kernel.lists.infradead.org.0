Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F40B615D7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 08:35:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MgaMV93sCZi2cfMf/dTea/haAafu8eaTSDr19+eAPgI=; b=PfVyeQHx8q//JN
	kUwjN0uVxKuiGvl6xhsn8CVutLkEg/xahw1bltC70rT99zmD13DDU3mMzqeQlkmBooQpuxZhRYMJ0
	PnJIKgig0VvTqDICr3KU/86a+wmMVt75jOZ3qXIpAVJiFR9FN6baHJ1AlLfAW243G4pYAnpSEbhl/
	sIDQ0WBA+vj78gsaSrWkGRjHLZlfcJwkmmwxIDZQ3omzb3v+HL5x/eiTyhMgh1IQNk7wowaE9YQvH
	QWlnYmp9Eb5PQSdR1UkysrJlI+NmFbObL8j1DbtOw5WeJniDNHiLDKIqamiIjBre+/3nrvoAgZS5v
	bGSAyy3N8cKFSBdeydhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNtgo-00084q-8K; Tue, 07 May 2019 06:34:58 +0000
Received: from mail-eopbgr20068.outbound.protection.outlook.com ([40.107.2.68]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtgN-0007fc-TZ
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 06:34:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/ExYq0/XxosQws+I+MObyIAbrW7kRE6w3THug/jQZiA=;
 b=PdvzIP3qEYHBU9U+5ZM/qMLVEeFN0MsiDemaP14nAXhhIf3Nfvr07Wf3rs0EGbMlJJgt/gTPGXJP04mSzuhNG4K0oACKJbBw1CRKDKOrS/X1DI1K3mCP0D9iU6SvdvKwiOMzYssd/q6nGAAa1jJTAaPOh9agpOwpwp3njm7tHK8=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3771.eurprd04.prod.outlook.com (52.134.67.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Tue, 7 May 2019 06:34:29 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 06:34:29 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 3/5] ARM: dts: imx6sl-evk: Assign corresponding power supply
 for LDOs
Thread-Topic: [PATCH 3/5] ARM: dts: imx6sl-evk: Assign corresponding power
 supply for LDOs
Thread-Index: AQHVBJ7sDSmZDi+uOk6YXfDKN/0/wA==
Date: Tue, 7 May 2019 06:34:28 +0000
Message-ID: <1557210565-4457-3-git-send-email-Anson.Huang@nxp.com>
References: <1557210565-4457-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557210565-4457-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0302CA0014.apcprd03.prod.outlook.com
 (2603:1096:202::24) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a74042d6-a866-44de-ebb1-08d6d2b60e5b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3771; 
x-ms-traffictypediagnostic: DB3PR0402MB3771:
x-microsoft-antispam-prvs: <DB3PR0402MB3771D9FDAE31D398F77EC19CF5310@DB3PR0402MB3771.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(39860400002)(376002)(346002)(136003)(189003)(199004)(6486002)(66066001)(68736007)(26005)(386003)(6506007)(186003)(102836004)(86362001)(11346002)(2616005)(446003)(76176011)(110136005)(14454004)(316002)(2201001)(52116002)(2501003)(5660300002)(99286004)(6116002)(2906002)(3846002)(4326008)(6512007)(6436002)(476003)(486006)(25786009)(36756003)(256004)(53936002)(305945005)(66476007)(66556008)(64756008)(66446008)(50226002)(478600001)(81156014)(81166006)(8676002)(8936002)(71190400001)(7736002)(73956011)(66946007)(71200400001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3771;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: h7VJfW0kRg74xWnyGmcqBvI0FlTE+/fhDb1L1Qywc86jjk0icPzG5Ee8/OaS6knVzFrnLXX+S3ZuuFH++BvA9G1F6CbG6rMx9NbPTPsOWWVDl6XTygfHVwx18rOlHUHhvgMsWv6Tee6US64fpyDb3ukuT7mwYiaAu6s5IzWHGhDcIhpWkD+CtiOmP/ILEmeAhzAablPpqrksu1FfX9SWqLI+yCcdtkOzESIEOyB08OD0+z1IXYmMrmUS1EGbdDN9CRc1kjmvjfYbyJIx6YX8UWwd1lBNUZ4B/adws8yKVzYSsN9cmPZuLdzMvRpO6lJlRLUsZzSLFWYRLhA9AVc6Vize4mFktelJhxFT+gw72u4zu2XgsAPl8FueWl6qdWPAGCkPypT5WZMKh5777zQ5+rEZU6T0flHG9KGo1TlPwTQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a74042d6-a866-44de-ebb1-08d6d2b60e5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 06:34:28.9582 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3771
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_233432_091693_D43236EA 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.68 listed in list.dnswl.org]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On i.MX6SL EVK board, sw2 supplies vdd1p1/vdd2p5/vdd3p0 LDO, this
patch assigns corresponding power supply for vdd1p1/vdd2p5/vdd3p0
to avoid confusion by below log:

vdd1p1: supplied by regulator-dummy
vdd3p0: supplied by regulator-dummy
vdd2p5: supplied by regulator-dummy

With this patch, the power supply is more accurate:

vdd1p1: supplied by SW2
vdd3p0: supplied by SW2
vdd2p5: supplied by SW2

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx6sl-evk.dts | 12 ++++++++++++
 arch/arm/boot/dts/imx6sl.dtsi    |  6 +++---
 2 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sl-evk.dts b/arch/arm/boot/dts/imx6sl-evk.dts
index f7a48e4..4829aa6 100644
--- a/arch/arm/boot/dts/imx6sl-evk.dts
+++ b/arch/arm/boot/dts/imx6sl-evk.dts
@@ -580,6 +580,18 @@
 	status = "okay";
 };
 
+&reg_vdd1p1 {
+	vin-supply = <&sw2_reg>;
+};
+
+&reg_vdd3p0 {
+	vin-supply = <&sw2_reg>;
+};
+
+&reg_vdd2p5 {
+	vin-supply = <&sw2_reg>;
+};
+
 &snvs_poweroff {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/imx6sl.dtsi b/arch/arm/boot/dts/imx6sl.dtsi
index 9393f03..b36fc01 100644
--- a/arch/arm/boot/dts/imx6sl.dtsi
+++ b/arch/arm/boot/dts/imx6sl.dtsi
@@ -531,7 +531,7 @@
 					     <0 54 IRQ_TYPE_LEVEL_HIGH>,
 					     <0 127 IRQ_TYPE_LEVEL_HIGH>;
 
-				regulator-1p1 {
+				reg_vdd1p1: regulator-1p1 {
 					compatible = "fsl,anatop-regulator";
 					regulator-name = "vdd1p1";
 					regulator-min-microvolt = <1000000>;
@@ -546,7 +546,7 @@
 					anatop-enable-bit = <0>;
 				};
 
-				regulator-3p0 {
+				reg_vdd3p0: regulator-3p0 {
 					compatible = "fsl,anatop-regulator";
 					regulator-name = "vdd3p0";
 					regulator-min-microvolt = <2800000>;
@@ -561,7 +561,7 @@
 					anatop-enable-bit = <0>;
 				};
 
-				regulator-2p5 {
+				reg_vdd2p5: regulator-2p5 {
 					compatible = "fsl,anatop-regulator";
 					regulator-name = "vdd2p5";
 					regulator-min-microvolt = <2250000>;
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
