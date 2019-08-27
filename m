Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9439F9E90D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:19:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=skCBwnIF+w+Kx6ETp8o/rGrICgZIow+6tOt//OInj5E=; b=K+YYMM7A8UlVup
	LKQji8PwpvxtUJ+uSN51DmO8jQanR8gMqkeoL4wLpEG8EZzp98RaX9TaY+0nobplkq1HN/ZIiTN2H
	FReEwa/O1q/RiD+61xnYG60gKQKsnnK9/F9jvxgUr9NIvdqkel4SvBTlB9Y4eMQ8xwNh1hndl0Io7
	4KX4siQ6leS3OLL+aWT9HfSKW3UXYhdOuBVBgBcJ0fgWmOkVPPjGZag8iiNjtc17hfxtcrSL3SS0d
	uk8hTQ5CWet3sgi7AZzmD4lw/9JmUpaPfvVj9FJOxmu1KZI+6uGsqyZvbqeCObfxbO4XK1JxBVdg/
	1KysoiPLBvvfsy5tSxQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bNm-0003E9-As; Tue, 27 Aug 2019 13:19:34 +0000
Received: from mail-eopbgr50114.outbound.protection.outlook.com
 ([40.107.5.114] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bMj-0002Ml-5U
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:18:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OhPy/3N7F/3xcN6an2QLPsOztlGd6WtP89FKGU1lRjcjMcVW/berm4eDj67MV421fgiY0pLCk3S2s1bFFQTzFTxi720ZkTbcwEb6Ko9S7v2i8NfnGJqqJRZAouSznoNmg8EseAs6M7pSlfQjlWfael7NAc8vuE/6/Qd6/+3JF9/CdDv+uxBvsHYi/fFZhx+WtqNUvaQAVJ/RLlcvBRQmhIQFG282FAuPy5zRnvgsxohILHAXbx6kEWtDCx06AzsZn1NT7QkFSC1l6e4PD0a1MPF4VXXx4MXqDo6J+ckbf3+IcvDccviZmF4OsXVwZcHKc84E0m4Aas3mHIXqu0x3aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pRMxO89KF1/3XvRfAddg3LgCkcdK2Cvvum96iBBzTLE=;
 b=QHGFSctw84yPr99ij5jqyJC/M3RTqFxNM08aBGeoHachA1lQkCvgyS5MhyAM1UofIwbPyQQL9qR4sHYG/l5cu+DSXRGBBnBs2RsNmn4qh1FHmpewJ/NyWvC2K+7/tLIdPKrP/5hHIeSvP/WmUv6Ed7pUVAPVNij8eUW9s+oFEqNhz7ChWKUIiz9JkwROjgmarJuxzqV0IijL8tGCty/QawfD2jQtgMrxJm+9/68FxpsIpFf2lL6r4ZqkMWokv315/Nd3lTGYNItYR9WlcUkmO2UWG76KZDLSsMKCHqX9HycZw9yampPT3/YaaNIEDicTp3vKySJZC6SCWDjW+dKSMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pRMxO89KF1/3XvRfAddg3LgCkcdK2Cvvum96iBBzTLE=;
 b=oO6mimnguOI2KUuJupUzsE/tPUBwCXO5HpjmHr7+fdrmpAcdmLUMJ2ahyZSKgR7MSJYYcgYLwQnt9k1rlVvUayd9FwDnpls4T5r1zUv1bGDE9t/BgnWsfcrzm0Xyrz28m0Cab1+1e7d0Rin9aMLTpbbOtQJCZUCYywY+Z8pS9Po=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3872.eurprd05.prod.outlook.com (52.134.5.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Tue, 27 Aug 2019 13:18:23 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9%6]) with mapi id 15.20.2199.021; Tue, 27 Aug 2019
 13:18:23 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan @ agner . ch" <stefan@agner.ch>,
 "devicetree @ vger . kernel . org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v5 03/13] ARM: dts: imx7-colibri: Add touch controllers
Thread-Topic: [PATCH v5 03/13] ARM: dts: imx7-colibri: Add touch controllers
Thread-Index: AQHVXNnmqbGVgA1FBU28GfECv2yH5g==
Date: Tue, 27 Aug 2019 13:18:22 +0000
Message-ID: <20190827131806.6816-4-philippe.schenker@toradex.com>
References: <20190827131806.6816-1-philippe.schenker@toradex.com>
In-Reply-To: <20190827131806.6816-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0102CA0031.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:14::44) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.23.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f59f7887-d798-4a64-e276-08d72af10942
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3872; 
x-ms-traffictypediagnostic: VI1PR0502MB3872:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB3872FAD3784F42E9F5B125A5F4A00@VI1PR0502MB3872.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:313;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(366004)(136003)(346002)(39850400004)(189003)(199004)(8936002)(66946007)(2906002)(11346002)(5660300002)(50226002)(54906003)(110136005)(316002)(14454004)(1076003)(14444005)(256004)(64756008)(6506007)(386003)(7736002)(478600001)(36756003)(53936002)(66556008)(6116002)(66066001)(66446008)(3846002)(6436002)(76176011)(476003)(2616005)(446003)(486006)(6512007)(26005)(305945005)(102836004)(6486002)(71200400001)(186003)(8676002)(86362001)(81166006)(4326008)(71190400001)(81156014)(66476007)(25786009)(99286004)(7416002)(52116002)(44832011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3872;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: H89fV9fL79pUHJILB9Uf/IW1BhCOD+ukdG8LZpUvrBSi7DywZrHZTL2b7RhPs41vP/aXb6++qbEkl1npaWENMPOwiszz96Px98VP72MroUftyW8PLE3kfujDIkHY+/X2BQxQ15LcbSjskCBotquRP1BrCThWEZMKj5+gnI6dCQw7IHuGRyGmNXtCFGzMBij/DczArVxjotISrQsu5AGmcd6q11+ocf8HPhSWsoWEpT5xRuoGpAxyptcMOhUoTZtGHggp+jDcLBzfOSNKMkz5AaQ3Fz9mra3EiKrcSuXUWY+dsgmeIGLkrTIQtnRprQ3CLm0U/R+ogUNxaMxm89iFZMxQfjBBr4U9V33EV7pf/B4znsHakun3Wc/pJRZzKKKmUKQvmhC/LhVGVbRh54MxV6DDBWwMF87ruW0B5JSutZI=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f59f7887-d798-4a64-e276-08d72af10942
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 13:18:23.0565 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9/36BiM1piBwE/126lRe5TmLanQbhtJUVlES+Omy4Zy0inDMLciGOp+94eb5fSlZL+kl9vLBJv36aBcMtdrQL2opY9Bq+sIz+dKGN1l8hHE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3872
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_061829_281881_4A00B4DE 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.114 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add touch controller that is connected over an I2C bus.
It is disabled by default because the pins are also used for PWM,
which is the standard use for colibri boards.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

---

Changes in v5:
- Add note in commit message about disabled status
- Added Olek's reviewed-by

Changes in v4:
- Add Marcel Ziswiler's Ack

Changes in v3:
- Fix commit message

Changes in v2:
- Deleted touchrevolution downstream stuff
- Use generic node name
- Better comment

 arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi | 24 +++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
index 45c4e721115a..6aa123cbdadb 100644
--- a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
@@ -145,6 +145,21 @@
 &i2c4 {
 	status = "okay";
 
+	/*
+	 * Touchscreen is using SODIMM 28/30, also used for PWM<B>, PWM<C>,
+	 * aka pwm2, pwm3. so if you enable touchscreen, disable the pwms
+	 */
+	touchscreen@4a {
+		compatible = "atmel,maxtouch";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpiotouch>;
+		reg = <0x4a>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;		/* SODIMM 28 */
+		reset-gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;	/* SODIMM 30 */
+		status = "disabled";
+	};
+
 	/* M41T0M6 real time clock on carrier board */
 	rtc: m41t0m6@68 {
 		compatible = "st,m41t0";
@@ -200,3 +215,12 @@
 	vmmc-supply = <&reg_3v3>;
 	status = "okay";
 };
+
+&iomuxc {
+	pinctrl_gpiotouch: touchgpios {
+		fsl,pins = <
+			MX7D_PAD_GPIO1_IO09__GPIO1_IO9		0x74
+			MX7D_PAD_GPIO1_IO10__GPIO1_IO10		0x14
+		>;
+	};
+};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
