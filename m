Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F18FBE62
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 04:38:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8yrB8vol/GYgDuLL8snRHKewU/RTiUrbszARsJO/g14=; b=aXw9SOSHFYOIep
	W9+TEXQwnY3Xi7s00LaR6IQSYlLJ353554tkn9XE/9P8mPgd0p7/Qms+zqaqmLSlDRlZ3ujX7voZD
	66i4/NT/JZ8SN5rVKR5ii4BSJmFxK28tGCAWsgEMzSLr93pl8ZsO5f0qlcbBp3dO1t9QWW/suv96J
	HAiSgPYBXR7fLFB8ud3W7WwFEmjxsehhByFjVASOakqsTV4KJr0dRlfUHBK5bzIYN1z/1WaUlXVrJ
	7ZHrgor5E8FxtKXv/Jx9soTE8auttbHq5wjCWOa+Ou4YF5vsbe6pcBp8+xYc9kcFhX0FFqunAeuQS
	FwwqkzuijHBp9g6lRIaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV5y0-0007Ug-3M; Thu, 14 Nov 2019 03:38:44 +0000
Received: from mail-eopbgr20046.outbound.protection.outlook.com ([40.107.2.46]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV5xX-0007O0-62
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 03:38:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f8ikBk8OgwDIzWaTNBUPmqJ7Mwe0Cnvve/9zGJ8JETJ6tWfNSlRf88iI98OvdLUMr5QJyMF3f63GqiSpZkp6jdx5LYOtUBHXHhOwqvpNZDfjY7eWFGj9Pv02PtvR2UQKD3I/DFLz8PZm70wNiZxsZNDGRnjfLSlo7DttUMsAFn9aYfMvVj6QaH9o3hXBFqhkUaECPcSmUNHOeUYNFvQgkcuuLW5oTIkyGDnF5ruaiNbyxk78jSq6E3ov4n726aTBdYzXVnw0B2deRz7In/mn0B6MY6Ey/rla/ZBBKPLcDQYBzbzGxo56s0saquEMg0DAlOCVsunRukgmbcyx2hrMHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A2EkBPnFwsWwCoy3O91Sga15UCfRLu1FZh+B5Qejowk=;
 b=GETkZtH5maXRZ+ZDZxKWQF20a3N7Zwxo6SRbP+s7jVBWCfI9U9AjphfxWGJVxZRVUorb1NjrIECeGDCXPyQIj+bU8P+RavrkUsZRh1zcxbrnVYxR1z+WV4Z6ZyKg1e4w2lBEf6EtKRjT/sCQlVoWN1gNrG/TSv9+cNDKc3dS04lrU9MrmvB6+7GryXfiFGcspiJ8tZnFbOs5JXh7g3Hh0mvtWDYS6OmvwPvPykYKfCgErzi21p1jj+uNst+rLWO+CbtzexHJ9iDC/OmD/e4sJkoTabNDDReuIZRjcuO+mfeylt1WKjg40WvQ2BkG066gm/bzVKI3CB64JvX6R7lebQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A2EkBPnFwsWwCoy3O91Sga15UCfRLu1FZh+B5Qejowk=;
 b=OAAK8rw+dSbSVQB2j79HQQI7CtaiBFIWqcMGbNhG5Cg2O3kT2EPO00+RBFt5UGgIjVdu0u/0x3S3XA6iqTZd5d4iSn2d6vaJH5Jc2TJ3XK6pMHfKvrdtnkfXZWeOjd05ECJJqLAQ7AZjjhL+tKKJlexHIz+oYlGeKYgcxG0CYCk=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4994.eurprd04.prod.outlook.com (20.176.215.215) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.26; Thu, 14 Nov 2019 03:38:12 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2451.024; Thu, 14 Nov 2019
 03:38:12 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH V2 1/4] clk: imx: pll14xx: use writel_relaxed
Thread-Topic: [PATCH V2 1/4] clk: imx: pll14xx: use writel_relaxed
Thread-Index: AQHVmpzwa1AKzGFdyU6W3OlQ058WhQ==
Date: Thu, 14 Nov 2019 03:38:12 +0000
Message-ID: <1573702559-2744-2-git-send-email-peng.fan@nxp.com>
References: <1573702559-2744-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1573702559-2744-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0033.apcprd01.prod.exchangelabs.com
 (2603:1096:203:3e::21) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5261280d-39e0-4170-7741-08d768b41333
x-ms-traffictypediagnostic: AM0PR04MB4994:|AM0PR04MB4994:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB49946CBD6A3A506BFC9F877C88710@AM0PR04MB4994.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 02213C82F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(346002)(376002)(39860400002)(136003)(199004)(189003)(66066001)(305945005)(14454004)(36756003)(71200400001)(71190400001)(4744005)(7736002)(2501003)(99286004)(4326008)(486006)(81156014)(81166006)(25786009)(86362001)(44832011)(2616005)(476003)(50226002)(446003)(11346002)(8676002)(8936002)(52116002)(76176011)(186003)(478600001)(6506007)(386003)(6486002)(6512007)(6436002)(2201001)(102836004)(26005)(316002)(5660300002)(54906003)(110136005)(256004)(14444005)(3846002)(6116002)(66556008)(6636002)(66446008)(66946007)(64756008)(66476007)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4994;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MGxCmRXuCb3qzfRPvT9XywyUAoCqFIibUuoSp7uxQ/NLq39PvaNrtkWJB1tDiUAHRj4x6/WJQDkfzeiWcmoxUZLNICjUy0YKlE0AIN6x2PcqX3OoksC7EEJ2vmOx4OWj1+YGmLOa296Hs++nAqpNLkNk+UtE1TfdEbpqdzRgGFMkqmETbYAlH52ycQcm5RoieKjTZOOUjMNz0Ndzpkh/7T5jp3krUCCKlZbg59NP89f55B5zZmxrwzCdPmFbQp9xGWrB4sgc4QCQa2QwIN4EWXQc7I01QgXclsboLdjurkYcbmMBtxxFOyWyjcyeoEAc/FAJB6gkLYJhjV6hNJliqv28P1nq74PvymQAByH7sJcJFA9CZfhpHq4bBlHEsNPcbE2CYx47x2GF+8A8siG7x7TL3XMBN8p/5U62go8Cdn6KJYZ8NEg2hysGMESRx9NA
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5261280d-39e0-4170-7741-08d768b41333
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2019 03:38:12.5734 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aug73e5oa+2yFhkQBDj6vi54aYLE2Ctp+sau1vkPE+o6irnQhgiYuM5dgJQ2kNByclcNDlZLLgAZjpRtMkn92Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4994
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_193815_221340_1CE79911 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.2.46 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.46 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Alice Guo <alice.guo@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

writel has a barrier, however that barrier is not needed,
because device memory mapping is nGnRE mapping and access is
in order and clk driver has spin lock or other lock to make
sure write finished.

Cc: Will Deacon <will@kernel.org>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-pll14xx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index 5778f3bfb339..5b7d41d43b3b 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -199,7 +199,7 @@ static int clk_pll1416x_set_rate(struct clk_hw *hw, unsigned long drate,
 
 	/* Enable BYPASS */
 	tmp |= BYPASS_MASK;
-	writel(tmp, pll->base);
+	writel_relaxed(tmp, pll->base);
 
 	div_val = (rate->mdiv << MDIV_SHIFT) | (rate->pdiv << PDIV_SHIFT) |
 		(rate->sdiv << SDIV_SHIFT);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
