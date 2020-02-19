Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E758163DDD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 08:39:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QznXaUeaDTOJxlUuKyjJTAtj7ZhmjTu5nxuLceUJTIw=; b=u8ztjEPCzr0BWp
	2zUgr84Odgbe0F/U9lon57q4i8CPcWeddIH5CHM/AXXC9SxoNU8ciaVA5FsEp3nVlkns3/tFyp+5o
	QkFnFU43ApxQbwnVcakOcGk+iBiy9wk22GjWP3/ExMV7OajOvR6kW79pk/wm7knp/RG1qcH0NMYvF
	Ev2Fq7lL2+S8xv9C2QJzzCBEyAxs/EMpknRgrRhoRHrWvTYBphD9aeonJ2P10n4arFloJB+OAThRh
	+WVF4r+U/N55VPHDI2zwmiEAiKrj9gixtmtga6Hmz2pJCyNI3IxdKG3CE1jHNGQcu6dOPqnT6EfBc
	zZ881nDxmUoaXmYlQjzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4JxN-00050r-7Y; Wed, 19 Feb 2020 07:39:41 +0000
Received: from mail-vi1eur04on0608.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::608]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Js6-0007YS-9n
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 07:34:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZSunnbKRJg2/zznpg5UXQeEgLK5m+j0mnP3s3Qkjn0SIw1zxCleesYfRlTnfYQY3mYgi7pbZZUx2ln9B14SdhjEqpFwKCLHARVU4R3LXeWSZ0kzKarz6ecaSvzepuqC+iwKHoQJ2RdfnpZvTry2WO0bUyC0IWKkxcpV2Ckj6uEFCJsm30Fa9rJ7A/ro/iQ92Z5rQm97hTXjX4xZaSzSg5sqPWR0fJsKWQdKsZ8LsvXcQDVaxpjz9A3XfXHN9DTLGIdkoxhA/8Q1QB9xTpStadKMeek8RgesElisdr5YZ8yABpxavizzE/rZ+zTjTQ4OG+NY2WUvBf3QQAlymf27Kww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Di6Xc2Kec+lh/UZnw+aO21NwG9ymOod2MojAnOUohSk=;
 b=OM6pgPQ0Jijed0PfX9H0i2S1sd7ydi1GsngTSMTch2ezpSy+mxFQbubfbdl+MHIFEhSjOU9Lf5a2ilq+ZtNW1n+cVuNz3yiVM2xypH/nIZ1laImhi9mOO8lAsjDEin1yFqC+mdrXn97516S0xADR9WYKIBlX+ZzDAd+XvttrT60QOm0POKJAr/WTTTsAqyC5tGdAkreMhUGvZE8TuMobmQULPPVqhPLn/uYXyfoYvZKSRbDQXNz3k9KhxGBkx+f1Eqdwg+fMnCEWcaYePv9ryKW30gNzhBTLYlhOUWtMzXo3uG0xII+V1FRmx/FbLnB/LUrhBmClug0Jae8d+F+1kQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Di6Xc2Kec+lh/UZnw+aO21NwG9ymOod2MojAnOUohSk=;
 b=SiShjaMiEgZjydPhxPt8kFUFCKZ8EVPlNCp0b+qgxcO1e/nDQkc/CA9AEjwclJD4BQUVPoIZFgiiE5p3rC+cZ/esYS4lJG7jdPu7ZIPhUh93V0T9TTts7zY+Gk3j2wYGK/NWPwOqPyQmqFBKCHPxdPyMSe86JgET4SD0+MT/Dv4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5233.eurprd04.prod.outlook.com (20.177.40.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 07:34:11 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 07:34:11 +0000
From: peng.fan@nxp.com
To: ohad@wizery.com, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com
Subject: [PATCH 8/9] remoteproc: imx_rproc: support i.MX7ULP
Date: Wed, 19 Feb 2020 15:27:44 +0800
Message-Id: <1582097265-20170-9-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582097265-20170-1-git-send-email-peng.fan@nxp.com>
References: <1582097265-20170-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK0PR03CA0115.apcprd03.prod.outlook.com
 (2603:1096:203:b0::31) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK0PR03CA0115.apcprd03.prod.outlook.com (2603:1096:203:b0::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2729.23 via Frontend Transport; Wed, 19 Feb 2020 07:34:07 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e9c4be95-8cc6-4ee8-226b-08d7b50e1ca3
X-MS-TrafficTypeDiagnostic: AM0PR04MB5233:|AM0PR04MB5233:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB52335BF9D76C41ECF5D48D1A88100@AM0PR04MB5233.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1388;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(346002)(376002)(366004)(396003)(199004)(189003)(81166006)(52116002)(8676002)(2906002)(81156014)(5660300002)(8936002)(9686003)(6506007)(956004)(2616005)(6512007)(6666004)(66476007)(36756003)(4326008)(66946007)(316002)(66556008)(7416002)(69590400006)(6486002)(16526019)(478600001)(86362001)(186003)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5233;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tcJYhfC/vyTqFdGIpfEc8hwRVwVndqkP6PytU8Cbc73+aVFwSCwapznm4peFNUiMIF9ZCDbKkfJ8kW/MjaL78LNYtYDDyA6v2Z1cXOcqNNqXIssrtD+c97r33jHmG5JyUsziMIEq5KOBl790f2rVfx4FfdeYnk79Ajb2/YNOaq7ofQ2L5SN0B3pEQhpNFhRBbHa+U6Kfp/s2BzjoUYyvdz7bUDyXb1twmY891WZCLc86EkgAGxrbIwm7MrkDH5ZLPGKRPv1XkF9oKqYQ83fRGTh8SusEogdTTM8jYbeZ/oKZ8h3Rvdq2A+PGZpXigjXxKJw6mK2RFTZobz4aJlNYuQIje4oyoz2ECbA+h9qZZEbyHrnLSvfzM/4J6hzU6cSM4gIlwMD6izofXYcXVgycPP/18jp9TpDFd/5CaVHdWrPLygJpKTzmlPJaF4aNzgt2mfhxkxi1ExUD8DoC+gB7gLa+LqLSwn2/bBrm1zWj7BuaWh1lVfbHfAyYtz9J8Z/E7ah/m+fOOetJbVEP7k5aU6HtzA5GUB7QNPGIQXk/8ns=
X-MS-Exchange-AntiSpam-MessageData: Lqx16E4ncWZ/qf6GdMX6gDjf8kSQ118XRRfV7qKo4RxNVXcLXgACCsnBSxpSX8DCRoXaP4y9DDveLGUjJYgONEabrSg9bWxc5TKGLPKBc+j7skzqkmRYXZ1kK+PvC/+rCpnZT5GKzpBew7nTjE2NkQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9c4be95-8cc6-4ee8-226b-08d7b50e1ca3
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 07:34:11.2736 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QW1h7v2tSEm1NkOdp3yYF9I7wRti1n10wbGy4e7cfSQCrH4KhxA9WaF8C4LDCoWElMYQTxokXOVQKofAPJXXDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5233
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_233414_375936_5F1F223D 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:608 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

To i.MX7ULP, M4 is booted before Linux and it's in charge of
the whole system. So M4 is surely have early_boot set.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/remoteproc/imx_rproc.c | 25 +++++++++++++++++--------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
index 003f9e5c2b0c..fc2a504bc350 100644
--- a/drivers/remoteproc/imx_rproc.c
+++ b/drivers/remoteproc/imx_rproc.c
@@ -56,6 +56,7 @@
 enum imx_rproc_variants {
 	IMX8QM,
 	IMX8QXP,
+	IMX7ULP,
 	IMX7D,
 	IMX6SX,
 };
@@ -181,6 +182,10 @@ static const struct imx_rproc_dcfg imx_rproc_cfg_imx6sx = {
 	.att_size	= ARRAY_SIZE(imx_rproc_att_imx6sx),
 };
 
+static const struct imx_rproc_dcfg imx_rproc_cfg_imx7ulp = {
+	.variant	= IMX7ULP,
+};
+
 static const struct imx_rproc_dcfg imx_rproc_cfg_imx8qxp = {
 	.variant	= IMX8QXP,
 };
@@ -529,7 +534,9 @@ static int imx_rproc_configure_mode(struct imx_rproc *priv)
 	int ret;
 	u32 val;
 
-	if (of_get_property(dev->of_node, "early-booted", NULL)) {
+	if (dcfg->variant == IMX7ULP) {
+		priv->early_boot = true;
+	} else if (of_get_property(dev->of_node, "early-booted", NULL)) {
 		priv->early_boot = true;
 	} else {
 		ret = regmap_read(priv->regmap, dcfg->src_reg, &val);
@@ -638,7 +645,14 @@ static int imx_rproc_probe(struct platform_device *pdev)
 	struct regmap *regmap = NULL;
 	int ret;
 
-	if (!of_get_property(np, "early-booted", NULL)) {
+	dcfg = of_device_get_match_data(dev);
+	if (!dcfg) {
+		ret = -EINVAL;
+		return ret;
+	}
+
+	if (!of_get_property(np, "early-booted", NULL) &&
+	    !(dcfg->variant == IMX7ULP)) {
 		regmap = syscon_regmap_lookup_by_phandle(np, "syscon");
 		if (IS_ERR(regmap)) {
 			dev_err(dev, "failed to find syscon\n");
@@ -653,12 +667,6 @@ static int imx_rproc_probe(struct platform_device *pdev)
 	if (!rproc)
 		return -ENOMEM;
 
-	dcfg = of_device_get_match_data(dev);
-	if (!dcfg) {
-		ret = -EINVAL;
-		goto err_put_rproc;
-	}
-
 	priv = rproc->priv;
 	priv->rproc = rproc;
 	priv->regmap = regmap;
@@ -775,6 +783,7 @@ static int imx_rproc_remove(struct platform_device *pdev)
 }
 
 static const struct of_device_id imx_rproc_of_match[] = {
+	{ .compatible = "fsl,imx7ulp-cm4", .data = &imx_rproc_cfg_imx7ulp },
 	{ .compatible = "fsl,imx7d-cm4", .data = &imx_rproc_cfg_imx7d },
 	{ .compatible = "fsl,imx6sx-cm4", .data = &imx_rproc_cfg_imx6sx },
 	{ .compatible = "fsl,imx8qxp-cm4", .data = &imx_rproc_cfg_imx8qxp },
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
