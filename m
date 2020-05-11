Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 787771CD535
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 11:34:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptRmFqdxXWg0enZI9f0q5jpXh0IVudXPiFH97XhLFt0=; b=shqvojJeJUws28
	GXvfvuO0j1p3mNV22irB/dYMUNPBYMSyZmbkHxP/lEA/GaceGcPxevKihiZsdGNvIF8sEvhTTHNgM
	BD2PQYluEkwItDmtTdfXZJrnc22nSknTDhwFCb04c5DP5bgCkYQ6AHBjZODhkw5D313kdreBmJjwx
	EQgeo9ocVjizUL5bOSeXWUo4K+3yQTAWtey9FbRhBEwwXByzyGnG9TNzYx8R/1yALhnTxraMqb/sr
	Q3ikd+xX5GMG/DCLFLYqCM1+HFGkRQZ1C6goRFleeJxHuP6CXRrBBmU7R8zKtI6aQu15+RtMC4XDH
	OspYlPfv5SPN9XiWwVPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY4pi-0004Ix-GM; Mon, 11 May 2020 09:34:46 +0000
Received: from mail-eopbgr00050.outbound.protection.outlook.com ([40.107.0.50]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY4o0-0002tk-Dy
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 09:33:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RhQT+LB0Z9mAW1gC73DiFyvnghh+FgbIBfAZtd6u/t8kkzf0rcqsped2xyKuc23hpq92jZosUe/kbdFS1uJCIC1OZCOWej+do1OdJc6HKGc8oLn+GJHLvwhUpM5qaWsFvKiq4gxGmvCpKTcyROKWcqC2VJD9nsZ5Hjy9kskA9MkkDp4o8IQkcSHLxoikoS5kqmnKTsUHUwIQk4BsFDfjbyyncN2m+PSKS7vK9G4uc092RXRa5npA/67BGWwetJ6ttpL5Sg7nINYPmHkBNNej6bQq+/vqUa6/BENKWHssuuk8fmVLDPP6nMNU3Cjnarzx/XA34Gmk8fsgNJ5kBeXdVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DPH6fqwENpMZpDGmX3HfiPkXiAHYaZSKePf7Hki9OEA=;
 b=bez35XE2ICexpi+DKVVxiGzLGcHGUTYs/J+j6G3D4nm5smdf49IqEuR8X4copIUnKKu7gJAwuIJC6okjYeMHd2B3ZpTDQ0OOrWfZXuP/xgt5Q4qQfxa5aG/hBy3+T28MccOQHvikTCeCmAVjFoDvVcRNJmV1DYa9UsP+tkgDory7AE3nHjQ5AMjwaisUyJTEytSY2j4fO+XPBdOE+LEJis0XmqPSG3qiZcWpHQWe6dQ35KSo6X+Bo42NnTKyFPvsUqXhmGnHltoS78nFu0zAuqtvp+0pezBDh8DJdMXr3Pr7bxugMqaDAxZI3ZqqT2ikQeEuMmqC0jgkpfsHtlIy7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DPH6fqwENpMZpDGmX3HfiPkXiAHYaZSKePf7Hki9OEA=;
 b=MCJ8eAau6nNogXbFH1bTgYekJTir/tEzK8S1WkrhcYUdEwpFrF/9S1rGvm4rBGPY89rrBlv0VSL5FoIXjsTVB/AXXX4hmlqO7IEtu4gU8HU72vyAhb6+wTP+fxGYuxrfT2AWsPvUJA/v2gO4JjxSS0UurMH/AOrF+BmawlHTs9E=
Authentication-Results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6637.eurprd04.prod.outlook.com (2603:10a6:803:126::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.33; Mon, 11 May
 2020 09:32:57 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 09:32:57 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, robh+dt@kernel.org, festevam@gmail.com,
 dan.j.williams@intel.com, mark.rutland@arm.com, catalin.marinas@arm.com
Subject: [PATCH v7 RESEND 07/13] spi: imx: fix ERR009165
Date: Tue, 12 May 2020 01:32:30 +0800
Message-Id: <1589218356-17475-8-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
References: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR06CA0141.apcprd06.prod.outlook.com
 (2603:1096:1:1f::19) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR06CA0141.apcprd06.prod.outlook.com (2603:1096:1:1f::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2979.27 via Frontend Transport; Mon, 11 May 2020 09:32:52 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 0b55bd47-d644-4538-d2f5-08d7f58e49d9
X-MS-TrafficTypeDiagnostic: VE1PR04MB6637:|VE1PR04MB6637:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6637007C92662D17D39D5E6589A10@VE1PR04MB6637.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +m98Q/b8yXtGLoG3r80vIGEP/FLRryTtCxX0YJx7p6Twv3LLqFR0bvoCgoW+m8/IpX9Q3NbzmjWReJzJcvgx7mr/ueNP3eYNmmmra0EVxYPqyYCSh7HDz4d0YQjuVGkemZGUovhJRBBza0veXhXnNC6aMZbxY2BvRXsT5A96SB0GiQueGUEZxPHIboPwwBjkfroQtgA+VciDOjtFXyuwZtuQE7qKfJ/+GcXlukjg8bGNIk+Bzk5HL+4UCoD+yKBbedHE0sfeRTzJ4V+OoNtNDEKVwllpglKlont8288L5XbrvQGJNgZ778rWbJpicvrdJqhK/wnrh8uPQV54qsAxirFKBYRV/xB+SrWFD7exzHIgv/yxikRo4NIzTlvWON0fxSPX3MwVs5IFD/WHCXH8Rsbcc7gI1Dgz2KIhTP36wnSa0efRLzkZYizQ2tplpKNV9weDk5x4+dinwW0VE6aUBvsNF8YKKakgWWFmt7VazFe7hRl09yD79Kt5F/97owUsvfR0PyMA0Xx8ljyjZsdto0NJKYHwNczOHYScpEQhBo9/N/9ZtxQqNct7ZkyqfjZeK08kEKvn32/lyxJXtqp1uwYoCP5AzYofns0kwlsYP0M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(376002)(346002)(396003)(366004)(33430700001)(8936002)(26005)(52116002)(6506007)(16526019)(2616005)(186003)(956004)(6666004)(6512007)(7416002)(5660300002)(2906002)(4326008)(6486002)(33440700001)(66476007)(8676002)(66946007)(66556008)(478600001)(86362001)(316002)(966005)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 4h5U8aDX+ZpLI0POZpSU1ps55ov7C88GnFL2FfpgdWZ3Jn8IZ9Il2TUNx0wVkHe/2a/4dtfEgKj54KW/+5OsRyCCPNtYhgz8f/XR7Tg7gPeYSl6BcORwPsqrylXyG6C5gmtQFJ6gkvmaMzXap+Fo9FgULph0Z8Q2Vb7Grb1Na7+QBXtDtzOrRUivzIeG1eGklElNr3lNkVbg/GYrdY4TxpJrYwGM8SXsQHvDuOyZ0PMEH5MDgi97qHS0JU+kUMBqALOTzFevyzzDGXIbYB4vznGNOsNw8pRr3kBWQZ1ZfPkBW66LlquGUPc0UXK7qgJNQszOdOQI5mOd9uFal3zUkd1BfWjyvCO2tznQRxvb/0+jZjKMDVMfSzeHuWJRwZee0Vt7T6AeFFabIDnW9cUl6WPJqIYZ2s8cZMNnCLjwlzQtLud3Qf7k5l6glXESGrUBqSiTjqMCk0Vb8b636pWFmmijYHzJ9DVDKQmv+FgaxeQ=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b55bd47-d644-4538-d2f5-08d7f58e49d9
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 09:32:57.1466 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9v6g47BCZkM0lp6e3JKLMEWkfUfKpBfAlyxY2LEXMI23zbLcU06GEbW5ATixTOnj1hTwfzarPrrUuDulnuyWJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6637
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_023300_497432_85C7CC63 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.50 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, martin.fuzzey@flowbird.group,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
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
