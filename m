Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C000102602
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 15:09:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c1b+OXE6EeezLGZ3NU/S1hsI3O7/8jZf13SBPZ432R4=; b=pnUT/ZJRhDqH+N
	NUayhvR+WA7DnqSenyad8Jfc7TFsjUfCCQ4z0m01j8V99Sa2nLQbxOBoVmYTAKROH2NAYjZYAQJw7
	GG2A/hdbtMlgD1I8w+4vpNDJf70jEdzDTZuVkx8k00/qdp6yXs15wDM1W/81QGfVx/Myabjbntjbb
	D4Oe3WTGGpa7psQNyJnsjq0M4HY1pZ4LE6+IV54iIQEOiVUHFE/L/6lBBjvdSIe4gIKxPM0RiJB0q
	ZTvm7RRmCp3s3Pz1o0rklrfZfHxWWa1Q/0+iiwGuz5l9/SexqZ1Bwtn+/rAFjbOe9zmS4LvLzIkcX
	tpB4YFvqMZyK8EfAY61Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX4CN-0001bO-Cj; Tue, 19 Nov 2019 14:09:43 +0000
Received: from mail-eopbgr00089.outbound.protection.outlook.com ([40.107.0.89]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX4BX-00016H-7W
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 14:08:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N7m0NCuL4gA5i5QLoeFA5OX95nanfdirwxH/4W4CyT13VgQIT1LzRoi0CrDnQ4YvxXpiMn+7hNQxnQvUt8AatMg+dCn6P2EOCL6q+czpnifAtUNB7kUktsW9Nx+H0YpMj6sKRixwmFC/xEN7LetSpPCw+QzRn0D2L09dcUoLTIegd9SPx25+FT3yQlx63g4byNW6rLz+J+2cNLc6VaZicbnyFJXnuoUFkbTbTTlCcl4sprc41gjFns1m2Clf+MVFgfR86LWuYOoO/IcLkdHSqorQEfzh+XdCIri65qdRR96Ah7PluHsok6a55+niLN3aSYn3nlIuDw38+Hl4tXHqmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9JYrIfA3h5+FIOHmSaVT7SmIBQ6Wf796r8/L+0Hu254=;
 b=MZ5Ctb5nNCmUb22faBNcwig3y2uksuh9Kk7m+SQ+jKFSUUDurgz3EOx9+yM1vQmfcGjMWptgp+H34mRUIdMX+n9BkCFWU5XyS15pSTlMV50yJ3SZ1rWYPAhZHLX+SKiDUR4k/CkvWClvmQ+edlNwFEigTyFVsMFeBVWCjxJwH0QXBM6WgYnyEIKKSK00FRcCrXBed93z2mF8t48r7KfLJzOG50lQ0cEhTKnoPJPmyzQ4io0Hh90RffqqrIMoy4UECPfyFymsD+rVWbz1ZXDuRZUlqvdT34d9LrAB7ZK0gd/ysypV1CX9xOuhbgEGvALqKTdnvZyM9Asmjmhlb7LnzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9JYrIfA3h5+FIOHmSaVT7SmIBQ6Wf796r8/L+0Hu254=;
 b=qGMliDAutZT3vvp9gbdziQGoRVfgj8WZyDfJgn7QISHSwxuVW5D1Hhn3dk6jg3B79WN9cTQR9ZK7WjTpOiPhnI489ZzjSDZjZQ+nvmd1JzmBp2mSeORv5XIMOohXxyzxDmtCjKNcBnHxKtkTiFb1fR7t0GAYMXsvPFg0QXSzDWg=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB5428.eurprd04.prod.outlook.com (20.178.113.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Tue, 19 Nov 2019 14:08:41 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2451.029; Tue, 19 Nov 2019
 14:08:41 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Sascha Hauer <kernel@pengutronix.de>, Jacky
 Bai <ping.bai@nxp.com>
Subject: [PATCH 3/9] clk: imx: pllv2: Switch to clk_hw based API
Thread-Topic: [PATCH 3/9] clk: imx: pllv2: Switch to clk_hw based API
Thread-Index: AQHVnuLYqg230PRqb0uVoJ31y/S0MQ==
Date: Tue, 19 Nov 2019 14:08:40 +0000
Message-ID: <1574172496-12987-4-git-send-email-abel.vesa@nxp.com>
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
x-ms-office365-filtering-correlation-id: 4aabc273-36b4-4875-847f-08d76cf9fae3
x-ms-traffictypediagnostic: AM0PR04MB5428:|AM0PR04MB5428:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB54286A9ECD01247745E2FF44F64C0@AM0PR04MB5428.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
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
x-microsoft-antispam-message-info: SkY7iigHRlknYmxn3HI33iHdjei83IsN2Ka451gy4wwQ8/+tUz9dkQT+VKkEJQauaTvWESqm9lXtKgklvBu4yjvD3sIEM6peP2QD1w0eF/Rj1O+yilkunG7cks2LdEIk410XI3l1dD6V1zRAB1tpO+1Aj8qIQSZ7+7ETuiLAzsSn2yei4QoWdXCQQck/hEPNW6+kOE4XQ9TjmbeBHh79KvOLCvL8osoXdDfbyRxtqCeVB42l0LmCDSog73QR6KsGYI5FiGpUzkD1OfW0G3rD5CqMpv03ODWdccviA+QzUq9+iuFwlIjbuGx0G51aq29yxLIkcs6aV+QWAEp65xjzALwH+fq0U6l11a4RfJUW88p/GDpX/qym/QVpeOgDem22IgkVSNdIkFdNLxjJuHZQnPpJkwadigT/7iaZUHJM2q8emcBW/ElOYqnY9aCy0WHb
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4aabc273-36b4-4875-847f-08d76cf9fae3
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 14:08:41.0424 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PZKog+DO6rcvqiZ3t8zr8VwU6+ITZ64S8Nrkd6CrsRAfbgsCYndkUWl1RY0GYYdDnHKgZleTuNVZx4UoImwa5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5428
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_060851_270732_73DA9F03 
X-CRM114-Status: GOOD (  13.56  )
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

Switch the imx_clk_pllv2 register function to clk_hw based API, rename
accordingly and add a macro for clk based legacy. This allows us to
move closer to a clear split between consumer and provider clk APIs.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/clk-pllv2.c | 14 +++++++++-----
 drivers/clk/imx/clk.h       |  5 ++++-
 2 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/imx/clk-pllv2.c b/drivers/clk/imx/clk-pllv2.c
index eeba3cb..ff17f06 100644
--- a/drivers/clk/imx/clk-pllv2.c
+++ b/drivers/clk/imx/clk-pllv2.c
@@ -239,12 +239,13 @@ static const struct clk_ops clk_pllv2_ops = {
 	.set_rate = clk_pllv2_set_rate,
 };
 
-struct clk *imx_clk_pllv2(const char *name, const char *parent,
+struct clk_hw *imx_clk_hw_pllv2(const char *name, const char *parent,
 		void __iomem *base)
 {
 	struct clk_pllv2 *pll;
-	struct clk *clk;
+	struct clk_hw *hw;
 	struct clk_init_data init;
+	int ret;
 
 	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
 	if (!pll)
@@ -259,10 +260,13 @@ struct clk *imx_clk_pllv2(const char *name, const char *parent,
 	init.num_parents = 1;
 
 	pll->hw.init = &init;
+	hw = &pll->hw;
 
-	clk = clk_register(NULL, &pll->hw);
-	if (IS_ERR(clk))
+	ret = clk_hw_register(NULL, hw);
+	if (ret) {
 		kfree(pll);
+		return ERR_PTR(ret);
+	}
 
-	return clk;
+	return hw;
 }
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index af69fc1..bb5243e 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -112,13 +112,16 @@ extern struct imx_pll14xx_clk imx_1443x_pll;
 #define imx_clk_pllv1(type, name, parent, base) \
 	imx_clk_hw_pllv1(type, name, parent, base)->clk
 
+#define imx_clk_pllv2(name, parent, base) \
+	imx_clk_hw_pllv2(name, parent, base)->clk
+
 struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
 
 struct clk_hw *imx_clk_hw_pllv1(enum imx_pllv1_type type, const char *name,
 		const char *parent, void __iomem *base);
 
-struct clk *imx_clk_pllv2(const char *name, const char *parent,
+struct clk_hw *imx_clk_hw_pllv2(const char *name, const char *parent,
 		void __iomem *base);
 
 struct clk *imx_clk_frac_pll(const char *name, const char *parent_name,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
