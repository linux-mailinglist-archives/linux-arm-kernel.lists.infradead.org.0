Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C69151B84
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 14:42:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=puvbFunL+YBQuSPOGkxt+pdIfPDyjoJSQVeAIJzBJUQ=; b=PC4jVok9I9TY/D
	+3OhWq7uzpAm580fwLXh6TjJOjj1bnR45nIo8CsaZU388HI7OokTXccMXVGB2kqpUM77oG87ZrTqn
	Cj/CfX9DutpDubvtGaQJfOkgK2OEyoWhNVEy/o4DugboVQ7rTsdOQq1PXTX9r2Tt6kKJZZotheNE1
	HTrkEC0InCe4EMM8JW6UniQEm0AktdVrSAFNaQgUvh91vnoHNMwceHWjs1CKozdZvfKIuv95DiA9y
	2xn0TpvQj4GaM1dGIlUF+VobliUWB1BE7OcxCnZoJRTSa4FLhSODv35ko6Xy3RkvQb8ZTKeNVCv92
	HVb/EGqHDiQhn91QePuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyyT5-0006BL-2x; Tue, 04 Feb 2020 13:42:19 +0000
Received: from mail-eopbgr150084.outbound.protection.outlook.com
 ([40.107.15.84] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyySE-0005ZB-E0
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 13:41:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ikNl+ZG6DjqdKfvNr9WmM/VSQzCJFnhFmB7LjW7ELBbCN/p5dDbXNRxCDIrevt35ojqGOky7TH2YM0tC2GpWTyij5+Af2ssdxHKLZEZcDhsDlNJ5N9hCRsJGQywuYOX6aWti2NtDeDcf4mgvCNOxDC6FgaiA7VelgMk/RxlG+yXVrLl0Rcu5JZTyCGVh9Tnr80wAt7mf+L8R2eb/jwjEjapNeaB3V0FQ0GPhXbN7dskKSTBl5w6sD31XUewYM5ig9aZVzCAqqOVHIl8DMlA+cOfV9PLSZkq0FCF1kV3QViFbZ5tmAxJw1KZEowWhqUkG1LttU6RHhN4ltf5ls1T4tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gwQeBUQfJB4vEvPaPWLOwmRp6IYIhy/cz/rkO377RO4=;
 b=ofyvhD4Gy8ZUFnm/r5Q6xRgZAEtomK/FZ2AbjeDBhYJ+KPuPmpRdhFiZAW+b7fublsj4XieF0pAl26hraUS8FyCe/Fm0cLigFLLy69PBJbQ0dEQDMmko3n34tA+v7o6nZfst2MHu8QRK5/Yo79MNG6vIvmmFCNkkHi3lgqcPRg1vKlRqenCOmuPTB5Bp1r0BKTEhXyqFAykd2F+7kk+ySojPTrltVMFQbtU3Sg2atigYlKfpNbEKytOd8pyCL/AovBElh0ifV+Ys57tjhxMm/ut7IenTfuSu47b6TmPQbLKrWPEoFMdrMnfXl6M3ge40QCloON1EBLUfa1m7xRhPJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gwQeBUQfJB4vEvPaPWLOwmRp6IYIhy/cz/rkO377RO4=;
 b=mQI/pCcIkjjbfbeUOndxBFVTIONsKdmZkk7YrrGzq2pCuUPnvCKKgs6IMmR42QZ6x/Spy95iNlSvB7CGcV4XN+Qh+lePr3Xfb9Thtl2upyD52C6wOkb1ZO3mFP8dNjAhxwKIr0gywp5CLvaKVK4viZ7zpwsLcWAwLYukg6InyVQ=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4851.eurprd04.prod.outlook.com (20.176.215.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.32; Tue, 4 Feb 2020 13:41:22 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2686.031; Tue, 4 Feb 2020
 13:41:22 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 abel.vesa@nxp.com, aisheng.dong@nxp.com, leonard.crestez@nxp.com
Subject: [PATCH 3/7] clk: imx: pfdv2: determine best parent rate
Date: Tue,  4 Feb 2020 21:34:33 +0800
Message-Id: <1580823277-13644-4-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580823277-13644-1-git-send-email-peng.fan@nxp.com>
References: <1580823277-13644-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK0PR03CA0107.apcprd03.prod.outlook.com
 (2603:1096:203:b0::23) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK0PR03CA0107.apcprd03.prod.outlook.com (2603:1096:203:b0::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2686.28 via Frontend Transport; Tue, 4 Feb 2020 13:41:18 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 9b078402-46f4-4641-0936-08d7a977ec3c
X-MS-TrafficTypeDiagnostic: AM0PR04MB4851:|AM0PR04MB4851:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4851D88309CA43C0A099C84F88030@AM0PR04MB4851.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 03030B9493
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(376002)(396003)(39860400002)(366004)(199004)(189003)(26005)(956004)(2616005)(316002)(6486002)(186003)(16526019)(8676002)(2906002)(69590400006)(81156014)(36756003)(6506007)(81166006)(86362001)(6666004)(8936002)(478600001)(66946007)(66476007)(66556008)(4326008)(52116002)(9686003)(5660300002)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4851;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wS/WT40PMLW/HdoNw8LnyfAhXhf7zM+wr2JdCCI5GOKbb8CCFD5odz69Oc9Lu1Fkxsui0Mh0uraBR5iscqbLgk37mL1e3bAb8ynkTpXWLToiqlNxDFQ6SmSww0HATfADchNpY/enSPWcQ3Geh6TNaEPVU4xXCH1p73FwamKjXH0maNMctaI19mL1V0EQM1h2LSOg44xoylYPXJj9OSshexn29bYYZ8ayDqNCxSDmn3T7pGzB15vxVlxEty+AhL8xhCG1n2+CtQ/uxi0zd8k7H6rneFtmUd/PM2HaR/hG4gKgXvJ91WR8XlvHbABCG6u3p5u13y63nCe4Hg67X2b3pYSDrgERyfZVzhIRm9OnndnUo8bnUWvtlqXQStXcZ9TeA1LnpKrrtDAUmjhVXZY/vuZl1272wsJtFgKYDUDC5MnDi0TT17ogOecS2g53De0AFihRlmjWH1Mh1guzt1AoumWEHJGbeN/6fxpXWftABO6emCH2nRC9bSkuQW0qNdqP9Wzfn7sw9d/vb98TjyljB3SWQA4o5mQUgPqyBkK95UQ=
X-MS-Exchange-AntiSpam-MessageData: t4FMgWgD3bHDR/aKSFu2vRJ9tr3E4m1kcf7+a2HVyPhlgTrXyvwhKmFu/EssIK9RLlaCxXYbvRM+S+rbq5UTbhuOnhJ7slSlCTz/bsON/dWq2yNDz9KtaQtqTqHNFvSD6uU+wgbw+7zlU6V+nVikzw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b078402-46f4-4641-0936-08d7a977ec3c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2020 13:41:22.7523 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D00aXIlSZ2iIlF+oziBIwyvmxGQX/GOPYzcDLBl4WT9mbCgS0Jv4NcYVGJg5i0nX4RopddjWek/D4Vy2VLn0aA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4851
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_054126_507932_8EB2F661 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.84 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Peng Fan <peng.fan@nxp.com>, ping.bai@nxp.com, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

pfdv2 is only used in i.MX7ULP. To get best pfd output, the i.MX7ULP
Datasheet defines two best PLL rate and pfd frac.

Per Datasheel
All PLLs on i.MX 7ULP either have VCO base frequency of
480 MHz or 528 MHz. So when determine best rate, we also
determine best parent rate which could match the requirement.

For some reason the current parent might not be 480MHz or 528MHz,
so we still take current parent rate as a choice.

And we also enable flag CLK_SET_RATE_PARENT to let parent rate
to be configured.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-pfdv2.c | 50 ++++++++++++++++++++++++++++++---------------
 1 file changed, 33 insertions(+), 17 deletions(-)

diff --git a/drivers/clk/imx/clk-pfdv2.c b/drivers/clk/imx/clk-pfdv2.c
index 28b5f208ced9..78e1f7641aaa 100644
--- a/drivers/clk/imx/clk-pfdv2.c
+++ b/drivers/clk/imx/clk-pfdv2.c
@@ -101,24 +101,40 @@ static unsigned long clk_pfdv2_recalc_rate(struct clk_hw *hw,
 static int clk_pfdv2_determine_rate(struct clk_hw *hw,
 				    struct clk_rate_request *req)
 {
-	u64 tmp = req->best_parent_rate;
-	u64 rate = req->rate;
+	unsigned long parent_rates[] = {
+					480000000,
+					528000000,
+					req->best_parent_rate
+				       };
+	unsigned long best_rate = -1UL, rate = req->rate;
+	unsigned long best_parent_rate = req->best_parent_rate;
+	u64 tmp;
 	u8 frac;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(parent_rates); i++) {
+		tmp = parent_rates[i];
+		tmp = tmp * 18 + rate / 2;
+		do_div(tmp, rate);
+		frac = tmp;
+
+		if (frac < 12)
+			frac = 12;
+		else if (frac > 35)
+			frac = 35;
+
+		tmp = parent_rates[i];
+		tmp *= 18;
+		do_div(tmp, frac);
+
+		if (abs(tmp - req->rate) < abs(best_rate - req->rate)) {
+			best_rate = tmp;
+			best_parent_rate = parent_rates[i];
+		}
+	}
 
-	tmp = tmp * 18 + rate / 2;
-	do_div(tmp, rate);
-	frac = tmp;
-
-	if (frac < 12)
-		frac = 12;
-	else if (frac > 35)
-		frac = 35;
-
-	tmp = req->best_parent_rate;
-	tmp *= 18;
-	do_div(tmp, frac);
-
-	req->rate = tmp;
+	req->best_parent_rate = best_parent_rate;
+	req->rate = best_rate;
 
 	return 0;
 }
@@ -198,7 +214,7 @@ struct clk_hw *imx_clk_hw_pfdv2(const char *name, const char *parent_name,
 	init.ops = &clk_pfdv2_ops;
 	init.parent_names = &parent_name;
 	init.num_parents = 1;
-	init.flags = CLK_SET_RATE_GATE;
+	init.flags = CLK_SET_RATE_GATE | CLK_SET_RATE_PARENT;
 
 	pfd->hw.init = &init;
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
