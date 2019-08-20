Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2FB95434
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 04:18:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nPkHZAIRC4/O+0ZqPuMYj58eRT36rqx78aXgSTXCPcE=; b=DLKxaqJ6rHut3I
	V4PA2b7QI2wt0drleVVI6nE77txHR0bUw57eZAwGC5MkbtI6KEkJp6NJ1aQTAjNqcuzyQRnLcO6bR
	BEYTPhn6UVmKhgArSXo5u9OJyWPOGXdyh0I/4pJh/cDbvXhYtGheOjcZwBBmMhLs8GlL+gCRsAMXn
	64Lq3lbWqP6pbhShbFp2kyLmkdOySfv2UuYfDPZGI9uH/LMXmEzBmyYILRkso9owCIjQtPhzq+cAf
	XxZFTeLtVYC6b0P6RyImEd6KVcFHVRA9oKu9Wkl17FQzF43k+wEDwXMEtefENYz9hiZ5Dg3ldEFvW
	2Ji217MJTk3XIN4vYO/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hztim-0004gC-76; Tue, 20 Aug 2019 02:18:04 +0000
Received: from mail-eopbgr20081.outbound.protection.outlook.com ([40.107.2.81]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hztiY-0004fr-IW
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 02:17:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DxlsiBHJQSEO/Lj5DeygXacGo2MnEhWqvX2MB6Rgt5S/faMFznruT1VSFCJwpJE6ZaIPr5pRFhuvifN4xNq962B0angBT1fqtWzuo6HOCvLiCEhxuFZ6UGIoJxIyl8lHA2PSlrP0JdUpvYe0yHEmTgjs2WAmFATxHAm6cqTL/AQ35XY3nGFc/X3XoTkVT2CuFr66w5olzLeUWRKpEkAo0FqkLZQ2zMxVX8fP1ITl04tjrd/JXCGiyOKV+LHoVIkIe27+hwf7IjFuqtVqaRsZ7JPTgE3miSJzVpIfcdS5NaaLkb2aClodc5fInOepAGz+vkds1uswvZKzTYTEr5p3OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ydOCh/K2z4zEONaG0ij2fsMOXs9+gCmBapYLNzCykV0=;
 b=bqNc0kCF0FcVuCYMW/YhgWvLg8jyVAMIBXDSt3A7k4p7hgpdjVoqR67QYXDxht/rpkWU72rLNbjPoHb1hfczhR3gFMJMduHyvNfTdUcixXJtd2IDdKWs9Rrc+fCeU/0WkhWQunwQRwKzKH9OJ5OqAA2iIfJ0qtFK/Pe3l/x5HYpk6AmxxBNOPSoc3mDLh6SO7OmynQnyYAe/BTN3/xydND1sc+pe5b4Z3q4Y3wAXhvLBujiFOIyusOMm4uZyrlTmsIshOPzRScRZ8f1XjrUnQluV7w8aegdEh1mtcINDR/p+8xSbgZLJf5g7j+87GvQdynAp+gG3uVkButzDdQHQmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ydOCh/K2z4zEONaG0ij2fsMOXs9+gCmBapYLNzCykV0=;
 b=hoU0FQVkxu+pofMkPqL9HQ7lhzyghz7uV304KLH1s1KTjjEM1TX263/3s05i7lfcFReUcTPTui3UZC5519T7NNnwts++oZo9atDjwNc52SSyEmyeJgVkg4yPIXz2uO+xHkaE4LSCbFWGgd9/80sG4/aBCVOVxXVMRwawS2ZQNtM=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB3988.eurprd04.prod.outlook.com (52.134.90.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Tue, 20 Aug 2019 02:17:46 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2178.018; Tue, 20 Aug 2019
 02:17:46 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: [PATCH] clk: imx: pll14xx: avoid glitch when set rate
Thread-Topic: [PATCH] clk: imx: pll14xx: avoid glitch when set rate
Thread-Index: AQHVVv10E+OF2Euht0ilryFWSAJw8w==
Date: Tue, 20 Aug 2019 02:17:46 +0000
Message-ID: <1566266337-21597-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0401CA0023.apcprd04.prod.outlook.com
 (2603:1096:202:2::33) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c5bced0e-c6c1-44bb-5c18-08d725149702
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB3988; 
x-ms-traffictypediagnostic: AM0PR04MB3988:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB39886ACF79389A92288D2BE288AB0@AM0PR04MB3988.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(136003)(396003)(376002)(346002)(199004)(189003)(478600001)(52116002)(4326008)(36756003)(86362001)(2201001)(5660300002)(6116002)(66066001)(14444005)(7736002)(256004)(305945005)(14454004)(53936002)(386003)(71200400001)(71190400001)(64756008)(6512007)(8936002)(81166006)(2906002)(81156014)(3846002)(316002)(6486002)(54906003)(6436002)(110136005)(102836004)(6506007)(186003)(99286004)(26005)(476003)(2616005)(44832011)(486006)(66476007)(25786009)(66446008)(50226002)(66556008)(66946007)(8676002)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB3988;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UOk8jyx8po7iWgMHcsEHV+YEH+daFBzm8iz0dgsQk6vT600TTqqdmZ2wF+NrBZi48Om9qstReb1Ks77Z5H02Kjxy73RJ8UJnfTp0FgMYnxfXHT4VMEgP1B/C+7Ix1pdHG3wK2EQDZDb7xel5wkfONUHyLhJl+fS4MLmwnKHryrYblqLUBNzu38cO4k7mSX+E3MgFQDKvTENZ2m2Wxupg1+n9oSmFCO+MLykvieZro0vcziuhxW15z5lJA9Y8MeKZor6cFMjDxQwk/uC8kqoO8lwtHPDyoVgMqPEH6d6WS89Bwte8Ss/wBjaukzHAuYZDboF5dDc61P5aRq6yW9oT46sZW8Xb0DUBN0Bc4CZgeTZO6bCNB7cm+UIOxDvVlDbp5CZFMABIPOxi7ivdSXuiC2G1TBD6/OUnGY+ltRUBNrs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c5bced0e-c6c1-44bb-5c18-08d725149702
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 02:17:46.1031 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C4ntTmLDc33kD77HRyloBOMV2gLexn1AxB/B9JDaN5ASW2dW9bP0nCfx5oXme3YPeiKtf/GLLHOElX2fCZSKrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB3988
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_191750_617168_31EF9F21 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.81 listed in list.dnswl.org]
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
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

According to PLL1443XA and PLL1416X spec,
"When BYPASS is 0 and RESETB is changed from 0 to 1, FOUT starts to
output unstable clock until lock time passes. PLL1416X/PLL1443XA may
generate a glitch at FOUT."

So set BYPASS when RESETB is changed from 0 to 1 to avoid glitch.
In the end of set rate, BYPASS will be cleared.

Fixes: 8646d4dcc7fb ("clk: imx: Add PLLs driver for imx8mm soc")
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-pll14xx.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index b7213023b238..bd072556bc44 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -191,6 +191,10 @@ static int clk_pll1416x_set_rate(struct clk_hw *hw, unsigned long drate,
 	tmp &= ~RST_MASK;
 	writel_relaxed(tmp, pll->base);
 
+	/* Enable BYPASS */
+	tmp |= BYPASS_MASK;
+	writel(tmp, pll->base);
+
 	div_val = (rate->mdiv << MDIV_SHIFT) | (rate->pdiv << PDIV_SHIFT) |
 		(rate->sdiv << SDIV_SHIFT);
 	writel_relaxed(div_val, pll->base + 0x4);
@@ -250,6 +254,10 @@ static int clk_pll1443x_set_rate(struct clk_hw *hw, unsigned long drate,
 	tmp &= ~RST_MASK;
 	writel_relaxed(tmp, pll->base);
 
+	/* Enable BYPASS */
+	tmp |= BYPASS_MASK;
+	writel_relaxed(tmp, pll->base);
+
 	div_val = (rate->mdiv << MDIV_SHIFT) | (rate->pdiv << PDIV_SHIFT) |
 		(rate->sdiv << SDIV_SHIFT);
 	writel_relaxed(div_val, pll->base + 0x4);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
