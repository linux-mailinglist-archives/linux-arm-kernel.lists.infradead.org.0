Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B49717EF4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 04:33:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L2WDCh9k944tOk7MWXyLTL9wC3uQJ7SdSsYpKqSZlK4=; b=pXieGSp7b9YOQb
	qbQdn8nTvaDaaagc7AQNjVasmOyf1qbz9PvXYQY/ieCiYaElcjsz6xLsWg96EwEQ7+Fpd8NnPerUm
	1zMyqTSYamDRxEkISHJbjf+jm2+y3Th+0+NJq2GJjlZdDhrhnU/zEn12CSZFJP/1KNXoJqoKbtcCE
	tYgmM7TEzNKcHYxSwTblxLbxyiBmb5jz3LMHzdWxLz17JeQ6aAy7CrdyAB2ajhyAwSILYrmuciVjH
	UQRsTcQzNqKgoBgEmoZJET9G4CVm/I6qgU8ZbQJSp+UsQ1VvFHPhVHbiE+ynYHk89JdkCU/LpVhcO
	sluRHweTEZBBBwv5U02g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBVdf-0003zW-LF; Tue, 10 Mar 2020 03:33:03 +0000
Received: from mail-eopbgr80058.outbound.protection.outlook.com ([40.107.8.58]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBVbt-00016Q-Hw
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 03:31:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O2VvSFFutqb5CSLA4qMgCJ6hpmmcDXXbSLXK6OUz0k3hnhI1TMikauB87sTKQ73ZDfAEHZoGtpotX8ic2COPq3IJGK8TYWBLw4g/7PPbKGUWBjovyFZmHxMGjwrn1ZaZgE67Wjndn2lzB/IqS/jeu95hfbA5STkTXItH7FAHEzpwExjFJbT3+a6K+j4Zm7G2M5Q+8XMB1eGRcn0QFnY4rmgwu4IfqVpbp8bdXl9UmLUY5nKcTmzXUUnS9kfPMLURZ3gZ2+a/fOmBqjYJ24sqy2ZRppi7epddj6Cp0k7s4Vur0b5e5oRprSUGPr8QSy4CJ/R9VAtoyvmCtVURWS+/Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HSBsom9EF0Cbxv/pBIqbfRSzSfYTK6wk9hghYcRcx0o=;
 b=ddKlCoFy61G2s2raUWWnJM/5hzIUnuyWP83cnvPI+yAl23g2IwkxRqauVwHsZY52Ye7mQP30ovSdXde7eUeDcBASSwHGyd1eStE408CZV4Bt2THBxhur12U5lNbhhfpha8ss+eUpwRNSTh+8FH6ZLWzntCURz03a5JoxKgwxvQ0o6wd3/OZe3RVtcF87AUoB34gv9T0PQPAMPI5n9viSmsaBZUGWkRI8fah8FuggNe2qpzMnC24QJw3GNz9X+ipqX8jprc+74q/Wc0omarkh6Ib8p6z0b2dh3EbnLr21kgzOzJRKAJh8OnsbC+gZYVsOxyrf3x4MOUvhsgZMDZRuwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HSBsom9EF0Cbxv/pBIqbfRSzSfYTK6wk9hghYcRcx0o=;
 b=iULCYHPBdlqVPKY4HGOAC/Pw7cRnWi8VTSZ5HDCX1wpRJn5M37BxqYatBoslLClK8Lli88R2+zTg/NTnx92ryO5IcnDJ/mzhufvUY6IW2g9x1Vzle0tbSkU2ruFOCvG4rFO6ReuEUt0qstO/vzXgykr4TtdAXvZzUkvZrZd2JdA=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6621.eurprd04.prod.outlook.com (20.179.234.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Tue, 10 Mar 2020 03:31:11 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 03:31:10 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, broonie@kernel.org, robh+dt@kernel.org,
 festevam@gmail.com, dan.j.williams@intel.com, mark.rutland@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, l.stach@pengutronix.de,
 martin.fuzzey@flowbird.group
Subject: [RESEND v6  06/13] spi: imx: fix ERR009165
Date: Tue, 10 Mar 2020 19:31:55 +0800
Message-Id: <1583839922-22699-7-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583839922-22699-1-git-send-email-yibin.gong@nxp.com>
References: <1583839922-22699-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR06CA0241.apcprd06.prod.outlook.com
 (2603:1096:4:ac::25) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR06CA0241.apcprd06.prod.outlook.com (2603:1096:4:ac::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2793.15 via Frontend Transport; Tue, 10 Mar 2020 03:31:05 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 7e954aac-743f-4e0f-f335-08d7c4a37a33
X-MS-TrafficTypeDiagnostic: VE1PR04MB6621:|VE1PR04MB6621:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6621A9DF0F7C1F081806C8D189FF0@VE1PR04MB6621.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 033857D0BD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(366004)(376002)(396003)(199004)(189003)(4326008)(8936002)(6666004)(8676002)(81156014)(81166006)(2906002)(5660300002)(2616005)(7416002)(36756003)(66556008)(66946007)(6506007)(52116002)(316002)(956004)(966005)(26005)(478600001)(16526019)(186003)(66476007)(86362001)(6486002)(6512007)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6621;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BNyg5tNWNzpTiRtLHLReG7S69oB6A+Sx/uj6OsW46fMf+2NcGRvtfquriV20DiM/4U/eJg5ND5xBz2mVaGYTHCOYP0cUtA5DjyOX9pQIo9N68pWWcKnCVS9qDz29ekHbrXHzMMRWhMSwvD9tCmL5b45b7kE54f1FLlT4OBWEw1tNgDtNDz5xeSvlH0FAu7loYZQQEZ6dVLtBVEKX9rqNYdo7Bya9rNKVxF8F1bByO8XslttorQ9FTJqz1brxKVpQG7kGkN/AFUeA/xxhC+lYZxo73lznoLZSAOIzD4TJjjnEG7RevS5pZRXhsJX5Z2deLex3aZT2ilJX5muPlPEUX8ZQWwMjPJRKL8SrcCkynFx8+QF9HJeFrzrrtBVEK4Li6BniFr7XDaDgcIisGykJrIifU+9WB0HXYJU01je3UJDjJ3M6aRI59FJx2YdpyjftlXtiqwWNEDB+pfP9X4ZW7/mTYIf1w1K17nbjkNhBTEC9Rpmi67j+HYTApXQFq1+84jVlnaG3lw0JQ6NtHFDKYw+g9jfPX3chl04a+R/4vrF+msPiCw7AVa8QIW2YIVUN414zFS8QBy7ZtrUW1Krz8Q==
X-MS-Exchange-AntiSpam-MessageData: 7KqrrwKDOSpua90VRT9mHVBXK+KclsrwIAY03yAEgh5VYHs1GASrP1k4LbFIABmQL9y7iWYaNrTN2hDX1J8LRYJLmwO5u4UqGN5BqCX78bWHF0J33ClUE7Sd6ej1TecEeQXc5o0cnKEdZCrea5dOyg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e954aac-743f-4e0f-f335-08d7c4a37a33
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2020 03:31:10.8680 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fM0zn08uhhM13YItIx14ep523IIMqz77jxZrbZquB31P5J9ft+/ZEeB2N8jxHnzdrVdeo9mNCDU2K8uM2RVs5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6621
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_203113_706807_5AC80337 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.58 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change to XCH  mode even in dma mode, please refer to the below
errata:
https://www.nxp.com/docs/en/errata/IMX6DQCE.pdf

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-imx.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/spi/spi-imx.c b/drivers/spi/spi-imx.c
index f4f28a4..842a86e 100644
--- a/drivers/spi/spi-imx.c
+++ b/drivers/spi/spi-imx.c
@@ -585,8 +585,9 @@ static int mx51_ecspi_prepare_transfer(struct spi_imx_data *spi_imx,
 	ctrl |= mx51_ecspi_clkdiv(spi_imx, t->speed_hz, &clk);
 	spi_imx->spi_bus_clk = clk;
 
+	/* ERR009165: work in XHC mode as PIO */
 	if (spi_imx->usedma)
-		ctrl |= MX51_ECSPI_CTRL_SMC;
+		ctrl &= ~MX51_ECSPI_CTRL_SMC;
 
 	writel(ctrl, spi_imx->base + MX51_ECSPI_CTRL);
 
@@ -612,12 +613,14 @@ static int mx51_ecspi_prepare_transfer(struct spi_imx_data *spi_imx,
 
 static void mx51_setup_wml(struct spi_imx_data *spi_imx)
 {
+	u32 tx_wml = 0;
+
 	/*
 	 * Configure the DMA register: setup the watermark
 	 * and enable DMA request.
 	 */
 	writel(MX51_ECSPI_DMA_RX_WML(spi_imx->wml - 1) |
-		MX51_ECSPI_DMA_TX_WML(spi_imx->wml) |
+		MX51_ECSPI_DMA_TX_WML(tx_wml) |
 		MX51_ECSPI_DMA_RXT_WML(spi_imx->wml) |
 		MX51_ECSPI_DMA_TEDEN | MX51_ECSPI_DMA_RXDEN |
 		MX51_ECSPI_DMA_RXTDEN, spi_imx->base + MX51_ECSPI_DMA);
@@ -1171,7 +1174,11 @@ static int spi_imx_dma_configure(struct spi_master *master)
 	tx.direction = DMA_MEM_TO_DEV;
 	tx.dst_addr = spi_imx->base_phys + MXC_CSPITXDATA;
 	tx.dst_addr_width = buswidth;
-	tx.dst_maxburst = spi_imx->wml;
+	/*
+	 * For ERR009165 with tx_wml = 0 could enlarge burst size to fifo size
+	 * to speed up fifo filling as possible.
+	 */
+	tx.dst_maxburst = spi_imx->devtype_data->fifo_size;
 	ret = dmaengine_slave_config(master->dma_tx, &tx);
 	if (ret) {
 		dev_err(spi_imx->dev, "TX dma configuration failed with %d\n", ret);
@@ -1265,10 +1272,6 @@ static int spi_imx_sdma_init(struct device *dev, struct spi_imx_data *spi_imx,
 {
 	int ret;
 
-	/* use pio mode for i.mx6dl chip TKT238285 */
-	if (of_machine_is_compatible("fsl,imx6dl"))
-		return 0;
-
 	spi_imx->wml = spi_imx->devtype_data->fifo_size / 2;
 
 	/* Prepare for TX DMA: */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
