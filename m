Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AEBE2828
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 04:31:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rrNlNHUJQ+VUPeP6RMcMSGyssIUumhJyXcklQDcYrxo=; b=t/r8sZyaWDSr33
	p3NqlyDrCz2Sq6/+3yFleM4Z/Kq6yIddNTE7TZAL+hNyxuIKOZOvRZhPPu+wGTKJ1wan926N/89LA
	O9iUgS+kHKq/tGY+PAiRkMKWUoVn0AjmMvd7KObeuDEWRHdeVbgkxpMQ8K2gCpttvoH56yeFNnk+I
	6yxNJUAb6y8yBIVxXYEmzPtA2865/Z9ZIrCgj3lI0j93UX6IoEUPUEUFD7TZy58nUgeNoLb1VPnTC
	4wWENAUHVa0amjRe8nFiSRAqkUGd83Hj/iyvQfAmSfF/qBcn0CwRNf3bwFSdmbbopdYx0MJlA0ok2
	tNda8KJUoSNfh0b/o9/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNStz-0007n8-Ei; Thu, 24 Oct 2019 02:31:03 +0000
Received: from mail-eopbgr20054.outbound.protection.outlook.com ([40.107.2.54]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNSti-0007mj-0M
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 02:30:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NxcWD94SnfCYVf/CgR26cioo8LjmXfS/hRH7+OfxegMSkDmOPJbDY5Ol13i/EPASE2XeFJGzjGMAlqSWt54f0tlyr5K2Swos+sihnkHrZRWz9Ojs8PDLpVwSPc6JXt4OWazGB8FUiL2JUCwyuydIJzx2xo26xEvG51Oi7mVQT1WmcSfEthb3bhwcfS1cIDTTVOKb8LqecFv1driBPiOxwAREkj8fmlhsGjoCQAU3xel4/0P4kHPmuyX7XBPxZG+d8lFZ68/j1ed1Zz8wpx2SDA+h6nbyHAmgfEwqhLCDV99aHIVjRyKk4JdDDekfAJjZeQqv5vc3vKaWJ4TTXZ+DPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MpUR/TJpA8vH0BJaKgkubRVaTuVale/Vr419kvfeZ9c=;
 b=DTvq6ZdTgIGiotxHNfLqsUad5nmbYHu+nVPkhw/W6D1d/2RiMYK70TXwhPfe8XXbLanlaMREo4afdSomy6EYm33bGhMmucg9XVcbjzJ7UENHDCJ1CpmAPDM3bmQvWdz7OPlkgKZ97D1y7R4iqW7oaWh9l7dlG1LZAEuasN46biDgSc0HJhiYb9BB5idIzNTGOPnYCQ0yZgba9uIlu/4SZL+tQyf81bh16Vf+3x5oXMlyJ03KGWqtORfLzrrn5XJ7l/4QP+P2PuJcHVr7mcT/uuoHVUTxFsU8p2lR8Oqj4FYPftWlOJGYMwFUK+yQIWd06bz4utmoQwMzWQE091eR+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MpUR/TJpA8vH0BJaKgkubRVaTuVale/Vr419kvfeZ9c=;
 b=HW+p14ZXu+JFbd1kFhnBOsz2pqY08OsdWS9+ziPVE4ShPC+Q3M5vzX98AS+3mL4j1ghOfTEncXpQle6Slagq4hR6M4LT3P6qF76H3TxbsszrgzpTACpJfY42wmr1UvDL+FIdv0UKhCMZGkyqdpo1Ok0R2YIh3P2h8ez3YIp11HY=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5315.eurprd04.prod.outlook.com (20.176.215.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Thu, 24 Oct 2019 02:30:41 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2347.030; Thu, 24 Oct 2019
 02:30:41 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: [PATCH 0/3] clk: imx: imx6x: use imx_obtain_fixed_clk_hw
Thread-Topic: [PATCH 0/3] clk: imx: imx6x: use imx_obtain_fixed_clk_hw
Thread-Index: AQHVihMHWm1jS7cCrE+ghlbtE9L0Lw==
Date: Thu, 24 Oct 2019 02:30:41 +0000
Message-ID: <1571884049-29263-1-git-send-email-peng.fan@nxp.com>
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
x-ms-office365-filtering-correlation-id: d5865d33-ab57-4681-a5e6-08d7582a2a0d
x-ms-traffictypediagnostic: AM0PR04MB5315:|AM0PR04MB5315:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5315DA74AF9E822EDC134FA6886A0@AM0PR04MB5315.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 0200DDA8BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(396003)(39860400002)(376002)(199004)(189003)(256004)(99286004)(6512007)(52116002)(3846002)(4326008)(476003)(8936002)(2906002)(5660300002)(6436002)(50226002)(6116002)(6506007)(486006)(7736002)(71190400001)(71200400001)(386003)(305945005)(4744005)(86362001)(81166006)(81156014)(2201001)(8676002)(66066001)(110136005)(26005)(6486002)(54906003)(2616005)(102836004)(478600001)(316002)(66446008)(2501003)(66556008)(66476007)(64756008)(44832011)(186003)(66946007)(25786009)(36756003)(14454004)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5315;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tEhVrAMk2YTDH32Hqq8YV5zv47S/fMiofaIa/EiqoJ84qBJ0HTG4NE6N+Fn5F2LD5k71YA8MdAtgpSW+R3I7mxLUutM+XZuSAJyrBslbtpH3XlFcnaMYV5jRvAPv6gCS2KozOkx/k6xQB703aSdlZ50+rVXY8vb21IgfzBFD3avnBPlnbHKoEEEKy0zJT9Gn//BqeNaBsByqbz8Ou8X977EiTGVFyGScIRQlUC/t5acamz0LyqAbgGZXpkmfAPQ7mJOlwb/84hjKt80GcNmcHpaj/ArAcuIpXuku26lQdBu8JltIx4+uhCITsx8IJLfsurYdE80w06ZI4h7R+AmI3X2m5c9Sk5as760vamaPYi7zGCMmV1pHDmZFc82rHYQOYiU2jkry/YkUbP+20CsQO7FrgtjN47DnbC9hg/KhzWiOoMUukfNBTn+655l07Yyg
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5865d33-ab57-4681-a5e6-08d7582a2a0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2019 02:30:41.7470 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ye0ujWp2WZJNmsRyna+wL+xBppzx+JOFFNXnnDisAF4grsPNmJSat3V48C8WbE1VofezWO4hVReM0Sd/BJNTgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5315
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_193046_052166_5DE342D0 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.54 listed in list.dnswl.org]
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

This is to use imx_obtain_fixed_clk_hw to replace
__clk_get_hw(of_clk_get_by_name(node, "name")) to simplify code.

Peng Fan (3):
  clk: imx: imx6sll: use imx_obtain_fixed_clk_hw to simplify code
  clk: imx: imx6sx: use imx_obtain_fixed_clk_hw to simplify code
  clk: imx: imx6ul: use imx_obtain_fixed_clk_hw to simplify code

 drivers/clk/imx/clk-imx6sll.c |  8 ++++----
 drivers/clk/imx/clk-imx6sx.c  | 12 ++++++------
 drivers/clk/imx/clk-imx6ul.c  |  8 ++++----
 3 files changed, 14 insertions(+), 14 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
