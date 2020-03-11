Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3F318134E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:38:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptRmFqdxXWg0enZI9f0q5jpXh0IVudXPiFH97XhLFt0=; b=AQwf+fchiWZw54
	db7TsqtEv1uS9CCh+1clK2x8ppqCBw7AOxObui9MJ5Y1rlAHQJgP8HeVQom3e2akJwvWuekONl9xW
	FdGyX5KyuzXCtlN5ccXjIk+hcnMLG6n4kBS5rpsG4dYpQA0ay8lbU9FNKjIhb0Vjv1ygVid+jUWun
	An6BWIiDw9hrRkxNJEd1aGyazLwwAU2NQ9c4WkdyDicl1G3XeYRWMqvT2jHtNUc3IZmwzrUBiLOxm
	5Q3lS3wZ9a2ix0QfIMYntfwzJwxMHx8pdodHzhqXNoTOVIzalus7gE/RNFvG1JIevoBXu0hmb83/g
	99fHnA57R4QliO/yFXUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBwsN-00067d-5v; Wed, 11 Mar 2020 08:38:03 +0000
Received: from mail-eopbgr10066.outbound.protection.outlook.com ([40.107.1.66]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBwqO-0004PI-Uq
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 08:36:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dzde6hBRNryBBdYxvuabtv1xfU+6zHvfUGdrqEBQmVuB/ynfTGAhMwgzgBfzkJpUJLdmxjsGPllLJX5RZo7Db07Ipzkr7EORG+H30XVH8mOTXSUKolBKVMPwdGhl7Wkknc1uCfei8fnCaMJZUynuhX2j1DUZ42pPAht8tk58XGCoH9JIiHZoVwxsRXOFl+GmO5KRvS9+N6yGY/5CyJPN18RzE2UPDlv0x8KFNwjbTt5UyTTzSMDp8Z+yo/mJVWcKvDGaf5QEhp44BeSCrTPq8BXceWD9OVq8yHu3RkRiR6P2wa2rssTmwl8A8BJXVP3ObscNBumiaV0mHa+WLTAgeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DPH6fqwENpMZpDGmX3HfiPkXiAHYaZSKePf7Hki9OEA=;
 b=LV8kiZaRj9jvTRY4CvLgsXcbgKVqKjxNqiTMex+2l5LvABpljNB6X4WanoXM8tbpGCDMtwyhOxZPWouASsL/kItAOjbJ/6ZKKikBIQWwHUPC27AugDP0vQt+jHIQwg5L1ufxAvXlcCSypj4PeysS89PH1Vq/RtM4UCSq6C/SHl21yTsZki1XPlgUh2NN9kOhJXxh3OOREhcafstqDT53p9XceTq3+65i3qUGpfbNF/9f4WT47jxc79lQ40fMwBMgRtbEx2FexIb+JYh+LokZTESUH5OB4Qct3LEfYgiwjjhXeGueFjOmlMamI0q3Y1VPJ0f/aGxFpbWthh/IwLMIgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DPH6fqwENpMZpDGmX3HfiPkXiAHYaZSKePf7Hki9OEA=;
 b=ira9LIB9aFZITcgeUToXQmMXbr+snP2wnYSIeEjZ0nWMJR7bfMc/eOxHgCL2CgPuKOIqS8Nc/ih9SAfpQt9LfbkFNZkFUki/92u0o+4pG7/oewi2dQkxyBp2sL2zIkbzwN5eAb4gRDHEB5JCQCFeVMR2OLTcEux4UsnqKwJoIa4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6702.eurprd04.prod.outlook.com (20.179.234.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Wed, 11 Mar 2020 08:35:55 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2793.018; Wed, 11 Mar 2020
 08:35:55 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, broonie@kernel.org, robh+dt@kernel.org,
 festevam@gmail.com, dan.j.williams@intel.com, mark.rutland@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, l.stach@pengutronix.de,
 martin.fuzzey@flowbird.group
Subject: [PATCH v7 07/13] spi: imx: fix ERR009165
Date: Thu, 12 Mar 2020 00:36:30 +0800
Message-Id: <1583944596-23410-8-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583944596-23410-1-git-send-email-yibin.gong@nxp.com>
References: <1583944596-23410-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR04CA0158.apcprd04.prod.outlook.com (2603:1096:4::20)
 To VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR04CA0158.apcprd04.prod.outlook.com (2603:1096:4::20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2793.15 via Frontend Transport; Wed, 11 Mar 2020 08:35:49 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 61a30c02-053b-4b58-d9c6-08d7c597370a
X-MS-TrafficTypeDiagnostic: VE1PR04MB6702:|VE1PR04MB6702:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6702B36021B27650292B1F6589FC0@VE1PR04MB6702.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 0339F89554
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(396003)(376002)(39860400002)(136003)(199004)(966005)(956004)(6486002)(2616005)(2906002)(6666004)(7416002)(66476007)(66946007)(8676002)(66556008)(316002)(86362001)(52116002)(478600001)(81166006)(6512007)(26005)(81156014)(6506007)(8936002)(36756003)(5660300002)(16526019)(4326008)(186003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6702;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OLOpfAqTmKEOxmjA+Eii9tPmuZmQ/buFZgtdCD2ThWJFpZ1tO/pUlEnwxDwco17a9w/OyLjskL0l/MbCNVSz14ueimhcf2FL58OFnKGSXYSC6WH0tKiELAVO55xNTUZBQg+GFHRrNOMPwAHrbHYl4pAMZg1E43Hg4PtYc8YlT6Qj8o3/6FfmY1RP29hyX9F9u25+ZEVtQI/nT1hS2IKG/S6UWWvKGTUmRrzOC4fKxwOz2IWk8rdpAkZuB26hOYnhocSIgyVUE8dhqubRhhJWLQsEtzDru1crLyNXVqcvcKA9kgHL674si2ok9xLmcpEMOjnGzZBOsvgdu8Nx657RuuA2OOHz2OGd21kXqTvI4HZhK3KpYarGnWNzwsF1D5VdSaXWNBY2rC/pgUEYxoXe1wMfk9WzJgeiw5FfNPEuBHzURmhr3jJBi44rlmipXClFpgPvGsApwO1a+k69pJiJ3Se7t5wh9aXLwkxfrWEZ1yFhFY0qwiqlrir7Ft8PMYxCz1yHHgnTgnMTggIFMT3sYQbzzrpoliSH2FArUJv6663S6uT0maEy35WwUORQtWrIwkeFQVtCXEePnejnBhWpUQ==
X-MS-Exchange-AntiSpam-MessageData: SqUEIYYiiUT2aObU0pym0nzdTTZ+MaY9pxbqngICWlLuOhZCftOsh3os1+fysPlhhAVgffwfzS29eRFGAvFzd/nw0X4QRUZBxksbqde5AtpMmmkUmWJvTaxbiQADpEnrmbuuIxjpKD0JiNIJotIvyw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61a30c02-053b-4b58-d9c6-08d7c597370a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2020 08:35:55.2265 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a5cVnJrEybXoboHzTOfk8YdRQrP0zEFZhHzVIiJtYtAhpWwIxXMmW92HxK+vhBsVWrIR311lKLp2OiO151KXQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6702
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_013601_084479_253FA2B7 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.66 listed in list.dnswl.org]
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 drivers/spi/spi-imx.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/spi/spi-imx.c b/drivers/spi/spi-imx.c
index f4f28a4..70df8e6 100644
--- a/drivers/spi/spi-imx.c
+++ b/drivers/spi/spi-imx.c
@@ -585,8 +585,8 @@ static int mx51_ecspi_prepare_transfer(struct spi_imx_data *spi_imx,
 	ctrl |= mx51_ecspi_clkdiv(spi_imx, t->speed_hz, &clk);
 	spi_imx->spi_bus_clk = clk;
 
-	if (spi_imx->usedma)
-		ctrl |= MX51_ECSPI_CTRL_SMC;
+	/* ERR009165: work in XHC mode as PIO */
+	ctrl &= ~MX51_ECSPI_CTRL_SMC;
 
 	writel(ctrl, spi_imx->base + MX51_ECSPI_CTRL);
 
@@ -617,7 +617,7 @@ static void mx51_setup_wml(struct spi_imx_data *spi_imx)
 	 * and enable DMA request.
 	 */
 	writel(MX51_ECSPI_DMA_RX_WML(spi_imx->wml - 1) |
-		MX51_ECSPI_DMA_TX_WML(spi_imx->wml) |
+		MX51_ECSPI_DMA_TX_WML(0) |
 		MX51_ECSPI_DMA_RXT_WML(spi_imx->wml) |
 		MX51_ECSPI_DMA_TEDEN | MX51_ECSPI_DMA_RXDEN |
 		MX51_ECSPI_DMA_RXTDEN, spi_imx->base + MX51_ECSPI_DMA);
@@ -1171,7 +1171,11 @@ static int spi_imx_dma_configure(struct spi_master *master)
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
@@ -1265,10 +1269,6 @@ static int spi_imx_sdma_init(struct device *dev, struct spi_imx_data *spi_imx,
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
