Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF551AB57
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 10:51:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FjCrXZAUCzzP7AmMN79a6pOFZ+TVm77Nk2gnqH6yjsk=; b=tno42VfFK9aapu
	WZfnHHW+Ub6xVOaKoQTjjr3dtWA5WHxH8Ou0dCShTN/pK0AmorZTdaHNMy1d9bY1dHXUj9KKUmaCc
	wVSvQemld/Oii7Tn6z/t18oSphSRspu1O1NfcWC37sUeaX83nk0k2YhSbNjKzMyzfPqdBBdi2It0Z
	61gouCW2ghp236sj195UBDTAKeFLqJd2fxSBkVkHcpaDHuuMXk2lJ1mubkXt3xdwn5DCDrGNIhZFR
	b9Z9ACQU5V7PBC+ziBB9SJMvDQeQpL54LkG78ct/XK9zh5EAQB+NLS7AmANgI8ewMvOVZlgXO/JJL
	6GyPgQbgKTkjVS48+wWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPkCp-000183-D4; Sun, 12 May 2019 08:51:39 +0000
Received: from mail-he1eur04on0607.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::607]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPkCb-0000zS-9i
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 08:51:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0c+4+C/jrbkIsqkKZNzVnwJIHq5ptyUl9AeyHh+a0/I=;
 b=Z6IdV+yBMdeLCz0EcKcLkTPU+FhCn2Ohluh/ydTPqC4sSXXnjDyOcCleCGhLZixIvBZjadQCLM6n8wLLr/Hwuf3GIh+P1onSVjqG+2XQG299PZj54y9wSdZUu4+Fh9B5DCij2T51SeNZUaPC4ODV8O0dOThBVDGiS9vN7l+Telk=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3739.eurprd04.prod.outlook.com (52.134.67.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.21; Sun, 12 May 2019 08:51:21 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Sun, 12 May 2019
 08:51:21 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>, "otavio@ossystems.com.br"
 <otavio@ossystems.com.br>, Leonard Crestez <leonard.crestez@nxp.com>,
 "schnitzeltony@gmail.com" <schnitzeltony@gmail.com>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "jan.tuerk@emtrion.com" <jan.tuerk@emtrion.com>, Robin Gong
 <yibin.gong@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH V12 RESEND 2/3] ARM: dts: imx7ulp: Add tpm pwm support
Thread-Topic: [PATCH V12 RESEND 2/3] ARM: dts: imx7ulp: Add tpm pwm support
Thread-Index: AQHVCJ/fymja6Fu6mkegJXuLVPBSWg==
Date: Sun, 12 May 2019 08:51:21 +0000
Message-ID: <1557650772-11973-2-git-send-email-Anson.Huang@nxp.com>
References: <1557650772-11973-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557650772-11973-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR03CA0043.apcprd03.prod.outlook.com
 (2603:1096:202:17::13) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3c133d7f-8d98-431f-3b97-08d6d6b70139
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3739; 
x-ms-traffictypediagnostic: DB3PR0402MB3739:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DB3PR0402MB37393B08BB51E1BE21D99107F50E0@DB3PR0402MB3739.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1850;
x-forefront-prvs: 0035B15214
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(136003)(346002)(396003)(376002)(199004)(189003)(966005)(36756003)(186003)(66556008)(476003)(66446008)(66946007)(66476007)(64756008)(486006)(14454004)(2501003)(66066001)(2906002)(446003)(11346002)(2616005)(256004)(14444005)(73956011)(478600001)(4326008)(3846002)(6116002)(25786009)(26005)(102836004)(6436002)(7736002)(305945005)(53936002)(6506007)(386003)(6486002)(6512007)(6306002)(7416002)(2201001)(86362001)(4744005)(316002)(110136005)(68736007)(81156014)(81166006)(8676002)(8936002)(50226002)(71190400001)(71200400001)(52116002)(99286004)(76176011)(5660300002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3739;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /RDFnFuqhIxzQ2rJKm7AriNj9Ze3AZ21SbtKNchc2TBvwgF6ILy7AjABnsPOukA0QG8Kk9askV7tntdX2eejpvBWjBrpkbOTzkxtHTDEyzsu57+g0FbAbpv7JnjstFaVZkex18BijmRNabU11JkK/ffEAt+vWzlEJS0/NXk1Dw2BWevEKmLS6EOGEpXpH2XCoqlWgutY12I/RXuMghHQNk8YN3/+TtIs7mlzgA1iZWAYpF/WfbDaxw5c/JFcirnM3XJ1cz/H4LOuq8pbf73HPS54G7JiBwONbFzlh2B5JiacJyupO6ssRrsECMaWifJLOEAcm4nJZMjFWAOhr6yIVmHD+/cYKY0ATfWLMqKHHWzxxz834lOUOAzH1MBv+6v2oz1/TJN4TqENAC44WrHJO4Urcp5NY/UwS7zuBH1+Z8s=
Content-ID: <0549FFB5F6AB5A45A54FC867FA70D6B5@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c133d7f-8d98-431f-3b97-08d6d6b70139
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2019 08:51:21.3805 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3739
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_015125_692069_E8CCE61E 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0d:0:0:0:607 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
No change change, just resend the patch with correct encoding for patch series:
https://patchwork.kernel.org/patch/10937147/
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
