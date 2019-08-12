Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0122A8A104
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 16:27:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xwxflEgO0RBxN5aAipBN97L+CCatJPDjMR1zlJFqcmE=; b=ADEWyVCD4/7FeG
	wWiX9tryZ5G1jLRHnQlj9Bl3x+blaVHXfPUA/IITeWBnH6BBcO7mWhIU+u+S7nNV1TuDaxD0jtq6j
	noc8vFwSlct2OiJNP5B47SaLBpkjcyfPHEdQZMZiWVn4UNIlqnx//VLCFPK9jcsf4Rt8hDNygyzjl
	V4unZse4BNusqFxcVY5RP+G9nft8NLLJqA7OeHa9K11rKDWk0jUgNZMRMM8JY8p1hD9hN1FNl66eE
	XVpQ1BqWI820nSl7jrvjUbfQSKICvOxO5DUyP2RzYYnVgXckyQsda3bUUB8Uoq/8uZUSdZY7N2me/
	udbgRvRjQXG8nJUIrnGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBI7-000775-Ce; Mon, 12 Aug 2019 14:27:19 +0000
Received: from mail-eopbgr150123.outbound.protection.outlook.com
 ([40.107.15.123] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxBCn-0001rJ-3f
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 14:21:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l0QATL+RZ+uZfaFJTEK+OwnjMVSefBp0WLw9tBrTR9Zx6uzH+hAEmlD/VKjcmf4rlmfJTmuIMbU+JBiskV+JRkemYVpt45msLOcYbCH1+TdWJUmlh1TtXLWTcijYwLltfay71m5agXH3QVtivYFW5A/N25tLx2YrsUY2pk2wjzb5a/pAqmoaUFQiZCEM/dAQJHRxTpBr4Vb8WvXb8vNGV08xYzCNxXVTvYX5nRIGbabzZ3rZbbt55hfgoU7u27eQO8fiwFByiSpWrcSzbgsrMMjYeF4JHbhsAPyhvG5vi1H0johD6K/4E+rq7kIZ6rSGin6i5vNjIftG8B5ZCNrPcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6u+hyau+hoSzjk4+N2Y/RQDOqCZXmiSHVhKg4A9tagU=;
 b=l1HTuY4+KcYwT5rykpjb/lK2u+W55vhemodagWwZ+lO+ZKZYuaJDfrIGp8s0dxpIuTzjPgxpeuOrmojPHyo2ELKHtEs3T8x7XDWH/u/jXn7xYgwLsM2zQ8j0gege0IX5Fu07X9fcd9kq+2luVMsTlF2JyT4MjZjB+JEzYNcDdJt7YCw+FkzpiFKYsp5gOQJaX3L8CxVjbN010j1aAtECc8kdLnXmllGNM8eoSItWaPOsq1oj94rAPurFQs1g8mBo2W8/oMGJC14KvRUpVC0VwTOWa41MRuEUt68wrmFDQU4tiH6s5B/H1msIyi7M++iZkj+1IS5Co5BZgFA63epvcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6u+hyau+hoSzjk4+N2Y/RQDOqCZXmiSHVhKg4A9tagU=;
 b=aa1Lu9H//YUC7EGnAKemqUunw5hEyQnJQhAe2be+S3JV62mHbpUR6sguqf7l3w/w22Bcqf5wp4Exm4mSh77UQFODBPxugaRWv+CO2RvFZrwwCHRjwlndfOKUHzyxYXFeN254GPN7ppbwXL2bX0HCFKmB8xVvJJZsVD3oI3iJymg=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB2942.eurprd05.prod.outlook.com (10.175.26.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.21; Mon, 12 Aug 2019 14:21:40 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 14:21:40 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v4 16/21] ARM: dts: imx6ull-colibri: Add watchdog
Thread-Topic: [PATCH v4 16/21] ARM: dts: imx6ull-colibri: Add watchdog
Thread-Index: AQHVURlCfEjdq9SVhUGuplq6y+p4Lg==
Date: Mon, 12 Aug 2019 14:21:40 +0000
Message-ID: <20190812142105.1995-17-philippe.schenker@toradex.com>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
In-Reply-To: <20190812142105.1995-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P194CA0055.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::44) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aacf1369-ff17-4e2b-3269-08d71f3064a9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB2942; 
x-ms-traffictypediagnostic: VI1PR0502MB2942:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB2942A352716587597EE9584CF4D30@VI1PR0502MB2942.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(136003)(39850400004)(346002)(366004)(396003)(199004)(189003)(5660300002)(54906003)(110136005)(316002)(478600001)(6486002)(86362001)(2201001)(66066001)(53936002)(6116002)(1076003)(3846002)(2906002)(4326008)(25786009)(66446008)(64756008)(66556008)(66946007)(66476007)(4744005)(6436002)(8676002)(11346002)(476003)(2616005)(446003)(256004)(81166006)(81156014)(2501003)(44832011)(6512007)(486006)(50226002)(71200400001)(71190400001)(7416002)(8936002)(36756003)(52116002)(7736002)(305945005)(99286004)(102836004)(386003)(14454004)(76176011)(186003)(6506007)(26005)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB2942;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: h8Vd4094eqwMiH+LUD7Z+UHrMp0M2Cbr+II3yMEQ0EllAQpentDNC4Q4PvYpZewJVpk1akWXDdIWT1uDXOCdQx29EClv4XDo4YCZkarb72K4BOORfshTSE00NDRK1/PgZbJACJmKzO8Tf3iJja3PioKCRBVXgONC353LP/skiRpypMSWCAinDffQ3AP7g22vg1fish8d37uZBGthiYE12iCUIax4/vLXWOxWmx8iOdWz87xHqTGAiONEX9ktNDeqntqMWz6DJpwKuUqc30RHYC5N8XXjwmW49m3UekMvhiRIUcbLvPZtHj3SOtWnmE+RXoKdkLyaC4rDvsIq0YS8KTN6J6inN1CA57U6/BybvpmwmZs35usJS6P99z+CpASb7vylFOsvu4BS0UNJmtxOz7dX+9BvAJE4weooFSaxozw=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aacf1369-ff17-4e2b-3269-08d71f3064a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 14:21:40.6234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OfHEc8+EoJgU6iIPRbdNP/hqSfzlIq2NwzZ5TdpLsT2piArKMq5Tj5/inXuIyTTEKvJELiAl2/WpR4Y5Ux8J1PCV3mUzEdnQJCSfCcjYeEI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2942
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_072149_253915_550FD0B8 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

This patch adds the watchdog to the imx6ull-colibri devicetree

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

---

Changes in v4:
- Add Marcel Ziswiler's Ack

Changes in v3: None
Changes in v2: None

 arch/arm/boot/dts/imx6ull-colibri.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ull-colibri.dtsi b/arch/arm/boot/dts/imx6ull-colibri.dtsi
index 1f112ec55e5c..e3220298dd6f 100644
--- a/arch/arm/boot/dts/imx6ull-colibri.dtsi
+++ b/arch/arm/boot/dts/imx6ull-colibri.dtsi
@@ -199,6 +199,12 @@
 	assigned-clock-rates = <0>, <198000000>;
 };
 
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,ext-reset-output;
+};
+
 &iomuxc {
 	pinctrl_can_int: canint-grp {
 		fsl,pins = <
@@ -506,6 +512,12 @@
 			MX6UL_PAD_GPIO1_IO03__OSC32K_32K_OUT	0x14
 		>;
 	};
+
+	pinctrl_wdog: wdog-grp {
+		fsl,pins = <
+			MX6UL_PAD_LCD_RESET__WDOG1_WDOG_ANY    0x30b0
+		>;
+	};
 };
 
 &iomuxc_snvs {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
