Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FC8114C0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:07:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lAjYt7C0b62mgI8yZHgyujTWAuUH7Z0PVLqvPrGdCVY=; b=YeS6rDkDqap3K/
	ttYbJTVef1ALgEUNpf82kRG4yoJMuDS2cMLCNxA3L7UEihqfSE1RMVqPprvx7wIEkyYRm20+fSNqs
	SiP/bApeLGbFQ4ewemGf9xtW7IrrLojGeAJXK3CvYBqzItw6b3gHtNTrvCL9+FE8DdjdLn1P1ZtFP
	P7Q+gR89FQidHvQAGulC6btuG7juxsvgIy2cxT2rM9d9Z0rP+TUiHZVTBJjMhNKoV7OHhCWGI8yG7
	zTQDnUmcTM5Cu+tYOjXXatgWycRP3zgcPWlCrbkBB8+sgSpDQb9enhCn/x/klzt7n/kfBBRBYXfsr
	lYy5H5fLFFs0oIjXMVvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6kO-0005mQ-3Q; Thu, 02 May 2019 08:07:16 +0000
Received: from mail-eopbgr140089.outbound.protection.outlook.com
 ([40.107.14.89] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6jx-0005KE-4T
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:06:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D7PUOPhG0pA0jWDdcfQv9NZdpnckzyspBXeabEN7aa8=;
 b=kEVBJPmT42sruVifUsEaZlybZfGQJms/dNlN14qJCCSLi68xS6jnSATFT3/BuWZ2e3K3oq//g7pRAurPDiBJTXsq+fMGFK6UNsrph1pgw+b0oVuSIZGWLWJOx1EUDEQm90//tFMSXjOjiemWnDhktmklOwmL3vcLbVUn4X3MbKM=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4563.eurprd04.prod.outlook.com (52.135.144.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Thu, 2 May 2019 08:06:42 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8%7]) with mapi id 15.20.1856.008; Thu, 2 May 2019
 08:06:42 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <fabio.estevam@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>
Subject: [PATCH v2 03/18] clk: imx6q: Do not reparent uninitialized
 IMX6QDL_CLK_PERIPH2 clock
Thread-Topic: [PATCH v2 03/18] clk: imx6q: Do not reparent uninitialized
 IMX6QDL_CLK_PERIPH2 clock
Thread-Index: AQHVAL36FVOgLCrgTk2aJfrH28ZViw==
Date: Thu, 2 May 2019 08:06:42 +0000
Message-ID: <1556784376-7191-4-git-send-email-abel.vesa@nxp.com>
References: <1556784376-7191-1-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1556784376-7191-1-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0501CA0041.eurprd05.prod.outlook.com
 (2603:10a6:800:60::27) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b40d0542-088f-4e6d-c8e2-08d6ced51c77
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4563; 
x-ms-traffictypediagnostic: AM0PR04MB4563:
x-microsoft-antispam-prvs: <AM0PR04MB456370EA40972576B928A4ACF6340@AM0PR04MB4563.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1051;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(39860400002)(376002)(346002)(366004)(199004)(189003)(53936002)(66476007)(66556008)(64756008)(66946007)(73956011)(66446008)(66066001)(6116002)(36756003)(3846002)(305945005)(86362001)(6486002)(81156014)(6512007)(81166006)(25786009)(8676002)(4326008)(71200400001)(71190400001)(99286004)(8936002)(14454004)(76176011)(50226002)(11346002)(446003)(2616005)(68736007)(478600001)(386003)(2906002)(6506007)(52116002)(316002)(44832011)(54906003)(110136005)(26005)(7736002)(5660300002)(256004)(102836004)(186003)(486006)(476003)(6436002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4563;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KwwTc0xDw9v5gUm0fHfBqX08d49AsdLAqwMcs3aXhPDFbWy9lfz+xoPiV4Tl71N2tlngCWggEVxTKFM8dZ54TzpBhJ1RW3AWN70OJCyb7jgS774LJudXMyAI7GQIvlChQmDd7BrhSFV90TE19INYRiixesDlri4hVHzN6FqldgwVEKL3jjWgw715yHdY0OP1T2qClyRBYJJlp5/mXYPzl/jeq85CDpQteoqmeF/KNPjWCkmI6JzrZ2rZ4w37Dr5GxGAMqkDV9snhs+RYG86Vc90mMGGrVidMILwSo9TDcEt2U47h4kfg0Kzn9spI5TLDwxf4/gw9/BrUhcu2J6TI+tUt+5IR+kc3sMYJQjnsKa9CbuVWmPHE2cr048pNXS62PEAUFI29P5F8FkKyctZrAtNVWY9vDHC0Qx5iICFK4gM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b40d0542-088f-4e6d-c8e2-08d6ced51c77
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 08:06:42.3600 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4563
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_010649_198396_D6715B00 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The clock is registered later than these two re-parentings.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/clk-imx6q.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6q.c b/drivers/clk/imx/clk-imx6q.c
index 708e7c5..c7b671e 100644
--- a/drivers/clk/imx/clk-imx6q.c
+++ b/drivers/clk/imx/clk-imx6q.c
@@ -291,12 +291,6 @@ static void mmdc_ch1_disable(void __iomem *ccm_base)
 	clk_set_parent(clk[IMX6QDL_CLK_PERIPH2_CLK2_SEL],
 		       clk[IMX6QDL_CLK_PLL3_USB_OTG]);
 
-	/*
-	 * Handshake with mmdc_ch1 module must be masked when changing
-	 * periph2_clk_sel.
-	 */
-	clk_set_parent(clk[IMX6QDL_CLK_PERIPH2], clk[IMX6QDL_CLK_PERIPH2_CLK2]);
-
 	/* Disable pll3_sw_clk by selecting the bypass clock source */
 	reg = readl_relaxed(ccm_base + CCM_CCSR);
 	reg |= CCSR_PLL3_SW_CLK_SEL;
@@ -311,8 +305,6 @@ static void mmdc_ch1_reenable(void __iomem *ccm_base)
 	reg = readl_relaxed(ccm_base + CCM_CCSR);
 	reg &= ~CCSR_PLL3_SW_CLK_SEL;
 	writel_relaxed(reg, ccm_base + CCM_CCSR);
-
-	clk_set_parent(clk[IMX6QDL_CLK_PERIPH2], clk[IMX6QDL_CLK_PERIPH2_PRE]);
 }
 
 /*
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
