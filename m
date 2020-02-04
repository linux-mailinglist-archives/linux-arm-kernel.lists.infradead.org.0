Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE052151955
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 12:13:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETtiLQzKOavYe9cYeBfMeHXKQeJ0vB3FxK80iQKBnbE=; b=mFNjaNnZprmE0+
	yfveMGTA4Sqs86s9BUnkXlbYdbZCeBmwEomi54kteQtgVxh/KFE0G0YvXOPj8lYUDBvtQXpKk4Kxz
	B6/RZOfA9yxk1VfKtoX1/R0v9ymj7zRYvZrg6lCTGsPPg4/K9QU4rjvCHIFLYQMeYhteF5j+Ntwd3
	5hUJEPgynhBYey1tVh0rm4TCOXLYGagLYel/wI1OfJ9aL1ADY8ft/IVpMyNOGy5yo/PBqeqjkUWcI
	ErNavzSocDITw/16gEY/RI72ZehFtqDmg/pl8iMFAvYvD2w6CxIOHLML/XClAl8iAJBtK45jXI5S0
	J7qJl1e8wUqalrhGWNxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyw8T-0007Jd-3q; Tue, 04 Feb 2020 11:12:53 +0000
Received: from mail-am6eur05hn2221.outbound.protection.outlook.com
 ([52.101.152.221] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyw7q-0006lr-Ku
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 11:12:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qg7dfIuPv95xMATbqpBRZkXALF5lFoaBT90dDjFdk58yQyIrFO5CWV0QfVQXRUBCa+AdQosFE7DZh1i6TPYoqjjJhDiYEfa4UlyFCnYWxrVtWmTOX8Dnsmt3tGoOOWBLbLCz7KtQYqeYM/IJ+vh0W8rlKjG2eApE2EYMEdM+Quv8gaIqMdw5B9uy1zTFF39qvtZr/RYeze6zDCKk467EVGSZ7h7Z+FVi04+V6fafaK/0pNhRx6sqKRtr7oMcZ5t7JiiomE7NHMXOwDFHX5s4/M5TuR8lBmKMzhJrHi6BF3XTIBJ1Wzu6uJjn+YVdFJhML0qHQGLJF34oz55yxM1vnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J/u8mIwI4tZFl0wl78bAtuqvbTdyisDecXZYGOVJmvA=;
 b=YcEfmJzEODMQrehVLzYeAsTh3Tb6l4+trioV8sEutCqIwtmKcayvGXXmYUyf494rC5xBrgNOt/7HZeiy7VWkG1NSG4PdFKdD1Urod+qF/RgMhvRD28S4YIqwttS0PwergPKMPUAsGbkYW0LAssBrUx+dP7A8KfI9FpH5LdrYDtu/DJftQYY+yZd12AS/O6Yy+I1EAIU2yIh78Tm7YxYCyelXVyRYWvr40Ko0J/uiUwCT2dDwnZvC5uyFeSoqoEEAeF+gTeIdUO+VMdUHNRNe//Ztrsn78EUwCnRapZjMrAdc4lP5QKZMjOtqSozEYrQuglMeN31VJB3/iWs4aINKZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J/u8mIwI4tZFl0wl78bAtuqvbTdyisDecXZYGOVJmvA=;
 b=hyXf1OIxifQqOUQnDlxnORcr8H0i3vcWj0qEGjyJP4XK6+CKSwhrJhoNBpKh+6jZyemh/uv3Kcam9b4maAz4SOnAcpqL8iAIlYBi9n73K7VVY8hpG58stDKbyZm4aJ5yf14vTaMD9qqBh+vQtclJhCn9GinPtbQ/rrcMZaFGGjM=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1PR05MB5632.eurprd05.prod.outlook.com (20.178.120.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.27; Tue, 4 Feb 2020 11:12:02 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52%7]) with mapi id 15.20.2686.031; Tue, 4 Feb 2020
 11:12:02 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: devicetree@vger.kernel.org
Subject: [PATCH 2/6] ARM: dts: imx7-colibri: fix muxing of usbc_det pin
Date: Tue,  4 Feb 2020 13:11:47 +0200
Message-Id: <20200204111151.3426090-3-oleksandr.suvorov@toradex.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200204111151.3426090-1-oleksandr.suvorov@toradex.com>
References: <20200204111151.3426090-1-oleksandr.suvorov@toradex.com>
X-ClientProxiedBy: PR0P264CA0173.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1c::17) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
MIME-Version: 1.0
Received: from localhost (194.105.145.90) by
 PR0P264CA0173.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1c::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.34 via Frontend Transport; Tue, 4 Feb 2020 11:12:02 +0000
X-Mailer: git-send-email 2.24.1
X-Originating-IP: [194.105.145.90]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f53000a4-ab28-4029-6a58-08d7a9630f80
X-MS-TrafficTypeDiagnostic: VI1PR05MB5632:|VI1PR05MB5632:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB563219BD7637DF3A3D2ECE02F9030@VI1PR05MB5632.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2201;
X-Forefront-PRVS: 03030B9493
X-Forefront-Antispam-Report: SFV:SPM;
 SFS:(10019020)(4636009)(39840400004)(366004)(136003)(396003)(376002)(346002)(189003)(199004)(1076003)(86362001)(36756003)(5660300002)(4326008)(6666004)(44832011)(316002)(6486002)(52116002)(6496006)(54906003)(16526019)(186003)(26005)(956004)(2616005)(478600001)(66556008)(66476007)(6916009)(7416002)(66946007)(2906002)(8936002)(81156014)(8676002)(81166006)(23200700001);
 DIR:OUT; SFP:1501; SCL:5; SRVR:VI1PR05MB5632;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; CAT:OSPM; 
Received-SPF: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +J7QpS4uHcsNTQKB9yn9lo4ZLDolhMiySmoIq0IpwsZpzQf5GJ6Ror9gkIsBOWGmOc2+wXl/wM8H6C120A1ldJPhMD/Did3knaWgz9+DPG/pcdHzLG4ucq9EiBX5BCdVxOjQDOtwJWQkcuwrK5RQty+ql8d6d9rFVs+PrUqytX7DPZHfYcKbbbSjERjG2zUWyYuoG8Q4wc0NA09nKT4FGZABFuGGrimme3BaC02Fek0O8dSLY42PXi8q328acq8xpOg1Y6vj+4OT37YuG2gEJVWNv1ZZ0u7hTi7BQib+bis40mBLMbUo+7mku/c6GfXD2Wr4NINLmyHtWBAchxafmvtSsyu/XAc0Rd4lloRMK03J1n7yC9RGGKvW0uD4D6isiDZesY8BiouUMalQbBhYds1hn0RJXE99WKU6pVdtc6e0BWpDnxXTchq1dCtGWIAn3Lhj0Q2Ib1MDw8MRnjIwSTSzR+1ylpQ67MwXLTuvpMB2M16R2Znfx5bfsOiCrnql0/eexzrzkL0RhzMMjaQ6NKjWi3rRvqRbXG0YjHHGNLvu1dKnaCmSrVLP8mtGGqnpR2d+k6jG8g8ughpIlxC95PsxgZcVoUKv8FAMKxYM0v+8NRRm5tCTE4D17H3Xm4TIj/VN7Fs5agpBE6IwZmaYF9skef1eK9wGiPg7UpJKzRSQO/p9RXrLhHJxngxYL0joQEkTXNfOfzU+de5p6lyFIJtdLoc4Agr4VOtNkEOzuN6XAmszTI5R+Q0toKUWW5gmiEpa95DwGdxuxkPnJyq7UQ==
X-MS-Exchange-AntiSpam-MessageData: mqvXxSWMOmnQcWlsfQcVRH/aHz5yMpc8LkjlvoT7YyJHYxfimjD4U9vfnw5/z4tmGRL8RkHm9xKL8YBHkVeNyNVYmfL8UP7sJ4rRl26u63l1QDkdkEffGnkDIvUOWwIt1o4gCOWLekX2VF5IpxW5iA==
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f53000a4-ab28-4029-6a58-08d7a9630f80
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2020 11:12:02.4754 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K/H4BK8CtAaXId0bDnVSVbCar6hgN6K+jrwcQARFkJpwhgdWVeYtl7SlyxwLSl/uiWrlbtuEteDvrMhJvFbiOczYtCKBIZB9FVPE3Sszpco=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5632
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_031214_716385_33CDD992 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [52.101.152.221 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Igor Opaniuk <igor.opaniuk@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

USB_C_DET pin shouldn't be in ethernet group.

Creating a separate group allows one to use this pin
as an USB ID pin.

Fixes: b326629f25b7 ("ARM: dts: imx7: add Toradex Colibri iMX7S/iMX7D suppor")
Signed-off-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
---

 arch/arm/boot/dts/imx7-colibri.dtsi | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
index d05be3f0e2a7..f18a7c9e1303 100644
--- a/arch/arm/boot/dts/imx7-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri.dtsi
@@ -346,7 +346,7 @@ &usdhc3 {
 &iomuxc {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpio1 &pinctrl_gpio2 &pinctrl_gpio3 &pinctrl_gpio4
-		     &pinctrl_gpio7>;
+		     &pinctrl_gpio7 &pinctrl_usbc_det>;
 
 	pinctrl_gpio1: gpio1-grp {
 		fsl,pins = <
@@ -451,7 +451,6 @@ MX7D_PAD_SD1_RESET_B__GPIO5_IO2		0X14 /* SODIMM 73 */
 
 	pinctrl_enet1: enet1grp {
 		fsl,pins = <
-			MX7D_PAD_ENET1_CRS__GPIO7_IO14			0x14
 			MX7D_PAD_ENET1_RGMII_RX_CTL__ENET1_RGMII_RX_CTL	0x73
 			MX7D_PAD_ENET1_RGMII_RD0__ENET1_RGMII_RD0	0x73
 			MX7D_PAD_ENET1_RGMII_RD1__ENET1_RGMII_RD1	0x73
@@ -649,6 +648,12 @@ MX7D_PAD_UART3_RX_DATA__UART3_DTE_TX 0x79
 		>;
 	};
 
+	pinctrl_usbc_det: gpio-usbc-det {
+		fsl,pins = <
+			MX7D_PAD_ENET1_CRS__GPIO7_IO14	0x14
+		>;
+	};
+
 	pinctrl_usbh_reg: gpio-usbh-vbus {
 		fsl,pins = <
 			MX7D_PAD_UART3_CTS_B__GPIO4_IO7	0x14 /* SODIMM 129 USBH PEN */
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
