Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F4DEDC2E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 11:11:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uAicUFcZHoypnV4+zW0XXImqkgDTOZbQ23pyKgmgToQ=; b=TDcgDlp8aYtO9M
	/j9IZ8r11zqNSi4WVpg8OfP/HDOT/DZ0fLQNQZEi9Bod5HdmuTV1ZgP6k2Pt9JyThwT2ZeB45mPrF
	pHlnrnaOKfys4l6umbikQZ1XwDkqFwd4tvBi4vz+hRW5gLnpGsTp9ToHUMpYwG0kFlyDfi4f9AA9C
	UDaBIQMUDqw/EBh8YHy2lkanCdeIZolMBEQgJvFVlXUA2AlvzHS4XD+bNiC8uU3ADuBiPgegZTtoJ
	V6UGBu5ompviH/zJhEoskDTC0NUIxrBoQBuwm5PD1qW6lbLLuc77o84LXmJvkHdyPM9QPZ+gZmLsU
	o6Sd9mgr0RCIqAsJwsIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRZKr-0004AW-8Q; Mon, 04 Nov 2019 10:11:45 +0000
Received: from mail-db5eur03on060c.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::60c]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRZKj-00049b-8p
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 10:11:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mlYGHsxjlZNuaTJrUaL/6LU5EwJflHPKG/56OwlLHqFWL0Gw8liSTJyMPEx3HvDrVrr/MWVAGDlT070rQSqxPn0Pm95YCb+7zC3bfkhspSBl/j+nkeZa2S94iUs4fht1sgPYmaPXffDtXD6BFHkrszmstCYWHAIk+M0J58iqNWjTBURdVhaeHX6APbywXeTOlWnPQLW+vSj02DAB6/frbGOgkRdyId8ivGUajQTMR9l3RnoApgHqQab1aLvCn0AG1tBDVkGzT2T3owqg7pe8AddgiR5qf7LxqSE+vnMvaGpOuKHSQygP5Rgv/KEIqu3hutnTolfEX21AlEX6juO66Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lXNZ4gtJEZXkyLS5eARYxheAL8v3cyxs7r5hvQT8Sko=;
 b=E9ouPnI41nesQ0p4iD/f8ySJovwQxRt4cvMWvNRGlcJ8Sz4mylElXhz4W1VB2ODI6pfUt4W9TIgJ88fultmpP9aIbW+ioqYcuk+5i88p/AkZcE0WEBYmfm77Uannd8Q+eqzz0Q5DvUuecUCfM45PO44W2GfFSLVSwgqmOvIUpnihD8O1wNQEBbJbPLiNLHHwuRU5ogiTM+cL7N2vBxAQIt9VCZFrxmqw4NebaJMlTWWK/KKDX9mUBp9O1k1XndLC/x0invD/WLrQG5lUhZn983BbtBNoq50fLTSIYWqhmdNePZr3P1eQy4NGAsS1pSrHGImpXZ6DQXkzaJzEqpty9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lXNZ4gtJEZXkyLS5eARYxheAL8v3cyxs7r5hvQT8Sko=;
 b=B0eLz3peHIeD3qc9qp0NSBqcr4KAuSML26LR8YkkmsLomtbdLi6iXbv1ngyL4Zl7EVFL8plrWrXXc3WLNC5q88DbniczpRsqhO3HM5Xf0/DdnJ51XmjDpfs/AiSW47vj8knDEo6DGwkOLXkVpZtvL/zty0fZIbIC7PneQHa7b8A=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6100.eurprd04.prod.outlook.com (20.179.33.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Mon, 4 Nov 2019 10:11:33 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2408.024; Mon, 4 Nov 2019
 10:11:33 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH 1/2] clk: imx: clk-divider-gate: typo fix
Thread-Topic: [PATCH 1/2] clk: imx: clk-divider-gate: typo fix
Thread-Index: AQHVkvg7LUdk4W5CkUy0CpJNIA6DVQ==
Date: Mon, 4 Nov 2019 10:11:33 +0000
Message-ID: <1572862200-29923-1-git-send-email-peng.fan@nxp.com>
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
x-ms-office365-filtering-correlation-id: 5bbe008d-fd76-487e-4fc5-08d7610f5e0b
x-ms-traffictypediagnostic: AM0PR04MB6100:|AM0PR04MB6100:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB61005CABEB0F77B4C716AE96887F0@AM0PR04MB6100.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 0211965D06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(39860400002)(396003)(346002)(366004)(199004)(189003)(256004)(86362001)(4326008)(110136005)(54906003)(486006)(14444005)(2201001)(6436002)(6486002)(2906002)(316002)(8676002)(26005)(186003)(6116002)(3846002)(64756008)(66476007)(66556008)(66446008)(66066001)(66946007)(8936002)(50226002)(25786009)(71190400001)(476003)(5660300002)(478600001)(81166006)(52116002)(81156014)(2616005)(44832011)(14454004)(102836004)(6512007)(99286004)(6506007)(386003)(36756003)(305945005)(7736002)(71200400001)(2501003)(6636002)(4744005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6100;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gdydCnzWDXWWmSfIzlZiXfYhyrjpienySeAkiqkd8ka/4WaxLqT2ZuzuKeJeuCBpewoWtHQn9PQzgkjxVCgI0Mt8uAoVnctrZ8cqBV2qoGpki83WI2tfXH+fe/lTSIJFlUwvpgAzjIFJdpk7BGcLE+AgyBKIq+XFoGSPDcuwpKztui/+HuE36NuA8sakzHTNVgLPgSAUekSK8dtJDy1k34sFyl7R3lN+0qgdfWtwPBvMd+4iCWztsbNHLbiHEH3czeNGQCVs3X/skAzt4tDe1QSOhRsQd2w1wN8qOPGaWGw8nBSeZ/xAE3GKntLy2ZDdcPu+pUsTa3baVzK7gjpWgXW+4D/laW1iBcqRAjnbjL9jLOX7MaW8q2W3EcBzKFAN1ZRLLPDk7g0YyZjAB0zixcZqCfl64UBcYkN+nuS/pRY2i2Ydhjo3DH/hItlWZQn+
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bbe008d-fd76-487e-4fc5-08d7610f5e0b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2019 10:11:33.0555 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZvEJLW3bn/SIE+R40QjHPEJ4f/b5m/dfeSh1YSv/U86Uh7MiSHNSjogz4eWgJCIIPEjWtbTT/30IdSllnkhUGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_021137_396117_B7BFCFC4 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:60c listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

resue->reuse

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-divider-gate.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-divider-gate.c b/drivers/clk/imx/clk-divider-gate.c
index 2a8352a316c7..214e18eb2b22 100644
--- a/drivers/clk/imx/clk-divider-gate.c
+++ b/drivers/clk/imx/clk-divider-gate.c
@@ -167,7 +167,7 @@ static const struct clk_ops clk_divider_gate_ops = {
 };
 
 /*
- * NOTE: In order to resue the most code from the common divider,
+ * NOTE: In order to reuse the most code from the common divider,
  * we also design our divider following the way that provids an extra
  * clk_divider_flags, however it's fixed to CLK_DIVIDER_ONE_BASED by
  * default as our HW is. Besides that it supports only CLK_DIVIDER_READ_ONLY
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
