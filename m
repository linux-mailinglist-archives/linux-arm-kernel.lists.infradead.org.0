Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0B1E2891
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 05:00:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kj1iqsK80evlgWIJVqsPf8YWyx0Q872E6iKDOl51Jc8=; b=O8gIfU9YCGrGWS
	5q004zvOksg3Z7+8LuaCQo3Ptasq+0oTAnMx5On4rswFIccwJFv4TUxKa95bBCrmhauUhO74z5znA
	zoiWO37Nm8sXzMZhCKHZ+/bso6NYERhNry0s+5nis6E4EKr4UZNWozC5l30izaRMklEiSf1J4qN/1
	Jn4WfvuwLyJjIPXZRxf5vLxm5fXy99dIcdPROPuHTU+y1ZScdDfbvvnc+2WDkGwJjXC5z4wibXq8a
	u3HRv1jzLOafPcRtR+S7xDtZ8dgg1D01jP8lJXswNADzvntr9lhxhOY1e2cP+PScHN7+vDzlpGXE/
	QfWzdYW9E//SH/rPQbQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNTMS-0003mq-9I; Thu, 24 Oct 2019 03:00:28 +0000
Received: from mail-eopbgr40074.outbound.protection.outlook.com ([40.107.4.74]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNTLh-00029s-7u
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 02:59:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OrVAtfxr0beROu1g2q5aoaKEmcvK3pKQExNRKa76tFzgt7X2BcFwrrZA1OumSTcyiQD9OP9otu/ct2Us5mTc26TuaJxq7VJnPWn2lEL7NjXwB7IsWW+EQnbUhQ/OhpxHcTp1P5rf7qEloAmuim52DJ6gJSlPXb//cCnKfzsAPAF9j7DbGFjTyLBnvaHK5+RVbi0cjRC5AUTbKf/qufAajT5D5KHcMqvS3fDw8pZhfBsszymOCv4q4dqoeTpQeGfZmZHyyW+eOE2W+QAk3HofmPHPWzOM0gVoQRHa9mWf3QRUxn9uYiXw97SnJcAK/B5y+eguD/6ipmaKsT/Th23B1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aeUl/ugzJjf++UL5sfIw455b06HC68ZQ9OlcHWchWHQ=;
 b=ka5u4WRWtZta0e8KkTNpL/VV+ubl44bpydh4KMmZdmhrPUXqXMnAiMJbeS2hBe2WVpcKMJ0yTr3oqGSsW731X3bbVvW6N3YRGnXR9Qw1vAwSiOV6X+WL/RSsYJ1NufDSYpKRVkIHlIRQlF6OEwL/dVpl4sisemTF0a1yrxbFTZ5GVR7+8aDIzL7UrPrCMMOT81wqgVBUugtgqgvNyTbQYT49QmT/0HJJLI9BGf8VNs5WVINX39qQ/4S4Ibo41pCTmwusctZqHm8PnWh81/68D9gRFmmJcztemf92cDaDGOgSoIsri4yq8gNLkKTYOIwQoYPs0yElrRg51sd5UfJDPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aeUl/ugzJjf++UL5sfIw455b06HC68ZQ9OlcHWchWHQ=;
 b=gYu6zxCve2KQ0sSw7eSgRsHd/JoYu5Pw4WSPKqwC7k+nPvrDlFpY/wiNsZI0M9FSqF1g+9TAecnfOJ/94T0mwq3L9KiSn+f9ugDUPM8Rel9nsoDVrG8O5J8ZyUZE4Ue+79oIoia0Nez8rdsSlbQ/JSpw8tOjkt03pgsijC4LKIY=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6609.eurprd04.prod.outlook.com (20.179.252.206) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.24; Thu, 24 Oct 2019 02:59:37 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2347.030; Thu, 24 Oct 2019
 02:59:37 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: [PATCH V2 2/3] clk: imx: imx6sx: use imx_obtain_fixed_clk_hw to
 simplify code
Thread-Topic: [PATCH V2 2/3] clk: imx: imx6sx: use imx_obtain_fixed_clk_hw to
 simplify code
Thread-Index: AQHVihcSO0+bVnwcFkOXDh1M2DARxg==
Date: Thu, 24 Oct 2019 02:59:37 +0000
Message-ID: <1571885777-21662-3-git-send-email-peng.fan@nxp.com>
References: <1571885777-21662-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1571885777-21662-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0081.apcprd04.prod.outlook.com
 (2603:1096:202:15::25) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6516120d-e9a0-4d1a-6b2d-08d7582e34ac
x-ms-traffictypediagnostic: AM0PR04MB6609:|AM0PR04MB6609:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB66091BF937416879299B4CDF886A0@AM0PR04MB6609.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:862;
x-forefront-prvs: 0200DDA8BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(136003)(346002)(366004)(396003)(199004)(189003)(305945005)(486006)(26005)(476003)(102836004)(2616005)(44832011)(52116002)(7736002)(446003)(6506007)(386003)(11346002)(71190400001)(64756008)(71200400001)(66556008)(66446008)(66476007)(66946007)(316002)(186003)(76176011)(54906003)(5660300002)(256004)(110136005)(86362001)(478600001)(99286004)(25786009)(14454004)(2501003)(50226002)(2201001)(6436002)(6486002)(2906002)(8676002)(81156014)(81166006)(66066001)(6512007)(36756003)(8936002)(4326008)(6116002)(3846002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6609;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HZ0Byrx5RkC6sqTiiP7Gyb8vCRoPe8Axj+Kvzxnhd12paqGhb916kGt4c6aEflM2zCPzecvpwh2fLUR5AZa+ZDye5yq/PeSo0GUr+VsQ6Hs78ICsHsMBO6p9WkUSa7KfBTWe7qSHmNIIGday4GoXRq34XlhBWmSDjJTsad2ZFi8RX0VrwCBa9fkqvBSrzzIHJEgMptLHp6KAlcsvXiY/1K8Fai9xqpOt0DNIv1Rfq3+T45XJg83Q1/7KMxyLJ1LxPV8YmNrRlhpwF5/Ul6YsAKywQKtlUCzZHC7J49jcw+sGwzRUHL5y7o5b2vsfim//DHm2ZrkzNzlt6zYaDvLK3cDvnomUSWI3bTfZ2pLWRDlAiPwkUmi+zG2Rf0/kHvDQeq50dQXxugCLT9S6Xue9ftwTh/q1OgSxvcYuqwoeyH9o8iS67BA5H62SL26rwA7f
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6516120d-e9a0-4d1a-6b2d-08d7582e34ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2019 02:59:37.3348 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u4rbui+89qT/svLiEE2QlvMEupocwWFC2s0Z+pwvQlxq8J8K6f6iB12VgW3ttcF+zKTv+JsWiPMLNcz4ar52KA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6609
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_195941_345382_6B065130 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.74 listed in list.dnswl.org]
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
