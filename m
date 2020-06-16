Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9E71FB4C4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:43:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+msMbEJ5IGCZAukrnvM0RehyRc64bMSXn3lYep4x0+0=; b=AJaADk4/4iV+EO
	GuCLLgLPQEu8ciOtcoIK7lLUa2vTxNUbK6LZoxG9ZaCjx4IYXtd6VaTd/iJI9RtNZv8+zWdeopzkR
	7YVOgmQcuy7ilZGY9RD7JQvMdSUH+004BbrrDJuBAl7CVH7RKe2lsv2WWGY86ye8bWzemXjAx54kb
	hYyWLdjXNTG+x4WhrZ6d5WKS//NztsgJphKS+0oRewROXnGR0y+HpPg/ofesp6JmyBsOmlB0vkDKe
	EgSC4Iat3Lvbs34JVz7bDgNJ7pZvlFOnPqabwCQdQlzcjXGYJMdShNn9a3tsvJqbg68Zj0ZEkf+nX
	NEgmXg9uPN3ZlzLGFP8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCoP-0002XC-0O; Tue, 16 Jun 2020 14:43:41 +0000
Received: from mail-eopbgr80059.outbound.protection.outlook.com ([40.107.8.59]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlCnb-000259-UT
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 14:43:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BPFjd78Wktwm6XioOjxlAnCLDXcwck/s0R8gmKU0GCU9pRaZ+uI9xca/1Z5obxBUibfqo3YCsIXDjwGufCZOF6YFSSPVGoltOGF0+eAzBa5WfBNARGcL/fBVl44AlQaRo8Sm80pUwPdN5dwXJjdLtzL57OxJ8+GuRkFgMapfORMfuh9SZvDmdnBQxwKMYWcg0ExAGYMTfIDwwkOQR5txNJtfB/m0NeQGZw5uZmOzUvpC2Xf3YxEHQG24V7/RXLLxBj1qOwwQsSTPMU59rIYb+f/sAaDrI9DHtAESX+Rfv6eqh1DoPz+wkowiiQlBFIMtV4a8xc35JPceTUIBTuxgZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BWD0C4nag/n17IHZIAleGqEk3ypshR7pobGoU1GZAI0=;
 b=M5VMpNva1ZeTUI63HX3xqBXKxu6sOVfiEEd1mTB8tWa3HNPC7IOsOPGVNIcc3d0/XTDl374N4eEtuSHDRSiXHmusVWCYn3qJhj+JKHoJqiUkjPaw2ekcT2beZtcdX3oJ03CBxbNC6ee6PTTYHWQ6IXnYpd12KU7MWIYA+ALhoODSx99S0xfF1G0Nh2wEzV2ll7auB2TXgAArIrKwVL4nW38XNNmFWZ8ttnJPPuI9WmAq9FJlgpFvbGvS01nhg+yA+uFjvD4AcGoNLFBU9q69CLgWV81K6Mgv32vLr+L/PorTz0JtTawLA/oScPVcQsqUKV68D6zRVV1jngOBlcW9Uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BWD0C4nag/n17IHZIAleGqEk3ypshR7pobGoU1GZAI0=;
 b=cubxPXICtEw1lFbOzy/qZ6Z9qr+enCZzXZ/u0/rzROd7b1ZM304OBtL63rmazo+/7O7ONxMDofAxl+zlRa2sywQ//ex5k3NjxJvseT65fng8DGonyLQs9fJ9f4abnq75hN5yLEMQYD729vbquKTFWt0zbwB7E1Pjf3NyqjSy91M=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6623.eurprd04.prod.outlook.com (2603:10a6:803:125::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.24; Tue, 16 Jun
 2020 14:42:48 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3088.028; Tue, 16 Jun 2020
 14:42:48 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: broonie@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, robin.murphy@arm.com, matthias.schiffer@ew.tq-group.com
Subject: [PATCH v2 2/2] spi: imx: add fallback feature
Date: Wed, 17 Jun 2020 06:42:09 +0800
Message-Id: <1592347329-28363-3-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592347329-28363-1-git-send-email-yibin.gong@nxp.com>
References: <1592347329-28363-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR06CA0163.apcprd06.prod.outlook.com
 (2603:1096:1:1e::17) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR06CA0163.apcprd06.prod.outlook.com (2603:1096:1:1e::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3109.21 via Frontend Transport; Tue, 16 Jun 2020 14:42:45 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: bf07b327-f169-4980-e1e8-08d812038a0f
X-MS-TrafficTypeDiagnostic: VE1PR04MB6623:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB66235BACB166DAE88B405BEA899D0@VE1PR04MB6623.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:597;
X-Forefront-PRVS: 04362AC73B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DIj/4MADuq49/noAjeuFxqjRxTbcKC7nqBbXp9iEy2463fcZTzQIXm7y4cB3N85Rwwsgyyk/JZbmB5BTR5D5pzHuk60D2zxhshCv4GFDFlayp5Ad30BgbKmlnqVZBDyq4IFA7pdOc4oi7oFldWIK/bsNCBXuiYgcdJi4WTl4eWWoGHXU2fLiTgNMIYXab9XhTHSO/kMDVo90C1XIJwd7qHd3/lmFNA47uWBjGIlBGTxFozJ87BARnO+oGaBlYmd/MC9VRze5U7JCaqrvcL67Jtd42xj6mcVQGrAIAqxCJHB9smCY1pGeUa/xZGxzeqAFTwGehJOH33FDDrdpVMrOhw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(8936002)(6512007)(6506007)(66946007)(66556008)(8676002)(4326008)(66476007)(498600001)(186003)(16526019)(86362001)(2906002)(83380400001)(6486002)(26005)(52116002)(36756003)(5660300002)(7416002)(2616005)(6666004)(956004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: UNYLPLHVhD+Gc689JFfECxKaTFTd4dp0Img25I0JOYNkAFpHxjw22teliZ3Ik6Uhi15WlpSQuSMjwx8llNDBPzxXLZUvBHi73aE1CoinWC1HEo7uw2npCN8NBYmP9NwXKbCw6pCCRFJNJl+8OUAdxb9y5dWTy4jg91sgMwI6wFT2zxq69eFwFiKdF+aicq3rqbdYGINLLubJwb2RqcgdA/h0kPZ2SGicyNJlC7N1Zn2Eq0JqnKBncvKBUMQIDkNWF/3MpjHRFIkcz8Ok+sd7rYvSWpfGVbZSXadCTiJ9IlwYRNY4HGwQWak02KBMCILR/vORHTXBUIyeQLH1CASZeXd5k8BazJR6toN1uZUYiKny5VfwBwMtxPSQUwZAiSbwCBEvi3PjkefR7Hh+YWNaL5YLn0uuU6Yze+eyr7pbXWKvyw7hHESL3yX858KGwnSbX4knsPbtFYLnLKalPPJX9YJplwRbe3YyNkGMAFyewvePwn3732Nlbzqzi5XZbYPi
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf07b327-f169-4980-e1e8-08d812038a0f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2020 14:42:48.5802 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V+pzcmYib8kkVR9Is9sLUQWLAx6L9UOb2jMaM3a81xKbyvsd+MqvDlNfYRxQCZhLw7lRyo+qED5YCTEcJ/GFFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6623
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_074252_025190_7C366376 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.59 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.59 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add fallback pio feature in case  dma transfer failed before start.
Besides, another whole pio transfer including setup_transfer will be
issued by spi core, no need to restore jobs like commit bcd8e7761ec9 ("spi:
imx: fallback to PIO if dma setup failure").

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 drivers/spi/spi-imx.c | 35 ++++++++++++++---------------------
 1 file changed, 14 insertions(+), 21 deletions(-)

diff --git a/drivers/spi/spi-imx.c b/drivers/spi/spi-imx.c
index b7a85e3..2b8d339 100644
--- a/drivers/spi/spi-imx.c
+++ b/drivers/spi/spi-imx.c
@@ -224,7 +224,7 @@ static bool spi_imx_can_dma(struct spi_master *master, struct spi_device *spi,
 {
 	struct spi_imx_data *spi_imx = spi_master_get_devdata(master);
 
-	if (!use_dma)
+	if (!use_dma || master->fallback)
 		return false;
 
 	if (!master->dma_rx)
@@ -1364,11 +1364,12 @@ static int spi_imx_dma_transfer(struct spi_imx_data *spi_imx,
 
 	ret = spi_imx_dma_configure(master);
 	if (ret)
-		return ret;
+		goto dma_failure_no_start;
 
 	if (!spi_imx->devtype_data->setup_wml) {
 		dev_err(spi_imx->dev, "No setup_wml()?\n");
-		return -EINVAL;
+		ret = -EINVAL;
+		goto dma_failure_no_start;
 	}
 	spi_imx->devtype_data->setup_wml(spi_imx);
 
@@ -1379,8 +1380,10 @@ static int spi_imx_dma_transfer(struct spi_imx_data *spi_imx,
 	desc_rx = dmaengine_prep_slave_sg(master->dma_rx,
 				rx->sgl, rx->nents, DMA_DEV_TO_MEM,
 				DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
-	if (!desc_rx)
-		return -EINVAL;
+	if (!desc_rx) {
+		ret = -EINVAL;
+		goto dma_failure_no_start;
+	}
 
 	desc_rx->callback = spi_imx_dma_rx_callback;
 	desc_rx->callback_param = (void *)spi_imx;
@@ -1425,6 +1428,10 @@ static int spi_imx_dma_transfer(struct spi_imx_data *spi_imx,
 	}
 
 	return transfer->len;
+/* fallback to pio */
+dma_failure_no_start:
+	transfer->error |= SPI_TRANS_FAIL_NO_START;
+	return ret;
 }
 
 static int spi_imx_pio_transfer(struct spi_device *spi,
@@ -1507,7 +1514,6 @@ static int spi_imx_transfer(struct spi_device *spi,
 				struct spi_transfer *transfer)
 {
 	struct spi_imx_data *spi_imx = spi_master_get_devdata(spi->master);
-	int ret;
 
 	/* flush rxfifo before transfer */
 	while (spi_imx->devtype_data->rx_available(spi_imx))
@@ -1516,21 +1522,8 @@ static int spi_imx_transfer(struct spi_device *spi,
 	if (spi_imx->slave_mode)
 		return spi_imx_pio_transfer_slave(spi, transfer);
 
-	/*
-	 * fallback PIO mode if dma setup error happen, for example sdma
-	 * firmware may not be updated as ERR009165 required.
-	 */
-	if (spi_imx->usedma) {
-		ret = spi_imx_dma_transfer(spi_imx, transfer);
-		if (ret != -EINVAL)
-			return ret;
-
-		spi_imx->devtype_data->disable_dma(spi_imx);
-
-		spi_imx->usedma = false;
-		spi_imx->dynamic_burst = spi_imx->devtype_data->dynamic_burst;
-		dev_dbg(&spi->dev, "Fallback to PIO mode\n");
-	}
+	if (spi_imx->usedma)
+		return spi_imx_dma_transfer(spi_imx, transfer);
 
 	return spi_imx_pio_transfer(spi, transfer);
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
