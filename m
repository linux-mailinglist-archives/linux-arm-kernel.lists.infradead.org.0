Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C9D17EF55
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 04:34:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bwWDgHCpGi6CS40FcoFCbpRQufJ9HktHhaAGWKbUogA=; b=tPisLoUUYaxvwo
	m9t10iyUxFfTDM361+dgITgqX9dDbiL3sXDGFOiI4gTSZJ+mEywCzKevBLUPv3CHiIKfKgLuKzNaL
	2ehJ2gduoaAFLxS34O2q7MupE4pyTb20FaRbF7D3c4lZ5dImsvUskfYNmxMqBYMdaMxXw2DLALCTm
	h5MXiKUijw5Z9f41h194ngSeV7CVr9MyYsPLMOtkB8vmOrj9kmHAlCm8XO7VVRWp75Q102+dmYnT5
	60oQ6BZ6c6C5LWftv0K/wv9NhL56iLaoP9HnJIA2Wlw6rqJcrAChVyV5TP0KArH+rjrNO1XGPWxT6
	oR2kjF6gmdT4g8WfDD+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBVez-0005D1-AW; Tue, 10 Mar 2020 03:34:25 +0000
Received: from mail-vi1eur05on2073.outbound.protection.outlook.com
 ([40.107.21.73] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBVcP-0002H1-PO
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 03:31:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iz/Uii+lswsGWGgMMSdqvA8yXSF1yrBPFyba3Tqu26NKy2/9kaXw2vQvi9b7xzeKeoT6rxrpVIopTm4CYTCKdeU7f265/7/ZVl9kkKrHHSqXdUoFn4TejuDkpPpUIu2ISZ1Td0AmQdQKIdYGg3KmdqCPHwTF/W4gNAfR7Q5O3klm3qkcMXaBKnPIdtyT2rhTZPeSi1o8VorXqTezWZ1S29keqfeSJ5JqJqt0UeYH+aYnBlh57CqibhEggGuVJ0+HbNNHpFX1tO2Uj6SyuKrmF3K2If4i0Xy5z+aXNoK++Z1URo/kvu2NrM9sn2sLnQpd3CVh3WhMz6J36dUgJWN9Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7BVdxIwg1wGUCQLNo0wrfhCcaHRz2AGt1s70g8HM9Dc=;
 b=JHjMEZuhcFDyI4DMe2bv2E7E3xDnw+AFeXbPAFD5L77IswtwwdZNGKpZ+nAQN6/vNT63LowXgkgxWjE3EtQhUO38TmOdI1DMd6zGV8RHsj6vUHRQkVO0HEXYifhpUIm33PzMks6LgiD9JodlFM4ni1OO4hkG3HSzcXjvmBIUMncknFeGsZcxyRmOHFCXuH3AMlDXKcg/BEKeWzXYtr58t+KBg09ihUdqlh/Yak50CQNV42Gak4VrYP18j2nhost5N66WklxLcgJZzIrfl6AVVKojAlGRGKrVD8DQZqCWcDzzT32zep7+quKEXDp1LMNTBPdAIbVhLXt/MfeEJlcUXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7BVdxIwg1wGUCQLNo0wrfhCcaHRz2AGt1s70g8HM9Dc=;
 b=O9VNDCx/qstV8Cj4Lrl0gwHZiFvFo+tD9XXddav3Kj/zi6PQik31ZikOW1PytnVPyjHX6QnaZMDh9SAiHpep53HVsgY5e1eHEVqVted/ManGyG43P9vXHGfR9iNk2huLa4YTnWTckQJ/BiSf13TaYceI88gLJ9+1Bd0/TNzr/n4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6511.eurprd04.prod.outlook.com (20.179.233.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Tue, 10 Mar 2020 03:31:41 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 03:31:41 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, broonie@kernel.org, robh+dt@kernel.org,
 festevam@gmail.com, dan.j.williams@intel.com, mark.rutland@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, l.stach@pengutronix.de,
 martin.fuzzey@flowbird.group
Subject: [RESEND v6 11/13] dmaengine: imx-sdma: fix ecspi1 rx dma not work on
 i.mx8mm
Date: Tue, 10 Mar 2020 19:32:00 +0800
Message-Id: <1583839922-22699-12-git-send-email-yibin.gong@nxp.com>
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
 15.20.2793.15 via Frontend Transport; Tue, 10 Mar 2020 03:31:35 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: bfd006ff-7ec6-4972-3977-08d7c4a38c44
X-MS-TrafficTypeDiagnostic: VE1PR04MB6511:|VE1PR04MB6511:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6511375A53957E0486B9BDBF89FF0@VE1PR04MB6511.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 033857D0BD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(366004)(376002)(39860400002)(189003)(199004)(4326008)(5660300002)(6506007)(52116002)(66476007)(66946007)(66556008)(316002)(6486002)(6512007)(6666004)(36756003)(2906002)(86362001)(186003)(478600001)(956004)(2616005)(81156014)(8936002)(8676002)(81166006)(7416002)(26005)(16526019)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6511;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZQjH5LFA1Dt+seYhPkSF71lvED4MB0G6vBnNLQQALqUSYKTs37Rrox1PQ+Z1EvuCxc6Toku+dK5XEqI/wjdrFhpATfldTF3U+td7/lrhxvTXB3CLEdIRbzbH3PBAdQvyyBizryTBS5fFlKZx3VnoAnA7KL64DuysLc7VnYRD0ZLEbgr28ke1p/uO/FcEZMj+E1K2KBAKEVkEc40Q0Udw/yFLf8J4qMiCr1IxfhwF7Qly8M808QYY6XSEJH2hG758Ap6y7/wekSurl5DQ+6g1jlLw2D5XOz6XGDLquxHUBQJ9akf5lliQhWZ00ky+KF4zfmBZMB55j4cg2F0GQgBcN5EMVLMEvH4mYUJZG9r8ZJ0/XNomKnK9BHnBqO6n87G5pVxfBOpby77Zaa3L8hLudUvrY/6sfIpc2LH0VB190zSACL3q1rCUknZXEB7S+/jdJziIeZ0kaMK77DkoO5YJJHu7RjaCZ3LaHgHuUWSkARKYiuEqUNy5Zmmf4GblxVEE
X-MS-Exchange-AntiSpam-MessageData: RMN8SmIthdOLyICP/z2h3wIkjSVOyf2+GtqugoEVSCz2jPRtE7vTzLfIvQ1waYjszKje51m2IvMI0oWnJOd/RiZaKTaN/sAjQNB28CyvbkPN3PNEcXNUt/PgRNyWby1SnT6aAQ8M8fl3msVNEl7fBg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfd006ff-7ec6-4972-3977-08d7c4a38c44
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2020 03:31:41.0617 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2nH01EJ11yccrwUS1dgiIq2gELdnlWHLHmnG23Bl1qhT+UdQGJcFJfNIsd2I6FzHzh2kowhSIYcYxq7ttemRVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6511
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_203145_879718_08FF5EBA 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.73 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.73 listed in wl.mailspike.net]
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

Because the number of ecspi1 rx event on i.mx8mm is 0, the condition
check ignore such special case without dma channel enabled, which caused
ecspi1 rx works failed. Actually, no need to check event_id0/event_id1
and replace checking 'event_id1' with 'DMA_DEV_TO_DEV', so that configure
event_id1 only in case DEV_TO_DEV.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/dma/imx-sdma.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 5ae7237..4a6256e 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -1205,7 +1205,7 @@ static int sdma_config_channel(struct dma_chan *chan)
 	if ((sdmac->peripheral_type != IMX_DMATYPE_MEMORY) &&
 			(sdmac->peripheral_type != IMX_DMATYPE_DSP)) {
 		/* Handle multiple event channels differently */
-		if (sdmac->event_id1) {
+		if (sdmac->direction == DMA_DEV_TO_DEV) {
 			if (sdmac->peripheral_type == IMX_DMATYPE_ASRC_SP ||
 			    sdmac->peripheral_type == IMX_DMATYPE_ASRC)
 				sdma_set_watermarklevel_for_p2p(sdmac);
@@ -1373,9 +1373,9 @@ static void sdma_free_chan_resources(struct dma_chan *chan)
 
 	sdma_channel_synchronize(chan);
 
-	if (sdmac->event_id0 >= 0)
-		sdma_event_disable(sdmac, sdmac->event_id0);
-	if (sdmac->event_id1)
+	sdma_event_disable(sdmac, sdmac->event_id0);
+
+	if (sdmac->direction == DMA_DEV_TO_DEV)
 		sdma_event_disable(sdmac, sdmac->event_id1);
 
 	sdmac->event_id0 = 0;
@@ -1674,13 +1674,11 @@ static int sdma_config(struct dma_chan *chan,
 	memcpy(&sdmac->slave_config, dmaengine_cfg, sizeof(*dmaengine_cfg));
 
 	/* Set ENBLn earlier to make sure dma request triggered after that */
-	if (sdmac->event_id0 >= 0) {
-		if (sdmac->event_id0 >= sdmac->sdma->drvdata->num_events)
-			return -EINVAL;
-		sdma_event_enable(sdmac, sdmac->event_id0);
-	}
+	if (sdmac->event_id0 >= sdmac->sdma->drvdata->num_events)
+		return -EINVAL;
+	sdma_event_enable(sdmac, sdmac->event_id0);
 
-	if (sdmac->event_id1) {
+	if (sdmac->direction == DMA_DEV_TO_DEV) {
 		if (sdmac->event_id1 >= sdmac->sdma->drvdata->num_events)
 			return -EINVAL;
 		sdma_event_enable(sdmac, sdmac->event_id1);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
