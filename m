Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C35A018AB4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 15:30:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GF0aX+yAmWkUKfGFl4DbWvrP/kY7kdoA6xHa62q7xMk=; b=LySsL4Aovtj/Lu
	JTh0HS1f/iN/K86COVAq1PN2OHkeRwQNGth+fhDpoAlvMtdaqF4sq9XUQLmEWW4zjohP2XFIA/p02
	aO8c79tcx4YdH6ak/7WGzaOnzXZBZCWCWuOYIOGEcigf5UVvNqvghk367jaEGeDmyeQ/wZL75dNv+
	RycBD7bAvHKlaKoO2i81QWtMuHYPn/aaNnILbfS9pOfORKwBK/W3HTDCQsQ8VIpPAE6ipSRJb6SkJ
	TmXAvNkmpPC8UlRs2FI52UBuZzyK8X29eUI2olZreEitxUBndSq1c/M91yAK0r79efC2ADGtupYoS
	6sN22c6GBC+oC121czHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOj7v-0001rd-H6; Thu, 09 May 2019 13:30:23 +0000
Received: from mail-eopbgr150057.outbound.protection.outlook.com
 ([40.107.15.57] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOj7J-0000S7-0a
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 13:29:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ipLgI9uG2Y7Pc4oX1E95+VFiySIHuha+r3gUbt2/7lo=;
 b=oc1g4Zn9oCC0ZtJ179Z0/dyXSxjYLLlmhBQRQ+Wvk5CHOE6dZLTGATZw1X9Ks4zIG6smec8YQZg3i6q4CuuuCDNYRHyn+hKhoRhEKYJGdm60HH/eB9M5s0HoIdwV0RcXE24z13gBvPm39MtXGEhQdcgCvGc4hvmZPCqTV6pKmJA=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3788.eurprd04.prod.outlook.com (52.134.72.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Thu, 9 May 2019 13:29:41 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Thu, 9 May 2019
 13:29:41 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>, "otavio@ossystems.com.br"
 <otavio@ossystems.com.br>, Leonard Crestez <leonard.crestez@nxp.com>, Robin
 Gong <yibin.gong@nxp.com>, "schnitzeltony@gmail.com"
 <schnitzeltony@gmail.com>, "u.kleine-koenig@pengutronix.de"
 <u.kleine-koenig@pengutronix.de>, "jan.tuerk@emtrion.com"
 <jan.tuerk@emtrion.com>, "linux-pwm@vger.kernel.org"
 <linux-pwm@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH V12 4/5] ARM: dts: imx7ulp: Add tpm pwm support
Thread-Topic: [PATCH V12 4/5] ARM: dts: imx7ulp: Add tpm pwm support
Thread-Index: AQHVBmtCFtUJ7C74WE+uBYxCWcYNvA==
Date: Thu, 9 May 2019 13:29:41 +0000
Message-ID: <1557408252-21281-5-git-send-email-Anson.Huang@nxp.com>
References: <1557408252-21281-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557408252-21281-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0001.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:18::13) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: be6e1344-6f9a-46de-6f9a-08d6d4826457
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3788; 
x-ms-traffictypediagnostic: DB3PR0402MB3788:
x-microsoft-antispam-prvs: <DB3PR0402MB3788EB399F64E0E74ABDA760F5330@DB3PR0402MB3788.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:243;
x-forefront-prvs: 003245E729
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(346002)(396003)(39860400002)(136003)(376002)(199004)(189003)(256004)(99286004)(102836004)(2201001)(14444005)(14454004)(66066001)(25786009)(305945005)(486006)(476003)(4326008)(478600001)(71200400001)(71190400001)(86362001)(316002)(6436002)(66946007)(66476007)(64756008)(66556008)(73956011)(66446008)(110136005)(386003)(6506007)(68736007)(52116002)(6512007)(76176011)(26005)(7416002)(8676002)(81156014)(81166006)(6116002)(8936002)(50226002)(6486002)(2501003)(3846002)(53936002)(7736002)(4744005)(186003)(36756003)(2906002)(5660300002)(446003)(2616005)(11346002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3788;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5aIvzgepYQqD5Ktv3maEbiZV2e+f6hz7zG8srGLESqemp1KETLi+TnbN9zoCBBMlWm1k/VH5AiOR+/dm5TMXqVnNrWZuzIH29SGst2oufgd1uS8x9WNIIzf09QOX47UBlsPSXA57wEWlk3w30ep5iyA3Y8UUrhYuLP/zhHe4ZsDcwdA+BwY2ljGrNakie3qpOtv8VTJZ6lGQkdvsFwj10A9lSS08rOU2GwccM8tHKjiC8uL+biPP514mJXo8eNBelvJcfRaSJQ1u0IyhpnhjWWYHXGbor2A2K7rys+IVS6lE5jpv8wjAZgNLYvytLZIHHNtz/do57P55QsCEo8NIH0xtLqLwIa9lGghrimntwt46otvd2IS5soahCcgB516vww8oGrFm+v0Vmu4SJOnDJsBdz5WgD0u0FDjG4ZY5yRU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be6e1344-6f9a-46de-6f9a-08d6d4826457
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2019 13:29:41.8826 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3788
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_062945_552515_42671489 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.57 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Add i.MX7ULP EVK board PWM support.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No change.
---
 arch/arm/boot/dts/imx7ulp.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
index d6b7110..8fb9559 100644
--- a/arch/arm/boot/dts/imx7ulp.dtsi
+++ b/arch/arm/boot/dts/imx7ulp.dtsi
@@ -124,6 +124,16 @@
 			status = "disabled";
 		};
 
+		tpm4: pwm@40250000 {
+			compatible = "fsl,imx7ulp-pwm";
+			reg = <0x40250000 0x1000>;
+			assigned-clocks = <&pcc2 IMX7ULP_CLK_LPTPM4>;
+			assigned-clock-parents = <&scg1 IMX7ULP_CLK_SOSC_BUS_CLK>;
+			clocks = <&pcc2 IMX7ULP_CLK_LPTPM4>;
+			#pwm-cells = <3>;
+			status = "disabled";
+		};
+
 		tpm5: tpm@40260000 {
 			compatible = "fsl,imx7ulp-tpm";
 			reg = <0x40260000 0x1000>;
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
