Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E45CA7C1BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:40:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TsMKY4O8gmWsLLKAzW+rqTFqvvEmQ1x8MxXlHmPM1ao=; b=ijBBWipmIgbKtC
	56iKVRmT6aQ22OBPn3omeqjF54oIFK2/s+aKWuD6X/877WH7BCdAjPJKP1ta2t8skQc6JZmsrnukH
	Z/vhUJur7e/8HCEeI5pe8yUB6yV4ehesQbwjNk+NJ8K62dLYandmd8/nQN99JXWUT7+/bAtLXJitA
	tGR/+ln7D6lPWUYx8J/M86+C85v3u7QU26Tp31r5BIn+waWsD7RQt+a9S93rxQESngHXGjRf96eeM
	ngtpER6SaHi6/fdDDEfcoJZ5bZfXRbEl8JlvmOwfiM9YjHMs5oYZ50fh4Ps/bWR63MvdC1mjUpg8O
	lu94wpOzgmcaq86dplPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnuP-0001Hl-H1; Wed, 31 Jul 2019 12:40:45 +0000
Received: from mail-eopbgr00108.outbound.protection.outlook.com
 ([40.107.0.108] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsns3-00066r-3K
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:38:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fzbAxSIbAHelfw4pPXzY2n4xEdmZcWXI2kvntlZJEf9ZYHLqYZY8xb7kAxT6wo6nG4+NJffiiwOCF3F0h5/uOYjuTSX9BZvoyQA9FV6SgDdK7RVpcRTTf2bPT5UQjoWe7cBQ/aocoUDuK1A6sbwk/ZjKBFzfcDl/Z5eUl39gL3ibgNgXrejcAKiji/w9hfScmVHf9DtsDKx5BtxQAyTVEjMcje3HSVSqGpvkNcZWxiPAd0jV02zmm7OJYWeAgKkIigVi3MUjHPYDicHpCCmeSvjSug3nMPGRZ5RlZTr4FLL9F/0fTTsRUksZQgOe9M7zk+amc3VPO1uwkR1PaMP6tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v6Is0ZHuQm99/e07O/29KmuMQ6hfh1KsXCyEaIojWLI=;
 b=cgDeG4cmxVzJ3x/oi4/xcixd5zlvSDIV5S9UnFQWO5qMUW+HMOeMthrQriysUE833NwRvf44DwQAiqhtho8hSB1jAs8TaMRY26yvKSL8AOARvPULZTWeRlel3ukHHDwQw2avVedgrq7PiUsP7kdJ+DlUo3plsLt/jLJTe+m3pCQbxnOBaVpxdnzjtju7BBNeo0wXfK6IEnm3XZuYO6Yvyd61gvI+8p8WoLrmpQfGFgVMLxt4mZg5/iGYIL4IO1nK6bqMPypZEdXsL5ezIkO+4P5brZ7ePa4rFZZ4RCJRibh1k68IgBioFiHUlXsR2ykB24e4xp3MMp8T8FOUmDRXnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v6Is0ZHuQm99/e07O/29KmuMQ6hfh1KsXCyEaIojWLI=;
 b=Hl9MtaBJLAJFppIcmSDeaVHKws5A2npyyh9Dcv0+TvIjrbJsnjRaDLQaBLD9Dx56NBvFYYiiWwrmRcqnX0hubucAzm0BldiTUkWNJtbFIQWDR+xxQuGoyZqS1a6RVvk+7yuiShY6gSCF/76cxEonVd7VrQklW+Sg3fVOs+C+Yzk=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3615.eurprd05.prod.outlook.com (52.134.7.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Wed, 31 Jul 2019 12:38:16 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 12:38:16 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 09/20] ARM: dts: imx6qdl-colibri: add phy to fec
Thread-Topic: [PATCH v2 09/20] ARM: dts: imx6qdl-colibri: add phy to fec
Thread-Index: AQHVR5zTjHhGAQEKAU+Uj0vLYqGX6Q==
Date: Wed, 31 Jul 2019 12:38:16 +0000
Message-ID: <20190731123750.25670-10-philippe.schenker@toradex.com>
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
x-ms-office365-filtering-correlation-id: bd1631d4-6cb6-41de-575e-08d715b3f593
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3615; 
x-ms-traffictypediagnostic: VI1PR0502MB3615:
x-microsoft-antispam-prvs: <VI1PR0502MB36154C6BFC13E2695ADC6F9AF4DF0@VI1PR0502MB3615.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:632;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39850400004)(376002)(136003)(396003)(366004)(346002)(199004)(189003)(66946007)(52116002)(66446008)(64756008)(66556008)(66476007)(76176011)(4744005)(99286004)(53936002)(6512007)(6436002)(5660300002)(4326008)(7416002)(66066001)(6486002)(25786009)(478600001)(14454004)(7736002)(305945005)(71190400001)(71200400001)(3846002)(6116002)(36756003)(2501003)(68736007)(2906002)(2201001)(44832011)(486006)(476003)(86362001)(446003)(2616005)(11346002)(256004)(186003)(81166006)(81156014)(26005)(102836004)(50226002)(8936002)(8676002)(6506007)(386003)(316002)(54906003)(110136005)(1076003)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3615;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /dvq8Rto64PBSxLdJ4ZRQQaL5pYib3vzOTy15E5CChU8m57/Sh4Rjx98q9eINtKVdwcEhLhUrLdT90E2Pd39Z3JFO43H3/3uZmHF5SSnzxzxnrXOKHPpy5nHhRQJ6y26d8zOE2tg+gC/9riUumpGJn7Ludg/3zRHrMU9l9TnLZyqXy140k2h5A0wdX98ll2eK0qF89i0lwIfpHccvfBELR9sp5YaEHYkffzwABoNWzwuLdH0qX1/f3swlL5l8a26WP+gKe1ZtkTk5uK/4ylz0qajFbk+agGJaNDSksAoAKbabsfZDHm2Iom2NEEgnbUmBaAdHucGRfFhQos78KjIhw8JKa7IEX5viabUyU+mSwBLQA4SANuuhBJaAS1rI4eFYa2CQZ5vYOAjDYQNIDpFqSf8WgzeQAqYidR16FwTtMQ=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd1631d4-6cb6-41de-575e-08d715b3f593
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 12:38:16.2336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: philippe.schenker@toradex.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3615
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_053819_155266_7A1E68C9 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.108 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.108 listed in wl.mailspike.net]
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

Add the phy-node and mdio bus to the fec-node, represented as is on
hardware.
This commit includes micrel,led-mode that is set to the default
value, prepared for someone who wants to change this.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

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
