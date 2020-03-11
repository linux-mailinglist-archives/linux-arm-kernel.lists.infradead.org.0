Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F037181349
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:37:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XlcHJDtWFWzey7K68CyRKRbPiGc5Q4tf/nj+nHoX0Ko=; b=XuT2sTC86cXPIE
	O54N2IhUJS+gY5kHAZU7kOSYAnXx5vb/B3gakJbHoTq4Lq2dvtArRthHoBiIOGl2So2rtVp6+kmcK
	KnT7Yif/S8rDHq3V36ccPcYUbzHn7QHUQdMg3MOZI7UtAQKQOCOJKxWKtnpNaMViTqbPwjaf7xu7O
	HylkQY4ik/EkSVBAXbvaD6umLMADv3NuWnm7qtOqId8M5D5Dok0ZNeVtzb37jeLsAGx4RQoRdJI5v
	hTdOQ3VLmLrj0fP8+J3CC1H1wPDhdVgdRNB5JfLyDysrYPghzoiVPpFvDBw4gTFXofrHomOU+5Lrs
	8PKvmA0Cv0Q/d7swUY8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBwrh-0005XV-H2; Wed, 11 Mar 2020 08:37:21 +0000
Received: from mail-am6eur05on2062.outbound.protection.outlook.com
 ([40.107.22.62] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBwqC-0004EW-Ee
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 08:35:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JP/f/hAGJWdH0dRvBYNLimWJg8mGieWUccLgNw7oBsb8CLoJYcWENQ2n2VE/KZf0Ze0eHJIR+1YqpMpqQiAdNOZM6M+n2RWXzM5WSrQiYUc8d05oKU1CG4l6OM/NVR/jeXkqtaDZdDBiDwWHc868OzSNqHsLL8FNjFYWtEOb4B7mobT8HlfAgUls9C/J7oSkYpiNTdwCTQ+nMNc0tvkSN8gbV7Ec1qXs9KxzU3myX59Gacvmi0QgcQLz0oAyLPwKnIhogZEuzf/Df0RUiOxRcJ5Kuw2BgtnRrZdwjGBytXWQ440d5g3a1tfWPJwIZkmfhCzD4jcYydU3SbayQXTpcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CRtb6xu+gu9ZrxAl+TPW+7oDi/VRvMarGC139iV3aBo=;
 b=cF5XPv3JeEpg3VvVdqUG9yyffJwIMltdGOFxwYMzoVz7dhpbAOlqTJ3GsGZSWvpIYWhXQBUu2yS3NHyNy+SnMBkMw18bRal+ZcYYM9kN8P1V4EWY1B3Ymcq7ppAxrJeYLBnUrzfjAi7XG+bgjm6vMtnymXCBPf2JAsa2EcMJBCcUX3dAnDO0hpd07yxkzzr89vBChIPPWTmAN3Ow3zdjY1lGBjrXMdL6VcwnS4gbUeLKh1QY5IpiBkmbvUuqpO7qODASzEiHCn6z/4h2Hfws8qMwA/X40zYnoDgtmhyHGJ+o1Ym8YIDrPqzBKGmJu5zfrBptO5gIAjzq+fzHTqSynQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CRtb6xu+gu9ZrxAl+TPW+7oDi/VRvMarGC139iV3aBo=;
 b=b5hKlYyG00SBJSpGiHMhVU33JDCG5X0VNAcjDOm4pruL8pdMwTt17G1bGSzchN2i6noq1Ug8LQIjxShckOPJUA8niZyrMmSD60fwblmAGqKCY/wKCXaxbX7gal8SQwRn3rk9xwmYMk4CfeoZ2tw/wqBH8HBAluZ3BzDKB4Fzfi4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6702.eurprd04.prod.outlook.com (20.179.234.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Wed, 11 Mar 2020 08:35:43 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2793.018; Wed, 11 Mar 2020
 08:35:43 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, broonie@kernel.org, robh+dt@kernel.org,
 festevam@gmail.com, dan.j.williams@intel.com, mark.rutland@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, l.stach@pengutronix.de,
 martin.fuzzey@flowbird.group
Subject: [PATCH v7 05/13] dmaengine: imx-sdma: remove dupilicated
 sdma_load_context
Date: Thu, 12 Mar 2020 00:36:28 +0800
Message-Id: <1583944596-23410-6-git-send-email-yibin.gong@nxp.com>
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
 15.20.2793.15 via Frontend Transport; Wed, 11 Mar 2020 08:35:37 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 14033f02-a3b9-4467-9c09-08d7c5973000
X-MS-TrafficTypeDiagnostic: VE1PR04MB6702:|VE1PR04MB6702:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB67029E348FC521DB68BC846D89FC0@VE1PR04MB6702.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1923;
X-Forefront-PRVS: 0339F89554
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(396003)(376002)(39860400002)(136003)(199004)(4744005)(956004)(6486002)(2616005)(2906002)(6666004)(7416002)(66476007)(66946007)(8676002)(66556008)(316002)(86362001)(52116002)(478600001)(81166006)(6512007)(26005)(81156014)(6506007)(8936002)(36756003)(5660300002)(16526019)(4326008)(186003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6702;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Melf9OCa/R4sQM7omoDPmFN03D/UU/3a1Ag3E3XQmTzL5Uc6RScbfXJULdq/TTAv16toO0pphZXiU1XIdKyzgKP6fQqSxKoGyha/WBeKRUSKsbEv837mFzdCzGn9Fs83PlJnj3wLpowQ2pF/f7JEEFhuewd/BeTjxqXxWozTUY1HhCLpGBGs6ffEOxoOrFcVCrZqlD/IspE74MKXwWVuTi5v53kWrpxTIoUsY8B2fOJkkjxNxP1I3d2wjq+k4fT/xQq1yhK9oophPfNlx0RL1DmllIyKMTaJfIW6VPLePeooaJuBbPPIpuY4rvjXXidYy0tnlYL2EviqUPamDwvHY886+UtOHO6n6I47rJ4sOnhy/NDVxQVY8cjFAfIX2Pdf7QMttkUI8t4RRF17JqOl3Rs68u5rCbXx64NVBjFv4WYour+uA6Tijg3sYIbBintg8eUi0uYSnGibeCL7sOhRrjNcJwJFtlGmQjEKopMe+PiR1YfbVetDM0SAhWgiGv2h
X-MS-Exchange-AntiSpam-MessageData: liTbgfHsKWH7U65ocaBUnXDZb+Ee/fhJ7zdf+HJ8II+zYql6He6J9qm6O/Ox8rzJbXEr8qugQ9SuyVvDVpIBFAw4sc2TGbmTmYTznBiA6Tw7CPPIT4tbUPwmZzhn5pxSLW9ygjhyZOsD/Nz5JTNEQg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14033f02-a3b9-4467-9c09-08d7c5973000
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2020 08:35:43.5322 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ESSkCVKl4yr6p/kqYxhmwFJaiaCbNZtgyQUkEn37hjwqSlakInKGkZZBIPl4F+0ofy4PQga0KdRlqZ7XnUtIGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6702
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_013548_527562_B55B92F8 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.62 listed in list.dnswl.org]
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

Since sdma_transfer_init() will do sdma_load_context before any
sdma transfer, no need once more in sdma_config_channel().

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/dma/imx-sdma.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 397f11d..69ea44d 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -1137,7 +1137,6 @@ static void sdma_set_watermarklevel_for_p2p(struct sdma_channel *sdmac)
 static int sdma_config_channel(struct dma_chan *chan)
 {
 	struct sdma_channel *sdmac = to_sdma_chan(chan);
-	int ret;
 
 	sdma_disable_channel(chan);
 
@@ -1177,9 +1176,7 @@ static int sdma_config_channel(struct dma_chan *chan)
 		sdmac->watermark_level = 0; /* FIXME: M3_BASE_ADDRESS */
 	}
 
-	ret = sdma_load_context(sdmac);
-
-	return ret;
+	return 0;
 }
 
 static int sdma_set_channel_priority(struct sdma_channel *sdmac,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
