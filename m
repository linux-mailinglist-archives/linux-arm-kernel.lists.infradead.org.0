Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E2A19B33
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 12:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hKFcj27fbstDeOiliVhZRa18L0VWIzwgJ9JKR4Sdyfw=; b=IHny0JcRs8z6Cm
	osLAO7/dRXAyfVQpJbGDuNOST9Dv/dI8zi8JspNgw8ly5iZBlYYjVs8tyk1xcy3csE1SSWiyFwTFP
	6nnxne95fRY80wXa0g16WdXoZTlCNnPqvzXv/1c7mjRSevGLn14amLwD2Vi66FBmOdfsCvu0+pApx
	st5OOvJ18iwnqgvi4fZ1H3+XG1Hw4SqASzMUkl0rTJYWvxQ9zPOAUgEnaoLYVcfCIy39pS+0fNxtX
	ENYJ2uHzd784i5hET4XosfyjFMOfa31puWCnopTIm//5wdoxlWNnC3txkq5PWz4gQkzI0vvyNrPxA
	HLNqy6MPdZDa7mmKFlYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP2Yd-0004qF-A8; Fri, 10 May 2019 10:15:15 +0000
Received: from mail-he1eur02on0620.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::620]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP2Xs-0003wz-2J
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 10:14:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rlxABmR932Qf54QdwDfiqRNhb3nbcrkNOm91cZmjgqw=;
 b=OBPzzYnFt017BNpXZFvtrMRTVhZoZc1T46K8+DzcpT/tbUESG2ZXFkCGpFuO5Xkxl7q/y9+SXQb4L0w51kNm1FsFjGzmB1PU/clx/I7gjYFWv9YF8H3gBFKibyXCjyQ4zzWZ161RVIzP6ixd0HDhZ0cUaTPsA5yPqL2QJ9wW4B8=
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com (20.177.55.90) by
 VI1PR04MB5661.eurprd04.prod.outlook.com (20.178.126.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.20; Fri, 10 May 2019 10:14:22 +0000
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::d85b:d2:194c:2b94]) by VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::d85b:d2:194c:2b94%4]) with mapi id 15.20.1878.022; Fri, 10 May 2019
 10:14:22 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "robh@kernel.org" <robh@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>
Subject: [PATCH v1 4/6] dmaengine: fsl-edma: add i.mx7ulp edma2 version support
Thread-Topic: [PATCH v1 4/6] dmaengine: fsl-edma: add i.mx7ulp edma2 version
 support
Thread-Index: AQHVBxkiWq7ELKRpKk+QnDmvsVTzcg==
Date: Fri, 10 May 2019 10:14:21 +0000
Message-ID: <1557512248-8440-5-git-send-email-yibin.gong@nxp.com>
References: <1557512248-8440-1-git-send-email-yibin.gong@nxp.com>
In-Reply-To: <1557512248-8440-1-git-send-email-yibin.gong@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0062.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::26) To VI1PR04MB4543.eurprd04.prod.outlook.com
 (2603:10a6:803:6d::26)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1f250188-3f72-4f53-b16e-08d6d5304530
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600141)(711020)(4605104)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB5661; 
x-ms-traffictypediagnostic: VI1PR04MB5661:
x-microsoft-antispam-prvs: <VI1PR04MB566152B4B44C7C7826057869890C0@VI1PR04MB5661.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:843;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(376002)(366004)(136003)(396003)(199004)(189003)(4326008)(86362001)(66066001)(110136005)(316002)(14454004)(25786009)(14444005)(256004)(6116002)(3846002)(71190400001)(7416002)(71200400001)(2201001)(7736002)(305945005)(2906002)(386003)(6506007)(5660300002)(6512007)(6486002)(50226002)(446003)(476003)(8936002)(478600001)(52116002)(186003)(102836004)(76176011)(99286004)(54906003)(11346002)(68736007)(6436002)(26005)(486006)(2616005)(66556008)(66476007)(66446008)(66946007)(64756008)(53936002)(8676002)(81156014)(73956011)(81166006)(36756003)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5661;
 H:VI1PR04MB4543.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LVD7F3sPurO2xjPFfZPVM9x3ybHG8NEwfey8shPPiNPHvpw/Hxg8U1JTYNwQCDPGTFX+yggyMQsAbbnkxBkWY7Ax+LuiN0LM+7H35xnUEIqUKoi8gb/OtoIrNa0lX/1K6S0D9PGQLeEsHftdKf6/3gLNIGM6Ixq0FXB2vE5nrcUdypyVAvA8HwDceRXlVXeRnFNtKs7n05iQoGl03xIX9qFF9o/H3DZ2jOGuzay7K1Pz0t29V72e2PKGl//hz+iqZmXMIvp4a2m9pz7NGMCfFpSChhS3BDAGSg+SMuUjesSQmieSU5ypc+3suGOyWn4UNp44I3SIfvRukBvT1Q5RUHaGzkdoj67b89H7ef00+jStiOoytm1YWhu29kTeBGDiRzDAAtvzlmvA6sBIEnl/o36vyYz1I62+gEju+p7joZc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f250188-3f72-4f53-b16e-08d6d5304530
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 10:14:21.9602 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5661
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_031428_628821_2ED829A7 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe05:0:0:0:620 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

  Add edma2 for i.mx7ulp by version v3, since v2 has already
been used by mcf-edma.
The big changes based on v1 are belows:
  1. only one dmamux.
  2. another clock dma_clk except dmamux clk.
  3. 16 independent interrupts instead of only one interrupt for
all channels.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 drivers/dma/fsl-edma-common.c | 18 ++++++++++-
 drivers/dma/fsl-edma-common.h |  3 ++
 drivers/dma/fsl-edma.c        | 69 ++++++++++++++++++++++++++++++++++++++++++-
 3 files changed, 88 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/fsl-edma-common.c b/drivers/dma/fsl-edma-common.c
index bb24251..64e822e 100644
--- a/drivers/dma/fsl-edma-common.c
+++ b/drivers/dma/fsl-edma-common.c
@@ -90,6 +90,19 @@ static void mux_configure8(struct fsl_edma_chan *fsl_chan, void __iomem *addr,
 	iowrite8(val8, addr + off);
 }
 
+void mux_configure32(struct fsl_edma_chan *fsl_chan, void __iomem *addr,
+		     u32 off, u32 slot, bool enable)
+{
+	u32 val;
+
+	if (enable)
+		val = EDMAMUX_CHCFG_ENBL << 24 | slot;
+	else
+		val = EDMAMUX_CHCFG_DIS;
+
+	iowrite32(val, addr + off * 4);
+}
+
 void fsl_edma_chan_mux(struct fsl_edma_chan *fsl_chan,
 			unsigned int slot, bool enable)
 {
@@ -102,7 +115,10 @@ void fsl_edma_chan_mux(struct fsl_edma_chan *fsl_chan,
 	muxaddr = fsl_chan->edma->muxbase[ch / chans_per_mux];
 	slot = EDMAMUX_CHCFG_SOURCE(slot);
 
-	mux_configure8(fsl_chan, muxaddr, ch_off, slot, enable);
+	if (fsl_chan->edma->version == v3)
+		mux_configure32(fsl_chan, muxaddr, ch_off, slot, enable);
+	else
+		mux_configure8(fsl_chan, muxaddr, ch_off, slot, enable);
 }
 EXPORT_SYMBOL_GPL(fsl_edma_chan_mux);
 
diff --git a/drivers/dma/fsl-edma-common.h b/drivers/dma/fsl-edma-common.h
index 21a9cfd..2b0cc8e 100644
--- a/drivers/dma/fsl-edma-common.h
+++ b/drivers/dma/fsl-edma-common.h
@@ -124,6 +124,7 @@ struct fsl_edma_chan {
 	dma_addr_t			dma_dev_addr;
 	u32				dma_dev_size;
 	enum dma_data_direction		dma_dir;
+	char				chan_name[16];
 };
 
 struct fsl_edma_desc {
@@ -138,6 +139,7 @@ struct fsl_edma_desc {
 enum edma_version {
 	v1, /* 32ch, Vybrid, mpc57x, etc */
 	v2, /* 64ch Coldfire */
+	v3, /* 32ch, i.mx7ulp */
 };
 
 struct fsl_edma_engine {
@@ -145,6 +147,7 @@ struct fsl_edma_engine {
 	void __iomem		*membase;
 	void __iomem		*muxbase[DMAMUX_NR];
 	struct clk		*muxclk[DMAMUX_NR];
+	struct clk		*dmaclk;
 	u32			dmamux_nr;
 	struct mutex		fsl_edma_mutex;
 	u32			n_chans;
diff --git a/drivers/dma/fsl-edma.c b/drivers/dma/fsl-edma.c
index 7b65ef4..1568070 100644
--- a/drivers/dma/fsl-edma.c
+++ b/drivers/dma/fsl-edma.c
@@ -165,6 +165,51 @@ fsl_edma_irq_init(struct platform_device *pdev, struct fsl_edma_engine *fsl_edma
 	return 0;
 }
 
+static int
+fsl_edma2_irq_init(struct platform_device *pdev,
+		   struct fsl_edma_engine *fsl_edma)
+{
+	struct device_node *np = pdev->dev.of_node;
+	int i, ret, irq;
+	int count = 0;
+
+	count = of_irq_count(np);
+	dev_info(&pdev->dev, "%s Found %d interrupts\r\n", __func__, count);
+	if (count <= 2) {
+		dev_err(&pdev->dev, "Interrupts in DTS not correct.\n");
+		return -EINVAL;
+	}
+	/*
+	 * 16 channel independent interrupts + 1 error interrupt on i.mx7ulp.
+	 * 2 channel share one interrupt, for example, ch0/ch16, ch1/ch17...
+	 * For now, just simply request irq without IRQF_SHARED flag, since 16
+	 * channels are enough on i.mx7ulp whose M4 domain own some peripherals.
+	 */
+	for (i = 0; i < count; i++) {
+		irq = platform_get_irq(pdev, i);
+		if (irq < 0)
+			return -ENXIO;
+
+		sprintf(fsl_edma->chans[i].chan_name, "eDMA2-CH%02d", i);
+
+		/* The last IRQ is for eDMA err */
+		if (i == count - 1)
+			ret = devm_request_irq(&pdev->dev, irq,
+						fsl_edma_err_handler,
+						0, "eDMA2-ERR", fsl_edma);
+		else
+
+			ret = devm_request_irq(&pdev->dev, irq,
+						fsl_edma_tx_handler, 0,
+						fsl_edma->chans[i].chan_name,
+						fsl_edma);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 static void fsl_edma_irq_exit(
 		struct platform_device *pdev, struct fsl_edma_engine *fsl_edma)
 {
@@ -218,6 +263,23 @@ static int fsl_edma_probe(struct platform_device *pdev)
 	fsl_edma_setup_regs(fsl_edma);
 	regs = &fsl_edma->regs;
 
+	if (of_device_is_compatible(np, "fsl,imx7ulp-edma")) {
+		fsl_edma->dmamux_nr = 1;
+		fsl_edma->version = v3;
+
+		fsl_edma->dmaclk = devm_clk_get(&pdev->dev, "dma");
+		if (IS_ERR(fsl_edma->dmaclk)) {
+			dev_err(&pdev->dev, "Missing DMA block clock.\n");
+			return PTR_ERR(fsl_edma->dmaclk);
+		}
+
+		ret = clk_prepare_enable(fsl_edma->dmaclk);
+		if (ret) {
+			dev_err(&pdev->dev, "DMA clk block failed.\n");
+			return ret;
+		}
+	}
+
 	for (i = 0; i < fsl_edma->dmamux_nr; i++) {
 		char clkname[32];
 
@@ -264,7 +326,11 @@ static int fsl_edma_probe(struct platform_device *pdev)
 	}
 
 	edma_writel(fsl_edma, ~0, regs->intl);
-	ret = fsl_edma_irq_init(pdev, fsl_edma);
+
+	if (fsl_edma->version == v3)
+		ret = fsl_edma2_irq_init(pdev, fsl_edma);
+	else
+		ret = fsl_edma_irq_init(pdev, fsl_edma);
 	if (ret)
 		return ret;
 
@@ -385,6 +451,7 @@ static const struct dev_pm_ops fsl_edma_pm_ops = {
 
 static const struct of_device_id fsl_edma_dt_ids[] = {
 	{ .compatible = "fsl,vf610-edma", },
+	{ .compatible = "fsl,imx7ulp-edma", },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, fsl_edma_dt_ids);
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
