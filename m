Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBCE1FB4BE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:43:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J3JJJ+YWiTOjs928kUM97U2rWUC/Bv9GnKfB+/j4jTQ=; b=im9d9rOo5XojgN
	qIZX0fX1zjE2GkmRccMguVd3jnPUenRwmcz3a68XHmL/0uq0DXkpUPjFDElpe44zwoCRjGvRIcwF9
	YKxLwGZY3B28N+uFKGKDCz/bQjymYsGYqe1jMAHPtsK10lbBSKuRUwBiis0ZUzwT/CUizpOA4gZs4
	xcFHw1Q1mkcN5ViQ0NdyCDI71+ajhOmjuwLkSeNaK6D+ojUNx+eTj3XNjotno462pfB+9Htq2KGcD
	bnq3ypBq+BMKOz2S9iHCKT263+dS4mgEIjUvAsrYf4MiyF4DQ8aPd/ON2+5M8dONH5IA1YmBta6rM
	3MORGraDvieXRtRc2mIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCoA-0002I4-DI; Tue, 16 Jun 2020 14:43:26 +0000
Received: from mail-eopbgr80055.outbound.protection.outlook.com ([40.107.8.55]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlCnU-0001zN-A8
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 14:42:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VO9AfAEVLOuy5nVOWwPX5Pi9yPOavQclDznTljSoUMbKDigh+/UhjUDpKoeRznaIkm90YI+DlLRhqr0ewwB5E6oOpmxapjAOJmERRkIXgOxwEVxrOlTPSTt8gN8PfT+qROXWlKfCBM4eXhwQNiKlkepqK5VDmFMO8PK4DfFURdtbLnBgzBgxdre17wqYrhwr5KEVJBSgKbE9RaHPmpXO/SRO9yku5ZC3tFJ147ykcxVqH+lLGlXxImAaElAUmQZy+BsJSLdWpZfusDuIik386Jr+0sP8YVOzF1ahTyjabcZPixhoZefZPtMzOw7gbKMlK13bJZoQgaIcM/4ixPvDBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oLRyrQ5y3g95W+DVI2Tw8ZLxJDEixDdn2uDjAiK/u+E=;
 b=amL6XL/VaXS6ayn28d5cwInxQ6eH6re/9e2ikOi1NgrWSXnAG0iVAAinsj0jE6gLn/wzlQGAmu3L8b56EVKkjVTNgwD0k9ENr01IYi4ZoU8GWJuQpUYy7dXY1affNqIFy0Vflg5zK9My3XsN+Zaz48ZWzUoOKXhTTCHZp16A7KR/AFPO95R7E3gNuAVCMPkFHB0rMgeFDX3Ui+Yk8e+AdgxZvar+k6Zt1VGLPsKAw6PBA/c2zIsXPTyzYyzS4vBO2PX8peag2QNsIQcDxc/MMVaDblSuumZCHsxbaF7ssZMVhcK+d/1WeclCkmaD4sCIlUOtKZnrZTFYj2afpHKm8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oLRyrQ5y3g95W+DVI2Tw8ZLxJDEixDdn2uDjAiK/u+E=;
 b=J6XPEGEoIjlHUmVr2IQ3LGmmJlPvGXstqfp3HWSrMihMA1i31C7+sl8dlLRsTi4aK+65qVCZHhW+oPmG8o+vfBO203fDXA+MrSk1MaSlYSkbAZ6D3Eh689r6T+xr7MYeCyVTZ0yjxDu35bfaLuO1PtcmL6q8l+WDNCikNCTDCZs=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6623.eurprd04.prod.outlook.com (2603:10a6:803:125::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.24; Tue, 16 Jun
 2020 14:42:40 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3088.028; Tue, 16 Jun 2020
 14:42:40 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: broonie@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, robin.murphy@arm.com, matthias.schiffer@ew.tq-group.com
Subject: [PATCH v2 1/2] spi: introduce fallback to pio
Date: Wed, 17 Jun 2020 06:42:08 +0800
Message-Id: <1592347329-28363-2-git-send-email-yibin.gong@nxp.com>
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
 15.20.3109.21 via Frontend Transport; Tue, 16 Jun 2020 14:42:37 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 8d1c0c6d-7af3-43e0-716a-08d812038564
X-MS-TrafficTypeDiagnostic: VE1PR04MB6623:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6623CFDE18707C4C952E852B899D0@VE1PR04MB6623.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 04362AC73B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9tyLrxoD6X4Uki2YDB/S9E7XkCtrsJFonUsPgIP9DkZA3S9bUXSNRcNSn2czdQEmVUaaW/Gizcp6zsHQvAsFjhdqPSSxfh4Hru29d5t2Oo5MbwOcIV0lbVMX0gVdrb50LOb4UqNR9am2qdkGcExicTlTw1dmIceIvRenf0ZOvcaSPTlvUZAanCCsYCfoKZqFufFGRzas+m6wpLWr41GZPqztpgY0FtVgtjDzbdxJ2BTDSxIEx3TO0Wt0WDaQ40KjLGocHkx3xv/KzWp+Kv8ydE3SoHWbklPqZj8+m82SYqqCWoq0Y2nmzotMn0nL54BkHSa2F9jAyxPzWGDqdkBd1w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(8936002)(6512007)(6506007)(66946007)(66556008)(8676002)(4326008)(66476007)(498600001)(186003)(16526019)(86362001)(2906002)(83380400001)(6486002)(26005)(52116002)(36756003)(5660300002)(7416002)(2616005)(6666004)(956004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: QFkYbXSzftPozic39eAceOOx3vLBtRUbARB77WCM0nAVOJA64Ci5vPtYX9Njo5L+5Vu7jJMSrSABNdaEEF5ZHgIO5V7i67yMsS32jQ7KTlhuOjJ8j7bVve6OpC/9uPswJUD/Vrg4i1e2sKFPDRx8C3bSvMyaJ98cCEGcBCdi1N19JcJGximBjCO/s3l5m+B2feIf9t5yC6w+YgUjm3z62cWoHgF+KS8t8iTXyCxP69igXoHy5qzOE9tEZtFWqpjRYtM0EL++1fOVA6PkZmPuUJPeTL5tzvLUmDQHDGbGZdyxcKb/9SYNl0zVdu+O2kjOZ1FDN3GHMe8Ao6Vd+0w7OgGBqF+R8j7np5uSGS7bdEN5Oopot3yignM7Dd6Tabo1Zdv3GGRXax0mU+xkfI5HvgyKLbvD31CqQfmz4wcOkdg+xzEIGz0AAJCVwc+UkJ+KxgRVWSJa5Di8HpjAPWvk2dQzhrZR9kwB2V4s2YdJHrs=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d1c0c6d-7af3-43e0-716a-08d812038564
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2020 14:42:40.8547 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M/7tG3bokG7qyP3RGzTbBm6VLEqB5hXrVNb8ckXGUgGJCb95iX9N4zWSAjwJILTEBQxARnExiHKGtoIs3tYuDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6623
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_074244_371777_4BA43593 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.55 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.55 listed in wl.mailspike.net]
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

Add fallback to pio mode in case dma transfer failed with error status
SPI_TRANS_FAIL_NO_START.
If spi client driver want to enable this feature please set xfer->error in
the proper place such as dmaengine_prep_slave_sg() failure detect(but no
any data put into spi bus yet). Besides, add master->fallback checking in
its can_dma() so that spi core could switch to pio next time. Please refer
to spi-imx.c.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 drivers/spi/spi.c       | 12 ++++++++++++
 include/linux/spi/spi.h |  7 +++++++
 2 files changed, 19 insertions(+)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 8158e28..6fa5659 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -982,6 +982,8 @@ static int __spi_unmap_msg(struct spi_controller *ctlr, struct spi_message *msg)
 		spi_unmap_buf(ctlr, tx_dev, &xfer->tx_sg, DMA_TO_DEVICE);
 	}
 
+	ctlr->cur_msg_mapped = false;
+
 	return 0;
 }
 #else /* !CONFIG_HAS_DMA */
@@ -1234,8 +1236,17 @@ static int spi_transfer_one_message(struct spi_controller *ctlr,
 		if (xfer->tx_buf || xfer->rx_buf) {
 			reinit_completion(&ctlr->xfer_completion);
 
+fallback_pio:
 			ret = ctlr->transfer_one(ctlr, msg->spi, xfer);
 			if (ret < 0) {
+				if (ctlr->cur_msg_mapped &&
+				   (xfer->error & SPI_TRANS_FAIL_NO_START)) {
+					__spi_unmap_msg(ctlr, msg);
+					ctlr->fallback = true;
+					xfer->error &= ~SPI_TRANS_FAIL_NO_START;
+					goto fallback_pio;
+				}
+
 				SPI_STATISTICS_INCREMENT_FIELD(statm,
 							       errors);
 				SPI_STATISTICS_INCREMENT_FIELD(stats,
@@ -1693,6 +1704,7 @@ void spi_finalize_current_message(struct spi_controller *ctlr)
 	spin_lock_irqsave(&ctlr->queue_lock, flags);
 	ctlr->cur_msg = NULL;
 	ctlr->cur_msg_prepared = false;
+	ctlr->fallback = false;
 	kthread_queue_work(&ctlr->kworker, &ctlr->pump_messages);
 	spin_unlock_irqrestore(&ctlr->queue_lock, flags);
 
diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
index aac57b5..b4917df 100644
--- a/include/linux/spi/spi.h
+++ b/include/linux/spi/spi.h
@@ -447,6 +447,8 @@ static inline void spi_unregister_driver(struct spi_driver *sdrv)
  *	If the driver does not set this, the SPI core takes the snapshot as
  *	close to the driver hand-over as possible.
  * @irq_flags: Interrupt enable state during PTP system timestamping
+ * @fallback: fallback to pio if dma transfer return failure with
+ *	SPI_TRANS_FAIL_NO_START.
  *
  * Each SPI controller can communicate with one or more @spi_device
  * children.  These make a small bus, sharing MOSI, MISO and SCK signals
@@ -602,6 +604,7 @@ struct spi_controller {
 	bool				auto_runtime_pm;
 	bool                            cur_msg_prepared;
 	bool				cur_msg_mapped;
+	bool                            fallback;
 	struct completion               xfer_completion;
 	size_t				max_dma_len;
 
@@ -847,6 +850,7 @@ extern void spi_res_release(struct spi_controller *ctlr,
  *	back unset and they need the better resolution.
  * @timestamped_post: See above. The reason why both exist is that these
  *	booleans are also used to keep state in the core SPI logic.
+ * @error: Error status logged by spi controller driver.
  *
  * SPI transfers always write the same number of bytes as they read.
  * Protocol drivers should always provide @rx_buf and/or @tx_buf.
@@ -940,6 +944,9 @@ struct spi_transfer {
 	bool		timestamped;
 
 	struct list_head transfer_list;
+
+#define SPI_TRANS_FAIL_NO_START	BIT(0)
+	u16		error;
 };
 
 /**
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
