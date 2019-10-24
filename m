Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CB5E2830
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 04:31:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kj1iqsK80evlgWIJVqsPf8YWyx0Q872E6iKDOl51Jc8=; b=Yxx/rbdBHDlW2f
	FXTV3T1fIJ3ReNJZfunfec2pagbwEicWycY4pT5dVsckttymLktVB1pU6meehPWthlYxSSjUrr4ME
	Qzk/wsHNDkmWdlIQuaFeLtUggLX+tpnJYKjNd9EQVLAFXLRcdL/Wxzj2RrJeBGLomwAOtxxuUT9qk
	dwTWcizzhhJXlcLdjwFEoecpUg9bEDvF6Px70OQ2vkhXjoDUOpgb59o8VCED3KkHbE6I7PLju1dkT
	TYb8H4+TysEi2ts5urQHigjVYoshMhLtF3ikHn+CIgZjN+vW+XvrWJnrZsATLI7qVygEBldahyTlc
	BniTsa/wmYNRY8o4/tUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNSuO-0008DT-Pq; Thu, 24 Oct 2019 02:31:28 +0000
Received: from mail-eopbgr10083.outbound.protection.outlook.com ([40.107.1.83]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNStr-0007sM-6d
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 02:30:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XqhEk/HgIT+W5hVrVEtyEh1cbkLYO3a0lIhmgZSrksBT2hF8q8o1RgaUKakwxkbB7ESH0XTsz3hAcYcpikPiFU1sOKNDJsfeLav1/24EDMG+cae2IE6iXtien09Fi5ZRp5w5mwFhXNqFb7hMLUzcTqHjYGecXdUo0w6iw55aOpr08VAx0r+JYcpPsk5jkNEfSdhwUTOfcel5g1ygm6A6OIhEuhxn5aZuKGZ6gcA3QNO3sEHm7phR4l3PpHdOjc9ddjNcXcHYM1BMmVVVrs7jKDEoi0S1rOrtPj31OyYpsSRCmN20PdsS2D3M6vpKAlE02F/A5YxRNgPjjbGEBFRRhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aeUl/ugzJjf++UL5sfIw455b06HC68ZQ9OlcHWchWHQ=;
 b=X00I/AW7OcGjw9pJi+fRm1qjC/9/Gh0tiILsGmpN0ApT1OfoVAvcP+c0/zYzRFClt/pGlASZHfh7sls3kvsJzyFoKjjEi2BJEim2bqgDecVUT4btxk+3cPDGj3dhQ4lOHreGiitbEamziZDmt0aXtLmqVgTfSy4HG516mvCk/iARy5haRhtttKf5n2AJzDpYoLem9+KyFTs2Xo3LqM67Rer0hou9OsOumRyjZUX22nHZqDZ6od9IcJvx7WgPD5J93D/whvZYFgaKo6E6frIN3IJ5GO3iTYyW9gYgu+YaZwS3rsKH2bjRdo8/w8+7kkoDzVMR4KlBL4ZZwziljDE4gA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aeUl/ugzJjf++UL5sfIw455b06HC68ZQ9OlcHWchWHQ=;
 b=oM13Smy4LeyqZNLTwhEySZ5E/Pp8QndJCsHxa7dPJjgvu1zwMwLP+vopoRq1J5BzBdROLY+3t7pq/tHeRsOAtyNi13xaWpRBFoBG5m/YkF47rgo8wI4RyUphGdXCJW1ol9WxlII7wVGcDOblfe99a2y5J1MghpQ2PBtDFJmhvuU=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5315.eurprd04.prod.outlook.com (20.176.215.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Thu, 24 Oct 2019 02:30:51 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2347.030; Thu, 24 Oct 2019
 02:30:51 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: [PATCH 2/3] clk: imx: imx6sx: use imx_obtain_fixed_clk_hw to simplify
 code
Thread-Topic: [PATCH 2/3] clk: imx: imx6sx: use imx_obtain_fixed_clk_hw to
 simplify code
Thread-Index: AQHVihMNtHdpWr4KtECpUSBdvfHoXw==
Date: Thu, 24 Oct 2019 02:30:51 +0000
Message-ID: <1571884049-29263-3-git-send-email-peng.fan@nxp.com>
References: <1571884049-29263-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1571884049-29263-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0200.apcprd02.prod.outlook.com
 (2603:1096:201:20::12) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b9ac28c5-b92f-4be2-d066-08d7582a3037
x-ms-traffictypediagnostic: AM0PR04MB5315:|AM0PR04MB5315:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5315F0DDE05E2FC79B5D0E35886A0@AM0PR04MB5315.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:862;
x-forefront-prvs: 0200DDA8BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(396003)(39860400002)(376002)(199004)(189003)(256004)(99286004)(6512007)(52116002)(3846002)(4326008)(476003)(76176011)(446003)(8936002)(2906002)(5660300002)(6436002)(11346002)(50226002)(6116002)(6506007)(486006)(7736002)(71190400001)(71200400001)(386003)(305945005)(86362001)(81166006)(81156014)(2201001)(8676002)(66066001)(110136005)(26005)(6486002)(54906003)(2616005)(102836004)(478600001)(316002)(66446008)(2501003)(66556008)(66476007)(64756008)(44832011)(186003)(66946007)(25786009)(36756003)(14454004)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5315;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ES0H+CwZFM1TZDGmuTJh/vV2DkY2RB9BY/UHtI2ua3FNllXb0LyPu2CRCLeorSf0lGdJnOc0hRX3uH43d3HVDTVmjoVVan3PK/Az/d82A7YRlscjaZx8zlcWznRWfTgnIzKbymiwiObkimNnIkDuwgIBSv4f36/kxuz6Oy4egbPUFE4sgqDSN1on5S2m5WlwVNLf+OMQmU3w5wb3iMkicLwMjuLODuGGIdu7QreAWnVxHIk8zN1x8j+nlHG4Fg5SVmbnKlE6jzH0kglwYJRSDGnu97g/Df2LPjM/A7mocFYw3wJxNZVrtM19uzWSCzmZzJ2BRlkgjmvHi28KN210BR364TgyKR3JTc05aNVEUsfWbM1UUSQAzQNFw8/Eo2zLYMdLZlE7AzpgQ9m9L0ybrWzvC45PFpfz5uG/WOBAu0t5AS6K7KBu9JsIY920a6dq
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9ac28c5-b92f-4be2-d066-08d7582a3037
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2019 02:30:51.8478 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zn1zMRC2TJup5bEIx0GfmLsbOil25ou79oUAMLx9PTJLYZNmvOLyQlTxyHKO+iIpXLsweP7M0PVcX16omgOaOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5315
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_193055_545151_7B0FE2D9 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

imx_obtain_fixed_clk_hw could be used to simplify code to replace
__clk_get_hw(of_clk_get_by_name(node, "name"))

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx6sx.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6sx.c b/drivers/clk/imx/clk-imx6sx.c
index c4685c01929a..89ba71271e5c 100644
--- a/drivers/clk/imx/clk-imx6sx.c
+++ b/drivers/clk/imx/clk-imx6sx.c
@@ -139,16 +139,16 @@ static void __init imx6sx_clocks_init(struct device_node *ccm_node)
 
 	hws[IMX6SX_CLK_DUMMY] = imx_clk_hw_fixed("dummy", 0);
 
-	hws[IMX6SX_CLK_CKIL] = __clk_get_hw(of_clk_get_by_name(ccm_node, "ckil"));
-	hws[IMX6SX_CLK_OSC] = __clk_get_hw(of_clk_get_by_name(ccm_node, "osc"));
+	hws[IMX6SX_CLK_CKIL] = imx_obtain_fixed_clk_hw(ccm_node, "ckil");
+	hws[IMX6SX_CLK_OSC] = imx_obtain_fixed_clk_hw(ccm_node, "osc");
 
 	/* ipp_di clock is external input */
-	hws[IMX6SX_CLK_IPP_DI0] = __clk_get_hw(of_clk_get_by_name(ccm_node, "ipp_di0"));
-	hws[IMX6SX_CLK_IPP_DI1] = __clk_get_hw(of_clk_get_by_name(ccm_node, "ipp_di1"));
+	hws[IMX6SX_CLK_IPP_DI0] = imx_obtain_fixed_clk_hw(ccm_node, "ipp_di0");
+	hws[IMX6SX_CLK_IPP_DI1] = imx_obtain_fixed_clk_hw(ccm_node, "ipp_di1");
 
 	/* Clock source from external clock via CLK1/2 PAD */
-	hws[IMX6SX_CLK_ANACLK1] = __clk_get_hw(of_clk_get_by_name(ccm_node, "anaclk1"));
-	hws[IMX6SX_CLK_ANACLK2] = __clk_get_hw(of_clk_get_by_name(ccm_node, "anaclk2"));
+	hws[IMX6SX_CLK_ANACLK1] = imx_obtain_fixed_clk_hw(ccm_node, "anaclk1");
+	hws[IMX6SX_CLK_ANACLK2] = imx_obtain_fixed_clk_hw(ccm_node, "anaclk2");
 
 	np = of_find_compatible_node(NULL, NULL, "fsl,imx6sx-anatop");
 	base = of_iomap(np, 0);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
