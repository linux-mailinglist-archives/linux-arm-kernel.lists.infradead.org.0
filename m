Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C421EF95F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:37:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2JQZbly82M0kRSVBTHGZmc4M3rYo7atjmi0hyAXyBzk=; b=kdNfdpHunWhrFL
	pdrZuZknifSh+H9Xo8p6t5FXtZge39/Tf6U3m4NwEIjJnAtTXWD+p0jvM1QrH8eQXDJgS6v5RTyjD
	itqw8WX2hy3tjZwCk7hNoOLh6tcuViIdtJCBcfsq7WYPUnfOg8in5DluX5CMKMg5BBN3md6c8LLOQ
	2v/uk9zKIw04GZDzpYguGhLkFP/FDrC90bfGnLOneBPFFYS28lKfSPmUP9EvFjKDw5zcSP10ww3b4
	CNV9iHumJt4+L6m5WexRb0tcsjWQGsUzMHGFJpH+vCyzvWpp3dzk+f7TiqLv2oZbfNpBbL8flk8NI
	itQQNkmCLPPxbdHLb2tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCWq-0000zE-VG; Fri, 05 Jun 2020 13:37:01 +0000
Received: from mail-db8eur05on2078.outbound.protection.outlook.com
 ([40.107.20.78] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCU3-0004w5-17
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:34:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HfmQoxbMIYDDi92wz0+mgBijt53VbtqTsIgwWJjGo/Q/ncqwrO6Ht6YkLNAp1fbz7phWdgbnoKlmI+AhFEo+ODhuU/wDEbhce+Y0ZB7WQslsc+M9UW6w4pg9xMzxEtONMDSj3qucVKn1f3jrbRJrQ3V5lnM2MsX6AYNoBnI4Gq03bC5l2fPnVAHfGI19wLAGeBikazSWcM/uVHc/bZK8Bqxt9Zpevq1w3pRDVGT5mNAjffQZc+XEEL/DMABhla1sadH/FQjqpQ7Jfo4RezZaMCtS0iQ5mLHUztxD+cO8TAzBlUME/xSLl1vuw6hXcLtFeR/cecbQomN1vnJnHuw3IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/7rnbTyZ4GfgYxDAYqxYP9JOp40/s1BbVRUa1y4Xo54=;
 b=O1UZTj1V1crnjbFIBg0g7bZ6ymrLae4DITsp+GXXh22OwMuayYYhMd+LytcJZ8uePEzIBMdSjo+vAoDMzgByJip+fr4Q17aDKx0AuWn497qEYvPz/OBk8+cQesjral/Y51v+XEnHF8RZW+tHNtyztGzgKNtWdYws5G4VdWPH7KBaSy6+4XiMsKWMXhMK8+yDg2451g8dzu4JUqiSAFJhNboeCU5VM9gWoJTKOdpLs8KdPWVbZgF7XE8S3wi622pu/faENF1sxJe/0AFBfAu5+kHn/5EW6P+DPca3YPXQDR4MtDdCIjUqS3hauoXhlqoj1HaKi/qzmWlz6InAaFnuAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/7rnbTyZ4GfgYxDAYqxYP9JOp40/s1BbVRUa1y4Xo54=;
 b=I4OO5xQDp3WAgO5sCGeY7hysmQFoQc0pZPynVWq/WG+ZmLd8CeI+ppr7Y1dojuta1LrTmIzDQrR3OUNfcQvAkqIG/ygOoEpTY1aD8oGe1ZJggpPWlqZ4PIQ81Z4TI6718Lnv9nP+VEVZMIv4dNqpb1P4u3eUS645AkfrdbPI72c=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6702.eurprd04.prod.outlook.com (2603:10a6:803:123::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Fri, 5 Jun
 2020 13:33:12 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3066.019; Fri, 5 Jun 2020
 13:33:12 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: mark.rutland@arm.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, vkoul@kernel.org, will.deacon@arm.com,
 shawnguo@kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 martin.fuzzey@flowbird.group, u.kleine-koenig@pengutronix.de,
 dan.j.williams@intel.com, matthias.schiffer@ew.tq-group.com
Subject: [PATCH v9 08/14] spi: imx: fix ERR009165
Date: Sat,  6 Jun 2020 05:32:29 +0800
Message-Id: <1591392755-19136-9-git-send-email-yibin.gong@nxp.com>
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
 15.20.3066.20 via Frontend Transport; Fri, 5 Jun 2020 13:33:06 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 5111e0d8-6d77-4578-bb00-08d80954fe37
X-MS-TrafficTypeDiagnostic: VE1PR04MB6702:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB67021A5691179DFCC4AC01E389860@VE1PR04MB6702.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 0425A67DEF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iIAPVXe/t4X29WRpY3zWYlfxtwvi9vVjgTrOdLsPXrKVBWMz5p7gj4Uqsy7zJZ8Ze8e5Ttz35K8vcWwkrB+pgvNqmsaIFFpJMiFg5Qu+eVUAIXWUTqloKMqYtDDhX56LzZi/zQzeeVMR+iv/Eax4MVsQw+pv+rie3hY0WF7wO0Khyi/qwDt7TrxOdDlMIeQrOEgmKUTduZq2DR/BwSlukkoyFkxTbXcA2zOKhqbJ7y9bJmHcrPAxZxYDeQoI3gElq2jgHab24n/FVy1lRwuikbf/59lUXgyWnQeumasubQvN6Yk1X/vCbZA9VF5Hkc/kXRXIsOKezI0HJ2C6Oos0plTQHvgXBmNvj5z9TJh1k19WTEZQe77/uoU711pUChxH1z2pXGUVb4Ik9GQdf75BVv5qAMH1w4fO/lhEHMmRZS5Zc0MdnpnvZXIa0PFsEn8wUxBOsJL+Jx8SfpcMzZ9gJw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(376002)(396003)(136003)(366004)(6486002)(52116002)(2906002)(316002)(4326008)(6506007)(966005)(5660300002)(26005)(66946007)(2616005)(956004)(478600001)(66556008)(186003)(8676002)(16526019)(7416002)(6512007)(6666004)(36756003)(8936002)(83380400001)(86362001)(66476007)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: qGAtHUF7emCDF/M1ljG2lqjrdMYjhOiG4GeDU00d0m2oceMaqsbmtY88soC0SoDbKWW9E/NNAkiNQhRXFwV9NXvGJ1IodFaadBjprNdTkhpVpv10dxDneZMgsKoLWNOvkwdSjgHRBdnPIBigbk6iPcUClbe9bZWqeoF2HA7JQTZ1ERpi48cu5LnxKzWvUiMidj6yAEfQ8Txal96vHzNDRoRKiypIaIZiQSPB1fqjQ8jmTWSoWmjMMYGjQtQyDKNRGqogu//ueveMyQZjJkymoIg4oD2q2FG809KZjPx/Lxkqpdhwfh6gDuT2ocYXoPl4++6TpzafwpE0KvdWBWi0IC5WIyiHu/52m088L1edbk5kQOSgj1WEAqw17ZO0hTwvPVHYOFsXr35DWGG+NKyVpVZN9f7pjCjDOOJbyoaokH1VhdJdnTD5EutTpqUoShgsTzHAsmsiQxIHbH57JzYEZMXQsT0J1orkytGeJsp2gqQ=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5111e0d8-6d77-4578-bb00-08d80954fe37
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2020 13:33:12.2201 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vSZyzLGrpTMSUlpn7kjvHr1JDBGHfqfjljB1tDTzbtlCj0qM3OC61xG+I/Dfu5VlZeVMEZ7ygsROqC5lrytGuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6702
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_063407_105805_57E31764 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.78 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.78 listed in list.dnswl.org]
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

Change to XCH  mode even in dma mode, please refer to the below
errata:
https://www.nxp.com/docs/en/errata/IMX6DQCE.pdf

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-imx.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/spi/spi-imx.c b/drivers/spi/spi-imx.c
index c51cd3a..f82d63f 100644
--- a/drivers/spi/spi-imx.c
+++ b/drivers/spi/spi-imx.c
@@ -591,8 +591,8 @@ static int mx51_ecspi_prepare_transfer(struct spi_imx_data *spi_imx,
 	ctrl |= mx51_ecspi_clkdiv(spi_imx, t->speed_hz, &clk);
 	spi_imx->spi_bus_clk = clk;
 
-	if (spi_imx->usedma)
-		ctrl |= MX51_ECSPI_CTRL_SMC;
+	/* ERR009165: work in XHC mode as PIO */
+	ctrl &= ~MX51_ECSPI_CTRL_SMC;
 
 	writel(ctrl, spi_imx->base + MX51_ECSPI_CTRL);
 
@@ -623,7 +623,7 @@ static void mx51_setup_wml(struct spi_imx_data *spi_imx)
 	 * and enable DMA request.
 	 */
 	writel(MX51_ECSPI_DMA_RX_WML(spi_imx->wml - 1) |
-		MX51_ECSPI_DMA_TX_WML(spi_imx->wml) |
+		MX51_ECSPI_DMA_TX_WML(0) |
 		MX51_ECSPI_DMA_RXT_WML(spi_imx->wml) |
 		MX51_ECSPI_DMA_TEDEN | MX51_ECSPI_DMA_RXDEN |
 		MX51_ECSPI_DMA_RXTDEN, spi_imx->base + MX51_ECSPI_DMA);
@@ -1273,10 +1273,6 @@ static int spi_imx_sdma_init(struct device *dev, struct spi_imx_data *spi_imx,
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
