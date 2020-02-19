Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9290C163EEF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 09:22:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n9jK2+RKNqweAbX5Wbz3RPBlk5d39iSE6Htm0m0Z3p0=; b=OWJ1SmLv8CWW/q
	TB9ruN1s48QFD4XOWU2T7morD9fa9CY9G2hqfxWDQP1ZJgYUz1eVCNmSZ0e5omkPbwF22t/R3neLP
	pFTvGISlyU455iqGxdYjkTUsKQTP43YuQFxlQePqc192WpwJLsspGrLhAWRta+DYMGKNsEFLzjDCY
	LaGnwXXRe8kAGzTXP7P37h3EVPgb+x2aPQu2WOyf9CaN4b6F0Af71wpLcRiwQ01N9ai6CEUjwYkKU
	kA63I1UGEtgR6U/EITHgQwFk+VWBR8GyrW1MzM4CADvdSJeM40vLRQLd65WSYW676iLu+DMdA+Xqn
	FmKlGZILZQUVzUuBjLBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Kd5-0002MK-7j; Wed, 19 Feb 2020 08:22:47 +0000
Received: from mail-db8eur05on20603.outbound.protection.outlook.com
 ([2a01:111:f400:7e1a::603]
 helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Kcq-0002Fg-0e
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 08:22:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BEkm5drPMTvxQh4xKdoQYRCQbio6iSS1HpVPvkxoo+NiHFJe2Rn0nLcHsku4bI74fMcas4ZWGdOtZTltaumf5Z1ABPIxHf9F+dx6KSTxWvJqwRpft72jKJFsRGv23NvoIqfpDDQQPXJK5w7LWUEfaUAQydUXZq/s8rPk8M1HaQhTwwOIVj9WSIzo1nRW5vp1Fc6+wD6mlTmf1Pmuq7UlLO1sFNaQAFKjyAemzfyZ04s7xtU9jLn7VeFDzou66u1XrVplKwcxmsGx+ffXfOMO48ByuqOLi8+JHdcDNJ+BPxl0Yvccr95f7YDen+q3U6WdYmwI/SeOrX6ECSPKvExN8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CdIut4NX8cWlsy4mIEiiwOmKojVdnTPVAQgzkWqe7Qo=;
 b=N1r/nYeXOGbcxNyhyL3LF+cj+qBwadgg8p8LrHYpRj5bXwND+z5OgMbfIjSvCamMUIpbmbj3y9GJxYTUUDXwWoSFTsSQbXC/odi1tUc2dJ3fCZtnG7iiPcBsnsxKfs+UG6Kway61cpYpBov+9tyE3wu1DOWcGtKIFA3YbafVqrXI9xVpMIoSXKkZa2TUG3adx8l41dGGMfX3nqJB1Q7Naw0a7AXzsHZG8HIDiuPcfp8MAEVxmjZE3NIpv7/vi59UvqM3wkgBqEXltiOLAj7Mph39qwq1ZhoP6deGola3S8iCzVXBSMLqKlNVGQ9gJFyHY3VuVrW1+V8t0DgbvKTuDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CdIut4NX8cWlsy4mIEiiwOmKojVdnTPVAQgzkWqe7Qo=;
 b=dk7b3hRVe6hiW5Gce5g3fNV0qOpnhQlB39KkNum80PgciXezOYUg6iU9wurqvgCiyTGAj0a7IsZ81zyJsIcWHCVCRBr++tP7pKKtSV1ua0LPTiKoj8uCL8mdKJ2kGiZgL5zOtEYiJ1SedT1IVK66tTzgsl5PQo+NCrbPKro2FBo=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6401.eurprd04.prod.outlook.com (20.179.254.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 08:06:28 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 08:06:28 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 robh+dt@kernel.org, viresh.kumar@linaro.org, rjw@rjwysocki.net
Subject: [PATCH v2 06/14] clk: imx: pllv4: use prepare/unprepare
Date: Wed, 19 Feb 2020 15:59:49 +0800
Message-Id: <1582099197-20327-7-git-send-email-peng.fan@nxp.com>
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
 15.20.2729.23 via Frontend Transport; Wed, 19 Feb 2020 08:06:24 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 5df81ee8-ee69-463f-a631-08d7b5129f41
X-MS-TrafficTypeDiagnostic: AM0PR04MB6401:|AM0PR04MB6401:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6401627262537640D8C3CCFA88100@AM0PR04MB6401.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
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
X-Microsoft-Antispam-Message-Info: tNHAO0X3bIlMQgAPinc5+UPLNuL2reim16qI8YsnIJFHaYVqFPoLJ8n0nie8kS8SEOsoovcxcBLPagJzZNAU6uewL4H5ocVKUg2HvmPJvep32fxG/zwm/G8SPnZ0BoYXare4yfd9McPhWwNak8IrrpUSbo4GA/W+bcs6Q+KiqoBQjgJMtQs+Fhv7eo9Apes1UgnksruFyUANu1+xX1uooFfumdLTJdW/IDu/h3ndXgGNxwyO8yaO8U4EpsTKFiZVhVFaUEPziqWVEsrII+66wUSKeNV1pSIjVN+3rx1mFFUhZt1AI/pe3z46XxjZm3bUsgNHZ3VVVqc2Pu5XugK5K269cTLaJrYJQFQYBmPsVW79J4Aruc6Il7TPahSZ21g0KCT1pQTerJS8bo/kD/0FE9zebH94c+W2E6KB6/cmUVDaGNfmD5OXNuLo4Web81aF1ZyKGd0SKqiKJa+AeiGlUXFBDMMZIoxrQAXghB2Qzg40X8iGsGASEf3bXyIP7jWMNDP/WSu48l2A1lXHMajcF7oyZuEYK+HG45APaOxJz2I=
X-MS-Exchange-AntiSpam-MessageData: OkAq0JVhDPqThXZwEMO4BstUbR1ayT+so+lnK1+ldCs8cBjsxOY27sCDdk0mEiAWGQJAe1CsqVlXlosUmsdMnZKZk+FLcf3pF4Q4YfhPJzHvr2X9cZXE/YmRcel120qCdHg5A8Y4cJgjsZuRu9FIDw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5df81ee8-ee69-463f-a631-08d7b5129f41
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 08:06:28.3782 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X51Cfrf585GVzyLZ5NeuIqCc8YxVOBX+dmkSZPhFMWOWjIftfmTLjciqaXmCDqkSSPEi0oaDMrdcH4OtWZF75A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_002232_079764_EAB78D30 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Peng Fan <peng.fan@nxp.com>, abel.vesa@nxp.com, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

It is not good to use enable/disable for PLLv4 which needs time to
lock, because enable/disable is expected to be able run in
interrupt context. So use prepare/unprepare.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-pllv4.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/imx/clk-pllv4.c b/drivers/clk/imx/clk-pllv4.c
index f51a800c268c..a49450431855 100644
--- a/drivers/clk/imx/clk-pllv4.c
+++ b/drivers/clk/imx/clk-pllv4.c
@@ -54,7 +54,7 @@ static inline int clk_pllv4_wait_lock(struct clk_pllv4 *pll)
 				  csr, csr & PLL_VLD, 0, LOCK_TIMEOUT_US);
 }
 
-static int clk_pllv4_is_enabled(struct clk_hw *hw)
+static int clk_pllv4_is_prepared(struct clk_hw *hw)
 {
 	struct clk_pllv4 *pll = to_clk_pllv4(hw);
 
@@ -175,7 +175,7 @@ static int clk_pllv4_set_rate(struct clk_hw *hw, unsigned long rate,
 	return 0;
 }
 
-static int clk_pllv4_enable(struct clk_hw *hw)
+static int clk_pllv4_prepare(struct clk_hw *hw)
 {
 	u32 val;
 	struct clk_pllv4 *pll = to_clk_pllv4(hw);
@@ -187,7 +187,7 @@ static int clk_pllv4_enable(struct clk_hw *hw)
 	return clk_pllv4_wait_lock(pll);
 }
 
-static void clk_pllv4_disable(struct clk_hw *hw)
+static void clk_pllv4_unprepare(struct clk_hw *hw)
 {
 	u32 val;
 	struct clk_pllv4 *pll = to_clk_pllv4(hw);
@@ -201,9 +201,9 @@ static const struct clk_ops clk_pllv4_ops = {
 	.recalc_rate	= clk_pllv4_recalc_rate,
 	.round_rate	= clk_pllv4_round_rate,
 	.set_rate	= clk_pllv4_set_rate,
-	.enable		= clk_pllv4_enable,
-	.disable	= clk_pllv4_disable,
-	.is_enabled	= clk_pllv4_is_enabled,
+	.prepare	= clk_pllv4_prepare,
+	.unprepare	= clk_pllv4_unprepare,
+	.is_prepared	= clk_pllv4_is_prepared,
 };
 
 struct clk_hw *imx_clk_hw_pllv4(const char *name, const char *parent_name,
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
