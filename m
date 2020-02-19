Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A6D163DC8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 08:36:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rzaY5KmSA6gJrSWKNLZ9pahVPhazwmzczfopWDZeURU=; b=inlH9Mb6DugtcB
	ttC4bRGZxAhgONeCCVsKIb1AobTs8XYysWq5TZNqjigNvCnPH873ygpM98fW+YJLJYwliESlXjQA/
	lWrzdTkbX7yi7b15UuyHkKlgLHTDlttkMvuREjnK6yWYNktk91SeGShUbJrehzDjficV+HvP/NJ00
	+FHvoB3EOpN1pm70OhPNooQEZ37NOgMuwM2YDNwuZtvZlrhVHd2Mk2vcJNViTWP8n5WYxtg2ZVp3x
	gfWnBxGTvEzTURnmtERL/EHVDKI6SUsI7xuUoWr0qbAe+3vnsUnes+WjjmJwWWUKVj9x9+2/e+MLt
	cGj1UvQHYoPl4fRpNGfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Ju5-0001ZD-Rc; Wed, 19 Feb 2020 07:36:17 +0000
Received: from mail-eopbgr00088.outbound.protection.outlook.com ([40.107.0.88]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Jrx-0007Lu-8m
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 07:34:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kt5qiLl2Bp9upIQy3B3Kiostporw7/xzzCko72qVPGj0nekSC5kCihf8JaulukSL3Tch3IMQ44ABc+t7NtI4d/8sW9LIIjPM7VIxHOfxKSAZ9sAmyS3ntrFd+gqU5GMm5FWegE9g3VltyRlDhPl9LyYY2cSlkYBHCAZ/WhhsnX2Hv5RjebW3KAbdm1yF2urMz4WuxAm1imyfcu4Cecx2rEpim+O1f6H+6NAjKqRq2tzhTkpvMxM3mgs3Yl8Gbf0SWln+GpPEbPLo1ceuWuhR+EfuYYxOOu9Obp7G4Xe9GVMauJ7aqDQCUtbkm8Thcx47KujAMAmiJnt07VdBzdHicg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U5jq8+36WVgT+n17P/obSsXiSnkHmjmfHVw/sIPza8E=;
 b=bSgavM5l7iPUNIZz68UtNlz4jCurkx5eDIkVAH8n1l7eRZgjYqv3d32GEkyDAOqbbKlVLccZGC6LhmKFZJ7Uh9n+N95N3Opc2kmxp1aitZp5Yf9PZPUec9rwP9vQEteR7uKVIwSz+hPdkj2IOC0LUhGIf1zC6dVVqoM0K1CpFb54jz3MJRoIeM9ifwBKig+6Ps2Tp17GGz9bxZilkzKCcrfLNleDfI1pjg/7OGvNAcBzjTnPtru4BZbKi4v+oxi9Xi/05Zgow4i9klzo2q57eu8PP92Qjif4AO50FpC2edS+uOlN3K92M8flJ1+1xfc2kfvusszDJO2F/mTjGyuhNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U5jq8+36WVgT+n17P/obSsXiSnkHmjmfHVw/sIPza8E=;
 b=cpUsehBiyuioQyr36nGf4sOPMR6D+2pElStjihhqsWhZPXXZfkiEReG1b+HaWeWL/nw4S/dkBOZfEmEfSb62xXPfzfLUQnu2UQca3/edJphcNZ32Q341VgPqAtoKDmeBXU81bEBIW+DAqEZIxpLxJB7hdNiFBpKTqNC/uAEwIjA=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB3969.eurprd04.prod.outlook.com (52.134.95.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 07:33:58 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 07:33:58 +0000
From: peng.fan@nxp.com
To: ohad@wizery.com, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com
Subject: [PATCH 5/9] remoteproc: imx_rproc: parse early-booted property
Date: Wed, 19 Feb 2020 15:27:41 +0800
Message-Id: <1582097265-20170-6-git-send-email-peng.fan@nxp.com>
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
 15.20.2729.23 via Frontend Transport; Wed, 19 Feb 2020 07:33:55 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 3bdb16f8-3dba-413c-37af-08d7b50e1536
X-MS-TrafficTypeDiagnostic: AM0PR04MB3969:|AM0PR04MB3969:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB39695651AA79F5CF0D33FB3F88100@AM0PR04MB3969.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:494;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(366004)(376002)(396003)(136003)(189003)(199004)(66556008)(66476007)(8676002)(478600001)(186003)(52116002)(956004)(81166006)(81156014)(7416002)(5660300002)(4326008)(2616005)(66946007)(8936002)(16526019)(316002)(69590400006)(9686003)(6666004)(36756003)(2906002)(86362001)(6506007)(6512007)(26005)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB3969;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5qhjnVEagW8b0q97ZxY7hSByPV6twZvpNxcgLZ8TfIgLOFcM5c2UB5aoYALicFgTfcRggmvxQfnhXxmrc8/RPB3JW3Cuzv9y0JuyeDXyLhivcFgjUplBX6vfzynfyFwc75/KTGTyGhacir5e0iuToQVrlmLie2JKgyxD9Db1yvARgIlJIy2w2U34kfssWA6HmGn9k/276b+MhxpIG8qxyqyYBZYmOQNkQhBx/pYnDYbxNpVDLTTtKnuo9CRX5N6IZk+iw/Mn5hz2whVVhGX/0d1WHFx+4HWDJExKnqPXAKXBuwVJmIAMyfa59Rq37a5sIB9eWgWwiO73sFp3VsIIH/50gWK0EN2Wm/DSN1w5g7O+B9aJdgzKnoCvrbfkTqdkwYSazxogcX2oVU0pT1SwqcseVsoaQ2uF3+p0q6LH3YhvRy8VQKGTtcaGVd3W3HgemZzXYsxlCw+TwhED+ns45fXIdI/T1YAm9/Cr+CiOpSQwGV4TAydjJA72jebUZ5YznoJZUzOk9klCZc/PXptQiyFBY9EdoLblZsT68cNz8CA=
X-MS-Exchange-AntiSpam-MessageData: 1jVSRoABYLryi+FMw4FW9djwboMPNAduuHVAV71b7CzjK6VKLy5JY3ZJwMKvLdmcs9UXaA9Xnge1earNjIkSD3G+RTqVPGRhlFPmn+A9rmzRbzqldhLf/MEPmsymf9+DP7HwJhcMfKmLPjTbCKLi4Q==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bdb16f8-3dba-413c-37af-08d7b50e1536
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 07:33:58.7708 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fx9Vu+CW8BuLnv6QtzRH79MpfQnaaj4aREVbRz6emNCHVu20PQni2ZLtVt/G3nni52FcF2ieTUHqsyaINKRiwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB3969
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_233405_363376_67FF869A 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

If early-property exists, there is no need to check syscon.
Just mark early_boot as true.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/remoteproc/imx_rproc.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
index b9fabe269fd2..e31ea1090cf3 100644
--- a/drivers/remoteproc/imx_rproc.c
+++ b/drivers/remoteproc/imx_rproc.c
@@ -483,7 +483,9 @@ static int imx_rproc_configure_mode(struct imx_rproc *priv)
 	int ret;
 	u32 val;
 
-	if (of_get_property(dev->of_node, "early-booted", NULL)) {
+	if (dcfg->variants == IMX7ULP) {
+		priv->early_boot = true;
+	} else if (of_get_property(dev->of_node, "early-booted", NULL)) {
 		priv->early_boot = true;
 	} else {
 		ret = regmap_read(priv->regmap, dcfg->src_reg, &val);
@@ -509,15 +511,17 @@ static int imx_rproc_probe(struct platform_device *pdev)
 	struct rproc *rproc;
 	struct regmap_config config = { .name = "imx-rproc" };
 	const struct imx_rproc_dcfg *dcfg;
-	struct regmap *regmap;
+	struct regmap *regmap = NULL;
 	int ret;
 
-	regmap = syscon_regmap_lookup_by_phandle(np, "syscon");
-	if (IS_ERR(regmap)) {
-		dev_err(dev, "failed to find syscon\n");
-		return PTR_ERR(regmap);
+	if (!of_get_property(np, "early-booted", NULL)) {
+		regmap = syscon_regmap_lookup_by_phandle(np, "syscon");
+		if (IS_ERR(regmap)) {
+			dev_err(dev, "failed to find syscon\n");
+			return PTR_ERR(regmap);
+		}
+		regmap_attach_dev(dev, regmap, &config);
 	}
-	regmap_attach_dev(dev, regmap, &config);
 
 	/* set some other name then imx */
 	rproc = rproc_alloc(dev, "imx-rproc", &imx_rproc_ops,
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
