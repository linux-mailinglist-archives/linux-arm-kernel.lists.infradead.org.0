Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6721184763
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:30:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wb7E/7bLqZ5d3GAfTWzT7ca02XLxPylo7GXz5zeQ8C8=; b=DQ+LDRSf/83uDh
	DHJffCWbZACUk1sL3PaTsuKitOmQUf1No+WHC0QXiRK03o+oDea5MVBoFau5h6c8XYety35RmY1J0
	oUfgdCxU00VrOVeJmMng7UnZIRuhrSLDY6/ngdTns3toejvJiDEl027cJghT1fHC+59QsJK9dBbts
	RENk0P1+ECpW+LynB7pWM9U+Xxd0Gjwd1T4SXC4+PZF84ObyL5weotdBY5cLDQKHDwvIDoyhGG/ps
	vNqWy0143zH5otrX8aUA26sdHk/sXGd8wC53pfM7JM7oUCTF9nAbeLAPG6BTi93fdcg/LLp51+Ctm
	ocR/giThs6mURvPF8p1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHKi-0005cv-OL; Wed, 07 Aug 2019 08:30:08 +0000
Received: from mail-eopbgr130133.outbound.protection.outlook.com
 ([40.107.13.133] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHHD-0002et-NX
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:26:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f2QMYgzG9GbmxB3ydRUA2LzF7zFRTmFU9oeVxZR31N0eTHjxUpqCs4micIxc4kcwrAiXFqUXUY/78w2Mp6NX2mvov8r25kKUEE/N2gLxbvb707bMgxLjj4+Q99VduaWiavcoByMu0TcbvXT9O1aSbSIdhBzcYZ11NHrCfVl3coRl8kxnGICq6fzeAqrl9TE91DPRZGVJo65+kdXuxEehtZwTf88EvUFa46fuPdVJJD+uaxTiYnfKYYtd2NI3vmIC9bgJYQqRC8x3vKJtQKdYgK8IVNr9UxSt2Wz9uFwRsBJcgb7CHf0usOZWaWkltcpbAco3WM7x5M1RZGzf+A0dXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IkqCRFFN/hlVRrfJN1nrTRZQzsBGHOjky7Z8/27GypY=;
 b=b8Y4LVnKuzyQAr+nF7/h3vF5XSgGbb9I6O2WHL9AAitWpRnAKcb8YKBOD/TBhmpTpJnLbCHVJ5nyvcEeCep1DJB3TBqT7eUulNiOzeLZZSvkkt8TqAid82NAGdCfycyKWyoyWN4jdV0OSg2Wu5RREcAooSc7jkmOqcqrFe8y6tIMhElT5gVBtfqNQlUCaC7pxONkS4Zxs+5EDnhR2L7R/QvAw1zQSpA5Qv00MaEjDKF9iu3cu3/zlHacaBU/0IPoHDcf3aQ7owJMKDtM9HJpghA332oOlOAxZK1l6T2Nmcg7ug8GPVLQhoOn70H57O5lovmKGcwgI2pzAZlDDrI4TA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IkqCRFFN/hlVRrfJN1nrTRZQzsBGHOjky7Z8/27GypY=;
 b=Oh967Ivzb4alIqnW5YP8m1Xjs7k3z9WlRuqg0WvWTZy9/xzxAKRb/VK1LF/0CE4vLnJr7VKx6URY34k/eI3Ee1rLh4EMctk5LKaVkw7iJ+TMfh/vJ/nEbGWyCOCvALgK9Huqv2nByk3dZuYhQjD9dXEA1VQvOhT56FYOIzha2po=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3614.eurprd05.prod.outlook.com (52.134.7.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Wed, 7 Aug 2019 08:26:23 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 08:26:23 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 09/21] ARM: dts: imx6qdl-colibri: add phy to fec
Thread-Topic: [PATCH v3 09/21] ARM: dts: imx6qdl-colibri: add phy to fec
Thread-Index: AQHVTPnMzs9IdJAHC02xaJ72tyIhqA==
Date: Wed, 7 Aug 2019 08:26:23 +0000
Message-ID: <20190807082556.5013-10-philippe.schenker@toradex.com>
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
x-ms-office365-filtering-correlation-id: 3b2f7e75-86b0-4c7c-7a40-08d71b10eeb4
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3614; 
x-ms-traffictypediagnostic: VI1PR0502MB3614:
x-microsoft-antispam-prvs: <VI1PR0502MB3614BFF32615714F14AF88E2F4D40@VI1PR0502MB3614.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:792;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(396003)(39850400004)(136003)(366004)(199004)(189003)(305945005)(6116002)(26005)(81156014)(76176011)(36756003)(3846002)(6486002)(86362001)(6512007)(478600001)(25786009)(71190400001)(2906002)(7416002)(81166006)(256004)(316002)(71200400001)(2201001)(44832011)(53936002)(7736002)(110136005)(8936002)(54906003)(52116002)(66446008)(64756008)(14454004)(99286004)(476003)(102836004)(8676002)(6436002)(1076003)(66556008)(5660300002)(6506007)(2501003)(4326008)(66946007)(486006)(4744005)(446003)(11346002)(66066001)(68736007)(50226002)(186003)(66476007)(2616005)(386003)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3614;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uUzqilWEKricxIhSWa6+hh4zZhg3klxdBxrrlWWynQnnRlhz/VdfBELjJ/1ae58vKPfBE7YLhOOwiTV1055bIljcOJ2WZd0e6LvcTPx6gNlaIb1+MxFwFztDF5F/eqRoSUWT01t8qkETlPvc/Uu7JAajjJBlD87L9VxHtQuLW9YYnC9wg5CabcgJffF06QlxbIkk+yqOhRY3WCh//QtJ/T8+60p9HjiNwaBrN1eUUFcsRdZejaHlF1ajFNL7xIhkIe21TJEkErduZI56VqYBQQ/QZaThYmOTkciK53hr/fRHSgzwWQk/3f23unXVbBs7nhv8eiFtuunfS+hRZSzVGPcs/IkUgGEjKsuHTKLQoafZ0FvD1wldFruSPwdQfmkVsqBrr0/W+9tQlJ53YUIbEU+OWFK6k6VD1PN51THc6sU=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b2f7e75-86b0-4c7c-7a40-08d71b10eeb4
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 08:26:23.6645 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1yPT4/INfIEDnadRiNJhhSrbXMRJMYie5dCmrd+4TurN3DnosOHgY1OOqXbm/Ia4d7ar+Cxfxy/46t3NvjO49EPiiFnbcJZo5Pf1C1e1m1o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3614
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_012631_955666_6135AA8A 
X-CRM114-Status: GOOD (  10.84  )
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

Add the phy-node and mdio bus to the fec-node, represented as is on
hardware.
This commit includes micrel,led-mode that is set to the default
value, prepared for someone who wants to change this.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

Changes in v3: None
Changes in v2: None

 arch/arm/boot/dts/imx6qdl-colibri.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-colibri.dtsi b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
index 1beac22266ed..019dda6b88ad 100644
--- a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
@@ -140,7 +140,18 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet>;
 	phy-mode = "rmii";
+	phy-handle = <&ethphy>;
 	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy: ethernet-phy@0 {
+			reg = <0>;
+			micrel,led-mode = <0>;
+		};
+	};
 };
 
 &hdmi {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
