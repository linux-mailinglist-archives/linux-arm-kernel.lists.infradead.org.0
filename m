Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B20D1151B83
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 14:42:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qPVf2WYHqhdjl1RATWFghYlshqY14rbzPEfzpbCbVzE=; b=ZvRjmAUT0bLEls
	JPlme+fSUzPQPKRTXngGe0V0tWVbH5+tnLAJq+0lTgnPOHPv8iqGpkb1Ri6vBQsc2bXWy6ILPbaKX
	JFc9JsLG9TLbqdaSrYu1KSKzSbglNnfr7+8cLHSocdaZP2J1wg4o7Tdwskwwb4ApWdsZbFBDgDwrK
	W2DLajYQBZBkyjeLuvmMClIiIVEJbReaTXaFepyJsAqHnA8oHYpT/u2wKGaC7wKA5Se6BvKehKJ1o
	GiHnuWcMnpA6gnkVWJGiYNKkefxyaQN7zNvNh3Ln/ErYt49H8wAKKc6A5d51yh3mGGu5e3rkKYRQP
	22sxXsaO8m11aKNgCOCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyySq-0005tb-JB; Tue, 04 Feb 2020 13:42:04 +0000
Received: from mail-eopbgr150089.outbound.protection.outlook.com
 ([40.107.15.89] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyyS8-0005Rc-Eg
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 13:41:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bwrK/UAMt5S2x2MkhK+sS/J0hz1GDPaJxiuGnaIxeLyeHgFRxxLdQpJDunZTJ3I58zNHcwa7MdWxUvVLJxw4CuZDaHGHkwZgWp/yPaYbU5c0r67i0VGEwc+ZeLZfiQyPZvGuFCt7NXLN6bWzWR6h9QSGVYy6n9r9HI5ETR73IDcBYcqcu+JQ+1esWa5Og1fnMNqxLPk0YU5iYSkAjinkTnpQqBIlL+uLpIcgDNqi8RIV8mpTJgJXUCf+0XSXGdARZ9O6dvS4ptARM7gMjazOljOTKcGfMTkdK18AGx6XUNTkHOQ78ms45W/PAv63tb5LG69yICqSBn5VHIKl5wICrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tUlRr8faB/i66fx3x80G7m9tQuoYyRbLoNWtPavuV8Y=;
 b=YI8TAGYx/sZe4U/XlsCA02QgXppn/RINJ7GPn0tfoQOTdnyPrSn3KF1RIKu7MerqLudRHTxPloa5rwLM0oops5YTGiJxy4XGLnl+K8yDXiTzaPSECDQDP9WiGJXxwiNQEOamsWEEx0peHAs9EZ0sekdeC7qswNbfAHqu5QTgwxck3B8BbuFShGU+q/Z8vUk/EHrGA6XwR/42f6fMTrEngid7SoIqAOgie7lt4hTt0GlQEO+FQ0+GpWrOEmXPIXfoEF1SDZaLJZCEOp2lUD+YQxTAh0R1VP06Ei27ZiOHzXx/pUS6HJ3LB0C/tFhuF6O9RMamCLeOfalg5rLMRwgM8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tUlRr8faB/i66fx3x80G7m9tQuoYyRbLoNWtPavuV8Y=;
 b=gDxDpojQxtou0jJ2F0yyf/JFNRtHCO4vx6kH9XEzIKYagU2cksO9dLo2e+5/Gnpyz4kX4QFt/4m6wHJATrdZsHEq1ONyvBotXo6t4ekoO8lsKjdiE828aT2W0dEXvBIz+n7GfLBxwk5JGFTVQCUl+fe0/RVRciL8WAATlDU+NTk=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4851.eurprd04.prod.outlook.com (20.176.215.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.32; Tue, 4 Feb 2020 13:41:18 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2686.031; Tue, 4 Feb 2020
 13:41:18 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 abel.vesa@nxp.com, aisheng.dong@nxp.com, leonard.crestez@nxp.com
Subject: [PATCH 2/7] clk: imx: pfdv2: switch to use determine_rate
Date: Tue,  4 Feb 2020 21:34:32 +0800
Message-Id: <1580823277-13644-3-git-send-email-peng.fan@nxp.com>
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
 15.20.2686.28 via Frontend Transport; Tue, 4 Feb 2020 13:41:14 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 33823662-8acd-443d-a244-08d7a977e996
X-MS-TrafficTypeDiagnostic: AM0PR04MB4851:|AM0PR04MB4851:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4851F8E7CFCE102FC53C504B88030@AM0PR04MB4851.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3631;
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
X-Microsoft-Antispam-Message-Info: VOFaNlzlD+bJQuQgOXr+i+zmZnWnsnhUVrg5ocClv7XE1ArB9SmCe4PhRrFYCBg+n3OxPBhymed3i/P6Zshx7N+8nzDwQILxAq2MQ+EABSuOLCAB2OWnRgXwgIVJTwOcKz8XtAot/fX38fL2C3IgzS13mz+Tfx2iUicCz6uoQ0NjtLULf/ltyO3NWtljCy7IGHu7KyJuQlvPNwml18UeJlC1k1+C36Vmgirpw2agBR2eXOvDterowhw2g0pgA9Vdxsc0r/EDCHm1mXfMlrOKhIO2fgE2ATC4HEQ6y/xjto0J6PQARF2Y09wNtM+ZoKBtsXGQKsEJDQsEZTkg/aERf/v8KNFra893MpoPiE2CqOZu33jOM6UWjPSgbR465kDCiUxr8/jcivhTLUZ+GJog4RLHJQ1WdFV8dqjgodLmy9D5Bz0uRBhRaZuZwwsY4KiQ+xuDpPI9I19TKu0DuAZFx/RYk5PpOogKwMM1tZiyLdS6sigRXh5KXwM5yhvgo1AThDe3j//4tmhxqJrfLlK12JhdCe3qc0Mf9DLt/vU7+68=
X-MS-Exchange-AntiSpam-MessageData: wKFv5zwNx9l1kNYKxFyZTvQvhdWKejGrsJ5ItEnF3PeS/pquUpBk2NoF523NPvUS97CDWC+wC+fyyL4aT18p6Rm6dkXsDNv/9LB8f6EDAhnlA5/UCOKUWxQOQdHDbw69oNX0j9x+iVWLs6+JF3X/iA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33823662-8acd-443d-a244-08d7a977e996
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2020 13:41:18.3179 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EngCBdEmtW6+VRpAIrkityBcW/PGi7YQf2Ff1+7ng+qOIhdfdwn1L0EVEbgSHVcPyp8IPJfgUEj6uyuzfBi89w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4851
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_054120_511770_B68B258F 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.89 listed in list.dnswl.org]
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

Per clk_ops, compared with round_rate, determine_rate could optionally
support the parent clock that should be used to provide the clock rate.

In this patch, the parent clock is just parent->rate as round_rate.

The following patch will calculate the best parent clock.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-pfdv2.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/imx/clk-pfdv2.c b/drivers/clk/imx/clk-pfdv2.c
index f8707278aad9..28b5f208ced9 100644
--- a/drivers/clk/imx/clk-pfdv2.c
+++ b/drivers/clk/imx/clk-pfdv2.c
@@ -98,10 +98,11 @@ static unsigned long clk_pfdv2_recalc_rate(struct clk_hw *hw,
 	return tmp;
 }
 
-static long clk_pfdv2_round_rate(struct clk_hw *hw, unsigned long rate,
-				 unsigned long *prate)
+static int clk_pfdv2_determine_rate(struct clk_hw *hw,
+				    struct clk_rate_request *req)
 {
-	u64 tmp = *prate;
+	u64 tmp = req->best_parent_rate;
+	u64 rate = req->rate;
 	u8 frac;
 
 	tmp = tmp * 18 + rate / 2;
@@ -113,11 +114,13 @@ static long clk_pfdv2_round_rate(struct clk_hw *hw, unsigned long rate,
 	else if (frac > 35)
 		frac = 35;
 
-	tmp = *prate;
+	tmp = req->best_parent_rate;
 	tmp *= 18;
 	do_div(tmp, frac);
 
-	return tmp;
+	req->rate = tmp;
+
+	return 0;
 }
 
 static int clk_pfdv2_is_enabled(struct clk_hw *hw)
@@ -167,7 +170,7 @@ static const struct clk_ops clk_pfdv2_ops = {
 	.enable		= clk_pfdv2_enable,
 	.disable	= clk_pfdv2_disable,
 	.recalc_rate	= clk_pfdv2_recalc_rate,
-	.round_rate	= clk_pfdv2_round_rate,
+	.determine_rate	= clk_pfdv2_determine_rate,
 	.set_rate	= clk_pfdv2_set_rate,
 	.is_enabled     = clk_pfdv2_is_enabled,
 };
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
