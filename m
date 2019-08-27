Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D82439E918
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bmLts5clxCpf2hBI3UbOXbVfxVnTfMYqS2JqwOoXzrs=; b=o+lK/cPbnyXO51
	p0Hrk6a+ddOpJdRExLVyhjt63SkY9geaF1pEDlyERjhGcszmiDNC/IWp/DhyYw6ykW6trTAth4vpn
	+vjk9aDBV0cqwdudFveWbSQr4ZQuxAS9y5+GTfikLRSfK4pjGmuuLrBmnO7zVpcz3e2h7KqMoTTxh
	CKIJATuB8d8ojqaS+3noPyhzJTH9gw3mfAqDDRUcS5w/EDKD+OitfZ/xJN2CFxFoJKplYnTv4ZjW6
	QQdqfemehh5cfFlKCzaDc1h1ZbVM1RUWtPb9miD4d6m5CxfDeB0SpXlmcZ5DIH1x+6lCTa6GF96wn
	YBaIoCbSI9zFPnkmcyDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bP8-0005gg-QX; Tue, 27 Aug 2019 13:20:58 +0000
Received: from mail-eopbgr50114.outbound.protection.outlook.com
 ([40.107.5.114] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bMr-0002Ml-Ik
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:18:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fIjasM8ZBmjqGvvRIxwk7GwvB6tDbWT3epoIqSsG6LQUBQRB6lP9f/ON6/Rd8q1dBrHvDPNqtASbmBOtCAkio6aXYHZrfMCA4uqGpeHavY2l+Dxc47vf9sBvQOFYEuiTaTNfFo94/6AlUHJ/Mg2e50kElOhAedxgES2s3Q93xvbtqXJuTV6zVvgmr6DG9sjA+07RG4NBS6Sj0wgPE3GySt+MLNU6sYV0BBwFNK0XmYwszvUBRMVc1ScYfvY75tTplbgpteaY/t7Zx5CWcOst0NDQ+9xKbQ6S54G8PGYlz0aJqs7277a4Af+8AlYKFlpQuBXsMZ6iZAjHNwOYrz2rmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p9VWRZl4iJS1J4TTlxjOZWpiMLQgDYTXQ+0T+ukn+ik=;
 b=GSkLVTKTTiRr2eQoIdrIYVrNx3LlcWa+9Uvd7ZO/mnGAXQtDDXbeTOoMezWcnAqdLgGyYueSVG8WgQjYjOwO/s7u7jHIWq4VyxqnFMUAWtiDP2uT0H1EYqbpwNqIVdTDLW5dZpYsyOy1CgRhwkzk8BMrwRjPDGsttJhClbM0hDGksVE+AOVXYDjzvJsZHoKiIGxpqrHSVEQ3VPSZp+CEBW409pg7RrZ8AOSw3OgdbuYpukmBc9OUenkvY3+R/oXtVxm4KQEpAPOg4aIrSqQNgefH93ENBIsqy9RFT4ZoFoGdwc+B7rr8Fi3iy9pBC/NjPC6BXNhYYzGr25lR3+cTaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p9VWRZl4iJS1J4TTlxjOZWpiMLQgDYTXQ+0T+ukn+ik=;
 b=nU8K254Ukh55cG1eb21gX27rnjfZtVDbFi6sdOC/v2JDbIAh4JXUdwy3/3Dd4I6sV/VBldfYJxEy5nsmOG8oD5rh6pEr5cq+SdH8yl9gg3R0VbYTXHUyIzXxfjvgaYr1hRxwOCJR4xEnSA9WJ6pxD9nKjfpZbRxDxfCGmCGfmts=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3872.eurprd05.prod.outlook.com (52.134.5.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Tue, 27 Aug 2019 13:18:31 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9%6]) with mapi id 15.20.2199.021; Tue, 27 Aug 2019
 13:18:31 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan @ agner . ch" <stefan@agner.ch>,
 "devicetree @ vger . kernel . org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v5 07/13] ARM: dts: imx6-colibri: Add missing pinmuxing to
 Toradex eval board
Thread-Topic: [PATCH v5 07/13] ARM: dts: imx6-colibri: Add missing pinmuxing
 to Toradex eval board
Thread-Index: AQHVXNnrltuBH6KW30Cy7f/L2mppKw==
Date: Tue, 27 Aug 2019 13:18:30 +0000
Message-ID: <20190827131806.6816-8-philippe.schenker@toradex.com>
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
x-ms-office365-filtering-correlation-id: c951fae0-c62b-43af-3ffc-08d72af10e01
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3872; 
x-ms-traffictypediagnostic: VI1PR0502MB3872:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB38727CAE033CC517F445CD69F4A00@VI1PR0502MB3872.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(366004)(136003)(346002)(39850400004)(189003)(199004)(8936002)(66946007)(2906002)(11346002)(5660300002)(50226002)(54906003)(110136005)(316002)(14454004)(1076003)(256004)(64756008)(6506007)(386003)(7736002)(478600001)(36756003)(53936002)(66556008)(6116002)(66066001)(66446008)(3846002)(6436002)(76176011)(476003)(2616005)(446003)(486006)(6512007)(26005)(305945005)(102836004)(6486002)(71200400001)(186003)(8676002)(86362001)(81166006)(4326008)(71190400001)(81156014)(66476007)(25786009)(99286004)(7416002)(52116002)(44832011)(473944003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3872;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: a+ZJz/eemf1e/uw9XgK6ehXIM3vS0zeXT8qk3FgR/9i1rpNtxjNm098I8Fl1MWQx0ebNfGMqihbWKjL+3+IfWZsUpqSkyxrJR70jsDHewbrf7EI+sXtb8tja20fkUivOyLPwUGLJV/V50pC7Ka9kp6ObVfRJCli+y5bi/4O2OGsFB3N7rg83jFL+0vI8UMjVtb5HMXqxsHf1+S7y/cwN0HpLcoETvBJyuGhEkLvb6ZBkH5etokH1+Go44sRbqUioXRSEtDDyQPd0xQ8l9HxJ3sEarQpJcGM49s7Zja1CoOriAPA3FYNGdyB67WY8/Dc0Zv9++QPCoDCP/oQ+mJCUxgAFQ/+KacVpQX0syYRMCiAIv/jIFN3xdg54tQsz+yrE/3Ngij7WX2rwzHzDTuu7X4TsSewAFroxFf7roshAOVA=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c951fae0-c62b-43af-3ffc-08d72af10e01
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 13:18:30.8981 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ed5JAM5Jnlwj72HhNow3H8ruKnwKEYYRXHtmXNBgYFyI01c21IQHzDtnD1pEq64h+ga3DRzLIfVpJSB0cFLq1uKp1GKs3bLF78TX+enGabM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3872
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_061837_685310_8C56EABB 
X-CRM114-Status: GOOD (  11.13  )
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

This patch adds some missing pinmuxing that is in the colibri
standard to the dts.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

---

Changes in v5:
- Added Olek's Reviewed-by

Changes in v4:
- Add Marcel Ziswiler's Ack

Changes in v3: None
Changes in v2:
- Commit title

 arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
index 5e9d844d78f2..cd075621de52 100644
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
 	pinctrl_pcap_1: pcap1grp {
 		fsl,pins = <
 			MX6QDL_PAD_GPIO_9__GPIO1_IO09	0x1b0b0 /* SODIMM 28 */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
