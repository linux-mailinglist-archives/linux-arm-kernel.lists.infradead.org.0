Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07040FADE4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 11:02:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=utqXlwKA2N0f0iPjca8Yvt34p3rOBBm4sD8iLzKi3QI=; b=QnLTXx8vd6fCMj
	N8eMTrwo7um7FYLUPT6qoFKQOVNGUCenl/CC0jGDMz4QLg1AxYLMpP06wL9Y7TmRhALoAyvTqknuM
	6BRgPD9dPjVXvOqlgxfEYae+4yXhwADwZfbsMc9bSwrD83RjiPbjuMR05kpa9id6RZBgQemFc11BQ
	hgIS5z5pH2VVoHQGlpgzv5dOJpn4naC3GG1tri06/T4iNjG4flBL4WawcUEVIla2qwUPypPp+fbWd
	Yygcdpi01nwKfYsoluH9o9PPtHB6GtDrGeEy94zE4gT5CZh/W4roGO5ImnYPBPsvM+ygBZlgil9q2
	g58RQ15dI9uu1f9xRYDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUpTs-00026y-Jd; Wed, 13 Nov 2019 10:02:32 +0000
Received: from mail-eopbgr50063.outbound.protection.outlook.com ([40.107.5.63]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUpTY-0001zZ-Tn
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 10:02:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ghLBCCT1l5ynKK6LusIHOM8YBh920vjMFYPminq7HU1fyci/q2DiPMrbI8f3ljsWFSyjmfMOknNvDGPsScofAVPDWYq0Xx0AzvYtrgkoR+p1/xNBC69ESMD+HGgZ399AXiPVZ0frgSoUcL5rhdNHuUAwe7FZYMqNijPh2k86gSp25/c6+aPGLq83ZqHy1gTGAv7I2rGRzz2PtSWp21EtMvcYn9fVvJtknJHrSOFvFKCElGM3KZp86ZtP+iObwz3wz9Vs2JItt3xWPcBn7OfsRAK4Piv/XipMEBRr6j+eYLdn9G2YJyuUdIIWXOdBUUXC5PB5jrdsJjKmqCqGfLhYEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VwULUZZW2NsfXOwtKkSafTgMEJZbCA8DQu7hE4Bg/2k=;
 b=RJf0dRKi+AJdEM1ldK5uDfgL5Ew02z9U0z1j4rLu3/vWX1+xUKEhPBb+5Xg/qC+pDCqH1A8SlSzKN55L7UIeH8j6OR7ncWZU7sLQxmwEA7/xMAHl4FtwaO4sTM7jwY+/tGpXgguHkaX2nH/YlroMCKFFvLT/C5GWNg2s60sUEMSAtOD+Oi+RrdFwvvrd+ZeJZXXzVdyxwsvsbmxOBhHymqPFcG4IiFxc3HxUY5QYDLBOeMCnidX5KYg9mb+A3tSwKUPdhhi7jOfm0YqvyDcJUsdgFRVgXBLotgJ8yh9cjiSuJdhxL9IQ8ADK6PjZoruH3LOD37bz6TEvCF1ZKivn9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VwULUZZW2NsfXOwtKkSafTgMEJZbCA8DQu7hE4Bg/2k=;
 b=RZpkSSVujitAr/3Pqx31lBjLqhidwoX/bBQl4rovODxzZ80tpwpFPmJ3H3Fa6rcCAlSchITDNKyWvt2n/JH13Hjsm0uVgLnVDriNWfhEZNOfDyC52nVXooi8aEXpDoBNvdZw/8yoF/AgnrFhWCP19WaDHTVckhE+kiCu35RZqYU=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7058.eurprd04.prod.outlook.com (10.186.129.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Wed, 13 Nov 2019 10:02:09 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2451.023; Wed, 13 Nov 2019
 10:02:09 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH 2/2] clk: imx: composite-8m: use relaxed io api
Thread-Topic: [PATCH 2/2] clk: imx: composite-8m: use relaxed io api
Thread-Index: AQHVmglpFZP+G4Lm+0e0Ga/vcUI18Q==
Date: Wed, 13 Nov 2019 10:02:09 +0000
Message-ID: <1573638817-4363-2-git-send-email-peng.fan@nxp.com>
References: <1573638817-4363-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1573638817-4363-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR03CA0044.apcprd03.prod.outlook.com
 (2603:1096:202:17::14) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 44863b37-9d58-4c98-9a6b-08d768208b5f
x-ms-traffictypediagnostic: AM0PR04MB7058:|AM0PR04MB7058:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB7058C91771FE2DA05D3B51E988760@AM0PR04MB7058.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:418;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(39860400002)(346002)(396003)(366004)(189003)(199004)(66066001)(2501003)(76176011)(2616005)(71200400001)(486006)(44832011)(3846002)(11346002)(386003)(99286004)(7736002)(446003)(26005)(4326008)(102836004)(2201001)(25786009)(2906002)(71190400001)(6506007)(476003)(36756003)(305945005)(86362001)(6436002)(6116002)(66476007)(66556008)(64756008)(14454004)(478600001)(8936002)(316002)(8676002)(14444005)(81156014)(66446008)(81166006)(54906003)(5660300002)(66946007)(6486002)(110136005)(186003)(50226002)(6512007)(6636002)(52116002)(256004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7058;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S1XgwRkzRlouV8V69Gu3V6w7G+RBp3Xfb5xma6q9vXpXy7Ttdj3MQ2nH/psrNOThagn3Khq01MwiTJR1ezpu1139OndWWI9S5i1Q4aPWarugd9DxqbwMriW5EgBHf1urKfHBB+OI4nCEm6Qkw44XATt+RP4QpKkpHlFaox36UC06UYt/mFZOUNhWSqxlo3Xc9g/EhM4wAhHOr6rC9zzuHhPO3Sc7b1aUv/7avIyPDbOxvXkuCuKLCfSAnHf3XpdG77UoypBlf2i8VDCvNKiKfqXyoQu49ALQZjUDhfcJKrKSdVxSTHP6IkcvVTQJRQHA1mo5QIqbvoIjc5M6mpBQvBOg++PBmhdz0j3VD27UQxNVghzkc7aARHDgbeDu+08y0Qunem6k8A5QcLoyF1QnP7//lcKWkGnBlcx4fWjImT+FNhFCvNUduTc0EBbW876M
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44863b37-9d58-4c98-9a6b-08d768208b5f
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 10:02:09.3089 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b2/9ycAprkbjI0u5Yc06x6em55H9BgX8hdKwV0PPx+ackqJA637nBwBTwcdQtjAwB6AkgRnSwTC69OlVJl9R8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_020212_977513_FCE34355 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.63 listed in list.dnswl.org]
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
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

It is ok to use relaxed api here, no need to use stronger readl/writel

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-composite-8m.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
index 20f7c91c03d2..513dc57483d0 100644
--- a/drivers/clk/imx/clk-composite-8m.c
+++ b/drivers/clk/imx/clk-composite-8m.c
@@ -31,14 +31,14 @@ static unsigned long imx8m_clk_composite_divider_recalc_rate(struct clk_hw *hw,
 	unsigned int prediv_value;
 	unsigned int div_value;
 
-	prediv_value = readl(divider->reg) >> divider->shift;
+	prediv_value = readl_relaxed(divider->reg) >> divider->shift;
 	prediv_value &= clk_div_mask(divider->width);
 
 	prediv_rate = divider_recalc_rate(hw, parent_rate, prediv_value,
 						NULL, divider->flags,
 						divider->width);
 
-	div_value = readl(divider->reg) >> PCG_DIV_SHIFT;
+	div_value = readl_relaxed(divider->reg) >> PCG_DIV_SHIFT;
 	div_value &= clk_div_mask(PCG_DIV_WIDTH);
 
 	return divider_recalc_rate(hw, prediv_rate, div_value, NULL,
@@ -104,13 +104,13 @@ static int imx8m_clk_composite_divider_set_rate(struct clk_hw *hw,
 
 	spin_lock_irqsave(divider->lock, flags);
 
-	val = readl(divider->reg);
+	val = readl_relaxed(divider->reg);
 	val &= ~((clk_div_mask(divider->width) << divider->shift) |
 			(clk_div_mask(PCG_DIV_WIDTH) << PCG_DIV_SHIFT));
 
 	val |= (u32)(prediv_value  - 1) << divider->shift;
 	val |= (u32)(div_value - 1) << PCG_DIV_SHIFT;
-	writel(val, divider->reg);
+	writel_relaxed(val, divider->reg);
 
 	spin_unlock_irqrestore(divider->lock, flags);
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
