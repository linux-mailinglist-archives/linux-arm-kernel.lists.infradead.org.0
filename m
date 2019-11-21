Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B55FC105089
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 11:30:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eBF7gZhr27VxG3JrYosIzsmS0O+MnPZ3mghbsBXH0Gw=; b=g7Zr/N/EBTDA+K
	9mid7rDAc3Nb6mgOXgYqUD1PtwRx1oSIc8hTTtBFwD7c77GaN88S5vgLbkMeXTjhPHV9CS8Ba+1zZ
	kgnIFeHLHDMcqsTyMnys6EsTOrjG0HZci0Oc3IPLfqRKd9II/57v1/ZFS1xOTH3KRKfTwNrfZ/l5A
	T/bUNXsY2pPj3Lje9FeriWpKOqdDrimZiTi7jr7GNeKovxvEwSEenXwHK9WqhloyOYUlfGwfL5v+c
	/qqRYkPQjU39lN5wjao8zvvhK5YgWEV7Aowtzkjh50Czs1Vd/Vwg0yulyd+0roVKiI7c3HVwXGbKv
	FnmST5YYT9rMzg9XvKCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXjjj-0003w1-W9; Thu, 21 Nov 2019 10:30:56 +0000
Received: from mail-eopbgr150042.outbound.protection.outlook.com
 ([40.107.15.42] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXjjc-0003v9-0W
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 10:30:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cr515NtOlfrcRSe6QLECcfdV6/SsZquV2mBciB1XqdCu/r9JeG1ncR2i+XW+68QcgzYQ7KaqCdTMVXg2olX/VUVtFuKn5Rj3f2ZA+ogrRAA6t5w9yUdpZscvDYg+WkPS22pKJXo1ZL1iRkQqGtlXZdseqtsy2higpJtIZKr/waChOQG1luooYcEZBSfK1rtFC4wZZlv400wO3loNZHBD0d2NgQvHmG1r3/m4g0q3Y4InrsXsgIXCko4bE4pEa22BJTs0Unc9Cura/EwWKRUlrPqCxOBs3MIkuewfuEmwzw0qzCxSZVUjtkqBdZfzuLgJ6U8oUfwj1QkAvi/1kLBGQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=drhEai2cOWH9fRNUcjHvoKfxwqUxM2ucCjD2yABaBTw=;
 b=O35BiRDQG9zA6uuF2zZBe2OD6xVBeeTq+EedwjUe81ayVyTB9OhL0cYFhqXVdcHr9nlHa81/IUHrvksGcihPvduM1oHhG9yl1nluDZwo5CxApRTmjMSRhpYfsvBIKTdPgrkO4fYW+GNWQZZREeaPzP0dRiIW0Bfx9BfAQVFRhOJNf36ZtI/o8YGNQ2PrL3pd/7Hw3fEFq/RuHhVXfXxYbhk931igzr8ovsjrhRcHYp48QGYzcJFgfg9sYCHRelfYa9v2c4ETO4ywK5t0oSggHiYoDYQ2Rf050hbi0/ychsnwb/IyPhL6cNZLLs2+y/EsbO/nzB7xce3yVssprXmfeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=drhEai2cOWH9fRNUcjHvoKfxwqUxM2ucCjD2yABaBTw=;
 b=Y76hToc3SBVjxF3vul81FYoeQbpUM80jyatF11lLxCHLZni60KcA6F2Yk4AvCdb4HD3E93s5TK1pCqYrSiQzp+yIV3uodFovPA8Wjpxfyg+SVQdhjP4P2Sdb2m+cmj7GA28qb2YDnJwB8UoVonrljWJkj/c37xKgaXA6qjaX0Gs=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5554.eurprd04.prod.outlook.com (20.178.112.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17; Thu, 21 Nov 2019 10:30:40 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2451.031; Thu, 21 Nov 2019
 10:30:40 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH] clk: imx: clk-composite-7ulp: add lock
Thread-Topic: [PATCH] clk: imx: clk-composite-7ulp: add lock
Thread-Index: AQHVoFa4qHyFBgWUVEOTxio+xNlL5Q==
Date: Thu, 21 Nov 2019 10:30:39 +0000
Message-ID: <1574332142-7130-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0110.apcprd03.prod.outlook.com
 (2603:1096:203:b0::26) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e5898b92-f064-4113-3809-08d76e6ddac0
x-ms-traffictypediagnostic: AM0PR04MB5554:|AM0PR04MB5554:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB55542E978F711FD250FB79A4884E0@AM0PR04MB5554.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1850;
x-forefront-prvs: 0228DDDDD7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(366004)(396003)(346002)(136003)(199004)(189003)(25786009)(36756003)(66066001)(5660300002)(14454004)(478600001)(86362001)(2906002)(14444005)(256004)(71200400001)(71190400001)(2201001)(8676002)(81156014)(81166006)(8936002)(50226002)(305945005)(7736002)(2501003)(6636002)(44832011)(6436002)(99286004)(6512007)(6486002)(4326008)(2616005)(386003)(110136005)(186003)(6506007)(3846002)(26005)(102836004)(6116002)(66476007)(66556008)(64756008)(66446008)(66946007)(52116002)(54906003)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5554;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mUS2HWutZVkg1GvCogYgG9mJKqW377rU34d0dj1/31kqiTHHUJ6cL29dnWB8MiHumUR/cyI2Fpp2cMhcPPJrEgWsoCGli2MsxIcil6uOLdpN3BBcU4X02Whu6+28OSWBz5JzHe0rArFeet58tXFO5w83o0Bzv6j5AGZekmnZzstgnOhKY3Yy9R5oO/5iC46IqZFgnYMcu+rWawq+pfEBJR95E29AB5OatgIcdrNYEO9SQFplCYRxfcbSVylp1MaGV0UNQFb9URHVzkdvE+HfwFLtLxhwFID7h6LrSlSnN7uU8ZluTNZYmbDdVSea0pcyeN4hA8aD0NAudbN5vbdhp7UK2wFee5RVVRUyIR+U8A+9f1oAeAsh1MCxIoS5G7MOwPERLXNYDL0jXdkXkvo3HbFvXS4pyO7ZKgXrCcKy75ImcEW7ywD0wDY6hekNwMLA
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5898b92-f064-4113-3809-08d76e6ddac0
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2019 10:30:40.0393 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cRvtYKQ3HTIn80iAPuyWmkGcaAcTMxC+pTxtkHrPzHAIaKnqqGA/7uCcuNxB4P5cw47jM+vaJQZqY4wuE+tCcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5554
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_023048_058938_768AE4D8 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Alice Guo <alice.guo@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add lock to mux/gate/divider to protect the access to the register

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-composite-7ulp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/imx/clk-composite-7ulp.c b/drivers/clk/imx/clk-composite-7ulp.c
index 060f8600ea0d..d8c6e48207c5 100644
--- a/drivers/clk/imx/clk-composite-7ulp.c
+++ b/drivers/clk/imx/clk-composite-7ulp.c
@@ -41,6 +41,7 @@ struct clk_hw *imx7ulp_clk_composite(const char *name,
 		mux->reg = reg;
 		mux->shift = PCG_PCS_SHIFT;
 		mux->mask = PCG_PCS_MASK;
+		mux->lock = &imx_ccm_lock;
 	}
 
 	if (rate_present) {
@@ -58,6 +59,7 @@ struct clk_hw *imx7ulp_clk_composite(const char *name,
 		fd->nwidth = PCG_PCD_WIDTH;
 		fd->nmask = PCG_PCD_MASK;
 		fd->flags = CLK_FRAC_DIVIDER_ZERO_BASED;
+		fd->lock = &imx_ccm_lock;
 	}
 
 	if (gate_present) {
@@ -70,6 +72,7 @@ struct clk_hw *imx7ulp_clk_composite(const char *name,
 		gate_hw = &gate->hw;
 		gate->reg = reg;
 		gate->bit_idx = PCG_CGC_SHIFT;
+		gate->lock = &imx_ccm_lock;
 	}
 
 	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
