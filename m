Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1FB18AB5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 15:30:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nHO8/tfz1/vEr7Yv0ImhjCFa30h8FSGPpkZdhsNpjKg=; b=lUaseXNPfr9+TJ
	t/w2GUDioSlPPenJdu0ftP0ZYgMGOOtjaGvUWmMs/1tXTbEcZtU3evVucQCj4fSvgsUtMoXpyvxAF
	bkjqIykru0keOWdQYymFY2LKJrgAIEpm8aHcOW3kCOz1yCAirlgl8oZ4RxYGL8EwEgrA7bATV8pS2
	6Cs8uaZ0XHJLlMRPJXftyEuwTVsS2y79/ppDNOfVnrTEqrDI/jf/i3v8K3ynoun/l7W8NjlHb+w1U
	KM7LLEJK2R7W3ehQPSF4yEQ6dO3KcMKf+7zPxH/wHVgEvoKTj5rYrGmKJvv/PgqadRfxcs54SsYti
	C3EvVcjIm8VHczuzmSyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOj88-0002SR-Fy; Thu, 09 May 2019 13:30:36 +0000
Received: from mail-eopbgr50058.outbound.protection.outlook.com ([40.107.5.58]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOj7S-0000dj-15
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 13:29:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MeUweS/VZAn2fh4/eFhKzhdwC+uKv8rDe746QlgMp+k=;
 b=h6eNm6DCMbp+SxsobjNt1H9NpbCMt9HW7ePkxYVOzrUiVDwLmdO8uuGOsN8otshAu70OUkX5hUwnTqQQ7W3ltV90TTn4gjC/lQFRjWtPTTjZSPCFgutAU+SCF3oVNPwX+9c6DMvoSvQjYtIRoFoCFk5ymh5AbijRT7nTFAmjQZU=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3673.eurprd04.prod.outlook.com (52.134.70.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Thu, 9 May 2019 13:29:50 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Thu, 9 May 2019
 13:29:50 +0000
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
Subject: [PATCH V12 5/5] ARM: dts: imx7ulp-evk: Add backlight support
Thread-Topic: [PATCH V12 5/5] ARM: dts: imx7ulp-evk: Add backlight support
Thread-Index: AQHVBmtHFU9Wn9MxQkO02kKidSBEsQ==
Date: Thu, 9 May 2019 13:29:50 +0000
Message-ID: <1557408252-21281-6-git-send-email-Anson.Huang@nxp.com>
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
x-ms-office365-filtering-correlation-id: 315240dc-3388-426a-9fdb-08d6d4826997
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3673; 
x-ms-traffictypediagnostic: DB3PR0402MB3673:
x-microsoft-antispam-prvs: <DB3PR0402MB36732CE5BE45F2C45D80E3BBF5330@DB3PR0402MB3673.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:243;
x-forefront-prvs: 003245E729
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(396003)(39860400002)(346002)(366004)(199004)(189003)(7416002)(6512007)(86362001)(2201001)(6486002)(305945005)(66556008)(66946007)(73956011)(66476007)(64756008)(7736002)(66446008)(316002)(99286004)(2906002)(186003)(6436002)(26005)(53936002)(102836004)(66066001)(50226002)(4326008)(76176011)(36756003)(52116002)(81156014)(386003)(6506007)(2501003)(8936002)(71200400001)(14454004)(81166006)(8676002)(71190400001)(68736007)(110136005)(5660300002)(3846002)(11346002)(446003)(256004)(478600001)(486006)(476003)(25786009)(6116002)(2616005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3673;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8w6bGnY4IM3nQmWoXfzIT3z6SE38bnGkI29h3ju4H64twWRaTP6e3RPM4G7Te+83UZZWhAlmNDv4DefwRiNzk1tKMGjdE0X9SQr0lCFnCs3ar4BpYHqQA/ml028Iwe9ngQfOLgenZ6n3E6CpgoiW7NZt2SZ2e8vhWXf7frXQKrEmHz3yUqYdf30DHCJS8l0AxmJv/EKw5QxdmfIS+mvCEPOmFNC7vVnNzYMhAvRyMc9FzkuvXCaTI1fd0CtRRhnxiQvgx697juiM55JWv/X8RFZHsDtLvMoDfuKBY8wxANidrjsD0zJ2D+IPoGNWhdkTWAy3vGh2Zgae/7S0E6fuPLOA3kKId53QzWraiQ3mqdd+TDTWGBPjTfQwqwt9Fmz4aut2iq8Whuf/PYcODKntNef/CMig1w3YsnceSgmveDc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 315240dc-3388-426a-9fdb-08d6d4826997
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2019 13:29:50.6999 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3673
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_062954_074745_95ECABF3 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.58 listed in list.dnswl.org]
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

This patch adds i.MX7ULP EVK board MIPI-DSI backlight support.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No change.
---
 arch/arm/boot/dts/imx7ulp-evk.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/boot/dts/imx7ulp-evk.dts b/arch/arm/boot/dts/imx7ulp-evk.dts
index a09026a..59f094e 100644
--- a/arch/arm/boot/dts/imx7ulp-evk.dts
+++ b/arch/arm/boot/dts/imx7ulp-evk.dts
@@ -22,6 +22,14 @@
 		reg = <0x60000000 0x40000000>;
 	};
 
+	backlight {
+		compatible = "pwm-backlight";
+		pwms = <&tpm4 1 50000 0>;
+		brightness-levels = <0 20 25 30 35 40 100>;
+		default-brightness-level = <6>;
+		status = "okay";
+	};
+
 	reg_vsd_3v3: regulator-vsd-3v3 {
 		compatible = "regulator-fixed";
 		regulator-name = "VSD_3V3";
@@ -40,6 +48,12 @@
 	status = "okay";
 };
 
+&tpm4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm0>;
+	status = "okay";
+};
+
 &usdhc0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc0>;
@@ -57,6 +71,12 @@
 		bias-pull-up;
 	};
 
+	pinctrl_pwm0: pwm0grp {
+		fsl,pins = <
+			IMX7ULP_PAD_PTF2__TPM4_CH1	0x2
+		>;
+	};
+
 	pinctrl_usdhc0: usdhc0grp {
 		fsl,pins = <
 			IMX7ULP_PAD_PTD1__SDHC0_CMD	0x43
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
