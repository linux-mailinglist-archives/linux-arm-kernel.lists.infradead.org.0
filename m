Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A855EDC2F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 11:12:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=foA+O9HSQuxNLCZWN6Xn/eu5/mH3UX5opU3O8U3lQoA=; b=ssMX2xSjK6bsY5
	2sHCD4EBgN+eGnr4uuloPVEFbt+53tQ5pLnw0rpHQy/tWJYj0nUUptVoITs8iqg8WdPhyOkoF4VNR
	Comx7idQO5Y2L6i1UroJOPYusTlbsaYIj7RTVMU41Z+5+01Q6ZSJToJs4ytekfpbmUPk2Fs0lqTDK
	hgPKDbVweshiIft5OdcYVGmdDEdQ3YZ2F9P3j3kAfgh1QH/vj9X3zffH9SeckSf5Hu5l6+62BoBEN
	qNeG/b7GKLvndhW7RG2coA0RccqisePkS/ijYoTHx64eYKKekO4R1ZRoT9K3tIg/d2dyZWBTxg7co
	ORcBYH79O/Uu61uuWFbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRZL8-0004Ju-GW; Mon, 04 Nov 2019 10:12:02 +0000
Received: from mail-eopbgr20088.outbound.protection.outlook.com ([40.107.2.88]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRZKm-0004A9-Q8
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 10:11:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cW/8DKuZEZSnQuWB40Q5VjX7k5CznfnBb+A8yCdkDhNy8QX3L+ncYdPtCkCq9SYN5qSTmmU+GGPJqyMEI8WhKYkwZeoOTtkAMf6WWSmaoovmZHBVe8FEgI+4QgOkcXvCy+6dO6ofydrDnzJsr/bwXv3BkcIg1wCUne3WDC9FaBeP5vMvI5sX8alFUHYV6m3hzy0m5MYWu1aGkDlda3L87dCilLjK4SX+6CkiVo2vaPTCQKmg0VxfJ15zMz5gdLS8PIE3gNOzPtksyj+2JCOYk+OddtFQ1xmELJBOjbiJwvL/Y4jcIBfo6HpkH0mnUOOoB8PE43CN6jIXwEtfPeqEDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r4Q6OCFdfXglH+O9H0xCZY4exLfJrhjJhNG5RxsjsJ8=;
 b=VdrGRwcWtmgQDz4i3gj0miwVQu9ROosshEiyS9howBXVCm8RC10onWtJOpC/Z4BbqWhzfrXpYwssE1izENG5SHG6sxR5kX0v+dn97uU8ovgg5mhqyMokuJ9sGDMVs8CdUr00FYgOZ4Ao5Mp/JYof42fM/RcPTMb8EjegQ8WeeMhajbzj9drxGc7Jh+ANp9MLm1KPKON9N72SrH54ELvWvEieL5RgNC3DaNGPkL7MGLNDb4HBTiiHHxNyMsam5e7JZspD57J23Ex5JD5XiyN2X3bKUTx9h+WQCR1qxuSkiAqO0aQq8tlyXYIrO5vFIpyFAQacngYiV+ZQ0ePT1gp5Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r4Q6OCFdfXglH+O9H0xCZY4exLfJrhjJhNG5RxsjsJ8=;
 b=bkb6VJnj9JS+BcfAIn3B7guaPqj+Kzje3Gm9BNRiqAFbLv1Z8RPMuwxrP/W313fJW4Ao2grm/tQjUkr7Z5pEARKE2OwxITQt4Y4k+QR1xNB5S51O+4PQBleqMXPUMCF2z67aahHtmEG7DY9TR1RHnIr951yA1jdi1i1zXN6Otq8=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB3987.eurprd04.prod.outlook.com (52.134.94.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Mon, 4 Nov 2019 10:11:37 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2408.024; Mon, 4 Nov 2019
 10:11:37 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH 2/2] clk: imx: clk-divider-gate: drop redundant initialization
Thread-Topic: [PATCH 2/2] clk: imx: clk-divider-gate: drop redundant
 initialization
Thread-Index: AQHVkvg+c+4CR86moUSn7OJwmBC6Vw==
Date: Mon, 4 Nov 2019 10:11:37 +0000
Message-ID: <1572862200-29923-2-git-send-email-peng.fan@nxp.com>
References: <1572862200-29923-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1572862200-29923-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR03CA0047.apcprd03.prod.outlook.com
 (2603:1096:202:17::17) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 870ac988-59f5-48d0-04f6-08d7610f60f7
x-ms-traffictypediagnostic: AM0PR04MB3987:|AM0PR04MB3987:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB39876C00A0C2A0E93C3441A8887F0@AM0PR04MB3987.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:597;
x-forefront-prvs: 0211965D06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(39860400002)(346002)(376002)(366004)(189003)(199004)(2906002)(110136005)(186003)(54906003)(81166006)(14444005)(316002)(386003)(6506007)(6636002)(52116002)(66556008)(7736002)(6436002)(102836004)(25786009)(305945005)(71190400001)(71200400001)(66446008)(8936002)(66476007)(64756008)(76176011)(66946007)(66066001)(6116002)(3846002)(81156014)(8676002)(4326008)(86362001)(446003)(11346002)(256004)(14454004)(50226002)(26005)(478600001)(476003)(486006)(5660300002)(44832011)(99286004)(6512007)(36756003)(2501003)(2201001)(2616005)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB3987;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wMsw9gUwnSRSolxjTYfQzBV6u6u6z34kY6oG8xzQJs/s6BJgPLQ7Dm42DQ1OSUmaIxl/hHIYuOpI/sJWfGJp904WARI/XVHIbUZiiE04mJGO/m+sjznbWUzny1xJ3isjZp7IWCqLDHHTNYMfbPZk9QV7C7cdicKPQ2CWnIiwyaIQaycDloei4O6DX2WzbmSPP/uVXZmng7YPi2nooX8HTR88xPzX9/JWNcf8pE/gP8w5MsVGf0W3OMMMOlSTRjov/FBsCFL+vxAg5Ux7sGim7kYJQ9MSCnyi0L/k7h1ysdtr2oXt8GXl9m2VKlL9BY4bxEj+NmcsUhIgk55K6z7csyaxTTDMr/+k0my4jANztMEx1pFBkOb4+i1Yszmph7KkCISV7V7Jhjb5f9L6ZRLwVn5Vlq/gxsdwHPhsBNcnaMd0mdGb/FxUrbKNHEpYiw9D
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 870ac988-59f5-48d0-04f6-08d7610f60f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2019 10:11:37.7318 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ncKNwRArnpFrHkpLWQ9pjp3FaGcPjfWjsXINk+gZZBG0CznxRo1gHkKbL3Dz0EiKyQhKW4hpYhTIHTX0tm9UVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB3987
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_021140_854663_6D73ECF6 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

There is no need to initialize flags as 0.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-divider-gate.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/imx/clk-divider-gate.c b/drivers/clk/imx/clk-divider-gate.c
index 214e18eb2b22..4145594af53b 100644
--- a/drivers/clk/imx/clk-divider-gate.c
+++ b/drivers/clk/imx/clk-divider-gate.c
@@ -43,7 +43,7 @@ static unsigned long clk_divider_gate_recalc_rate(struct clk_hw *hw,
 {
 	struct clk_divider_gate *div_gate = to_clk_divider_gate(hw);
 	struct clk_divider *div = to_clk_divider(hw);
-	unsigned long flags = 0;
+	unsigned long flags;
 	unsigned int val;
 
 	spin_lock_irqsave(div->lock, flags);
@@ -75,7 +75,7 @@ static int clk_divider_gate_set_rate(struct clk_hw *hw, unsigned long rate,
 {
 	struct clk_divider_gate *div_gate = to_clk_divider_gate(hw);
 	struct clk_divider *div = to_clk_divider(hw);
-	unsigned long flags = 0;
+	unsigned long flags;
 	int value;
 	u32 val;
 
@@ -104,7 +104,7 @@ static int clk_divider_enable(struct clk_hw *hw)
 {
 	struct clk_divider_gate *div_gate = to_clk_divider_gate(hw);
 	struct clk_divider *div = to_clk_divider(hw);
-	unsigned long flags = 0;
+	unsigned long flags;
 	u32 val;
 
 	if (!div_gate->cached_val) {
@@ -127,7 +127,7 @@ static void clk_divider_disable(struct clk_hw *hw)
 {
 	struct clk_divider_gate *div_gate = to_clk_divider_gate(hw);
 	struct clk_divider *div = to_clk_divider(hw);
-	unsigned long flags = 0;
+	unsigned long flags;
 	u32 val;
 
 	spin_lock_irqsave(div->lock, flags);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
