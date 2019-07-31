Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A537C1C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:42:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sfH7R/iD5bDKvqDTImOzwuJv9E2KLSe9zoV5qYlEPwY=; b=JUmO/yB8e/TPYc
	L49sV8mNCg7XVxbd7bl9VBANIFRvo2ZR337OnAtMTJEbcXewcDqhNPecKKGsD0WvdNek2ADWUHxO3
	v3UmEcV4ct2BaDzvUIoOWZQXC43j0pfR3F82yTYkmmbiUZJMLKCQR++XhpRH/B5MHMQ6RAoWEU+IY
	nw8jkNbBXdiMmM+r4fled+Yce/2uy1yGU1ewS+3UpKmLrZ16c3ItgwxpFG5z6xDMIXd21gFZmnebt
	/ay7WDxpMt3e51zOVSbz5tJEzb3jTJYQVdlotQdehjHvF5N0KUQ6Ggfuf2AU16Dwr5LU2buLLJVvN
	nV0vWsCcNwFa4PssYzgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnvg-0002tI-3h; Wed, 31 Jul 2019 12:42:04 +0000
Received: from mail-ve1eur03on0724.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::724]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnsK-0006Le-Aq
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:38:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VmnFLvIXruYLAPfFyXbGg5k8+YodgXRFfqS5alsKeLzcFdmrn4jwOa230ffVhYjo9hnscN0ouakSid61lEC/A6H4uRbcO9weXbAo81ltzs85Cl9tnIXnBGz18kvMBG8fk8kuSwTpF9+zLcNMjXBak8DRPYpPqu6debOxEnxSNQbWm1UsLQJgmdZ46QHKH6B0nKlxxnf8zBhAsCiTweVVqk0sgDj3P3qCt7z91Ku5/L8AcZYQ2G+clsxGS55A6a8mAym+q7evgHsM9ihJHwD9rpeS6JaBVS68FgUXB6WsrEkSODkUcEm8Y897//47w7y5w2JdeX8lSorjbwt9Ok+oZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RbEFXW0sQlwLe/4LYrToOgll4qeOMA5rm+TCeLTJO0Y=;
 b=UHsvhJjRCeUcDGQiL3sKxPhtOgATXHE8O4J6/T7tgF+b4mhimohFxsbgPLJuiGvv9I/csxrTPjU1GFEzL/NibskzfjCBXi+VrEa2c9QR+wgbWrwsKzhoawoYfPrs0u4U8T+VdT+JWLoqkJBpKvFu2kfkIzCdKAvSVrPCV5+5rhnBQvOoN1ZoYXCUWnUZebh/BImxnxumJnUChLh+uxdXbYDYZa4AFYUWZ1ZnGeLTBVeTEmXrR43SfcVab3tGz5piByEMuDBSmtHBX/5/LuRbHki6iFLVIVZxJC12hG+om0bxsFOD0QbeyadUfD6kJKfXtIKztWBHlT0E2lL7ibgU/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RbEFXW0sQlwLe/4LYrToOgll4qeOMA5rm+TCeLTJO0Y=;
 b=dq8VajXGRshATrUR3u4/EB+q+5vot/5gVSsQztcrGsRAdwKWUvZlJQ9aWvH2wo+ecSB/pj+gGJBJzfoS0mRVLrc4t7drlr+WveVlSDVnK7pV6/42ad73uG529y9YnxuDNeCxSVAfPsGEE8bTLsVhKbMoL27OUXWql648E+FFxyk=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3615.eurprd05.prod.outlook.com (52.134.7.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Wed, 31 Jul 2019 12:38:33 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 12:38:33 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 18/20] ARM: dts: imx6ull-colibri: Add general wakeup key
 used on Colibri
Thread-Topic: [PATCH v2 18/20] ARM: dts: imx6ull-colibri: Add general wakeup
 key used on Colibri
Thread-Index: AQHVR5zc40ILf8FEYkSqHnnZaYq9tQ==
Date: Wed, 31 Jul 2019 12:38:31 +0000
Message-ID: <20190731123750.25670-19-philippe.schenker@toradex.com>
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
x-ms-office365-filtering-correlation-id: 042c47cd-d31b-477d-f69d-08d715b3fee7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3615; 
x-ms-traffictypediagnostic: VI1PR0502MB3615:
x-microsoft-antispam-prvs: <VI1PR0502MB361550724871F860B2CA8AE4F4DF0@VI1PR0502MB3615.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(4636009)(39850400004)(376002)(136003)(396003)(366004)(346002)(199004)(189003)(66946007)(52116002)(66446008)(64756008)(66556008)(66476007)(76176011)(4744005)(99286004)(53936002)(6512007)(6436002)(5660300002)(4326008)(7416002)(66066001)(6486002)(25786009)(478600001)(14454004)(7736002)(305945005)(71190400001)(71200400001)(3846002)(6116002)(36756003)(2501003)(68736007)(2906002)(2201001)(44832011)(486006)(476003)(86362001)(446003)(2616005)(11346002)(256004)(186003)(81166006)(81156014)(26005)(102836004)(50226002)(8936002)(8676002)(6506007)(386003)(316002)(54906003)(110136005)(1076003)(32563001)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3615;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Qcw8rR/lu4ex7ya1/Zm668/mQC2DpNMxp2na8QeWUVtkRRrshS8psrIatLnrOtogHkvVTCL0spoBVrsN/GrOGf1Pm2Vv08JgSMHWzrARFWMzqsFWuItpryF4W91KzSpHBfr6l9SEFA2gPz72qRyscAidZ2bN2j85uG7c8SQFSTQAT1lScKu4cUzJI8wkU3yGvY5oK6sLMdGsBh4V/Km6wBhmlioekz5P/66ljA7eA2vvdu+76I33Hb/w8n8EWODLTwRx3I4o2Xp/+Wsb1zxdXiMgYkdRqFX2PiBl2fWcVWsJRaFH+K564568QXq2h2y+/578pv4W5X193AY3RPhVDoVG61Z2Z6NUKwT0iGisA/xizsQ18VDi7b5mwoj0U1IzHhMAMU1Hhr7tYjsMbpLCWLMEEqHF+XLCi8WtR4lCFZ8=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 042c47cd-d31b-477d-f69d-08d715b3fee7
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 12:38:31.8167 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: philippe.schenker@toradex.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3615
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_053836_410057_DBAD2AD8 
X-CRM114-Status: GOOD (  10.28  )
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

This adds the possibility to wake the module with an external signal
as defined in the Colibri standard

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

Changes in v2: None

 arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
index 3bee37c75aa6..d3c4809f140e 100644
--- a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
+++ b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
@@ -8,6 +8,20 @@
 		stdout-path = "serial0:115200n8";
 	};
 
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_snvs_gpiokeys>;
+
+		power {
+			label = "Wake-Up";
+			gpios = <&gpio5 1 GPIO_ACTIVE_HIGH>;
+			linux,code = <KEY_WAKEUP>;
+			debounce-interval = <10>;
+			wakeup-source;
+		};
+	};
+
 	/* fixed crystal dedicated to mcp2515 */
 	clk16m: clk16m {
 		compatible = "fixed-clock";
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
