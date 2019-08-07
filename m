Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1036D8476B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:31:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PdRuAXRyOMHUXSxc9cVzAentmbpXwyBN+OQmdvWiEIs=; b=LBz+kPZ2GNIGza
	0gZoca6N6nk4084oU7an4jrZS2TOLYj+9OEktEciDGYiSIGFqiQCohAYwS0QW7Tcywi3raWeRODv8
	I1JdXbSPfT7VjuZniVfVzTsaRLfRTWmsZ+Qo3v2Yvc5L8CBJPpjwPoqDRRzYe4IwDHYgXfppPReNB
	7xWzDG/MIrDn+/J9vk/NqhLjOvEaPwyJ9RGDzL7eL1866GNLETqXJBeOx4+zYWtjGZVaseuYaEVB0
	jsDrDUakmA2a7O9a03s+eKycKN6PIPNY1QScUfM7uojONSnselHX/u692Qn4o2KdE04dyVkNHLyaM
	Glum9rL0kKd9ezDajAqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHM3-0007d7-UG; Wed, 07 Aug 2019 08:31:32 +0000
Received: from mail-eopbgr00091.outbound.protection.outlook.com ([40.107.0.91]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHHI-0002nw-Rk
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:26:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AFyXJjUykdIAondpduJ1YfzoEDKI6JweFJwUVI4wAdCNB8wg9ESwDIys6uspicgRk14GNcJkKcIm1EicvWlJb1sDdtmQs+D5uMHUd/O6BJC211yB8ScvzxFtKuVAmfsHpqJndQBCjq2Mp3tMeRchel9xCJGNWU6CttXokthAxUobihhVgL8Ji85AtRcOmxGmEynOukDNoIo+wZHFGkiqW95eMENON1Ds6Ur4yw7GlLDOTeRtIQDvaBEE1U8cFhe/4DKlzHNj8GxL3r+JFCo2e2iwFnSP4qAFYGnDVAvJDVV5KQ/9mgoL/cES3LEA5JE6VoEs86jlWedzjvMo91uqOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NRHA/4DWWpMzbzsnuCoO49iVV/7Uc8G722X7bew4G60=;
 b=Np1NFd/0beXhlUGYcWBQK9nawQXuKQI05wzd5WV60+TMe7DZHKzVAb3DvYtuBRJ+IstUjum+8p0UshotI7XOK4KlsSW5EG1uNUNYtWWdwOpmmfVUxLjEsaEHVDVYKtK6sgRhSbP27p7LLfucrWSj/yT29YweLKMvZaB+UO82dRIeqPnYdew+mRiwSjBUeKj31ekOzJDddIIHpyMZfUU0dcbwpN0u2kc1UGdqKk5rLKAuYJ+PGE/PiLTidYDC1l8BAJwguy4hYpWIBHOEPTfgQgnd82zdGo3vH0nG4HxS70hRruKuUHGumIhBMUKG3CjQ6IJDbNiUKKYJbCS0GajUgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NRHA/4DWWpMzbzsnuCoO49iVV/7Uc8G722X7bew4G60=;
 b=HMpZMlJ1psNfqoPW6U6824EDLvZyNtVnKdR80am8x3s9Q4mAOd56aAo93xgY1BzkvOtdWXOl7JLLDgFgRvMBUuisoXdCXfGUo4bpDqiW+CPlSRNXEv9y6pgsTwXF26ZmPTkHQ2RFtM4RYGbGXCODRlKU1etUL8xMP16EtsJMrDw=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB2928.eurprd05.prod.outlook.com (10.175.25.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.15; Wed, 7 Aug 2019 08:26:32 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 08:26:32 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 13/21] ARM: dts: imx6-colibri: Add missing pinmuxing to
 Toradex eval board
Thread-Topic: [PATCH v3 13/21] ARM: dts: imx6-colibri: Add missing pinmuxing
 to Toradex eval board
Thread-Index: AQHVTPnR2GTzah1aRkKyh9gFtK2n0w==
Date: Wed, 7 Aug 2019 08:26:32 +0000
Message-ID: <20190807082556.5013-14-philippe.schenker@toradex.com>
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
x-ms-office365-filtering-correlation-id: 181154b5-8f9c-4eb1-d4c6-08d71b10f3fe
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB2928; 
x-ms-traffictypediagnostic: VI1PR0502MB2928:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB2928F3B052692F885678F80AF4D40@VI1PR0502MB2928.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39850400004)(366004)(396003)(346002)(136003)(376002)(199004)(189003)(64756008)(66556008)(66476007)(66946007)(36756003)(11346002)(476003)(6436002)(76176011)(2906002)(316002)(305945005)(2616005)(66446008)(1076003)(54906003)(110136005)(68736007)(486006)(14454004)(5660300002)(446003)(256004)(4744005)(86362001)(44832011)(50226002)(4326008)(66066001)(53936002)(6486002)(186003)(8676002)(26005)(71200400001)(99286004)(6512007)(2501003)(2201001)(71190400001)(102836004)(386003)(8936002)(6506007)(478600001)(7736002)(7416002)(52116002)(3846002)(81156014)(81166006)(6116002)(25786009);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB2928;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: W82j5wLwHwW2ufpLHKudU+GU92fsD/5SpDTQg98aKPmnFpqJDZddbadKBQQmj/GjRfEPpyTnKXP0iThwInRcpa/ktMCYvs7Fi3uZE/TGeJHhxBAjq8myyLo2kzv5mQbW9o/ioC13OuQNN1nWeQtLrORARQlnAWu58pKNsURwlYo1RtCPj5A7WIaVBCeF77mxxDt5UCWFcRf/xMTZXI4yFF8HlmN36g2Ncwh9Qe2Iq7BkjykKigvIAUtcJKPjEo8uTEI+40Qp6nWuSGVRAKBR6BOgX3l3bB83ttpAK+FapyHE2XA9FvHQj6yPHSaTO7q9G7kKUp+D+ObikNUFDaP+nRI39JkOL+HH/8pP539SIcE5PY5zKZw9EEqyWzswNqQz5DUG84SZatZyOOp2LpGtOtX/GwIK+zE5itJwDMIf7cI=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 181154b5-8f9c-4eb1-d4c6-08d71b10f3fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 08:26:32.5893 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oS2V2L8HTTKMhSuUzGZK31AC33YQ13l5G1gjmzrHgu5jSKIGnUyb+cmWG/sJx/yvygqgR53Sx+Cmtf6aJqi68kGPwvQxOOjOsdwHgZaEmhA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2928
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_012637_229367_54E72CEC 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.91 listed in list.dnswl.org]
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

This patch adds some missing pinmuxing that is in the colibri
standard to the dts.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

---

Changes in v3: None
Changes in v2:
- Commit title

 arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
index 763fb5e90bd3..e7a2d8c3b2d4 100644
--- a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
+++ b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
@@ -191,6 +191,14 @@
 };
 
 &iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <
+		&pinctrl_weim_gpio_1 &pinctrl_weim_gpio_2
+		&pinctrl_weim_gpio_3 &pinctrl_weim_gpio_4
+		&pinctrl_weim_gpio_5 &pinctrl_weim_gpio_6
+		&pinctrl_usbh_oc_1 &pinctrl_usbc_id_1
+	>;
+
 	pinctrl_pcap_1: pcap-1 {
 		fsl,pins = <
 			MX6QDL_PAD_GPIO_9__GPIO1_IO09	0x1b0b0 /* SODIMM 28 */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
