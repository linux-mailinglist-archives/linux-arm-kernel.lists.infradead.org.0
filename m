Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA487C192
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:39:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HdsEFRPC8/ZH7Wyv+muYVFEmCMC9AYJGfaoZiRxuAos=; b=HkHCCmncwUKWva
	3ebx0EC/jLu9d0DKRD4uu9ZCu/zpTMrk1Zm2x4sB126Lw5NLlXs8ZFLsT3hxMN4B27IMVUZOWQoEG
	VlYxCu7BEaTVG55YBwgXkNan6EQ0QbQgJV9IBgpP57yDnQMlRsnzbr1RbzU5pQcZIUdZfnxxHTlQ5
	GOG5wzm5hyXMpH3Q8jys+PDmBh5MXKVaXQtgzMDkQ18EHRJ5V1EISbPX1Z/H+36gz0cW38/gwdVI/
	O8poqNI+QR9jlNzrTXv83dKCZ9vM06djvGLfOxifvDlRD5kDAY4OjuzptwcmAWGgSIhOFVNUHKF5r
	aG8HUPOm1GBrVgmnR/hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnsa-0006Ub-46; Wed, 31 Jul 2019 12:38:52 +0000
Received: from mail-eopbgr50113.outbound.protection.outlook.com
 ([40.107.5.113] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnrr-0005tW-Rc
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:38:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OmsgyayGIKutLZZOTdBeGaBixzL6YTI7rMowgzbyQ+5QeK/yEDPGqvI1ZYaTLxefAyp6YjwABrQ3FLBKsnKQ9kQ00CCCVLjdXGpgJo/hX102t1q3MPIk+7B35t8/M421y3wcaZ9amdZKHK/72IvbAss7k5Sslopx/EYIqqwaW61i3HwyfTGHSK38nOQN3yw1qQbzxBQxtKjhZL0HPN6+vgyp0NOku3TTfVGNf99VmgHPsdT0uBdCCqb0dm8DRzm6sdCBbUnuRPt1yC+SdpNkvhsiB0gJdlKoiP2+Ye3aQMjnBg/dhgwRM1XeYP1w5u3KGTKS40Qi+cjE/O3flD4hmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PB0vKYFbbdUeb19EeNeDiYIfwhKA7fkP3O+tYQyTnlU=;
 b=OMxhSAG2tBndNN7S6pOzVqnDEOiBvo5mHEvWvG2a11pyI295ExU7MWGhkexw+9XxJYWKsf1UHTLNYeTqX2QvyE+0KfbEuGs7HMFMEs7QpjlucU3k5zLqmFq8uzh9uH+iWUydxCjb3kSDW0yyaMyxhNU3PCOuf99MGgNKXKzDNFNw2t8LdD2Hna7Zhp1IZntuz5Fy1denVPSHm7R+U4wLJLr5ouKycpXtiz1x5JBXURhBq67J4/Cs2pGnWgipGHoA1GH0c3VZcIpaP5NkvBJ+XWR3XaA/yuzKN/tDEufJ1tg7mKBvQIgOLSJ0bg8hdWiSBEh11atF4O0/9AnehO53Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PB0vKYFbbdUeb19EeNeDiYIfwhKA7fkP3O+tYQyTnlU=;
 b=IoyDJh6CB5ZGegdnbNxRXjHuCbxQg8RtxwnmXLHFGgVBYiMDtSkL635Lv1Yq76+XbPgWZwb6baZgOUx+pc95MQ7Sv73c6CtO2fP0P+wHh6IeraWuiLgH8UI0JAfeQ9qHe/eteTehAtH6v9mqSj4hnEcyd14rwK4dhxx2HaGEIeY=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3615.eurprd05.prod.outlook.com (52.134.7.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Wed, 31 Jul 2019 12:38:01 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 12:38:01 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 01/20] ARM: dts: imx7-colibri: make sure module supplies
 are always on
Thread-Topic: [PATCH v2 01/20] ARM: dts: imx7-colibri: make sure module
 supplies are always on
Thread-Index: AQHVR5zKtbFqHRg9tECU9zfITiqrSw==
Date: Wed, 31 Jul 2019 12:38:01 +0000
Message-ID: <20190731123750.25670-2-philippe.schenker@toradex.com>
References: <20190731123750.25670-1-philippe.schenker@toradex.com>
In-Reply-To: <20190731123750.25670-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR02CA0012.eurprd02.prod.outlook.com
 (2603:10a6:208:3e::25) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0ade3b61-8280-4817-1531-08d715b3ecde
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3615; 
x-ms-traffictypediagnostic: VI1PR0502MB3615:
x-microsoft-antispam-prvs: <VI1PR0502MB361586B912B38A5F875AD83CF4DF0@VI1PR0502MB3615.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1169;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(4636009)(39850400004)(376002)(136003)(396003)(366004)(346002)(199004)(189003)(66946007)(52116002)(66446008)(64756008)(66556008)(66476007)(76176011)(4744005)(99286004)(53936002)(6512007)(6436002)(5660300002)(4326008)(7416002)(66066001)(6486002)(25786009)(478600001)(14454004)(7736002)(305945005)(71190400001)(71200400001)(3846002)(6116002)(36756003)(2501003)(68736007)(2906002)(2201001)(44832011)(486006)(476003)(86362001)(446003)(2616005)(11346002)(256004)(186003)(81166006)(81156014)(26005)(102836004)(50226002)(8936002)(8676002)(6506007)(386003)(316002)(54906003)(110136005)(1076003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3615;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GW5L58SC0Pk+UEbS/G14HjKLB2T1hfYgO3jVmz89Si7x5Qo2c3TmiHbkcSJybnpTchlGbi0LKSMqIlmPa5eGuxEtAVCfMCmJaTfPGoCRLZk6hHE1O0PtV9dewDWMfCrMD4AZyT2PPETBFlnKw1JIlj+KranOftAkifASU0nM2VY+nVPUrv8VJpNgua4o9sZ0He5895+NVLjCuvarGoFvuVaCCaf9lwIISrhAuVrl/k7dAGWuNcg3C4bbSGVVzU50Hho721LNMtKsopoYaUb0I2Iutbv1qpX/opBx2H8qm3YrZfGRzMPOy9mf596z1np5TYCmzBkD2J/FPdzsvydFhRlewsL3BoKTNXxy2Rfm37DZVoATdKgNsQE0AT8fVngq0C102GG9MWxP6qxo/Mdj2Ye2vp1Tu1Arwo7ZK97iqsc=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ade3b61-8280-4817-1531-08d715b3ecde
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 12:38:01.5480 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: philippe.schenker@toradex.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3615
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_053807_979422_66DC4776 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.113 listed in list.dnswl.org]
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

From: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Prevent regulators from being switched off.

Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

Changes in v2: None

 arch/arm/boot/dts/imx7-colibri.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
index 895fbde4d433..f1c1971f2160 100644
--- a/arch/arm/boot/dts/imx7-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri.dtsi
@@ -54,6 +54,7 @@
 		regulator-name = "+V3.3";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
 	};
 
 	reg_module_3v3_avdd: regulator-module-3v3-avdd {
@@ -61,6 +62,7 @@
 		regulator-name = "+V3.3_AVDD_AUDIO";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
 	};
 
 	sound {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
