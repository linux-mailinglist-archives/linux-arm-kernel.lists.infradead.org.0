Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75863163EEE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 09:22:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=puvbFunL+YBQuSPOGkxt+pdIfPDyjoJSQVeAIJzBJUQ=; b=L/jodojjl8NeaD
	RNkrZUEHhBJBOfZiDFSsxgMdBzh6Sc78PTAzMWKnFopgNubIahPZB4fX9OTB5Kc39Kwa/2BqWdb7Y
	miURcAW6APHSzD5nYUnu3LREOmtq8AyDYycZJUl57BMPnMqUVVepaccDDJYrIR0Dp84/7/ELZbFFX
	e3CS/iXR7w77CfDu5Op71afKSl4is9ierkd7gEQDL4lw9L74Ufhc3bBEsC+/c9Bd/1bxA9FB84qs9
	p1HZwZErmXcuARfaCxaTzZ04KAqnscyB5Vwt5dOnvD8Lhrd2JU6ACb6BihStceLKeVhj5BAzxzrIz
	9GJKSYzUfS9jK8XHeVRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Kcn-00020e-9o; Wed, 19 Feb 2020 08:22:29 +0000
Received: from mail-eopbgr50081.outbound.protection.outlook.com ([40.107.5.81]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4KcW-0001sC-0k
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 08:22:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aiQXHJg8JMCWjXRdNDVblIc5Dv8Yp28RIXu5rFS3s084EAjvBpfmbb5lzydTirP08PRrPd9qdqimLHXL5Cqxu1ab2YaGLqk/cMDoBXbAf66U9k9aJaMZYB3z000iyfhm1RjosL2eQ0mPFTBGt1SOY6fNqZ14wY++QOsV7muK91G/C49UpgbNe2u2n9F+7Gl8VNcSfpteERB4bJONM6NhsZyCcWZDykINsnfoF8RgNle1RX251xwMQ8TVgxOfNmdAgvqh/Mp9rSJxnY4n93RZc9R7y3c21v9S4rPzwIvDWY3ufysG8ht6K9kbu0xACPQIKHg5rLJwOA6tcTGTiOyjMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gwQeBUQfJB4vEvPaPWLOwmRp6IYIhy/cz/rkO377RO4=;
 b=V+oLBc0JovvWLHNaZMeln00AIGbGgpNJ26nw/kd5KfOqrPyRrMggJsxmGUAPBwJqZZ4Pda7swDSktSrEh+ORMfS8MkKOkQe3YdhKPjlfqlxNIpiakXrbmamPi0ZMmLDNgyJGZ4lhC0f6UQY3I+0rN2I7L/hj/T/dmvvLaafqxY7eOdWUuRBaE+tCSTzkEw5jbkH2oXb6g7m43PY/IpzrqW6zL0SnJv3WeR37ea47Wk+mOl7wo6HvKyv57ULUgkWv688Pid28620Y5drmFqNmzK6LON3MUxDKaZQ6QpMxWNLw43Mao9WlG+XMt5vP3q6XIrCUp+Vyj1XqBjzCRHjt5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gwQeBUQfJB4vEvPaPWLOwmRp6IYIhy/cz/rkO377RO4=;
 b=hm/EdXSRX/IwOVlRKVH9a8AxRUbZYiGX7FNz0cgNQ4oaqKwGDf8NpQstIKcIhl2TanDUBqKZA6I/6Fa03IMkvRjpbNa8xJDmLYEadKY5wuY3nOt982GHOUE0xQJGG+7SEdj2RZuLBW8Vu5w5angxm5lRreQ3I/CYumr8L6LvxXg=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6401.eurprd04.prod.outlook.com (20.179.254.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 08:06:24 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 08:06:24 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 robh+dt@kernel.org, viresh.kumar@linaro.org, rjw@rjwysocki.net
Subject: [PATCH v2 05/14] clk: imx: pfdv2: determine best parent rate
Date: Wed, 19 Feb 2020 15:59:48 +0800
Message-Id: <1582099197-20327-6-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HKAPR04CA0013.apcprd04.prod.outlook.com
 (2603:1096:203:d0::23) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HKAPR04CA0013.apcprd04.prod.outlook.com (2603:1096:203:d0::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2729.23 via Frontend Transport; Wed, 19 Feb 2020 08:06:20 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 413c04c8-30f7-4618-e014-08d7b5129cb5
X-MS-TrafficTypeDiagnostic: AM0PR04MB6401:|AM0PR04MB6401:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6401FBDB935120008FEE587388100@AM0PR04MB6401.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(136003)(346002)(39860400002)(396003)(199004)(189003)(2616005)(81166006)(8676002)(9686003)(4326008)(66476007)(8936002)(478600001)(52116002)(6512007)(6506007)(66556008)(69590400006)(81156014)(316002)(86362001)(66946007)(956004)(6666004)(186003)(5660300002)(26005)(6486002)(36756003)(16526019)(2906002)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6401;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OfhCbB8XLwbhPe6lE2ma0mKm2U/D8IgAH73k2MaXbDVJBAkoBuugaCoU1vYHEVegPh6Cio4f4auLocruRmbCcdXxqs7NR97deGqnPUwN5qjUNtTJiQYXfPLI8EPBBu+jXBJyW03QGz+XXkt1Q+QgNLOFb4Woa+FbXXChP6FLVY+IghtXRvDG9ub7G5p2DLawbGUIToo1Do8gYu5u08BKBXs9sdeCXBra8XWsGLFrgeAIPkd2wJTZNly3OBKWqK0bIxVBxMIIwRxXNLqUDnk8E3LUbKEHx/RVln92FLWgtZWbHXyOWtp3ufl+fXF+3Sldk7AdKwlEObm7sh6B7j6DWlgDMgtvM7y4AEJQVjABMRB88tdXqsXMDZMdvgILILZOuRe6YoSj2ahbkRlod3PyGjn/Hl1GrrU3y+oD/qTRtMSE1BaPL4V9DLoJEloCFQB2X7pgiIPbwkcaBIlqXLkdoMjx54DyPF/5Ktkxu0vOwOmNowiNrUW2DQluBP0ARnCqnqBOKq3BpW/eo4zrzvyiDaRWf/P/8x0/1UbfnS/XAFc=
X-MS-Exchange-AntiSpam-MessageData: nSSr4V2dW6W21EDWc3Ahzba+czuNpxD9v0JUaQ3hQgJT1hSJABlwU6KkwHFAgK5kBRza1ovkE63rJB2nhmeb+loTGIT1uB/C9RaAoqEDr/G7XbBDVoQi9uP0FVHWMkD4jxt9Mggfs8i6CoEZGS8EXQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 413c04c8-30f7-4618-e014-08d7b5129cb5
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 08:06:24.1167 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mUx+oOKyHuZGe7HNGifCqCPiUKMfwtBs+sQPgDJv0HvaEcCK652tbrce1gEdl2rt0cf6/kkh3ZQvLbdj8q1LEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_002212_116594_8130D0B1 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peng Fan <peng.fan@nxp.com>, abel.vesa@nxp.com, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
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
