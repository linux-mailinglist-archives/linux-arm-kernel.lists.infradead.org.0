Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B14176579
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 21:58:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EJdiqUIFQUXzJfPuw5MTZC+9XF+K7sVyLEyLA+JJrhA=; b=ldZcA1lwmqotLG
	nJoaQMW4QiIoREZbuq+2DiEAInDINO7Qxljehs/7y+kVHVxkEYt/hrkGempCmsKVByT3U3qt20ihJ
	yoqw+PNl7ryyRUYYTwZ0bNBBItlbdf0jQjQRZA6BDUaKEcggoTUnWmsAPyeLWVxWTSn4z/dOD16sl
	juO6kazCtLM6GBXUII7fU43x5MUKYeHX3rRgQLxvxjIfEIZOe6entR0WpACPuUSwwvUe08OXZULMI
	LT0lSsrxQUd6KCgtE27OCq0AhYH5qt2OHITE/IJP4FBbphroUcP5TLQ/HFvQL09lQszmr17CDx3TW
	7xcnOMt7otDCMg28v2/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8s8u-0001AI-Ti; Mon, 02 Mar 2020 20:58:24 +0000
Received: from mail-eopbgr70052.outbound.protection.outlook.com ([40.107.7.52]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8s8I-0000dm-Qn
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 20:57:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MTtiE8Tfrg26XWJ2oP5tKGxKA27buOG1M4oJGG9cc/hTL0U7TyO3CRMeka57tnDbBCxkyzYzQQP2tvnFcpYPNgTKV5qhwrQMScnmH0KFRboBRcbETBtaUhdi5swcRw5pcT9yOo4B7sNYEPZYglQD20VAChtGIjolAhjuMn6dCJHT3/Pf+VWZngJ9NfIDEn7rTEIuhDOhpyr6J6tJAJF/koHFTzlTh3aWtmmEQSnRrCj26nUGmH+Te1qi2Y5g00On8dl9yvO2lEmBGgKPvKwsIVYnlVBqb5L/rlrbFV7j/9hQ/R3mziNwnDuL48BSLq032M7RHLMSrTGXvs1q5HbOcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=803tOpKNryfd+LRf5X50v4ZX+8USha0Nl2DXCGQHcXc=;
 b=VlOg0FF0FK1r0rizyZrc0fPNs64n74v5FnOzYj9kkoHruz0XH156UgNwNylmj+wgKy8LLCJDlRQpqtZ8Dna2xBHcKqyaPWVKwog1leMA0Q6PNd/hzKDeNvwnlUDZJCnsHyZRMOr6mBXij9PRWQ2/Ed3mh48G/SYgELniRVKZpeAAx50gNNDsYZPP9yAiPEhmGisEqSG++fiX+0fRR8odY+MtBgdZCH4X3qDyxx4zIc7X8h542tyg0rvMWPfuuDkqzSVhwH6oB9YPod2NvNY4ay8B6RS0tII/rVHsb4qyeCUz2gtUy1ywuVQ0dm5kl4R13xKIJ9ed1VDIIPx8259L5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=803tOpKNryfd+LRf5X50v4ZX+8USha0Nl2DXCGQHcXc=;
 b=kncJTKfIMdHhMivHoP4EpuucOmLBmNHILGdFBh1Kx0XwGwbt+Jptb2sHXHUBNlGujd44qKt86bgagT3e1HIwSt8+Lx8FvYg7SZTRiRlOjj5yHOkc20riP4XDKqW/nrqI3P8FOBj0JAJRVGwgj7N+sakRw+6OTcjY89jGinRV5VU=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@oss.nxp.com; 
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com (52.134.16.147) by
 VI1PR0402MB3453.eurprd04.prod.outlook.com (52.134.3.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.18; Mon, 2 Mar 2020 20:57:40 +0000
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::35d0:31bc:91d9:ceb0]) by VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::35d0:31bc:91d9:ceb0%7]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 20:57:40 +0000
From: Daniel Baluta <daniel.baluta@oss.nxp.com>
To: rjw@rjwysocki.net,
	len.brown@intel.com,
	pavel@ucw.cz
Subject: [RFC PATCH 2/2] ASoC: SOF: Use multi PM domains helpers
Date: Mon,  2 Mar 2020 22:57:00 +0200
Message-Id: <20200302205700.29746-3-daniel.baluta@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200302205700.29746-1-daniel.baluta@oss.nxp.com>
References: <20200302205700.29746-1-daniel.baluta@oss.nxp.com>
X-ClientProxiedBy: AM4PR05CA0031.eurprd05.prod.outlook.com (2603:10a6:205::44)
 To VI1PR0402MB3839.eurprd04.prod.outlook.com
 (2603:10a6:803:21::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from fsr-ub1864-103.ro-buh02.nxp.com (89.37.124.34) by
 AM4PR05CA0031.eurprd05.prod.outlook.com (2603:10a6:205::44) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.15 via Frontend Transport; Mon, 2 Mar 2020 20:57:39 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 92c5647e-2ef1-46b5-dcfb-08d7beec58a8
X-MS-TrafficTypeDiagnostic: VI1PR0402MB3453:|VI1PR0402MB3453:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0402MB3453A2EF41EB7ED3BDD341C7B8E70@VI1PR0402MB3453.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:525;
X-Forefront-PRVS: 033054F29A
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(376002)(346002)(136003)(366004)(199004)(189003)(2906002)(26005)(6486002)(4326008)(6506007)(5660300002)(186003)(16526019)(478600001)(7416002)(6666004)(1076003)(2616005)(66946007)(66556008)(66476007)(44832011)(8936002)(8676002)(86362001)(81166006)(81156014)(6512007)(52116002)(956004)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3453;
 H:VI1PR0402MB3839.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n/FB799LRjlYE0GyFkBKCEh59RV3CF8U+3+dAe/x9Bgd3SK/FX1lreV47ohXr7IPXe9fnd7mNtUrc2qDGbbAVgQFZkolXJgV8WorvkD0aoTJZMRkD1GF7WFR6lYWjf7eCFH5mMGiW0pCWKS5f4GSLAS/quLnP/Lo7aAoQcfq+ig7PMdmg/x6YvvSF4/DwnrwayWS7+1HTPARp+SNWJ0H1Xj9gmuC8zNXyLiMQHxiOxWsvS5Z8WkVvoLOk2noUI0agnmL+pgZJ4vNCXkJDIeDzQKVk8Wr+NBkIfzk1txDhqe/qkubkZf2DR7cpfMTDx81qlm8QSmm4djGemtv2pDi+SweadIGA/lIcPApMk1hRliLrT6Gy5FTd7QjrgScTFyQ5HER04obTXufi7ipK/XQ04ESaTshVb6pUAsMdPWR6nZQPs1LCvugUd2aZkHzwqDh
X-MS-Exchange-AntiSpam-MessageData: pGohPEcW6nSL9dhwc16tQKGDoodAup31FfJo/y2dW3F0JCIGUbqoFRTpaGh55I/kdONVlX0/emVNQKG7hZtPfXma71SrVisLR35SROGh69uyJWDdLSHQiaP4OZVHosJ9si5plY71GeTK6gkp4Mz+Aw==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92c5647e-2ef1-46b5-dcfb-08d7beec58a8
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2020 20:57:40.7364 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sOPLTXokLxIM8TkqJZ+OScPig77PaBE2ZRTUdVahy98nAPrKLoxpCYBpGqty/TCGCD69Discp1FVaCRO8HFB/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3453
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_125746_879650_5B741C14 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: aisheng.dong@nxp.com, daniel.baluta@gmail.com, ulf.hansson@linaro.org,
 festevam@gmail.com, alsa-devel@alsa-project.org, linux-pm@vger.kernel.org,
 gregkh@linuxfoundation.org, s.hauer@pengutronix.de, khilman@kernel.org,
 ranjani.sridharan@linux.intel.com, linux-kernel@vger.kernel.org,
 Daniel Baluta <daniel.baluta@nxp.com>, pierre-louis.bossart@linux.intel.com,
 paul.olaru@nxp.com, linux-imx@nxp.com, kernel@pengutronix.de,
 shawnguo@kernel.org, shengjiu.wang@nxp.com,
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
 sound/soc/sof/imx/imx8.c | 54 +++++-----------------------------------
 1 file changed, 6 insertions(+), 48 deletions(-)

diff --git a/sound/soc/sof/imx/imx8.c b/sound/soc/sof/imx/imx8.c
index b692752b2178..ca740538a2d5 100644
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
@@ -218,39 +214,9 @@ static int imx8_probe(struct snd_sof_dev *sdev)
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
@@ -329,25 +295,17 @@ static int imx8_probe(struct snd_sof_dev *sdev)
 exit_pdev_unregister:
 	platform_device_unregister(priv->ipc_dev);
 exit_unroll_pm:
-	while (--i >= 0) {
-		device_link_del(priv->link[i]);
-		dev_pm_domain_detach(priv->pd_dev[i], false);
-	}
-
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
