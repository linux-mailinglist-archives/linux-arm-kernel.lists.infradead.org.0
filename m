Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B201EF958
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:34:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rJTuimclnhMjUP2UEY24lyPL/tVY0ajnKgu3x7qCsSc=; b=H6bJBwE6db92Ra
	4AwRgGuxF4J4nJ9kd/JwJ2PEp8V2j8RpgVytcuT+pBoSuo8hNgDcr2uR2IoPX4amHfujtCTwoeUBt
	hm01BS+tpXz5tZbRMC7iQgFEC6Zv6WhUHDcvDbhkN6dF0vSynCr9Lnx7meLx5sywly1cat7xRkcnw
	+DAnwmCAfNq17CEgXulURUG1SWmPKbUyEY3fHziBWvrYyYKtJc09wlUDSHTYzB2UlreK/NJGao3Js
	f91xVWqu+7vBaZ6Mqu3M/9to2GkImV/BBW8D1gs/tmnwgsJaz+1xnM488z8UOHP1UUex+OpKPiwo5
	PY3Gb7GfzwCS2t4BdEBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCUX-000589-L7; Fri, 05 Jun 2020 13:34:37 +0000
Received: from mail-eopbgr60044.outbound.protection.outlook.com ([40.107.6.44]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCSw-0003wB-Kb
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:33:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GKaQ2sClz7OW801SDgJ8S3C8Kpno+KPy/2rBVdWzojSJVLnJ4bX7B9QTeJUuj0QAbSLp35b0SNilNQJTgzUMDcCn76YYtHNg0uya4mnX8HjdBdW0kITMonbUjpxkd2iwz8sXeu7Q9rgAVgJC2BsLQ0paVPbwgLyIUK3wesTidZZzaV45bBc/8U/vSUw7Q3Km8i9+egKcW6KUlFJ/uDmcT6i4+WgzA+3kNhJQRTsCmKrYPV34sDPLuHN0Azx4XVwpKWmGbxv5gMPFpzi1s33uEwu10u2rdmRCN61RoOymwh2zgQ6+8Z9f6iSRP7MvmMQ3k/rpXurI1v+oISraAnVhIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oiPkcC3B+QkXtXP3K0ZodSEVT1VTh7f/2ZXBFmj8Rpc=;
 b=lK/hr3GRANSuEGrB5lbJd5ZcNJrjUTVCmDu95hHGxF+K7AnLHCoCDMCcU0r2znbYV+4FClH2fi4TvXyKI2TmshEWvpdcKmkEThwLPw8Ql6ox3WO87xUPyhyiXPhB7dIfK1mh+hsepgRSXeLQ1DljWJ1adMdW+t3/ZYXCkqZvmaJ4UOwoYMcomKclE9RKKBkHuQLx0ossjtDICoyhlFQY2Xxzeklv6qRuQINIgnoMC1wlVyuxDHeJtO6MAEUrklZcNXEov2NLbcwv2LmjU48AchBhfWjWBtaIWW9YvBdqnG4XJa6Ozc6KBNn88vo5BCog36PgQaj3Uif3ITN4tCFBag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oiPkcC3B+QkXtXP3K0ZodSEVT1VTh7f/2ZXBFmj8Rpc=;
 b=jKTgdvhJmmJaCnMdG6QBvCXGZx1FNRMpj/EYRAXlN0g8IkOdQ5ZL2mdZG033MF/reyIMPmd2YPl4v49wYYfR7sqA0RqSVJHjuikjhw4A+s57sT3zZnKS9ul9iYPDAuGgeqxFXANOWO+7EwDAiXrvEuR5mE7dz+Bm8ZCNcIclR1c=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6702.eurprd04.prod.outlook.com (2603:10a6:803:123::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Fri, 5 Jun
 2020 13:32:54 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3066.019; Fri, 5 Jun 2020
 13:32:54 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: mark.rutland@arm.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, vkoul@kernel.org, will.deacon@arm.com,
 shawnguo@kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 martin.fuzzey@flowbird.group, u.kleine-koenig@pengutronix.de,
 dan.j.williams@intel.com, matthias.schiffer@ew.tq-group.com
Subject: [PATCH v9 05/14] spi: imx: fallback to PIO if dma setup failure
Date: Sat,  6 Jun 2020 05:32:26 +0800
Message-Id: <1591392755-19136-6-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591392755-19136-1-git-send-email-yibin.gong@nxp.com>
References: <1591392755-19136-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR02CA0048.apcprd02.prod.outlook.com
 (2603:1096:3:18::36) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR02CA0048.apcprd02.prod.outlook.com (2603:1096:3:18::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.20 via Frontend Transport; Fri, 5 Jun 2020 13:32:48 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 9c13fa9e-b9ee-4196-ec12-08d80954f39e
X-MS-TrafficTypeDiagnostic: VE1PR04MB6702:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6702808873A575B61CF9A1BD89860@VE1PR04MB6702.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0425A67DEF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1RX7E8PMQTLOkbIDIA8401CAsT1/XPa4w1G/CYtJ9KG3tYtbVb8d6aUh3indOe3Po9BQg83bFknM0eXDfSmStNszrgXanGJhaYyvxIfl/boKsbsMssTZn2C8Ip9eq9dOONRw5IFpCDfrMV6IBYEYnstAdkHHqP2ruQ9TdG+9hO5gze8uDw4oiMpH481Jci8HHigstokbx6TaCe/TvdoMp6OsU7ey0zJId/CRtExEnbytRMR18/3Vrg++GEOvFymnA7/4gwzjWf94OyAMjHe7Kd961yo70zoDjogF2kFMr2IdBil4/PsENMAiWBeylSCxN9nGB5wBuEvyMRAEBs8kBE4MlNJ6k/MQUTChTdZMq+LcLGaOBQRbTRuxYS44wf/K
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(376002)(396003)(136003)(366004)(6486002)(52116002)(2906002)(316002)(4326008)(6506007)(5660300002)(26005)(66946007)(2616005)(956004)(478600001)(66556008)(186003)(8676002)(16526019)(7416002)(6512007)(6666004)(36756003)(8936002)(83380400001)(86362001)(66476007)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: vRHsGZwqU5Tzi2JLdLnOX6SBAPY40Dm4E3I6j9rTjd4WdG0a/3uo4dmbYtixfxI0cVaSeh1p16hHN+bNNwnbBPETpQg3j3fg4A+50+2JSnNFB9ZYaycuXxIQXP2wlV/24xZLvkC1GIEp+RHlz86kbBV9hROtvJcNE9vTT9HC5ER3Qx2U+Df6uwVOOpWkzubmqX7znzSBuddtkWQi8DivcB7sjfi3OcKGXFhIIPG3Qq3IJqAe/7Y9+KesOcdRLixqIxrXQQytcfmRAaIAPbpVmeHCrjzDYDZ8VCjAlnaH8jkHlGNgXOwwIhwlcAkO4ue0cjY7avq+u3AL+mxQwmPnslA8GRv19GFRqWPzlo9itU2H14VuDKB/+dPLLg8HT+/52t2ROBQveEAMQMskMHKzfIE/5MtQfN7l58rvZmj1dmZ0lteYfV//ssBBB9l8vPr7XaxGKW4ha0/K0y/5q2d/Jn7nOQKBOXoVmrI+OY9LZvw=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c13fa9e-b9ee-4196-ec12-08d80954f39e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2020 13:32:54.4465 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qSgdExW8Uw3Kw3JqTNXgVx61OtD7Jh2u/pnJSFopXunrjuPZNEJt94C07//FJ0fbNs9fSYlZ3BgdTz+5MQ9/wQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6702
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_063258_687557_39884F66 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.44 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.44 listed in list.dnswl.org]
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fallback to PIO in case dma setup failed. For example, sdma firmware not
updated but ERR009165 workaroud added in kernel.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/spi-imx.c | 31 +++++++++++++++++++++++++++----
 1 file changed, 27 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi-imx.c b/drivers/spi/spi-imx.c
index f4f28a4..b7a85e3 100644
--- a/drivers/spi/spi-imx.c
+++ b/drivers/spi/spi-imx.c
@@ -71,6 +71,7 @@ struct spi_imx_devtype_data {
 	void (*reset)(struct spi_imx_data *);
 	void (*setup_wml)(struct spi_imx_data *);
 	void (*disable)(struct spi_imx_data *);
+	void (*disable_dma)(struct spi_imx_data *);
 	bool has_dmamode;
 	bool has_slavemode;
 	unsigned int fifo_size;
@@ -485,6 +486,11 @@ static void mx51_ecspi_trigger(struct spi_imx_data *spi_imx)
 	writel(reg, spi_imx->base + MX51_ECSPI_CTRL);
 }
 
+static void mx51_disable_dma(struct spi_imx_data *spi_imx)
+{
+	writel(0, spi_imx->base + MX51_ECSPI_DMA);
+}
+
 static void mx51_ecspi_disable(struct spi_imx_data *spi_imx)
 {
 	u32 ctrl;
@@ -987,6 +993,7 @@ static struct spi_imx_devtype_data imx51_ecspi_devtype_data = {
 	.rx_available = mx51_ecspi_rx_available,
 	.reset = mx51_ecspi_reset,
 	.setup_wml = mx51_setup_wml,
+	.disable_dma = mx51_disable_dma,
 	.fifo_size = 64,
 	.has_dmamode = true,
 	.dynamic_burst = true,
@@ -1001,6 +1008,7 @@ static struct spi_imx_devtype_data imx53_ecspi_devtype_data = {
 	.prepare_transfer = mx51_ecspi_prepare_transfer,
 	.trigger = mx51_ecspi_trigger,
 	.rx_available = mx51_ecspi_rx_available,
+	.disable_dma = mx51_disable_dma,
 	.reset = mx51_ecspi_reset,
 	.fifo_size = 64,
 	.has_dmamode = true,
@@ -1385,6 +1393,7 @@ static int spi_imx_dma_transfer(struct spi_imx_data *spi_imx,
 				DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 	if (!desc_tx) {
 		dmaengine_terminate_all(master->dma_tx);
+		dmaengine_terminate_all(master->dma_rx);
 		return -EINVAL;
 	}
 
@@ -1498,6 +1507,7 @@ static int spi_imx_transfer(struct spi_device *spi,
 				struct spi_transfer *transfer)
 {
 	struct spi_imx_data *spi_imx = spi_master_get_devdata(spi->master);
+	int ret;
 
 	/* flush rxfifo before transfer */
 	while (spi_imx->devtype_data->rx_available(spi_imx))
@@ -1506,10 +1516,23 @@ static int spi_imx_transfer(struct spi_device *spi,
 	if (spi_imx->slave_mode)
 		return spi_imx_pio_transfer_slave(spi, transfer);
 
-	if (spi_imx->usedma)
-		return spi_imx_dma_transfer(spi_imx, transfer);
-	else
-		return spi_imx_pio_transfer(spi, transfer);
+	/*
+	 * fallback PIO mode if dma setup error happen, for example sdma
+	 * firmware may not be updated as ERR009165 required.
+	 */
+	if (spi_imx->usedma) {
+		ret = spi_imx_dma_transfer(spi_imx, transfer);
+		if (ret != -EINVAL)
+			return ret;
+
+		spi_imx->devtype_data->disable_dma(spi_imx);
+
+		spi_imx->usedma = false;
+		spi_imx->dynamic_burst = spi_imx->devtype_data->dynamic_burst;
+		dev_dbg(&spi->dev, "Fallback to PIO mode\n");
+	}
+
+	return spi_imx_pio_transfer(spi, transfer);
 }
 
 static int spi_imx_setup(struct spi_device *spi)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
