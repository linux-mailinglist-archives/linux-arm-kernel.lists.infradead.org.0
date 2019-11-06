Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A17F7F0E68
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 06:31:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ORxy6zATTnPmtVZUHoCwG+iU2n7d13BWtYrT+DSwaoM=; b=rqu5jiL3kqTNd6
	esEVxihwG1g4zbJe0qi8dadGvuxBJ+LWzsdqJPzVWPcyw4Z0FIiThFMjHmPRvyOIIuMHhvzzzw3lV
	eUj+uPtuU8QN7fpbT6I6SjYttZivCk1m4+ee8EzXFPF/NyySMI1/szOO5HMSO0VQEGymXvb3xNbCI
	TrfJprg8iSVGD8D1JiTMCDlN+0AivkrF2km/8+TUF9RkwhAsW/dZxM1w2BoyxST8IMDCnmWDpKX9R
	hfJGDuk6zBS04v7pCP+NDkQ5meoSqN2uHkmNrMuJGPbbn3ueYCY1orLLj0ELu7WH8Xzwn7lsmwXTo
	9O71cUgOwxAF6n8B6nVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSDuk-0008Pr-BB; Wed, 06 Nov 2019 05:31:30 +0000
Received: from mail-eopbgr30057.outbound.protection.outlook.com ([40.107.3.57]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSDub-0008Nj-PB
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 05:31:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QG02v5zmFF6aHwB6YuDJlFVyym3QH5DNIls0KRZjBeDR7rnyMRbG9tZzh7DrEJo2EUR2eEf9vFkUO6FbHVaQYDUGsABa8gd8Nt8YSxADBflVwCeSQzVOOpRzvHlXv+TVgLLzBfRmNz9VRUxUQtR4ho9t2cRyB9lMSkTN7epHiXQb0J1TP/EI/RhftvGtzbM9vvZv2LaxWr3V5Ksw8lvBVDGro7QCry2XCxJtw5QAhoQZJSWMC19ozqhrGFvLP4BFCuAy3slqpke2lgc9tH4EP5LOVW7jmO4LVn4jOzqpAkgRko4Q+KuI9u6POwE10r0/rjD0SO9l3UVPOsfU4wGwmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YZILj+/RNXyvglyWPuYnjTqv8mXOrESz3yqO60rK9YU=;
 b=jb3VAizod0Yjrge6yjYgPlxYEkCzI3Wed6oA4d0dOhOI4Wa7/Kytx3jrY2QbdZaxACa34VjQ8hrqR3kRCjptunhE/a5OJCnE2W5m+yPfJk4qYOioa6qzfJDcDxP7M/5M9/YrXR/daSqkysZKCyjUpDy/EFP7quDg1hz7KrXEflPORDHwFVNvJytMRUbY0JhqBytBF7lAOGk3BTSLMnXZKsSK5v3e0XSfcyFUPrta5WjlJ1ula81lPcA4ojoAYOU7Uk1AFYotirEgenoq40ZNFSUY92uo7R7+CC81BEuUFJr6+3bOyQLQo/NdIUuPuRnG9A27tafZLLrUs380xC9flw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YZILj+/RNXyvglyWPuYnjTqv8mXOrESz3yqO60rK9YU=;
 b=OPeesbwvxlE5xhrpV0qVPvJuz+HjzFsnGAOKx6gtN8Y9eqtt2p2ha7/2ULPJvh/I11jl05MzcR8iBoqdF2Udpiw9Zl2BgGx39piYLKAdy0mgEKxbga5DGNQYEcEcvpp8tng5XmTMVzgnvlu8AkH/JPW29B8/gucvwj3C1qYsswA=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5009.eurprd04.prod.outlook.com (20.176.215.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Wed, 6 Nov 2019 05:31:15 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2408.024; Wed, 6 Nov 2019
 05:31:15 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH] clk: imx: pll14xx: fix clk_pll14xx_wait_lock
Thread-Topic: [PATCH] clk: imx: pll14xx: fix clk_pll14xx_wait_lock
Thread-Index: AQHVlGNoepC2TDBj7kaCYRyt+h3yDw==
Date: Wed, 6 Nov 2019 05:31:15 +0000
Message-ID: <1573018178-14939-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR04CA0003.apcprd04.prod.outlook.com
 (2603:1096:203:36::15) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0dd6f3c3-ebe6-4980-6f4c-08d7627a8a99
x-ms-traffictypediagnostic: AM0PR04MB5009:|AM0PR04MB5009:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB50099577F705688A5CDF72D288790@AM0PR04MB5009.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(136003)(366004)(396003)(199004)(189003)(81156014)(81166006)(99286004)(486006)(476003)(14454004)(6486002)(25786009)(186003)(44832011)(316002)(52116002)(102836004)(6506007)(386003)(8676002)(6116002)(26005)(8936002)(50226002)(7736002)(4744005)(5660300002)(54906003)(71200400001)(4326008)(71190400001)(86362001)(66946007)(305945005)(2616005)(66446008)(3846002)(110136005)(14444005)(256004)(2906002)(478600001)(6436002)(2501003)(66066001)(36756003)(2201001)(6636002)(64756008)(6512007)(66556008)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5009;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Utzgprxqyh2MO6z6fhlqWnzg8SI3nRTHcw8b24BXaEnr3Y9/xi6V0Dq5iYFcfNpkwpae7nk7mAF2r7jM87xEfn2ok4ETxLSH7k+U52jb5Bgo6WujYxSL5F7ib4xEDs+a4Vn+aIYNcBLREF0/LqScEVbXMoDEGUnM/XkSfjs4HPkEF0k3+iwKsX+lVdIiFgLYliF0yDiTES8rvQ2086DyEtRigzj0PyYOjCtIJ5ElGPyKXcoXoU7Eztkc5pB5k0a68jN9sL4ZSlqpgb+dFN7YWwE97226S1iQN5+Pzjkaoxd4kUxioEQpBmp5Hccdhkoyp8U35zFueA7Zg7gMwcBIVO1wj2AcuwTUzcXJJff9Ip/qdgGWJ/wPvZtvpaKs8Y4JEgXUV4t0QghFwEtEnl9otnj4GfuLmR4PHemxxEg557s2qJPMvZTLgkzMDyXCs6YH
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dd6f3c3-ebe6-4980-6f4c-08d7627a8a99
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 05:31:15.0905 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9uRsrAfBUQ5n2bsdJ2N81KoqLe1Rj4Cddumn6zHnp9kR/B+a1MHvCOZkUIrztTR/ke53MUT2RXPXNV5r7VRG3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5009
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_213121_905785_DEADACD3 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The usage of readl_poll_timeout is wrong, the cond should be
"val & LOCK_STATUS" not "val & LOCK_TIMEOUT_US".

Fixes: 8646d4dcc7fb ("clk: imx: Add PLLs driver for imx8mm soc")
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V1:
 Hi Shawn,
   This patch is made based on 5.4-rc6, not your for-next branch,
   not sure whether this patch could catch 5.4 release.

 drivers/clk/imx/clk-pll14xx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index 7a815ec76aa5..d43b4a3c0de8 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -153,7 +153,7 @@ static int clk_pll14xx_wait_lock(struct clk_pll14xx *pll)
 {
 	u32 val;
 
-	return readl_poll_timeout(pll->base, val, val & LOCK_TIMEOUT_US, 0,
+	return readl_poll_timeout(pll->base, val, val & LOCK_STATUS, 0,
 			LOCK_TIMEOUT_US);
 }
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
