Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD0F1F0786
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 17:23:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n3FmX7qWdyaZ6pBdyAHQJBYaJ99LL1QpsMlDor2E8hE=; b=J5sq994vJHt8ga
	ZvxZEmmO7/AsLlT4rZQo4NEqF+BqtCxn3E2aAuKVBhqhM7m1tW8LP16Ntmi/6vbKtLn74IPhrcfHF
	yvTtxdwRbAPmLaMqzdnKlxhZFczJ07ux+365vqIZ8mWTqdx4V7/HN6D7bbJYURbJW8PZmsgC22LP0
	vJ/+Vo/LNH4Gc8ZKeBzj8qNYqn/2PFTrcsvU3H7bRcvDrEap5eS/pLFJbP9JLz4c/GNrJxXaSsorQ
	rpXbdanXkI7GI3DxFy97fF9fdrR5trqnwIKhb7f71LuseUOZpdPq+2ufFisu2rtc8+mQd6EnBa8p5
	dmSlh389RbAp/hBdBX0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhafJ-0008Mo-8n; Sat, 06 Jun 2020 15:23:21 +0000
Received: from casper.infradead.org ([90.155.50.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhae3-0006ye-7F
 for linux-arm-kernel@bombadil.infradead.org; Sat, 06 Jun 2020 15:22:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=MIME-Version:Content-Type:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=9n1VV5nm38ydhp9SERQDwP6xUvEr4oY0B1T8ST6d3As=; b=rAgbw53UBtFQuo5ingK0FZoAbF
 HNjJ3lS1yCRycS/qBitKgy9LcCbBSCMnZeyd95dqgUdw709cehR48rG7o0DiKHi1VEr2zmHANdouc
 yJ5vihOkxb90whh3/Z4d6hZa+rrdHDCIZ35ieioff3Y9inPPnS3ZW3ExorzPYd18+Pp1tz62jEA4f
 j0+Yp29z26u4NOcf0D+8pjDqto7sZvXk8tjvenGZNXgX5cB37x8zYXMXf2qpIc3tGmz6TDXayCHXT
 YFLG9kB0TgUvLJuH45Gz2LytCQDQTywzfnbxs3FMKbcicqiMo681+mUv12CcclQINNk+ZeApocK5Z
 shcZCS4w==;
Received: from mail-eopbgr60076.outbound.protection.outlook.com ([40.107.6.76]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhadx-0003Q3-E9
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jun 2020 15:22:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hFnzR+0TeSJpRp4Oe4m57R+pHAdBwpQkB6PHC9eQsWE+ERoeRKcg3vLSq8mes0jsnMeai8J+HVX7VrHva1sBtizu1x4JwkLYYRjOR1c+Dizqaz6ZImDoNB2NZmm8AQrnoNzQGdrFhYpZOkgdcaBcdmKVHadOE44FeZHyGUIA3aPp4R9r68nfk1b2Er+a2NvNrNWwbP54WSDqpiCzROT1/DJCDYSnlnGrnWEqVExTNWx/wJxDG92qfzkkKZhmlqxb1vVIrIktFTMQ0EogpU8R8h8LVeX2VFeHV/TbFU0xMu340onbya6uaYiBzgqi6dhpvhcqe+ghQb1fUg1fnC/kdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9n1VV5nm38ydhp9SERQDwP6xUvEr4oY0B1T8ST6d3As=;
 b=LG/s/z37EJZvDjKt+ZW1kZ73+oUMwENIikvfQ8HN3+zJVFkxonvOpfFZOHcE5iX1RxgvIKYsyZCbis20PUMk3ISBc82DMqA3WZLdnF/GHw4TAI/8JXHTvrCeK0ovhiyYjVcbJH43UHB2SUSYeFoRkLzkSrnsr7utxStaDSw9+7VHFiymurpMRQ5IKaCOK7szWLZvtQNz+cp3ts9Gww3/rZZWAHEYTCLyvvXZAZWkn5QubZWJ72Zm1NAhJydaV5Wzr8GUHa4N/JWatWkIB1RfzZuJHzGk8w6baYylwNwycRu1oshr05tGG4I4SPeBzRRxCAN+4nlFRT8UQPt0wuu8+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9n1VV5nm38ydhp9SERQDwP6xUvEr4oY0B1T8ST6d3As=;
 b=LcIfgXiLi8T2j7PJXrR4NGBcwDa/a77D6B6Tz2ZAgWgiarD4mCbApQHQ86lC0hjzqsUoEBt7p5ECVk/9fSZZ0TqFLlp+EVUOVa0ExgqxSdrgLUmLWl0GU5v1SqX9vLjUqKeTWrsBZXsufeUio4OMG7nXPFY5aTOpUcejjiPIsx4=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6511.eurprd04.prod.outlook.com (2603:10a6:803:11f::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Sat, 6 Jun
 2020 15:21:51 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3066.019; Sat, 6 Jun 2020
 15:21:51 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: mark.rutland@arm.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, vkoul@kernel.org, will.deacon@arm.com,
 shawnguo@kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 martin.fuzzey@flowbird.group, u.kleine-koenig@pengutronix.de,
 dan.j.williams@intel.com, matthias.schiffer@ew.tq-group.com
Subject: [PATCH v9 RESEND 08/13] spi: imx: remove ERR009165 workaround on
 i.mx6ul
Date: Sun,  7 Jun 2020 07:21:12 +0800
Message-Id: <1591485677-20533-9-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591485677-20533-1-git-send-email-yibin.gong@nxp.com>
References: <1591485677-20533-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR04CA0184.apcprd04.prod.outlook.com
 (2603:1096:4:14::22) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR04CA0184.apcprd04.prod.outlook.com (2603:1096:4:14::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.18 via Frontend Transport; Sat, 6 Jun 2020 15:21:45 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 4e15ae43-9ac9-4f99-ebfd-08d80a2d5659
X-MS-TrafficTypeDiagnostic: VE1PR04MB6511:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6511898BE2EC45263568B92289870@VE1PR04MB6511.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 04267075BD
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3tlGSsvlMg8CPRh3JUZ7Eu1QWlA2K+3COVsVOl9hdg+5azGNk8jCiIi6z1G4qaKrbjGjYCw2BvN+Lfix8XhxcMN08F5c5M95xxGaRI//T2o1JT9jevGtJBHSx8XWHXaD22yulkw4ZafWuH2Dz3r42V/d533FP2NONOQGXHgT0O8EvWdzR1d5NRyjQMOarkmeD8l8VV/VjwXnqx5BcpG/4A1yzhTbA3w6EHSpZ9hPKWjfkU9I02BNV1tDC3WX4MmClsNgeFWzubIlkMJyZxF/y20zUXPxlKe5OJRK50K560FgMf2LojqVNhn/n0Ga6t72tkSjKJ9PB2OL95Ebdc/7glcS4iVGowQdrjlsxp6jQKzN838QRE3PWKL1rYbi1LnUULZxBdAlr7190tEUOFdJCpZG3Vj/i/hLzjz60PYD/Kw5Dy4wgH1zovdDQDlmE9gd+y9bBeiSFZ5bilYQ2Fvn0Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(136003)(366004)(346002)(39860400002)(376002)(86362001)(5660300002)(66476007)(16526019)(6506007)(66946007)(956004)(6666004)(2616005)(186003)(36756003)(2906002)(7416002)(316002)(66556008)(4326008)(478600001)(52116002)(26005)(6486002)(966005)(6512007)(8676002)(83380400001)(8936002)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 9j+iBK97ZKBMUDz5M3oORQRPSWZNnc+QHM81nMriJJXhFSSDM9OBA3NQK8T6o+IGkO619wo1AWee3zy0gSx0tZnuSduNzzJoDg7cy9p4L678Zgg60kRWxhhE6i+5sndIlsp6haCOSYr5uwnVUALPXpcY+UCKGVXIV4iyNUbIpeXHio1lrg9yyX3wiACHzTPI9XE1+u/9XondD242oDvrgVv1SifiWMSC+mE35JF39SnxaciEcliViaUVPbxjLVPVUzMLIvEuNS75bVn4Kyj5L6va/fsnV8/xo6AgslcYH9yvG0icbg+j4nwZ1jBvKbAaYmDvT/gf8XGVE6/Io4dR7DXrw1rYqfe4/KxutmhjM6jje4w5+iviZV90Esc0X+DnuMld6QvwalR+z/8dHtG+QB7WnrM6Xb7PfkhLnqxqP2a51m/7h8jqMxXaq7FadLGk0VdR4cSkyMlDKhEMItW/J2/g40K1ceaQJ4we0qb471k=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e15ae43-9ac9-4f99-ebfd-08d80a2d5659
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2020 15:21:51.3823 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Iz/rkRpNyHt6okRltVZlbe3/UWFI2siorMvYBPkbi9RQkh4n0AysvqXO2foV3ZzNmzMgZQHVlpC0JUv/LWeYpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6511
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_162157_726304_32846159 
X-CRM114-Status: GOOD (  20.49  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-0.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.76 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.76 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 1.9 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

ERR009165 fixed on i.mx6ul/6ull/6sll. All other i.mx6/7 and
i.mx8m/8mm still need this errata. Please refer to nxp official
errata document from https://www.nxp.com/ .

For removing workaround on those chips. Add new i.mx6ul type.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-imx.c | 59 ++++++++++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 54 insertions(+), 5 deletions(-)

diff --git a/drivers/spi/spi-imx.c b/drivers/spi/spi-imx.c
index d4fe5dd..437ff1e 100644
--- a/drivers/spi/spi-imx.c
+++ b/drivers/spi/spi-imx.c
@@ -57,6 +57,7 @@ enum spi_imx_devtype {
 	IMX35_CSPI,	/* CSPI on all i.mx except above */
 	IMX51_ECSPI,	/* ECSPI on i.mx51 */
 	IMX53_ECSPI,	/* ECSPI on i.mx53 and later */
+	IMX6UL_ECSPI,	/* ERR009165 fix from i.mx6ul */
 };
 
 struct spi_imx_data;
@@ -76,6 +77,11 @@ struct spi_imx_devtype_data {
 	bool has_slavemode;
 	unsigned int fifo_size;
 	bool dynamic_burst;
+	/*
+	 * ERR009165 fixed or not:
+	 * https://www.nxp.com/docs/en/errata/IMX6DQCE.pdf
+	 */
+	bool tx_glitch_fixed;
 	enum spi_imx_devtype devtype;
 };
 
@@ -132,6 +138,11 @@ static inline int is_imx51_ecspi(struct spi_imx_data *d)
 	return d->devtype_data->devtype == IMX51_ECSPI;
 }
 
+static inline int is_imx6ul_ecspi(struct spi_imx_data *d)
+{
+	return d->devtype_data->devtype == IMX6UL_ECSPI;
+}
+
 static inline int is_imx53_ecspi(struct spi_imx_data *d)
 {
 	return d->devtype_data->devtype == IMX53_ECSPI;
@@ -591,8 +602,14 @@ static int mx51_ecspi_prepare_transfer(struct spi_imx_data *spi_imx,
 	ctrl |= mx51_ecspi_clkdiv(spi_imx, t->speed_hz, &clk);
 	spi_imx->spi_bus_clk = clk;
 
-	/* ERR009165: work in XHC mode as PIO */
-	ctrl &= ~MX51_ECSPI_CTRL_SMC;
+	/*
+	 * ERR009165: work in XHC mode instead of SMC as PIO on the chips
+	 * before i.mx6ul.
+	 */
+	if (spi_imx->usedma && spi_imx->devtype_data->tx_glitch_fixed)
+		ctrl |= MX51_ECSPI_CTRL_SMC;
+	else
+		ctrl &= ~MX51_ECSPI_CTRL_SMC;
 
 	writel(ctrl, spi_imx->base + MX51_ECSPI_CTRL);
 
@@ -618,12 +635,16 @@ static int mx51_ecspi_prepare_transfer(struct spi_imx_data *spi_imx,
 
 static void mx51_setup_wml(struct spi_imx_data *spi_imx)
 {
+	u32 tx_wml = 0;
+
+	if (spi_imx->devtype_data->tx_glitch_fixed)
+		tx_wml = spi_imx->wml;
 	/*
 	 * Configure the DMA register: setup the watermark
 	 * and enable DMA request.
 	 */
 	writel(MX51_ECSPI_DMA_RX_WML(spi_imx->wml - 1) |
-		MX51_ECSPI_DMA_TX_WML(0) |
+		MX51_ECSPI_DMA_TX_WML(tx_wml) |
 		MX51_ECSPI_DMA_RXT_WML(spi_imx->wml) |
 		MX51_ECSPI_DMA_TEDEN | MX51_ECSPI_DMA_RXDEN |
 		MX51_ECSPI_DMA_RXTDEN, spi_imx->base + MX51_ECSPI_DMA);
@@ -1017,6 +1038,23 @@ static struct spi_imx_devtype_data imx53_ecspi_devtype_data = {
 	.devtype = IMX53_ECSPI,
 };
 
+static struct spi_imx_devtype_data imx6ul_ecspi_devtype_data = {
+	.intctrl = mx51_ecspi_intctrl,
+	.prepare_message = mx51_ecspi_prepare_message,
+	.prepare_transfer = mx51_ecspi_prepare_transfer,
+	.trigger = mx51_ecspi_trigger,
+	.rx_available = mx51_ecspi_rx_available,
+	.reset = mx51_ecspi_reset,
+	.setup_wml = mx51_setup_wml,
+	.fifo_size = 64,
+	.has_dmamode = true,
+	.dynamic_burst = true,
+	.has_slavemode = true,
+	.tx_glitch_fixed = true,
+	.disable = mx51_ecspi_disable,
+	.devtype = IMX6UL_ECSPI,
+};
+
 static const struct platform_device_id spi_imx_devtype[] = {
 	{
 		.name = "imx1-cspi",
@@ -1040,6 +1078,9 @@ static const struct platform_device_id spi_imx_devtype[] = {
 		.name = "imx53-ecspi",
 		.driver_data = (kernel_ulong_t) &imx53_ecspi_devtype_data,
 	}, {
+		.name = "imx6ul-ecspi",
+		.driver_data = (kernel_ulong_t) &imx6ul_ecspi_devtype_data,
+	}, {
 		/* sentinel */
 	}
 };
@@ -1052,6 +1093,7 @@ static const struct of_device_id spi_imx_dt_ids[] = {
 	{ .compatible = "fsl,imx35-cspi", .data = &imx35_cspi_devtype_data, },
 	{ .compatible = "fsl,imx51-ecspi", .data = &imx51_ecspi_devtype_data, },
 	{ .compatible = "fsl,imx53-ecspi", .data = &imx53_ecspi_devtype_data, },
+	{ .compatible = "fsl,imx6ul-ecspi", .data = &imx6ul_ecspi_devtype_data, },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, spi_imx_dt_ids);
@@ -1179,7 +1221,14 @@ static int spi_imx_dma_configure(struct spi_master *master)
 	tx.direction = DMA_MEM_TO_DEV;
 	tx.dst_addr = spi_imx->base_phys + MXC_CSPITXDATA;
 	tx.dst_addr_width = buswidth;
-	tx.dst_maxburst = spi_imx->wml;
+	/*
+	 * For ERR009165 with TX_THRESHOLD=0 could enlarge burst size to fifo
+	 * size to speed up fifo filling as possible.
+	 */
+	if (spi_imx->devtype_data->tx_glitch_fixed)
+		tx.dst_maxburst = spi_imx->wml;
+	else
+		tx.dst_maxburst = spi_imx->devtype_data->fifo_size;
 	ret = dmaengine_slave_config(master->dma_tx, &tx);
 	if (ret) {
 		dev_err(spi_imx->dev, "TX dma configuration failed with %d\n", ret);
@@ -1690,7 +1739,7 @@ static int spi_imx_probe(struct platform_device *pdev)
 	spi_imx->bitbang.master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH \
 					     | SPI_NO_CS;
 	if (is_imx35_cspi(spi_imx) || is_imx51_ecspi(spi_imx) ||
-	    is_imx53_ecspi(spi_imx))
+	    is_imx53_ecspi(spi_imx) || is_imx6ul_ecspi(spi_imx))
 		spi_imx->bitbang.master->mode_bits |= SPI_LOOP | SPI_READY;
 
 	spi_imx->spi_drctl = spi_drctl;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
