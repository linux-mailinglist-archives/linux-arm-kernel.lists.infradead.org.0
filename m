Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 999BD179032
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 13:21:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GoLaZ4CC6o55BwMUBLR/UUcLiz5HYO23j+7qwz7GtPY=; b=JeGYrpCIqqGS+m
	tOip5o0y4354coa5yoD/3xqFOoYUj3L+eKCO9i3DxzLvePdO9HMxLNBFHUnLDjtw7hNXRBtPdadEW
	Yn1q0hjwn5EOb2vplAAwq/Cuwx4Zexo71BmVeqJZTizQxtlW8BwfhFOwYShkQ5ouxlhMflIfsjJHC
	r+j4/aLeUfNACFjd5wjbCLqXmlj1JJVDNq6WZOWum9r5ptcnRvy7zfLwsqrts3a9G448gybtGpjUg
	ZRI7X13dk3ry9VvX9EVSiPJQBA4fBYAi5n7aCDOlx3MAfAL7T3jPwb4Lk4WecHfu+1jjX8a3KuXu+
	dCJB8ut00KyHvRHqYEbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9T1K-0004LY-KD; Wed, 04 Mar 2020 12:21:02 +0000
Received: from mail-ve1eur02on0602.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::602]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9T0X-0002Tu-Of
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 12:20:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DKtL7WOwhQHoYZoOHPJaA2vGz2yz6DWZOQfYGermLhwQ5XMWYZ2GvUVCehSBsBq43u4VDBW8ttJvnpqfWMqB5R3n0nzDcSvIWdOSst8bpKuXqf98okiV60MRsOubYSThn6LtPs1whaRQ8rnaV7oYLhr1NKGU3jcSkWW0XJ2G+hdRW2QzmhKhnme5TRUWkSfPIstg7SQ7WVeFrzlU9uBmKq7pnL/0ZdJzk9wr9hqNGvXGBnkYuUB7o0f34Zv23gN13b9VAFP/FtH49q57KOPO56yhxB7aHLGNwGO1+9KoMCNkc1bWDTV/F5b7z7OG4Kb4L4cG12BvlxqBnZIe0SG3sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/d50D3BY7IdVsv7PjKW8OSKb4KcfS2vi56zitjmwUuk=;
 b=jKnJV6DPLUu9eMFi6lZW0umWsVQhr0jeOCyRacFOGjbJbFSGNDazA86IGKXuNHOflVbHf0Qkrs3meBadC3MZyNUhGOMJoqC5k/0UZ2cUM+rA3a4L8rrB+OGkx5FPpivVJEXEqdVx5qW0dglZKnZ0bZaxGWYO8JDp5lZ0bgxPILPFNsqlcMJDafukiycHPlg9X3vR9+EIsJ/weFhMZkSS4hvy9t7zpy012h/ZWeyiZ3jrO/gI1ypf6T1iMCg2KwvySr/JPlyWyU+lrC8+8PTVMAc3RqYE9ITMLmqd/wfzt54Yzn67M13+bxOdRnUdSK/lo4sx1dkkmk+ibdcEaUzvFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/d50D3BY7IdVsv7PjKW8OSKb4KcfS2vi56zitjmwUuk=;
 b=E87aimer9Ln0YDhWNLl7TG363L2xdZCBuBfsk/qjd7WxNX8Mq5G+oOrGCSB62rxb3WUCYsDkDv/3WSy5a9BMAn9CKKkLXicmYQbO9woE04nXO4JRWHYsVkX2sJbp2J9lJgDxmuHd/EHYzPlz5h49PcOnw0v4T6qpiAeLC+Zm3DQ=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@oss.nxp.com; 
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com (52.134.16.147) by
 VI1PR0402MB2718.eurprd04.prod.outlook.com (10.175.21.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.15; Wed, 4 Mar 2020 12:20:02 +0000
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::35d0:31bc:91d9:ceb0]) by VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::35d0:31bc:91d9:ceb0%7]) with mapi id 15.20.2772.019; Wed, 4 Mar 2020
 12:20:02 +0000
From: Daniel Baluta <daniel.baluta@oss.nxp.com>
To: rjw@rjwysocki.net, len.brown@intel.com, ranjani.sridharan@linux.intel.com
Subject: [RFC PATCH v2 2/2] ASoC: SOF: Use multi PM domains helpers
Date: Wed,  4 Mar 2020 14:19:43 +0200
Message-Id: <20200304121943.28989-3-daniel.baluta@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200304121943.28989-1-daniel.baluta@oss.nxp.com>
References: <20200304121943.28989-1-daniel.baluta@oss.nxp.com>
X-ClientProxiedBy: AM4PR0701CA0034.eurprd07.prod.outlook.com
 (2603:10a6:200:42::44) To VI1PR0402MB3839.eurprd04.prod.outlook.com
 (2603:10a6:803:21::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from fsr-ub1864-103.ro-buh02.nxp.com (89.37.124.34) by
 AM4PR0701CA0034.eurprd07.prod.outlook.com (2603:10a6:200:42::44) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.5 via Frontend
 Transport; Wed, 4 Mar 2020 12:20:00 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 27a47d09-46f1-43e5-5177-08d7c0365d5a
X-MS-TrafficTypeDiagnostic: VI1PR0402MB2718:|VI1PR0402MB2718:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0402MB27181BDE634862A7FF2EB32FB8E50@VI1PR0402MB2718.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:525;
X-Forefront-PRVS: 0332AACBC3
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(376002)(136003)(396003)(346002)(199004)(189003)(6666004)(1076003)(6506007)(86362001)(2906002)(81166006)(81156014)(52116002)(316002)(44832011)(7416002)(8676002)(8936002)(5660300002)(186003)(66946007)(66476007)(2616005)(956004)(66556008)(16526019)(6512007)(26005)(6486002)(4326008)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2718;
 H:VI1PR0402MB3839.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: u/OMS8GlYNkgEJvfzn7dbWuIVljx8kAVvN9YZbIT6c190c6+uQ4WFJ7fNdnYEbjd95tMJ5TL+295nTLw0jbG3zjo+kEi58MH0nkYTfPfiMB7mW0gXOn8LSNopFYblgauPPyE0XGu0lnFg6i+2XTBa/fu4I+o7K43vOta1anp6umchJ7DND72hnE6Vt9Uz2rplRH4pZLIFMfphQB3xxbTlGQEvn/x4PTUAlE0tCUSR9f9OHvFK8CUMYsyFoKVRy8XpdtNcHLQTC86Z1ReKGGnx7sEvSh5WTXOE4DMGWvkav+dQfNAA5frh78n58imj4PXt0KN8hVOvRa93BmPeONmj6j1uBarBtSKOqaYoTFvKAU4WMBSicaUKUwOHnZWDGopjHqZA/PKLchrNXSongICTsqUpT37/jvQyfTlRAVT9LJp0aKFOleHYB3nNto7NKzr
X-MS-Exchange-AntiSpam-MessageData: EzxOF2FQ+GmwE9ibs0o13Ycsfu+R3WRHMUVe5T8raJWfmqk3PzMDhdrCOOuBXtElnSujJrotNDkb84OhyBCox2/QgT7YJYttdlF9P/FpCLyZv05bGYhYTr2zgVUyWeC3aWQ9FOhVK6OjAAfFQoMF/A==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27a47d09-46f1-43e5-5177-08d7c0365d5a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2020 12:20:02.5160 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HzqPNcpiguY0RScVMLCwLmJcUC/fMLZOnCbvjBXC31Nzi3HOQQsQ2Ww2Obgrk2rQP+F5ZyA2fyQCQRBEDYJITg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2718
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_042013_821505_89B96683 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:602 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: aisheng.dong@nxp.com, pierre-louis.bossart@linux.intel.com,
 ulf.hansson@linaro.org, linux-pm@vger.kernel.org, gregkh@linuxfoundation.org,
 s.hauer@pengutronix.de, daniel.baluta@oss.nxp.com, alsa-devel@alsa-project.org,
 daniel.baluta@nxp.com, linux-kernel@vger.kernel.org, paul.olaru@nxp.com,
 khilman@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 shawnguo@kernel.org, festevam@gmail.com, shengjiu.wang@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniel Baluta <daniel.baluta@nxp.com>

Use dev_multi_pm_attach / dev_multi_pm_detach instead of the hardcoded
version.

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 sound/soc/sof/imx/imx8.c | 60 ++++++----------------------------------
 1 file changed, 9 insertions(+), 51 deletions(-)

diff --git a/sound/soc/sof/imx/imx8.c b/sound/soc/sof/imx/imx8.c
index b692752b2178..2e7635b697cf 100644
--- a/sound/soc/sof/imx/imx8.c
+++ b/sound/soc/sof/imx/imx8.c
@@ -51,10 +51,7 @@ struct imx8_priv {
 	struct imx_sc_ipc *sc_ipc;
 
 	/* Power domain handling */
-	int num_domains;
-	struct device **pd_dev;
-	struct device_link **link;
-
+	struct dev_multi_pm_domain_data *mpd;
 };
 
 static void imx8_get_reply(struct snd_sof_dev *sdev)
@@ -207,7 +204,6 @@ static int imx8_probe(struct snd_sof_dev *sdev)
 	struct resource res;
 	u32 base, size;
 	int ret = 0;
-	int i;
 
 	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
@@ -218,45 +214,15 @@ static int imx8_probe(struct snd_sof_dev *sdev)
 	priv->sdev = sdev;
 
 	/* power up device associated power domains */
-	priv->num_domains = of_count_phandle_with_args(np, "power-domains",
-						       "#power-domain-cells");
-	if (priv->num_domains < 0) {
-		dev_err(sdev->dev, "no power-domains property in %pOF\n", np);
-		return priv->num_domains;
-	}
-
-	priv->pd_dev = devm_kmalloc_array(&pdev->dev, priv->num_domains,
-					  sizeof(*priv->pd_dev), GFP_KERNEL);
-	if (!priv->pd_dev)
-		return -ENOMEM;
-
-	priv->link = devm_kmalloc_array(&pdev->dev, priv->num_domains,
-					sizeof(*priv->link), GFP_KERNEL);
-	if (!priv->link)
-		return -ENOMEM;
-
-	for (i = 0; i < priv->num_domains; i++) {
-		priv->pd_dev[i] = dev_pm_domain_attach_by_id(&pdev->dev, i);
-		if (IS_ERR(priv->pd_dev[i])) {
-			ret = PTR_ERR(priv->pd_dev[i]);
-			goto exit_unroll_pm;
-		}
-		priv->link[i] = device_link_add(&pdev->dev, priv->pd_dev[i],
-						DL_FLAG_STATELESS |
-						DL_FLAG_PM_RUNTIME |
-						DL_FLAG_RPM_ACTIVE);
-		if (!priv->link[i]) {
-			ret = -ENOMEM;
-			dev_pm_domain_detach(priv->pd_dev[i], false);
-			goto exit_unroll_pm;
-		}
-	}
+	priv->mpd = dev_multi_pm_attach(&pdev->dev);
+	if (IS_ERR(priv->mpd))
+		return PTR_ERR(priv->mpd);
 
 	ret = imx_scu_get_handle(&priv->sc_ipc);
 	if (ret) {
 		dev_err(sdev->dev, "Cannot obtain SCU handle (err = %d)\n",
 			ret);
-		goto exit_unroll_pm;
+		goto exit_detach_pm;
 	}
 
 	priv->ipc_dev = platform_device_register_data(sdev->dev, "imx-dsp",
@@ -264,7 +230,7 @@ static int imx8_probe(struct snd_sof_dev *sdev)
 						      pdev, sizeof(*pdev));
 	if (IS_ERR(priv->ipc_dev)) {
 		ret = PTR_ERR(priv->ipc_dev);
-		goto exit_unroll_pm;
+		goto exit_detach_pm;
 	}
 
 	priv->dsp_ipc = dev_get_drvdata(&priv->ipc_dev->dev);
@@ -328,26 +294,18 @@ static int imx8_probe(struct snd_sof_dev *sdev)
 
 exit_pdev_unregister:
 	platform_device_unregister(priv->ipc_dev);
-exit_unroll_pm:
-	while (--i >= 0) {
-		device_link_del(priv->link[i]);
-		dev_pm_domain_detach(priv->pd_dev[i], false);
-	}
-
+exit_detach_pm:
+	dev_multi_pm_detach(priv->mpd);
 	return ret;
 }
 
 static int imx8_remove(struct snd_sof_dev *sdev)
 {
 	struct imx8_priv *priv = (struct imx8_priv *)sdev->private;
-	int i;
 
 	platform_device_unregister(priv->ipc_dev);
 
-	for (i = 0; i < priv->num_domains; i++) {
-		device_link_del(priv->link[i]);
-		dev_pm_domain_detach(priv->pd_dev[i], false);
-	}
+	dev_multi_pm_detach(priv->mpd);
 
 	return 0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
