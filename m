Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B681063A2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 07:12:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lTPFG2nv+raRXxF5w36mXzVBzo9wyvtRgZfV/qB+DfM=; b=lKidejq6Ya3Crg
	8NOGOp8kkY0bd7nOW1E5yIEkRy/IzZehVUSHaiFSjTXmuXBcvW3NZUkTbNtGb6ah1iGlbqsHESfre
	oWkXTpySK+wGm28XQRswwFVNYer2r832Kf3zJelMr6xq7VzYTzXPzJd2i7HGgA3Z9g9aDHb4zHLWd
	kR/i2NSLazA+YmOxdLhAPhnOHgcesVzGMcKup3JtSm+OJYqhphAnC9Wpo4eQgfec0QZLNiQSXtBjQ
	SjZDVv7sXdyeePWmFqVDjVGgDSR2PBr6SnBj4qJCvRahD+/ktnKuhu1CGMAII4CYdrqAyEbz7CzZY
	hnKvs84GNm8pkVfOYWQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY2Ag-0007nU-P4; Fri, 22 Nov 2019 06:11:58 +0000
Received: from mail-db5eur03on0600.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::600]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY2AV-0007md-7u
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 06:11:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=npZzroqu3fkYZS/TtW202OrhdR63KqgHdhH6qSaebkibP55jCzDq85casZztG2tSAz8FMuV+R+039iwxyzsCphi5mSsDVoghaJT6RYp9bB3NWndAQlEfsEf0QMlldXiDibh+JIJNsyn1ElGvESX27eQWFCk9sMn3SBSOVFNDBjPYfnbrVgZXexmceMPnJYMXx+EnMYHr6N+aDbx+IdMXG+TB1qOCDwazPpubthxXW/beoD42yJ7jqIfMJjA+/HhM1yKfDBful8KXMrQyt7S7m2FReFahFgcZlHx1kwOM+EoYQDKc6arJegfFfz/wf5/VpMX491R433LfY+COwLAj8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2W6Ixk6pIl6FrbjBwtxE0Y3Z5gzLc+BCXlLgoMKIhNk=;
 b=PKAHjwZAmHFVNgcndln66cLtNK7go9rkMf9/A+OIQN4rf2f2ETk/UOQSW9d0BF2D8BbSLBzCRup4J8vGsMQPNIY6IG/t1r4Kg26lHLLBVtO3hJ7PqS8+Fg/lwSY3e3CSpIfpHjNSHfVxtp2wNOGSRaAqcD25WmYaQqkmbdZ2zY6p9uBQpf3Ou2joa/OtH46caTA84AEixkmhUWmCi9vHguHsiOQZOQGfw8k9xlbq54GyPf9eLZkVEdo0HmCUMm4zu58V4GnXoIJNriCHAqPWiVs0RYKfN/YT31rkUhr4ugkPId5ANYfO5ccWXFGDUWuy75Ab5aoPZouOEubyE4xwrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2W6Ixk6pIl6FrbjBwtxE0Y3Z5gzLc+BCXlLgoMKIhNk=;
 b=Wt/aytNGFTQvLMCUhMThBRqZyEQ86qoj5u5GA8kb6W9egW7SocR5/LeXkcqjO7vwR9ye/dZxSVdWJhSQiDo6BoTRPhFs3Jd4/QH/iF55lWMsyFp2tvC52hHMRjSPlu8xeHWFeuKTMqXSU834h/5eiN68GhpZu6yFHRs0v0PwaUE=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB4027.eurprd04.prod.outlook.com (52.135.128.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.19; Fri, 22 Nov 2019 06:11:43 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4182:4692:ffbd:43a0]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4182:4692:ffbd:43a0%6]) with mapi id 15.20.2474.021; Fri, 22 Nov 2019
 06:11:43 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH] clk: imx: clk-imx7ulp: Add missing sentinel of ulp_div_table
Thread-Topic: [PATCH] clk: imx: clk-imx7ulp: Add missing sentinel of
 ulp_div_table
Thread-Index: AQHVoPu2X6fv8TWPzU2zaNGhXWqkhA==
Date: Fri, 22 Nov 2019 06:11:42 +0000
Message-ID: <1574402986-11117-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0067.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::31) To DB7PR04MB4490.eurprd04.prod.outlook.com
 (2603:10a6:5:36::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8b4031c6-3cc2-470d-8b33-08d76f12d854
x-ms-traffictypediagnostic: DB7PR04MB4027:|DB7PR04MB4027:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4027D528D5CC70D1D597486688490@DB7PR04MB4027.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:873;
x-forefront-prvs: 02296943FF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(39860400002)(376002)(396003)(136003)(199004)(189003)(44832011)(2616005)(99286004)(14454004)(2501003)(508600001)(386003)(6506007)(102836004)(4326008)(26005)(186003)(2906002)(6116002)(3846002)(50226002)(5660300002)(8936002)(4744005)(316002)(52116002)(81156014)(81166006)(8676002)(54906003)(110136005)(256004)(14444005)(6436002)(66066001)(6636002)(36756003)(2201001)(6486002)(305945005)(86362001)(6512007)(66946007)(66476007)(66556008)(64756008)(66446008)(71200400001)(7736002)(71190400001)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4027;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UM5s49S3wsGfZ+jzxZ50FQrxJsCmA8rUl4RFXbW6NAPhQpnJmbILM15wr7T6BJEVfyTShOr/gh/f6/9/HyGK1QZURRy5lrnPgCHFb4CYzD4CoErvSwYy6Qdk/ekdYFItQkD4WtHKA73Us5enNhEt5m6NTCuthjd/Cpbtyu5+kv7OMRcoM0i8eRR8/Gvz6W6EChdAQeDISzaxthq6D7W5xH5xhB/S2VecwnKW7UoghuvI3P6yfgHexihdav7nBy2GiEudJcqa9TUy1AnBXjLG8r3o2JtolzY5gWUK02E5B2dKbFGCUbDLCgbwKBwWgXOH60WpO46o4iEbMWO4M5kxikAqcR4J4EAmHLxupQg+52lo8TP4ie7oIGHj7wmwP9YPjrk0awq9t9MSQxUbJT1E0+uRdsKCKeM0RISLM0KdC3ilSbe/2LFge9XE7fMV2ovI
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b4031c6-3cc2-470d-8b33-08d76f12d854
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2019 06:11:43.0595 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gMdDCiDmJFmOASj8Q9Qq9OnXPvAOCfb0xNJJVRuuRu29rNZkTjT3GO+QFhecQDe90sV+M3gd/mg4bSHSbp8WXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_221147_286008_BC97A511 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:600 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FORGED_SPF_HELO        No description available.
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

There should be a sentinel of ulp_div_table, otherwise _get_table_div
may access data out of the array.

Fixes: b1260067ac3d ("clk: imx: add imx7ulp clk driver")
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx7ulp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
index 3fdf3d494f0a..281191b55b3a 100644
--- a/drivers/clk/imx/clk-imx7ulp.c
+++ b/drivers/clk/imx/clk-imx7ulp.c
@@ -40,6 +40,7 @@ static const struct clk_div_table ulp_div_table[] = {
 	{ .val = 5, .div = 16, },
 	{ .val = 6, .div = 32, },
 	{ .val = 7, .div = 64, },
+	{ /* sentinel */ },
 };
 
 static const int pcc2_uart_clk_ids[] __initconst = {
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
