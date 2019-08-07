Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8B784760
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:29:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cgJMr6UYDuhicBxB8uVw5x51lIQg6CCookuCEywm2SA=; b=IOLf1Bbr91BfVn
	FGnYVp9s4hLtFumQDj8ItdRk5qT0QJdKQq5Qsl5Q4rmteHn/mInvhg6s83vT3qjVYWxSxc/Ks/hXF
	jBOiZphQP7UyyaNkimy0Qk193RjLzYtKEakUS+NYhtMP0iXqJ3+r0Gr4jFsdjmg0Pv+exPTdjjcBU
	DG5VqGyT1DyyKlAh/jAdZkTOlGiZcGnM2P3mEQml+XXWXKifqasHgpM/y1NwmA8E7XSCZCVxejmSn
	SVUza8MGchAZwjgryHViqroCQDYxBEkK6BsVy/xRwOU5Yf7IG0hdbdXED2f26LlXC+ooCI8MGiGpB
	6FQZdbitMExXlSqevgRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHK6-0005BM-QR; Wed, 07 Aug 2019 08:29:31 +0000
Received: from mail-eopbgr130133.outbound.protection.outlook.com
 ([40.107.13.133] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHHB-0002et-KY
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:26:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PiUb4S9edtFMLS/yB2cSbdPDawY9ZistdDPqBgC5+wt+l7kA5fi52Si5NGh4HKBlxTh09xRG50PUlxMw6O2lJEkrh9WVgnFtPsItF+f+5Z1uqcGtX93hwPts2WenuHOfWP/J/uZNgsLLXAOkEbjnP+ZkWuSfMget6x/0VKuBK+NAyTnON8wYdzliQ0UdcdXWGujE00KcqZ47QyLduTsg2fstDFHFo0gpwePAeoePdjnPPDb8YiCzclGrS0lVp7yDNvRqjZxKGHLB61jAkys07PAIGAFDcr3lD1rb3Gp8D96gzA8ap+e5bs2zuFgw9qgMS+CZ7ayo1WEmP8iHyav2+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zcMg9D60rr4+Qz+Y2bprLMSlQAzjTTM5n6+jhZBerZY=;
 b=C2gVz0z7QhHmSxITO2//JYmhW6/FrxDtD9dp5DO9DMtnScBif1oQaM4LHrH63wEcqn+dvOftY7aAvoA+kB13oTrgUSwNQrkh0GCiGr++RVGS6orp3KeJE6Ngyyxx6Kw/O11jabe6uiJ4Uur8lU91lqP30JMov9mgIcqvQ94D2+zOYj6jTOdtsdBL3ExvRvsPm+d7HPk6SImAICi9Qzss4sa6kFOYFebrk8knGsfHy8zv8tMsSbyxRm947q50tD3r1nFtOxbZQvX7wZ0P0wpMwomFkM2odTpzHOpBRUFRvQg46qLO3oBiO4/pMROBb+jo1tnX6Lyad1n6Sk68jv9Wzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zcMg9D60rr4+Qz+Y2bprLMSlQAzjTTM5n6+jhZBerZY=;
 b=amESVJa6QroO/hGgXxBnuKjIEx4pw0rbOL0O9mMzSg/jMqms1aZsXAWYrYnQ2PbdIHAR98sw/YTBEN1/MxxqdmA0c2j/eP/1meC4kWYw6qvyUO0dhqjs3D+xqb01z2YoUSYzpChOGfMdrTBnkq6iAv26rjKbfmM7QIMHLkCV4E0=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3614.eurprd05.prod.outlook.com (52.134.7.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Wed, 7 Aug 2019 08:26:21 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 08:26:21 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 08/21] ARM: dts: imx7-colibri: Add touch controllers
Thread-Topic: [PATCH v3 08/21] ARM: dts: imx7-colibri: Add touch controllers
Thread-Index: AQHVTPnLaoMcHBqrIk2/6SgfkciIaw==
Date: Wed, 7 Aug 2019 08:26:21 +0000
Message-ID: <20190807082556.5013-9-philippe.schenker@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR0101CA0044.eurprd01.prod.exchangelabs.com
 (2603:10a6:200:41::12) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6b772d64-59c8-4732-b6f9-08d71b10ed82
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3614; 
x-ms-traffictypediagnostic: VI1PR0502MB3614:
x-microsoft-antispam-prvs: <VI1PR0502MB36148C2D34EC847EC845F83AF4D40@VI1PR0502MB3614.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:252;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(396003)(39850400004)(136003)(366004)(199004)(189003)(305945005)(14444005)(6116002)(26005)(81156014)(76176011)(36756003)(3846002)(6486002)(86362001)(6512007)(478600001)(25786009)(71190400001)(2906002)(7416002)(81166006)(256004)(316002)(71200400001)(2201001)(44832011)(53936002)(7736002)(110136005)(8936002)(54906003)(52116002)(66446008)(64756008)(14454004)(99286004)(476003)(102836004)(8676002)(6436002)(1076003)(66556008)(5660300002)(6506007)(2501003)(4326008)(66946007)(486006)(446003)(11346002)(66066001)(68736007)(50226002)(186003)(66476007)(2616005)(386003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3614;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wyT8GRznMqjXoPlr/eZRsLH55OP9zuXl79eMnlIq35fBM8f5I/1YOMcVBIWarA+t9sqVoTV/cPvbZLRRMOjqB9OVF197D9IIWE+fydpXgAUvtlx+r635GHbZo8w6hfVR67sVTjgbW1a65FNGAVe5y7UJCmml8OaANWb1jAvhvg6fjTl6un0nawWI0/0GoarbPv8N4q9TQB0qyCaRt1YSChdYYGJa2x4OxsXdgrE99VZCfnyIsJU73JUHhMfXGdhhvgt+gzLTsk1NhoJM1VPcUo3uu8lRRwrmnR0FRl7W01o2RGfHdAbsSNsxPJINUCcD3UpueS/Uk1qAE+o7LSGbHcdP77vQDBk2GBonJmzqaqIblTeN1PF5cZ3FVCkte52hB+/jUz884Vsiu5+DIrYmvPmL123B0BZijiskgWuvb7I=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b772d64-59c8-4732-b6f9-08d71b10ed82
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 08:26:21.6736 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IHPUjvh8doV/7qzqsgu3FMrXMLboLN0vUvy0xEzl4wD5qUpj3YYBznSbR8094HE8CYvNLSzLLWb5z+Fr+5pi/+AZxt1VXgxsnkq9R3SNPAk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3614
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_012629_897962_690CEF24 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.133 listed in list.dnswl.org]
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
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add touch controller that is connected over an I2C bus.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

---

Changes in v3:
- Fix commit message

Changes in v2:
- Deleted touchrevolution downstream stuff
- Use generic node name
- Better comment

 arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi | 24 +++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
index d4dbc4fc1adf..576dec9ff81c 100644
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
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
