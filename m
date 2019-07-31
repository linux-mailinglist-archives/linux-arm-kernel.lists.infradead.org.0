Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D46A47C1CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=owOvY1Yoqkb6zqf2CRHkEKL8Yjzy/crHt8AdQ/Xa0Ys=; b=gj5uW67PatDi4a
	JTEGH9ZwFTfzs4ArgjIZAwBGaHExIi3KocWX7AaSVqZuif1UNn88jBVtt/e4dkGIIv20KAw5tbJmT
	IBS6RuJaL6kS9cOOT/7mELXMj7N0w2osnKJ454xAq80twA8TapdpXpH94DneUyHN5Oal3bt7qr6oO
	5HK3BjLtOfM5t2UFkbR5uy8gpOql6w/SVd7sgep9Jx4PvnoEBx0NMoSVOj/KwEGVXb4DdckvZoE3e
	vyXD9ze2adplrkiKxi/wr2rdlNsD8Z/D2abqSJN82TDDoIavVcOlZzAIb+MO874deqXgF/oCpaU8+
	3Xee4zYu5R0ne2L+7DoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnwL-0003uT-1l; Wed, 31 Jul 2019 12:42:45 +0000
Received: from mail-ve1eur03on0724.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::724]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnsO-0006Le-SU
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:38:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fDxChlWW6BFhVfdxjOcdGifGShjkTHaV48sqvh5gXcjjqj9NqhOc3AGyOJ6IX8KfxLZwY5bilbqI0KGS1dk6pi8qjx9+ugJBK+qUXBA8ELW2F6o4iMVojCfHIoP/6ZOB7QxL+w9ic7TXuhusSmHZuf6e9XfOBQP0Fk9QVbiqCjdx6yaj3jcYHQl9BwZU8knaWq3s+bQ5lk4bRuDsKGAN2WF4hu5/gNX7kAoDL68FpBAmxPffVrhB+ou6VZwsR7g9wot5t/sw0u2QLAo+BDpr3p91Vtspki/OYm8ugYpZajRxD8Z9IxIfC9KWi/ONGEuX0qlhleyvHzxMhaMJChLkkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P44h+lwM6YvWHCN1T0PGsFLlCbfAiPM3WVMRkGXVB1I=;
 b=b1sn7V4uUaHvaQOUvl9DkyCxRRbvHpReyOyjnuhFIWFmPSBjfsba+D0Pi9wVy3/OFmYWOWRSGRF/TcYpiFOVRvRZno4xG1xR59hWsAvJy8aY28SbeQCwd1TS7GdpE+dgXWN/VLHt9bCuDhy/pfdqgdCHKnjLERFEa+4Z4eLgZirBSOZD1h5f+TNDrMvsGBiHUsJznhiBSbczxv7oD2mGGIOvhsrP5SLbpLZQKdERTJT7aaDhRvUxhcpFOm0cr9E6I3u6khp2FtdU90x37xHqjjmKUSg26T971NJIdvV7+zibCMnVo0ztbFkixqZpdETYs6CzqbmPk41vqYuvF5ymsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P44h+lwM6YvWHCN1T0PGsFLlCbfAiPM3WVMRkGXVB1I=;
 b=jbAHSy0hHLIT02wB1cazHtvksRYR9sFJRXpo8PMjAKDmKkPd7ULQnawnwuL2dpqXE3ZkvPp+6TGTPLb2oPfr9CeKC4nl1ZmjQTfGNTPP16XzJ3UkZnJCHyjNmIy3h8DDVE5JBR4nnncbrUhfUhq2xx3G3WS9Fhe59jdZEA/ph6c=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3615.eurprd05.prod.outlook.com (52.134.7.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Wed, 31 Jul 2019 12:38:35 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 12:38:35 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?utf-8?B?TWljaGFsIFZva8OhxI0=?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 20/20] ARM: dts: imx6ull-colibri: Add touchscreen used with
 Eval Board
Thread-Topic: [PATCH v2 20/20] ARM: dts: imx6ull-colibri: Add touchscreen used
 with Eval Board
Thread-Index: AQHVR5zeW+px2/law0qMCWO5IZ0sxg==
Date: Wed, 31 Jul 2019 12:38:35 +0000
Message-ID: <20190731123750.25670-21-philippe.schenker@toradex.com>
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
x-ms-office365-filtering-correlation-id: 1da1691c-076b-4c12-d95d-08d715b40108
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3615; 
x-ms-traffictypediagnostic: VI1PR0502MB3615:
x-microsoft-antispam-prvs: <VI1PR0502MB36154DF6B2CE34D4C74D9DB6F4DF0@VI1PR0502MB3615.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39850400004)(376002)(136003)(396003)(366004)(346002)(199004)(189003)(66946007)(52116002)(66446008)(64756008)(66556008)(66476007)(76176011)(99286004)(53936002)(6512007)(6436002)(5660300002)(4326008)(7416002)(66066001)(6486002)(25786009)(478600001)(14454004)(7736002)(305945005)(71190400001)(71200400001)(3846002)(6116002)(36756003)(2501003)(68736007)(2906002)(2201001)(44832011)(486006)(476003)(86362001)(446003)(2616005)(14444005)(11346002)(256004)(186003)(81166006)(81156014)(26005)(102836004)(50226002)(8936002)(8676002)(6506007)(386003)(316002)(54906003)(110136005)(1076003)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3615;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fK26W+dFd4/zXfY8obejS04Kk99pK+wmDiOnIZAR4Un7ueLqd2vKwzx6732w2/9+Xml1Dsr6kHrE/VzogtRq8DyUtVXGBFtP+E3oMWyL4wFSLc4aZ3xrsTCTtcfnBy9Rse/rRb9OPQNwdhtfmyEJCDVU3+yOm8T34cFwMPrADIeM/qzO2HKAau+gb1AysrU6D73UPXwYS30h8uOvfFcyohuP1pnLvkrxGlfYpcRcaDEK8RZCsVLubc+BaqXTOGchN+iJ71VlONXDhEZNAL0u0/YxREMtxHBK3WYDFrxEzLqOLjoK+VyJHU8N43XYA+9P2k691K9i4YmHdGx39k+cG97V3QKUUHMzeUY8gmBCBXsmOE633kGHwA00lXXahA9dc6WYh/zJtITdjhOzOHfyBniy0wVJyuS+oaFwlCG6fRw=
Content-ID: <D7D52C126B4AFE41A30C7E92EA22457B@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1da1691c-076b-4c12-d95d-08d715b40108
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 12:38:35.3527 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: philippe.schenker@toradex.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3615
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_053840_925779_29F4783C 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:724 listed in]
 [list.dnswl.org]
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

This adds the common touchscreen that is used with Toradex's
Eval Boards.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

---

Changes in v2:
- Removed f0710a, that is downstream only
- Changed to generic node name
- Better comment

 .../arm/boot/dts/imx6ull-colibri-eval-v3.dtsi | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
index d3c4809f140e..78e74bfeca1b 100644
--- a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
+++ b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
@@ -112,6 +112,21 @@
 &i2c1 {
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
+		interrupt-parent = <&gpio4>;
+		interrupts = <16 IRQ_TYPE_EDGE_FALLING>;	/* SODIMM 28 */
+		reset-gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;	/* SODIMM 30 */
+		status = "disabled";
+	};
+
 	/* M41T0M6 real time clock on carrier board */
 	m41t0m6: rtc@68 {
 		compatible = "st,m41t0";
@@ -188,3 +203,12 @@
 	sd-uhs-sdr104;
 	status = "okay";
 };
+
+&iomuxc {
+	pinctrl_gpiotouch: touchgpios {
+		fsl,pins = <
+			MX6UL_PAD_NAND_DQS__GPIO4_IO16		0x74
+			MX6UL_PAD_ENET1_TX_EN__GPIO2_IO05	0x14
+		>;
+	};
+};
-- 
2.22.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
