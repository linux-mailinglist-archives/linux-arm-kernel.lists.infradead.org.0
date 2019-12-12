Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FC711C3E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:38:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qvUwPiAoFNIc4gAXWmNEHlJ46mbOgOw+AShN9njPIuQ=; b=co1hSGGD1yugmh
	CnEMTQPQrqeIJMfpm475GnUctZAvHR1LGEaf4Tw+ZJTQFEXm+LQqcBV6E19pcbKYMa/LfDj7Pompl
	S9SDXbgqEqiGqV7WGIcIlm9OjKPsKHh70qTAl0k25XOrTR8Ecpgnk4NA+YhpxalztLBdKt537VOzK
	FhgsAzgzmOZW9qGxpVzoZoChVg9NkqywkjTyfGL5C9tp8qr2NTJ2kW9O1mh4lytC7OA/WPLV208RQ
	LLCpRUuLvWiLtuCXO0UjhINlqJ3ZvB00nmqeKFGY/xrwI02+niLtTf+YjUR0SGPPB+6St4bVYurif
	s1RCX5hgn1zrJLcNtdjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifFJ3-00082k-Kl; Thu, 12 Dec 2019 03:38:25 +0000
Received: from mail-eopbgr70084.outbound.protection.outlook.com ([40.107.7.84]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifFIs-00080i-IL
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 03:38:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IkxJLvbgjtQNLDUDplYczhWugTGHsKWC2JGo928ssxoQQz1zuwFk4rGj3SMN7UKXkNKxJ2pY3ez8sPPKJ71vHUa9i+Lr1CZRtuxYUqmjOn1HcszTaJYl4Q5RcjPnUA1RX/oJHeH6tL1fjKm6mEHFmyaZ+J+CYCvGNf4XF4pJ4YNkfH9RNb25fJs7cDmqYjwAWGeDmPG3IfcLNtsGuyY+JloE+2DmVE8SnZgSqXRp1oskyFH/CoHk3CULpOohbWuPwatkQgI99gox7t+H0oqSQcx6gavsjd3j/6NA+bSQMdZ2lmpjhaYFC+yhm9ky61Rq/tcUHL6e7ChUNtxsj9/7lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EbqbW4O3jFEWvf9ZNMWPcspqJahUbVt/YsmLXBXU7xA=;
 b=F2WENGj9pi0nIttks6XaKnfC8ywK4+vjUtGuJ5fMhelmc4MTsZ3WShXQi87Ken7bl3H2qgrFoEHfIjCcEt7WfWBuCVX8z05kZUmpTpm44N8Si+z2K9qpeD0NoQ0vg71sp/5yN2E0Y2sf23LAh/L2x3wlI78FHCn7wPrSlmsdtjRYv/BNOezT/AFUsFG9Pg9JHXEGNnKqeo368iCnyB81g2EKEko2LTP+S6vUbO6wtfB2gNvKUSNZBAbcF6HoZkVlItc2vcfd5/LAQP0eRg1njdYtFxD3bNNU/YaQfXPivNPMnyZoQXlCM/1FxbJgGg3Gex4evZTFBs2FXjqR2jChMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EbqbW4O3jFEWvf9ZNMWPcspqJahUbVt/YsmLXBXU7xA=;
 b=iRvtoDSX+8tYChRgpKx5ZGvoWZhXWLramdRRCmJLW5V2Hq5kF2NzbRIfww2inM4925JeQof1+zbyphyPpkOAiI+U+ACwnvlOkvSQu3iROcAoUGNezaS7ZwXfLv5vCRCcRL6X6UzhewAsTY0lLyGm1sForZGDU7YAA+XjM20qwhY=
Received: from VI1PR04MB4431.eurprd04.prod.outlook.com (20.177.55.205) by
 VI1PR04MB3181.eurprd04.prod.outlook.com (10.170.229.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16; Thu, 12 Dec 2019 03:38:11 +0000
Received: from VI1PR04MB4431.eurprd04.prod.outlook.com
 ([fe80::c947:5ae7:2a68:a4f2]) by VI1PR04MB4431.eurprd04.prod.outlook.com
 ([fe80::c947:5ae7:2a68:a4f2%3]) with mapi id 15.20.2538.017; Thu, 12 Dec 2019
 03:38:11 +0000
From: Peng Ma <peng.ma@nxp.com>
To: "vkoul@kernel.org" <vkoul@kernel.org>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li <leoyang.li@nxp.com>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>, Robin Gong
 <yibin.gong@nxp.com>
Subject: [v5 1/3] dmaengine: fsl-edma: Add eDMA support for QorIQ LS1028A
 platform
Thread-Topic: [v5 1/3] dmaengine: fsl-edma: Add eDMA support for QorIQ LS1028A
 platform
Thread-Index: AQHVsJ2TZ/jVyH6lNkyvcDWZa1lfcQ==
Date: Thu, 12 Dec 2019 03:38:10 +0000
Message-ID: <20191212033714.4090-1-peng.ma@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR04CA0049.apcprd04.prod.outlook.com
 (2603:1096:202:14::17) To VI1PR04MB4431.eurprd04.prod.outlook.com
 (2603:10a6:803:6f::13)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.ma@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a1ec1328-c2ad-4fbf-a6ce-08d77eb4b5e2
x-ms-traffictypediagnostic: VI1PR04MB3181:|VI1PR04MB3181:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB31811653E53F9D51770EE031ED550@VI1PR04MB3181.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 0249EFCB0B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(376002)(39860400002)(396003)(199004)(189003)(1076003)(6512007)(5660300002)(478600001)(6486002)(26005)(71200400001)(6506007)(2906002)(316002)(52116002)(4326008)(186003)(66476007)(110136005)(66946007)(64756008)(66446008)(6636002)(54906003)(8936002)(8676002)(81166006)(81156014)(86362001)(2616005)(44832011)(36756003)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3181;
 H:VI1PR04MB4431.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: f8+03pK9gKt8/YukHwnf1qt18f8UZ3DSsT7i48Pdaj4bOA2CyrFSwRUYOgC32H+dmJX80UJZsyDXkchqcmPELnAcRKkBbqAwNCFUk091jYxM8pxincqaTUnarLBeb5BVV8l1lMa7wsnN0U67L3cnGLWBnJHK7+z2yWvx5t7ZXaeGMVhSMEEnE2sO6gVvUSVeL9gEXYn7EfiwHrsJ8rzs3/JWLEWrVpUDQi0+2BV3GxrONCoViYZ9b8vJHXdDZ2nJr+VxHd3jth+1kYYgNs6EU8agl6YVa48YESUtub0Lg7OfAElEU3haetnFZztrLdd5t4fGipwS67ka8DwLQbUaGEdJJ4y0YACuB8M+IXKGaPaptAKz/jtbsvp05g7tZCqlOk367C3PZpgIdG8KZ62VPiLQGuO1P5Ll5qYFrnSD/kkAy+sLPnhhAzfa/34fPpQ2
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1ec1328-c2ad-4fbf-a6ce-08d77eb4b5e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2019 03:38:10.9936 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NhJDnp/KF+JZTjcKNGktoWjJp/41wi5g5ns9kSez2EoH32E2e9wQMeC+0AbKF9jH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3181
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_193814_610680_2AAF7BC0 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.84 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Ma <peng.ma@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Our platforms(such as LS1021A, LS1012A, LS1043A, LS1046A, LS1028A) with
below registers(CHCFG0 - CHCFG15) of eDMA as follows:
*-----------------------------------------------------------*
|     Offset   |	OTHERS			|		LS1028A			|
|--------------|--------------------|-----------------------|
|     0x0      |        CHCFG0      |           CHCFG3      |
|--------------|--------------------|-----------------------|
|     0x1      |        CHCFG1      |           CHCFG2      |
|--------------|--------------------|-----------------------|
|     0x2      |        CHCFG2      |           CHCFG1      |
|--------------|--------------------|-----------------------|
|     0x3      |        CHCFG3      |           CHCFG0      |
|--------------|--------------------|-----------------------|
|     ...      |        ......      |           ......      |
|--------------|--------------------|-----------------------|
|     0xC      |        CHCFG12     |           CHCFG15     |
|--------------|--------------------|-----------------------|
|     0xD      |        CHCFG13     |           CHCFG14     |
|--------------|--------------------|-----------------------|
|     0xE      |        CHCFG14     |           CHCFG13     |
|--------------|--------------------|-----------------------|
|     0xF      |        CHCFG15     |           CHCFG12     |
*-----------------------------------------------------------*

This patch is to improve edma driver to fit LS1028A platform.

Signed-off-by: Peng Ma <peng.ma@nxp.com>
Reviewed-by: Robin Gong <yibin.gong@nxp.com>
---
Changed for v5:
	- no changes

 drivers/dma/fsl-edma-common.c | 5 +++++
 drivers/dma/fsl-edma-common.h | 1 +
 drivers/dma/fsl-edma.c        | 8 ++++++++
 3 files changed, 14 insertions(+)

diff --git a/drivers/dma/fsl-edma-common.c b/drivers/dma/fsl-edma-common.c
index b1a7ca91701a..5697c3622699 100644
--- a/drivers/dma/fsl-edma-common.c
+++ b/drivers/dma/fsl-edma-common.c
@@ -109,10 +109,15 @@ void fsl_edma_chan_mux(struct fsl_edma_chan *fsl_chan,
 	u32 ch = fsl_chan->vchan.chan.chan_id;
 	void __iomem *muxaddr;
 	unsigned int chans_per_mux, ch_off;
+	int endian_diff[4] = {3, 1, -1, -3};
 	u32 dmamux_nr = fsl_chan->edma->drvdata->dmamuxs;
 
 	chans_per_mux = fsl_chan->edma->n_chans / dmamux_nr;
 	ch_off = fsl_chan->vchan.chan.chan_id % chans_per_mux;
+
+	if (fsl_chan->edma->drvdata->mux_swap)
+		ch_off += endian_diff[ch_off % 4];
+
 	muxaddr = fsl_chan->edma->muxbase[ch / chans_per_mux];
 	slot = EDMAMUX_CHCFG_SOURCE(slot);
 
diff --git a/drivers/dma/fsl-edma-common.h b/drivers/dma/fsl-edma-common.h
index 5eaa2902ed39..67e422590c9a 100644
--- a/drivers/dma/fsl-edma-common.h
+++ b/drivers/dma/fsl-edma-common.h
@@ -147,6 +147,7 @@ struct fsl_edma_drvdata {
 	enum edma_version	version;
 	u32			dmamuxs;
 	bool			has_dmaclk;
+	bool			mux_swap;
 	int			(*setup_irq)(struct platform_device *pdev,
 					     struct fsl_edma_engine *fsl_edma);
 };
diff --git a/drivers/dma/fsl-edma.c b/drivers/dma/fsl-edma.c
index b626c06ac2e0..eff7ebd8cf35 100644
--- a/drivers/dma/fsl-edma.c
+++ b/drivers/dma/fsl-edma.c
@@ -233,6 +233,13 @@ static struct fsl_edma_drvdata vf610_data = {
 	.setup_irq = fsl_edma_irq_init,
 };
 
+static struct fsl_edma_drvdata ls1028a_data = {
+	.version = v1,
+	.dmamuxs = DMAMUX_NR,
+	.mux_swap = true,
+	.setup_irq = fsl_edma_irq_init,
+};
+
 static struct fsl_edma_drvdata imx7ulp_data = {
 	.version = v3,
 	.dmamuxs = 1,
@@ -242,6 +249,7 @@ static struct fsl_edma_drvdata imx7ulp_data = {
 
 static const struct of_device_id fsl_edma_dt_ids[] = {
 	{ .compatible = "fsl,vf610-edma", .data = &vf610_data},
+	{ .compatible = "fsl,ls1028a-edma", .data = &ls1028a_data},
 	{ .compatible = "fsl,imx7ulp-edma", .data = &imx7ulp_data},
 	{ /* sentinel */ }
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
