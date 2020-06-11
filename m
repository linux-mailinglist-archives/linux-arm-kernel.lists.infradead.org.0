Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C3F1F6123
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 06:59:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cmlXgGtn+2FEnJY8664Hn4Fbh1Ve6La1RQsT0h2pqc8=; b=nyYY+tCoR+fiUZ
	fqP6CAZXsFb0ovfr7u+1URkYVozccIkI/ycgJOSz0fM4jNu8NRiUu/im11QkrXLWQErjqBR9M3cJ8
	RtOoHBNTzcWsvQDd8JgExIhSKayD19EwAvAWxgJt0+o2qF0nHeRX3AnCNumr9IREFMqfEbxBtDS3a
	9iAqA0xohkoydU8GfkgdwAVlpX+urITGwU5XJmMDgSnbG9+ddrIag9glaGVuiXKpAj2iaAjbRPlQq
	PGdQFGsaXu9sA8PlSsMSTOXBjpwxpEjSdI1UCFgkmoGyzjeOTh3uBrBnctL9g0HgIBohxozTRYXYL
	ZVPZX9FbGJRVRQSV/Huw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjFJ4-0007AL-Eg; Thu, 11 Jun 2020 04:59:14 +0000
Received: from mail-vi1eur05on2065.outbound.protection.outlook.com
 ([40.107.21.65] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjFIf-0006wz-Gc
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 04:58:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kHgV0lvbIg/rUsap2ThB57RNJN2BzSKKQsO2xJT++sjZLytigbBU+8c9fAY5ICktUMfw58OQIgp5Nm1ZCY2xmbVTx9D7TEAWbsOfW6QzbbSlfAD3N9jxsmPdaHQGpGUatgbR6TZokvU20tJOJeH1f/WjpV94nfI72vQjuwuG14oxveW8kmRVQpZOnpt6ca3rwhGqq608WWTX4EfeZMSSoWZQYKjMxD88aYuv1cwQb+ZrmiKhrfLdiNxE9TITEkHLjG3mkHfksMeiFPp1TrEicTk4vvTtrLfGqoLVbxTQtitcRLpuwdI6bz1HO2llbe75JmkGLiGbpDw1vLRqXqrXaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QYST4IiL52CWPo+iSHQ+qC3DNyhKORUuuEdxR7eJIPU=;
 b=Fqbx+3G7Ol8xLxAzNYZ2/9KvCQtVILGvzri2ZgrTPszFnAGFxLZoiOLfiuyWjwWFhjb+n4/veTzQDvTsi/ZGIKUxn5sn0TdfiF7TBQYU8czTucf0Jek6lSeTC/8SFLE3yiWKBX2caZwq0QZ+nzG4fba5HVz08EB8wrdlRN18nGMFtzSLzAouhO7D4bxb6qJjAz2FUL5ErJ4kMOJb07T4diZOgDcMEwGwuIT9OSz7/1sX0XxSxwXeU4xZg0x/Ip6u+6Lh5zPfk5SWn7PNoBEsEZIftLzvWuRY4ZnGVNT15sJ7kISL/oE+ZYndom+jZmqegRu+cq14BsS/7pzc36LJpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QYST4IiL52CWPo+iSHQ+qC3DNyhKORUuuEdxR7eJIPU=;
 b=m1pYnqzRiFMB0FkPzvYpV4vrbxCUOHPGJG0MuWE4K/2JZU0DZ9PT4DkVmOz5zk2W0kyT11YnF8I2p6Yz+V9Mj+DHikd21LsUlHPaDB5UDSMlYqFvrdmwVu8uUoT1Bjj23EgXgS8M0Q6QN5HtqqiHp5Tg3WlYpuq3zHAdZ1E6AEk=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6750.eurprd04.prod.outlook.com (2603:10a6:803:123::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.22; Thu, 11 Jun
 2020 04:58:43 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3066.023; Thu, 11 Jun 2020
 04:58:43 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: broonie@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, robin.murphy@arm.com, matthias.schiffer@ew.tq-group.com
Subject: [PATCH v1 RFC 1/2] spi: introduce fallback to pio
Date: Thu, 11 Jun 2020 20:58:29 +0800
Message-Id: <1591880310-1813-2-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591880310-1813-1-git-send-email-yibin.gong@nxp.com>
References: <1591880310-1813-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR04CA0171.apcprd04.prod.outlook.com (2603:1096:4::33)
 To VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR04CA0171.apcprd04.prod.outlook.com (2603:1096:4::33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.23 via Frontend Transport; Thu, 11 Jun 2020 04:58:33 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: a00d5a14-2b67-440a-666b-08d80dc41d6c
X-MS-TrafficTypeDiagnostic: VE1PR04MB6750:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6750CD903039086CD37AD5AA89800@VE1PR04MB6750.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-Forefront-PRVS: 0431F981D8
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: d+kCniSzoxlS0TpbMosPr2VfjfR5MOUJJWTcha/cbdNbnqwdKQY2KXbHLFuVorIFNjeJ97aYnzWp6iOM69pcjFBnRWgCAImDW43jXiGwzUlrQcwdx+pLU68p70U2l+ggbEzgvv2D8lgsOMWTbeHXiYYvq6YB0sW/P5GEXFnP5QkfyeK1HZXHIMlNNTXmi1Iq5t26gp7TdYSOSPeDf48wI3Hm5K00YQL11IBd8JOSDrfxgbuy+Za7IQhylQkZvx8fYWWm/icz/4geAJQcghH+Y0upndsQTOrb09ixEiLIeGLjHQhpT1XCweg5vceyM3CfSteCoAnCK1dKvGRnKRtG7g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(376002)(346002)(39860400002)(366004)(396003)(478600001)(66476007)(8936002)(316002)(2616005)(7416002)(956004)(36756003)(86362001)(6486002)(66946007)(8676002)(2906002)(4326008)(6512007)(66556008)(6506007)(83380400001)(16526019)(186003)(5660300002)(6666004)(26005)(52116002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: yGTv2OUzF6I3OdnKra7qRUocbLaRFdVINb9SCZUPGaIg0HZenI8dXQVwIUyXORN1GOD4IVn2UhI5PBTLA+wYTH+sBlBBKWv17/+IlkQC9hdK0KVJ64N6PMkEIG+8ddp0OP0hiq9FTlOJX57FvMsG9CYu3NkBhozg2K34/IvS9ao8MeuRxPRD1Nf8kpv5uY6kreB0j5atLMqmA7SKDR/AEEndRj5vV3CzI3fw00U4z+AzwHoWX5V0vkzui8i9vz5B+p86rvWnBfUWUw3CwrnESDKLA8C+YC7+n0zeuwBMCYc+PLnPvsbzzaZzaydRKN5Ve5636o90XZICKT3INYb39yA87H/J4z6f542nE2bfCIpTOVR0MHZ8pKpRYcC1Co0eNssMRhCtNwY3eXeEAhz+Mq3QAWka5meCBVYG6EpW3usDtMs5BlUuSVKS3lq4YVlF77uLwGGcdA0H1VNu56LYNpwb5jCvJIRRF5h+xlCNYRU=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a00d5a14-2b67-440a-666b-08d80dc41d6c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2020 04:58:43.8225 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hrEff+bMKgVNHl/IEMNexXFqjgqWyJF9YbCkrcZhU7YuIJ98uYYPrD37zS6zLOQWyOd6iQljne8hFCDX6m0jOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6750
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_215849_554178_0401CF03 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.65 listed in wl.mailspike.net]
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Add SPI_CONTROLLER_FALLBACK to fallback to pio mode in case dma transfer
failed.
If spi client driver want to enable this feature please set master->flags
with SPI_MASTER_FALLBACK and add master->fallback checking in its can_dma()
as spi-imx.c

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 drivers/spi/spi.c       | 11 +++++++++++
 include/linux/spi/spi.h |  4 ++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 8158e28..3bf860c 100644
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
@@ -1234,8 +1236,16 @@ static int spi_transfer_one_message(struct spi_controller *ctlr,
 		if (xfer->tx_buf || xfer->rx_buf) {
 			reinit_completion(&ctlr->xfer_completion);
 
+fallback_pio:
 			ret = ctlr->transfer_one(ctlr, msg->spi, xfer);
 			if (ret < 0) {
+				if (ctlr->cur_msg_mapped &&
+				   (ctlr->flags & SPI_CONTROLLER_FALLBACK)) {
+					__spi_unmap_msg(ctlr, msg);
+					ctlr->fallback = true;
+					goto fallback_pio;
+				}
+
 				SPI_STATISTICS_INCREMENT_FIELD(statm,
 							       errors);
 				SPI_STATISTICS_INCREMENT_FIELD(stats,
@@ -1693,6 +1703,7 @@ void spi_finalize_current_message(struct spi_controller *ctlr)
 	spin_lock_irqsave(&ctlr->queue_lock, flags);
 	ctlr->cur_msg = NULL;
 	ctlr->cur_msg_prepared = false;
+	ctlr->fallback = false;
 	kthread_queue_work(&ctlr->kworker, &ctlr->pump_messages);
 	spin_unlock_irqrestore(&ctlr->queue_lock, flags);
 
diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
index aac57b5..95291fe4 100644
--- a/include/linux/spi/spi.h
+++ b/include/linux/spi/spi.h
@@ -506,6 +506,8 @@ struct spi_controller {
 #define SPI_CONTROLLER_MUST_TX		BIT(4)	/* requires tx */
 
 #define SPI_MASTER_GPIO_SS		BIT(5)	/* GPIO CS must select slave */
+/* fallback to PIO if DMA failed */
+#define SPI_CONTROLLER_FALLBACK		BIT(6)
 
 	/* flag indicating this is an SPI slave controller */
 	bool			slave;
@@ -602,6 +604,7 @@ struct spi_controller {
 	bool				auto_runtime_pm;
 	bool                            cur_msg_prepared;
 	bool				cur_msg_mapped;
+	bool				fallback;
 	struct completion               xfer_completion;
 	size_t				max_dma_len;
 
@@ -1517,6 +1520,7 @@ of_find_spi_device_by_node(struct device_node *node)
 #define SPI_MASTER_NO_TX		SPI_CONTROLLER_NO_TX
 #define SPI_MASTER_MUST_RX		SPI_CONTROLLER_MUST_RX
 #define SPI_MASTER_MUST_TX		SPI_CONTROLLER_MUST_TX
+#define SPI_MASTER_FALLBACK		SPI_CONTROLLER_FALLBACK
 
 #define spi_master_get_devdata(_ctlr)	spi_controller_get_devdata(_ctlr)
 #define spi_master_set_devdata(_ctlr, _data)	\
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
