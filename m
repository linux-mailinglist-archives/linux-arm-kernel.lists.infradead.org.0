Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AFD1EF951
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:33:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRV4FBqI6I5Eh0vJhmRgHYCjjH2Fw0KOVjJJlSpeFYs=; b=fgGQrfp+JzVmZE
	cZvm+ts23EUz/lpgZLZGp00tjAoWyGXKd8ranxInlZT4VlWFmkHFL4JXazM/rgjhRwQQXN6EjBZ8N
	bqIatG/Xv0fZ5djm4eed24slCSO6R15Y7d0tG/QBOIswbqKdDAcjXJi0YMGE4sIGyOzxL13GsIqNK
	NXkpA4KTHtSyd3a+V7IVw9mYoiS0E5euaFq7Ianlf5xv+Aii3C0YINElK4LUsqXQWUkS+OhTqKhw8
	v5EJ8HmWmfTDwb48uz4xjHzfGrjbYwKIahj4xHmS46DE+rfpdSn+Q2QFJKUhcAJRhCuds0GwEckFM
	b6fF/KR2rfAOsC5LxUYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCTo-0004V9-KT; Fri, 05 Jun 2020 13:33:52 +0000
Received: from mail-eopbgr60052.outbound.protection.outlook.com ([40.107.6.52]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCSi-0003kF-Vx
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:32:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hJXe80JiMSzgzn1FZ0XbLeRmzTx+q4AzjqH/SjHU8p5fH4UgEip7t4+S4XKWvwYuomzgQezVl40ac9IA2Q+h+I+KsqQh54Nhh40nhq/kIDdBKjfR6AuxpMgBoLdoWltZ4zUUdF23k3e5TLo35HkalrxLqqsFCn5ohFDqpMgjGIn5j6tW059yJL6HRaHzxqEVLoQKkc2zsJ2fWXd9dmVN4zT392jogViuPnN5W96KuQaJRYrJ74Ty5evZJyH7Hx5XjC7W1PxABjaxNwgJACMihUdT3lPgnAXd8a599lt7/qh51Cs6ps9HidnIG3dbrGHkg9w8VlmyjfIFSchiDosYLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2qQFl1M0PiqWRUkPgPmPfPvDrIW1FM8N4ycyyrFKX0U=;
 b=YuhanbqtaKjN6ZpHaoh3ZeEXN14NAu2LWL3qyUvSl3YkR43XqbsPVtmLP4t3ytm8DAMEkWyhRzgCGxl2a3pIUT3x/3BeZxJCTey+k16Hz4cCdECpsbxNuOi77dDs9thP0nlYEv5ShhKMyI3OQ4vO4UhJ/HZLaT0BFD9OpNkGW4e3bE1BJi0c/MrHwi72wDQUbWtCRNBS+H4ZW7ZG/6hIXjHNTSkpQenl+BFZEwuaxCExDUTl1Pj8LFiMQLSCzTXjJcFlWE7x8O5+BBqWKOevUdimX4QRtAZttY2p/ha/Y+2vDM8+5oFQEPihY3B3ayKWQBTshMf0Mz+frP+n8ew9Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2qQFl1M0PiqWRUkPgPmPfPvDrIW1FM8N4ycyyrFKX0U=;
 b=YiLJ0rTrTwXMf5ujbFuMW6bRL24PuDkBZszJ633GT64I89fAMuJ2QURRlG73TtdnnVXjSrUGMmPoZQJpDqJJe6A/t/vKJEA9YPYHedqWyUdOuTVTxpBB8mjg6vVcwm/oiiNBcF0X3ZwN34GUFLV6ObPNV5mCiZ+PXPCjDRNY06k=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6702.eurprd04.prod.outlook.com (2603:10a6:803:123::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Fri, 5 Jun
 2020 13:32:42 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3066.019; Fri, 5 Jun 2020
 13:32:42 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: mark.rutland@arm.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, vkoul@kernel.org, will.deacon@arm.com,
 shawnguo@kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 martin.fuzzey@flowbird.group, u.kleine-koenig@pengutronix.de,
 dan.j.williams@intel.com, matthias.schiffer@ew.tq-group.com
Subject: [PATCH v9 03/14] Revert "dmaengine: imx-sdma: refine to load context
 only once"
Date: Sat,  6 Jun 2020 05:32:24 +0800
Message-Id: <1591392755-19136-4-git-send-email-yibin.gong@nxp.com>
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
 15.20.3066.20 via Frontend Transport; Fri, 5 Jun 2020 13:32:36 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 25d380c6-0fa6-4812-339d-08d80954ec7d
X-MS-TrafficTypeDiagnostic: VE1PR04MB6702:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB670288C0721F2F223FC0472489860@VE1PR04MB6702.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:119;
X-Forefront-PRVS: 0425A67DEF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9HrARjwnusQU+MYKdjovO07Kc/wXQaSkDY6tsgS+c0JPn2Q8WGlqGgExtdk8dg3jHZoo2Lx6zK5+MsoO7gIRb1CYzWsvfCw/li/r0DE3hv76qgap8GEZiFFk/EUVW3KHHJqlP+dFsY+IqGHF+/EoMaJlAv5ZRLYPM+nrdkJXj55dThthdNDtMkiCkB3VhaezpHYK2BhOn7ODbUq0eFdX4EUELRXlCJ5DMWHNL10B1/OzoVy5IWmyki5Nzeq9ru0xTYwkYehHlJLek91OVQVea4kMBDGD2MgW23fNL1WhQm4L0qYkSt/9BBuoORYNOsS/eSAB17cBsQz8z1SxYmsfyvV+S5YywZkJGOiHT3Io97EaOIxAiKuQxF9ANQAozANg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(376002)(396003)(136003)(366004)(6486002)(52116002)(2906002)(316002)(4326008)(6506007)(5660300002)(26005)(66946007)(2616005)(956004)(478600001)(66556008)(186003)(8676002)(16526019)(7416002)(6512007)(6666004)(36756003)(8936002)(83380400001)(86362001)(66476007)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: TGqa8639gNofAx0nX4P1buojxtpQhQ0fRUiTq6NEsCmR7GJf6eKF/rPwtz6mO0P+Y7PFeDAEmNCYQI+zhPIvjs+5BeXnxmB1z72X7pHIMFqOQ3O0SlG8xn+n0aT6GfqkJquHl6CHvNK4aL210zoAfbGgFkgsb4Z2zdrj5UVzfIeIwlEu3P1+ZoYYW7ZJAsC7h0RnepTM4r9u0IU3Q9mQ+yKi9NfVyZRW6uZ/4TqCQjqzEoeD2nbZpF9pmIAY2u9SwdmWx7PFjZCbb4ofnYGIBH1Arbk1vnSi5HSNw3PYp7ov9OxZgulcyDJXXbp8UuIISP+BXRASyvTlvYmHQIoMwvlCWeDVDcWcMNiIn163gb39lQknLWl4UGotdsyYpm6wRBGJOnwU6ZpscALXa97j2W5bDchc6SXGbc+6xnnhMbmddRERuI7vyYF4VWf4NeWvpr5LKECFWk8pCvodSQAGSIovmI6cnBw6UUZ6q1TjD8s=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25d380c6-0fa6-4812-339d-08d80954ec7d
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2020 13:32:42.4914 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VZ0gSZ/ttYChdDKmjwVT6etW1NNiBVQoQxm2ZLvAqvcSvxuXqqX2GsPqHXOYZfZsnnt8+X0FRzBnjk2oy+wHTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6702
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_063245_086764_E985EC16 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.52 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.52 listed in list.dnswl.org]
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

This reverts commit ad0d92d7ba6aecbe2705907c38ff8d8be4da1e9c, because
in spi-imx case, burst length may be changed dynamically.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/dma/imx-sdma.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 9177403..b1f61eb 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -377,7 +377,6 @@ struct sdma_channel {
 	unsigned long			watermark_level;
 	u32				shp_addr, per_addr;
 	enum dma_status			status;
-	bool				context_loaded;
 	struct imx_dma_data		data;
 	struct work_struct		terminate_worker;
 };
@@ -984,9 +983,6 @@ static int sdma_load_context(struct sdma_channel *sdmac)
 	int ret;
 	unsigned long flags;
 
-	if (sdmac->context_loaded)
-		return 0;
-
 	if (sdmac->direction == DMA_DEV_TO_MEM)
 		load_address = sdmac->pc_from_device;
 	else if (sdmac->direction == DMA_DEV_TO_DEV)
@@ -1029,8 +1025,6 @@ static int sdma_load_context(struct sdma_channel *sdmac)
 
 	spin_unlock_irqrestore(&sdma->channel_0_lock, flags);
 
-	sdmac->context_loaded = true;
-
 	return ret;
 }
 
@@ -1069,7 +1063,6 @@ static void sdma_channel_terminate_work(struct work_struct *work)
 	vchan_get_all_descriptors(&sdmac->vc, &head);
 	spin_unlock_irqrestore(&sdmac->vc.lock, flags);
 	vchan_dma_desc_free_list(&sdmac->vc, &head);
-	sdmac->context_loaded = false;
 }
 
 static int sdma_terminate_all(struct dma_chan *chan)
@@ -1338,7 +1331,6 @@ static void sdma_free_chan_resources(struct dma_chan *chan)
 
 	sdmac->event_id0 = 0;
 	sdmac->event_id1 = 0;
-	sdmac->context_loaded = false;
 
 	sdma_set_channel_priority(sdmac, 0);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
