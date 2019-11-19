Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBA410260E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 15:11:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xg0HL9bLppHFNG2woMnmPK2YhgUJ+FYxLS86mvM9fbw=; b=cpqcfEaAVHBNk5
	fUum5C+TyhhIk4odnX/V60Z79RJ7UFoSf4Ad3FV30Wu8lNbecJc4TE/vO1b4XNAUrOemvhFBQQvN8
	OsxYpP42sFvJUA+vGWADqQyiyrtMM6IJ4v1diWzU3Avdx0sehYt4011X6JSl8rUStu8R3v2NoncI/
	OkukXpjWQEqATlf4tFb/Szq7nMldk/vZong9nABVyusjiX5eStGM9NAtT3rwMAVDd2n/1eKigjxtK
	iti3NQ0p2fqdcbl8ISfK6kKGAV4Cb1fqHbreHVpUt+EmUKnjT3GpGzlQcYa/YfzL31ywWs7ovwlLO
	6TpS3+9EhXt7IB/lVcgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX4Dh-00040c-GR; Tue, 19 Nov 2019 14:11:05 +0000
Received: from mail-eopbgr00089.outbound.protection.outlook.com ([40.107.0.89]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX4Bc-00016H-96
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 14:08:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H1f41hBSxZVtz74hFHKZ9YnsM44MbTwla0ogK1vcYCSWfDmXK3xdNcw1VtB2jYyU6Z3/DajKWIkPbsQKhiefY82YmTTGJ1bJoFPdkvRsFJ4ckrXdl7EljFw3QjPb8wT6ScoTKN4uX+HgVTFNG3I/f17nY9kidaPVfGoh0jOeYLpVjwHPec5stM9iCQ8ZDBq7OIb9Ae2Qasj5B/mi8+ug5PoGYaLY7M3WVI6ruMNn4x6yMeLm28bjmEKKL9bZjntsBHBlIuVn3LGU1Oo20zwNXNAVwp47DVmL8zB5xfoW0fmLif/VofgKF+SJQbb2KB7g9VqidjP0qWNNg3YpqrqYPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pC2GU343O4t5XNii+GfUD1nkNS/Xmi7yZ1PmlFO1U5Q=;
 b=PLO16IHFBFGrvT8etwdxU9Pl80sBHLsreTqXq4cmB+czJukrNOFHkusFFek6/F6uvMCE6Ep1CrdwRnU2Z0FFUXqE5bTnuoXBBfL13tOe2u2KPKQpm4+qZORlbDgZU+nLmp8YelyAnA2oaodbyAp5Um4Osf3aQjfLorFY34zL2+/yViA3r3hz4qaMm6UxYYb+Mycwu1q+7g/vyc5i/0A1G9YDF0XwU0eHREXRXQRfJyLoW5cy1iP7B1iKmK/aRvTfi4ldDbTmB5TVZJjTCj0XGPnOhrB6ZF0ksZOlCpLXDttAMNpGlVZLit6/og+qtMrvv3gsKmnPMwx8cIU0ZRnreA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pC2GU343O4t5XNii+GfUD1nkNS/Xmi7yZ1PmlFO1U5Q=;
 b=C73pTijyjBFTkXk12Qzd9tjBp5rsRV5AiI/KYdd3Gci/Xy9LHgfIiwhSXqfdA/iNuHpd8wgJU+qabxFzQnJmxhMQ/jnh5CnFX2zuNmCYojarxr4xQJKJ6w3LzWsBaeok83+sfu6y5sqP8DFLyXaO9Sf6ZgTVdanZpyWp1uTpA5Q=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB5428.eurprd04.prod.outlook.com (20.178.113.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Tue, 19 Nov 2019 14:08:45 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2451.029; Tue, 19 Nov 2019
 14:08:45 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Sascha Hauer <kernel@pengutronix.de>, Jacky
 Bai <ping.bai@nxp.com>
Subject: [PATCH 7/9] clk: imx: Rename the imx_clk_pfdv2 to imply it's clk_hw
 based
Thread-Topic: [PATCH 7/9] clk: imx: Rename the imx_clk_pfdv2 to imply it's
 clk_hw based
Thread-Index: AQHVnuLb/o3xDTwCkUG1Z/K9VcMjgA==
Date: Tue, 19 Nov 2019 14:08:45 +0000
Message-ID: <1574172496-12987-8-git-send-email-abel.vesa@nxp.com>
References: <1574172496-12987-1-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1574172496-12987-1-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR04CA0026.eurprd04.prod.outlook.com
 (2603:10a6:208:122::39) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.7.4
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5da2ffe6-24f3-466b-4ecf-08d76cf9fd9a
x-ms-traffictypediagnostic: AM0PR04MB5428:|AM0PR04MB5428:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5428400FACA43866C2BEBFDAF64C0@AM0PR04MB5428.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1247;
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(39860400002)(376002)(136003)(346002)(189003)(199004)(110136005)(256004)(86362001)(316002)(66446008)(66556008)(66476007)(64756008)(66946007)(36756003)(446003)(7736002)(305945005)(186003)(3846002)(6116002)(26005)(5660300002)(478600001)(52116002)(76176011)(99286004)(2616005)(66066001)(54906003)(2906002)(11346002)(6506007)(476003)(44832011)(386003)(6636002)(486006)(6486002)(102836004)(25786009)(8936002)(71200400001)(81156014)(81166006)(71190400001)(50226002)(6512007)(4326008)(6436002)(8676002)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5428;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ttLaML7MdmJOsqnWS68TTPS7uEKvbktTO4Y1tg3MMBysQryS7LLWWPyUO5DB5quaX8/zOtFdXaXHMBCrMxUZ81S4dnU2kc6P0ErCxHsAgjPtN921EOBTq7kdmvXLGekx6Ur70Jp4OUYNMSVUEx4DxPCPO8diYnPs/54dKmPHpcFRm6ajOzqJYczPMzi2yiQBXLo/gxZbXS2dGOHV2dnOFQddoCLEp0qFlI9w7/49MoJcJ/ETtvndtEvhsQR51thbenMdF1HjtjbT7dHFUWMc7qoKFYrI5NtRPJ3oyc805LqN3mbk0AKsgNzWKifHLQeUYgTzHdCYVotrLDyn1qz/CADdG73llgI85WgrJ4fu0u3IRXr5O3cgeFvT40urIa8ptAins3WRG91SMmLOCrjgatFWBGQVKhUqfSspBPV/+aCHTT38Si/fGDrAVTkdHw3N
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5da2ffe6-24f3-466b-4ecf-08d76cf9fd9a
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 14:08:45.5768 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P8imNGxWbPgD3ovQmV5g1+fsAjII2ho4uNsCTcdQCPX/+6m9YGIDccNG7CgMoUYGUisBtIu/FIzRzlrCMbwhLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5428
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_060856_351457_8E59C3DE 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Renaming the imx_clk_pfdv2 register function to imx_clk_hw_pfdv2 to be
more obvious it is clk_hw based.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/clk-imx7ulp.c | 16 ++++++++--------
 drivers/clk/imx/clk-pfdv2.c   |  2 +-
 drivers/clk/imx/clk.h         |  2 +-
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
index afd2c2c..314f9c2 100644
--- a/drivers/clk/imx/clk-imx7ulp.c
+++ b/drivers/clk/imx/clk-imx7ulp.c
@@ -94,16 +94,16 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
 	clks[IMX7ULP_CLK_SPLL]		= imx_clk_hw_pllv4("spll",  "spll_pre_div", base + 0x600);
 
 	/* APLL PFDs */
-	clks[IMX7ULP_CLK_APLL_PFD0]	= imx_clk_pfdv2("apll_pfd0", "apll", base + 0x50c, 0);
-	clks[IMX7ULP_CLK_APLL_PFD1]	= imx_clk_pfdv2("apll_pfd1", "apll", base + 0x50c, 1);
-	clks[IMX7ULP_CLK_APLL_PFD2]	= imx_clk_pfdv2("apll_pfd2", "apll", base + 0x50c, 2);
-	clks[IMX7ULP_CLK_APLL_PFD3]	= imx_clk_pfdv2("apll_pfd3", "apll", base + 0x50c, 3);
+	clks[IMX7ULP_CLK_APLL_PFD0]	= imx_clk_hw_pfdv2("apll_pfd0", "apll", base + 0x50c, 0);
+	clks[IMX7ULP_CLK_APLL_PFD1]	= imx_clk_hw_pfdv2("apll_pfd1", "apll", base + 0x50c, 1);
+	clks[IMX7ULP_CLK_APLL_PFD2]	= imx_clk_hw_pfdv2("apll_pfd2", "apll", base + 0x50c, 2);
+	clks[IMX7ULP_CLK_APLL_PFD3]	= imx_clk_hw_pfdv2("apll_pfd3", "apll", base + 0x50c, 3);
 
 	/* SPLL PFDs */
-	clks[IMX7ULP_CLK_SPLL_PFD0]	= imx_clk_pfdv2("spll_pfd0", "spll", base + 0x60C, 0);
-	clks[IMX7ULP_CLK_SPLL_PFD1]	= imx_clk_pfdv2("spll_pfd1", "spll", base + 0x60C, 1);
-	clks[IMX7ULP_CLK_SPLL_PFD2]	= imx_clk_pfdv2("spll_pfd2", "spll", base + 0x60C, 2);
-	clks[IMX7ULP_CLK_SPLL_PFD3]	= imx_clk_pfdv2("spll_pfd3", "spll", base + 0x60C, 3);
+	clks[IMX7ULP_CLK_SPLL_PFD0]	= imx_clk_hw_pfdv2("spll_pfd0", "spll", base + 0x60C, 0);
+	clks[IMX7ULP_CLK_SPLL_PFD1]	= imx_clk_hw_pfdv2("spll_pfd1", "spll", base + 0x60C, 1);
+	clks[IMX7ULP_CLK_SPLL_PFD2]	= imx_clk_hw_pfdv2("spll_pfd2", "spll", base + 0x60C, 2);
+	clks[IMX7ULP_CLK_SPLL_PFD3]	= imx_clk_hw_pfdv2("spll_pfd3", "spll", base + 0x60C, 3);
 
 	/* PLL Mux */
 	clks[IMX7ULP_CLK_APLL_PFD_SEL]	= imx_clk_hw_mux_flags("apll_pfd_sel", base + 0x508, 14, 2, apll_pfd_sels, ARRAY_SIZE(apll_pfd_sels), CLK_SET_RATE_PARENT | CLK_SET_PARENT_GATE);
diff --git a/drivers/clk/imx/clk-pfdv2.c b/drivers/clk/imx/clk-pfdv2.c
index a03bbed..de93ce7 100644
--- a/drivers/clk/imx/clk-pfdv2.c
+++ b/drivers/clk/imx/clk-pfdv2.c
@@ -166,7 +166,7 @@ static const struct clk_ops clk_pfdv2_ops = {
 	.is_enabled     = clk_pfdv2_is_enabled,
 };
 
-struct clk_hw *imx_clk_pfdv2(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_pfdv2(const char *name, const char *parent_name,
 			     void __iomem *reg, u8 idx)
 {
 	struct clk_init_data init;
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 0ac6614..afc87e4 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -199,7 +199,7 @@ struct clk_hw *imx_clk_hw_gate_exclusive(const char *name, const char *parent,
 struct clk_hw *imx_clk_hw_pfd(const char *name, const char *parent_name,
 		void __iomem *reg, u8 idx);
 
-struct clk_hw *imx_clk_pfdv2(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_pfdv2(const char *name, const char *parent_name,
 			     void __iomem *reg, u8 idx);
 
 struct clk_hw *imx_clk_hw_busy_divider(const char *name, const char *parent_name,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
