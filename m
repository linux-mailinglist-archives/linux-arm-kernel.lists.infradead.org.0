Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B341EF969
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:38:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DWwDDQsQfqKPYaz6ntnoHYCgYluQGqfSfMyIskQeShU=; b=qcHdBi1G1Nv3YH
	JgviXdMgDE3I2RI6PJLor5AYoHIImLBsyee6GzXrW0TYdL7A1xZLgfHb90C3PROHun1C18kZfv+SI
	G7E9VGooi3jYjlfGTi0i86Q8M+8c1N7QyUOYn+4RVVUxDY8bMC/yR9whHra0phKjKzRslByEaxxs8
	VyN6IBbNCuKrxh50rO1stb3evDn6bZoec4lfACMUtbhOlbFNIg9j9Xvf7BtnisAbj3RM49IfuPVrK
	0n3BeTsu3Emw2z9QkCHIhTpEajR5UsPite/4hV8sjNp/6TVd6tA9yu4yVtj6hfZz3SnA9yBU34XCz
	tLg2EEaD+pXEWig3q4KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCXq-0001kM-Nr; Fri, 05 Jun 2020 13:38:02 +0000
Received: from mail-am6eur05on2063.outbound.protection.outlook.com
 ([40.107.22.63] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCUD-0004wx-PL
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:34:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TNl3aDAlsZLKaVT/1AbyjE6LmLeC/HTdCrMEPYXWaPO3d7FZPABSzGErxwAaCYF2glKP8EhE9RfRHe/oU16Hq9tlBV1qOqiN+IPnnamcj3n/bL5j3mJpDbRkG+I3+OokIU6jQmySnv35bxgU5Imo0J6C16wqgHOxXscCBcAV8pZTNzhcePm2vDwRoMkEkW5MGsS1hUJsMvQXiR3mW/VQlgVxyaJA/83xBCsh9E9VvijVzmYP6yvcUGdGYzWdcLFtdPauLViDRG1GY/ezXpO4Xg/8T06nYeDTksP2WvUiLAc+tzddEHZdDS/qDSzEwoJ12JOqhahH/2hzNNqtJ9iW+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mFbDanBWSu2S5nbk4C4ogbtxHYjU/2zcsNJWbhy/sHo=;
 b=JsTXWjFU/CDCu/BBz5iazwZmOjdoXZmrVYWUbedULAT3XixlR7Dw9Ic8CRf/sxnW7rWS8H1BE+5f2JMyivz7cMtbhFd9h+b4fsn8/Kmx8TjaXz+Uzt/7k2exnAvTI0oyiHS6k6Yy3BlfHNxo4PWXRzYCsevqCNTIMMWggb9HNwsqW6SprKkyXga126Lcbix++stJJWj2DvqcT8Bl6ASnfa5S7Bu8DVEMJlfIySf+EIvLE6JJWLR6/EuwvuziH9K1vcZz7zmHYpCstqMbs1rXN1IujeXrfX8Hv/l8U0fQXnCZw/THeWF8mVRNRdNpoCRZgKbx5XDWz3okZiJ23GK7MQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mFbDanBWSu2S5nbk4C4ogbtxHYjU/2zcsNJWbhy/sHo=;
 b=jMBGgsSFGH3dKBOjOYOzZd/2uLe9aicdEyV1Y17RJZsprNnyCwOsmoIWM7zj9TkhJRHJGmVLCVjrr8rD2a25FrxW/oHFhL7wnm4iagBkpGvFXLY9i17aDgSm0Wv5T0Qiny0XUnY7lZN6F4gzI8JObD2QfVg3ApB6XoYbju9q4uY=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6702.eurprd04.prod.outlook.com (2603:10a6:803:123::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Fri, 5 Jun
 2020 13:33:43 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3066.019; Fri, 5 Jun 2020
 13:33:42 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: mark.rutland@arm.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, vkoul@kernel.org, will.deacon@arm.com,
 shawnguo@kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 martin.fuzzey@flowbird.group, u.kleine-koenig@pengutronix.de,
 dan.j.williams@intel.com, matthias.schiffer@ew.tq-group.com
Subject: [PATCH v9 13/14] dmaengine: imx-sdma: fix ecspi1 rx dma not work on
 i.mx8mm
Date: Sat,  6 Jun 2020 05:32:34 +0800
Message-Id: <1591392755-19136-14-git-send-email-yibin.gong@nxp.com>
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
 15.20.3066.20 via Frontend Transport; Fri, 5 Jun 2020 13:33:37 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ac8b82b9-490a-4fec-1952-08d809551087
X-MS-TrafficTypeDiagnostic: VE1PR04MB6702:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6702D325C9DAEC116F32F6CF89860@VE1PR04MB6702.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0425A67DEF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jFaxfL3B9aADHaFoV0TOJBH+1WJOCem+bKG5t8sb+kZ8WLRiPguZ0IKF1czvIzO/mPUS8GLp+mfBuMEVLgSfrCP3Z20Hk9YVU5eXf7MXM9KXciiYft4V8yBHKeT3EyTVH7m8mtmqbj1entOsraQ9oji7tMfi3zBKAuljk9mloFMxIvz0yJFPtkzy3Dk5Pj5B45ou5RiKiDOdgvQsMVIQef4zPb7svIL4H52C4P7R4tO8acCkpyhoBXRNLhxnuQNQwNk0QQQUloHl9+j7Xv4rzKNSvlJAwojlUjwUWsHhXZzFuAENUDqJHamO56MihFS82xQg/QVFM/M8PYSUBS0cdv4eisA+fMc+beI/NqzG0Gy1O8HHNinAfjBdkP0LCFA8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(376002)(396003)(136003)(366004)(6486002)(52116002)(2906002)(316002)(4326008)(6506007)(5660300002)(26005)(66946007)(2616005)(956004)(478600001)(66556008)(186003)(8676002)(16526019)(7416002)(6512007)(6666004)(36756003)(8936002)(83380400001)(86362001)(66476007)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: lBhQzpxPR1zW+DOvOrb4IZBn0eHk5pAN1Ku0JhUG8gEh9kwmL45C6MDjViu6pgL8NWsu3vs9GqpQUURpOhF+JpIEegvQaDRDnSG0juvY12O+7R51nh3WHHB0FgTTP5OfmMNerykmJTIIlzsqXYXhro9VkWy1L1nEEb/OXlB9/uPGiMQS+MS5A6RtXJDt3lWChsOw7KGLfK+6pvDZequBR+uMJwL2SA0zFLTxtFcOfH0sCSgBxp97NUhn9Yg2qUuzhnU8l41+dQ4xOz9CQqPZbWvA0inpykbnfkbsmaZlqDpHj0Z12LkUK/JOeV/LIy0/Aw5uUOIxNW/5N/0uv2it43tUhS0Ojb+anuy+TqpqGpwXcsIoGtcGm4b/NcT8VhIy9+M+o+JoyLkE4m8NaNwAfpCEnyuyeQFyn4HB5DeCBcUn2gysHgI/sWsT9wE+pKXXJuY6EzuWNiKUubjyLOM/aPLGsYvf+TpCLgg1bzDfBxA=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac8b82b9-490a-4fec-1952-08d809551087
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2020 13:33:42.9193 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6ddBNYyWI//Ys1bOYJDTBoNKsxug0pXYKQjPqiBOq1tBgBX849BALsjPZ43CX/uACkhwk8cnswLpXpB8FPyRtw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6702
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_063417_864943_C53E469E 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.63 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.63 listed in list.dnswl.org]
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
index be86ae8..320104f 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -1183,7 +1183,7 @@ static int sdma_config_channel(struct dma_chan *chan)
 	if ((sdmac->peripheral_type != IMX_DMATYPE_MEMORY) &&
 			(sdmac->peripheral_type != IMX_DMATYPE_DSP)) {
 		/* Handle multiple event channels differently */
-		if (sdmac->event_id1) {
+		if (sdmac->direction == DMA_DEV_TO_DEV) {
 			if (sdmac->peripheral_type == IMX_DMATYPE_ASRC_SP ||
 			    sdmac->peripheral_type == IMX_DMATYPE_ASRC)
 				sdma_set_watermarklevel_for_p2p(sdmac);
@@ -1351,9 +1351,9 @@ static void sdma_free_chan_resources(struct dma_chan *chan)
 
 	sdma_channel_synchronize(chan);
 
-	if (sdmac->event_id0 >= 0)
-		sdma_event_disable(sdmac, sdmac->event_id0);
-	if (sdmac->event_id1)
+	sdma_event_disable(sdmac, sdmac->event_id0);
+
+	if (sdmac->direction == DMA_DEV_TO_DEV)
 		sdma_event_disable(sdmac, sdmac->event_id1);
 
 	sdmac->event_id0 = 0;
@@ -1651,13 +1651,11 @@ static int sdma_config(struct dma_chan *chan,
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
