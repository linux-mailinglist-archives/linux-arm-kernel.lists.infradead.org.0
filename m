Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD77A8475F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:29:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4nuJiJs5kQm1yXpMLmCaGM8yekEF3FanT3HRRfT/lH0=; b=bZVesM5ote+LLc
	H4OwMykl1BS7PWms/5AwhRYryxo62IojUZ7r4kOH64FePW0UqWS8Wa7yTdKahjYv7AbkSsh561Sdi
	r4yAX/LpOc8LS2XTcmTH/RnL1etTqes4ze3r2y/1daw4kds0Rj9fhhywdJ4JqrhKI9RVBPIrP/bCN
	JlFTA9K3HHV+PQ1hnmuiQmY394XM9pQdGl/Ld8oTkzAkOiFj6DhmTmQnOgY3gCMyX+Ozoybj/5E9S
	LpgYIftO7gcAkEW9j3RxbUqED3+M3QnUq6g5KHq+kWxy8t18CtRMt6C2wsmyzg+Bs0cp5kwSHrF5V
	2PJFq9VQ9rjCW6zB6pqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHJp-0004xR-BC; Wed, 07 Aug 2019 08:29:13 +0000
Received: from mail-eopbgr130133.outbound.protection.outlook.com
 ([40.107.13.133] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHH9-0002et-MR
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:26:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GgXqucb6Bhf45Cbao2/DwQkG5kl/Ba6Ixp9URqIfpdR12wh4//jwX2HonyfO9omtZ8FEN2OVQb9C97KKVO5p9TFepVS2CsGybZACoH5u1fWGUnOHpyYrrPCLN02ilvouDUvMY6FLdUyMU79GEoIShaBC7kPWfWP4z/N0/LnSKk23HDMvvGdUh/9mZim0kJ5/4+8A50oAeOCY2vA7Xr09nveJMUf84+PDKJf5rqzR/rD2I6zWpOCZ7bz1juLahhWAuKpcjz0qMbsCn6WmIWKpBHZrUXsOcu5mlOYyR0H1NX1AOL3VGfM/KHxOKxcDqTEKq93ZuAVHxCMjV2DiotZxcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2oVzOhC+3cT2Oy3E+NJBu08cX9OZ/z0bnOdpLwScPJA=;
 b=ad2IILBSjxXqdQySu5Fn+7MK0e35OHRDvQlgwBN7ixDN2H9A+uBWk0lTwA/QZ6MxxkGJN1Bs4Ip4cCY7izFgCAfaoVIMsYldoJ8MqLSHVcE5sN9C20jujaIQpCKFvJxbdw7stxHdAEgp7TXKbM0ARAq+tLi/8APpXMIVTeZkZ9vcOw7r8PY/t5rNs/tFjPft8ia2e2YlB9EfGDD0i/zAub94Q2poDGJTlYz6Iw09ASPjghNj8vWBvjBkR+i7dJ4rR66jbJRU86jr4DoU0qT54tVXYS3lJzqv5idCvOnilqHXaQfQcbx4tabQ7J5y1ot188EvfmU0Jrx5Vo20u5grGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2oVzOhC+3cT2Oy3E+NJBu08cX9OZ/z0bnOdpLwScPJA=;
 b=tIBqeQJuVR74kM18++B6DRYRNAGjgjCennSk80M6r4Zsk8ATufC0RDh5h5BBjQ09Uvr+BYU9VeVFacA9ecjH02qjC7aHs4Mq/9p19i9RrKPPatnLLwAiwEn6TUu4KEprnz0gpwf/YJ5LLK2mC6yDLtjoyKrnow6noqJx3c/C+40=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3614.eurprd05.prod.outlook.com (52.134.7.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Wed, 7 Aug 2019 08:26:20 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 08:26:19 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 07/21] ARM: dts: imx7-colibri: fix 1.8V/UHS support
Thread-Topic: [PATCH v3 07/21] ARM: dts: imx7-colibri: fix 1.8V/UHS support
Thread-Index: AQHVTPnJFwE/N2EWdUa4MifpBqKEzA==
Date: Wed, 7 Aug 2019 08:26:19 +0000
Message-ID: <20190807082556.5013-8-philippe.schenker@toradex.com>
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
x-ms-office365-filtering-correlation-id: ed0a133d-4997-48ed-c459-08d71b10ec4b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3614; 
x-ms-traffictypediagnostic: VI1PR0502MB3614:
x-microsoft-antispam-prvs: <VI1PR0502MB36147A1268788EC0AADDD9E4F4D40@VI1PR0502MB3614.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:741;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(396003)(39850400004)(136003)(366004)(199004)(189003)(305945005)(14444005)(6116002)(26005)(81156014)(76176011)(561944003)(36756003)(3846002)(6486002)(86362001)(6512007)(478600001)(25786009)(71190400001)(2906002)(7416002)(81166006)(256004)(316002)(71200400001)(2201001)(44832011)(53936002)(7736002)(110136005)(8936002)(54906003)(52116002)(66446008)(64756008)(14454004)(99286004)(476003)(102836004)(8676002)(6436002)(1076003)(66556008)(5660300002)(6506007)(2501003)(4326008)(66946007)(486006)(446003)(11346002)(66066001)(68736007)(50226002)(186003)(66476007)(2616005)(386003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3614;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: k59G8qjBrZJlCQYbxxQIDhxfGDJHIF+u0JcDc/WLwQ60tlVDJrUeZpe3owa6LBi5QpJeiw/f/hPcZjvR4FtE/krMuLPf2+w1fEw4W0xxdLCUD2K37OqjeJ9Zw34uoyucPWlAiihM+s3gw6ZO9EZpAiTzb3b26I8RF8eZsaLpONU32EJCuTAMMJXkkCgfMWDgt2FQBwQ1/QhJi0qkVGQhebSlisCv0exNaiEY0uEesDcN9YbFJduhhS2ETieqKSUPcnb0ohITTtMhgaytfq02EksgEIllF0Q4+n9SCPnIQpLVIWNrRNGMXQ3Nbj841y44Uy4S22pzM5bkx8gQRhR/Eg87SmQHXQVXc7XGA+clXyg5zRPngi2aPxuhOJd/3RCtDcxk+Q5iuSDtDad+WpCjTf9wgrA+3lECt9g0uMBvx+g=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed0a133d-4997-48ed-c459-08d71b10ec4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 08:26:19.7157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mWBg7DNNYue2lGG5D1Cqi0HRyOP0K3MDGJ81WV0EbCIZjX6Va0NgPX7ip2z8sejqO0jvhRErohP8LtnIxHUSJ2IbhNWmXpswdYfDzBaEZJY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3614
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_012627_918777_F7D4775D 
X-CRM114-Status: GOOD (  12.06  )
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
Cc: Stefan Agner <stefan.agner@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stefan Agner <stefan.agner@toradex.com>

Add pinmuxing and do not specify voltage restrictions for the usdhc
instance available on the modules edge connector. This allows to use
SD-cards with higher transfer modes if supported by the carrier board.

Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

---

Changes in v3:
- Add new commit message from Stefan's proposal on ML

Changes in v2: None

 arch/arm/boot/dts/imx7-colibri.dtsi | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
index 16d1a1ed1aff..67f5e0c87fdc 100644
--- a/arch/arm/boot/dts/imx7-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri.dtsi
@@ -326,7 +326,6 @@
 &usdhc1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_cd_usdhc1>;
-	no-1-8-v;
 	cd-gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	vqmmc-supply = <&reg_LDO2>;
@@ -671,6 +670,28 @@
 		>;
 	};
 
+	pinctrl_usdhc1_100mhz: usdhc1grp_100mhz {
+		fsl,pins = <
+			MX7D_PAD_SD1_CMD__SD1_CMD	0x5a
+			MX7D_PAD_SD1_CLK__SD1_CLK	0x1a
+			MX7D_PAD_SD1_DATA0__SD1_DATA0	0x5a
+			MX7D_PAD_SD1_DATA1__SD1_DATA1	0x5a
+			MX7D_PAD_SD1_DATA2__SD1_DATA2	0x5a
+			MX7D_PAD_SD1_DATA3__SD1_DATA3	0x5a
+		>;
+	};
+
+	pinctrl_usdhc1_200mhz: usdhc1grp_200mhz {
+		fsl,pins = <
+			MX7D_PAD_SD1_CMD__SD1_CMD	0x5b
+			MX7D_PAD_SD1_CLK__SD1_CLK	0x1b
+			MX7D_PAD_SD1_DATA0__SD1_DATA0	0x5b
+			MX7D_PAD_SD1_DATA1__SD1_DATA1	0x5b
+			MX7D_PAD_SD1_DATA2__SD1_DATA2	0x5b
+			MX7D_PAD_SD1_DATA3__SD1_DATA3	0x5b
+		>;
+	};
+
 	pinctrl_usdhc3: usdhc3grp {
 		fsl,pins = <
 			MX7D_PAD_SD3_CMD__SD3_CMD		0x59
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
