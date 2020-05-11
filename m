Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5621CD52A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 11:33:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VnbJNTlSmYM6c18lMM4bytgXZhkIyNIczKBq63BUVrU=; b=RGF/hUxtHNsQnT
	oyCIOeWqb72ZuPPiLZBWjTeD0f8k+Se+fQX81HB6M9AliYopNpkPW9Z8T714TEBaZOXotfSPkOXsS
	k3cZktB8cFVJOq4Cf92iVdEqZSxCVE4mbkcNI6ZflirlZFKIW4HYYhvag6PuN2oHViky30OwBwsor
	lXeAsPbI6kg+DaiPeleqLyGTAiJJaDzdOU5Mpzq7MljgMRf9qwYch2GRzE/KODsd9gePmHCZFJQrb
	J5xe94J76XtZNJTYjchPJRXkiXRGi4G2q7GMOHjRAl4yU8wpipEwT0lZI6eGz753S1mcVvDux6HOQ
	mbw6ih3TK93CzvCe36/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY4of-0003Ei-Fj; Mon, 11 May 2020 09:33:41 +0000
Received: from mail-eopbgr00045.outbound.protection.outlook.com ([40.107.0.45]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY4nf-0002b8-4l
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 09:32:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fiAAmoFd+oZp5JaKdysqMdFNtGaJkQ7F6GpaeHS+uRnApeIzcByeZEybe5VF8bDKiBc2iaGTjXOmTLb81YDjc2fXR+USEjlWJWHrmfylewDoSqdHbJ/KmuVDF5giKT6ZEyWw5Vj6j4s0bpeIoFho15yAlVzGOIcvn3DfI2emFDTUTMbjld2A3aawEjZTB+ut2qbY6QxLrlbCOREKMk5TDuKzzPQiMqxnWWxzL/iKUHf7tn4WlxGiOqpOP5wgRd18XkxoKfwqLb3b4V216/MCtrkmMIAXaYhQxtvz0DLwgbeBJzvPqpYX4BuYZs03fjLaw3/6g1jg6ivS+gWLkKwEIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tn1BNC+LM59xHK/Thlu53S9HVa3f5XGkE3C09QiwNLQ=;
 b=jlOWTZ8QOGtckUCkrGHSt2iDehkN2+FtEXYcFW8H5+PZl+v/2V0AP7S/t1vQAPcowW4So3tqfmSa8WKIeqHomaWzYh63PduJfkYC8XVQhAoPo+pkW3Q2v5+tXbv15ZrF0zrhi0McYAkZWyNI/gpKwvoPlhBkRyoet7spfXC0oHUO1+Y860zJegZjfUBa1oSKF504LJL1hgXY7VvrLjbIIhnwU4ZLIiap3zlwciuxX6w/QknMlGavESvtaXk9Ti+IFdLXBTQdgNPLw/YbiJRSFzXE8p/R6vF5hToHn9UElwg8saKpVp/JyGSuB0Tahpnp6Pqz1nBOOgAPVQE7dbxlZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tn1BNC+LM59xHK/Thlu53S9HVa3f5XGkE3C09QiwNLQ=;
 b=noAcqgks+x8U5DqSM2Z/bTfxN+YElLP0rwh4y673G3lp5RQmWpbRq/AVeYoVqw+D3958Qn0Ao1hHH2VlP4Ap7YucS6YtZgZxKGe+FLfV2UM1qUDgkdRFRFuO9PTyhVo/O1oRZIbXRhOElr1KSsSAo9l4GcEWarEf27wx7jDRF7o=
Authentication-Results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6637.eurprd04.prod.outlook.com (2603:10a6:803:126::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.33; Mon, 11 May
 2020 09:32:35 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 09:32:35 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, robh+dt@kernel.org, festevam@gmail.com,
 dan.j.williams@intel.com, mark.rutland@arm.com, catalin.marinas@arm.com
Subject: [PATCH v7 RESEND 03/13] Revert "dmaengine: imx-sdma: fix context
 cache"
Date: Tue, 12 May 2020 01:32:26 +0800
Message-Id: <1589218356-17475-4-git-send-email-yibin.gong@nxp.com>
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
 15.20.2979.27 via Frontend Transport; Mon, 11 May 2020 09:32:30 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 94aedf82-a2bf-4e2b-e484-08d7f58e3cd1
X-MS-TrafficTypeDiagnostic: VE1PR04MB6637:|VE1PR04MB6637:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6637573689C49FE634122E1389A10@VE1PR04MB6637.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:59;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wnGdZM4q5vKRx2GTmJcAVWr5OngaEf5B5tgMo5Vapth13Jn5pT/oDaS82Nr6noUY5VUePbQH2/XbpkhFAo3WAI1q4uOaHa9DLrLVPaB9/ZmZJp4Dq04MmfA0+oYAa9LCQep3FKQ+nVGeD5m7I0uVQQ35KzzZ2UK9slSPmpmk/4EFiBp1ciGVE7jCYAOXYKZd9UcVGg56luRmlfW6w18SAXrzN9oSrt60tlHD+XWN0pQNwF1kDbj9Yd3pmcAbTIewQJVchOwIHIPlHSUtlr1oA9HMGxt379ets20H3G1yT8EjTmF7XkR23JHPYtdgeoREYyBTiCXC7lWxdAdR+nUrK9pGXB6ZPjvrd0KhisZ8iA2CNuerxXQV8o2YaPWmUbHTlYZjZXJfAGgSY9MMOjzFIR2gJ272ejtNSsSeyqCys4UaYEAj9UHZuhNwXDfDV/2kNMSZ4DwnE4Lss+u0He4F7U4dvHRT0ioP5yQ9QFtStsngWWGZRrTAUn8o/1FZM/x1KRlNqQ/gvbDDvyvsDZq8gQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(376002)(346002)(396003)(366004)(33430700001)(8936002)(26005)(52116002)(6506007)(16526019)(2616005)(186003)(956004)(6666004)(6512007)(7416002)(5660300002)(2906002)(4326008)(6486002)(33440700001)(66476007)(8676002)(4744005)(66946007)(66556008)(478600001)(86362001)(316002)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: yjbZRoIJFGqatVPnT+0BHNIjzDEbAgv8ntyk5X1fzEBncBaep3ji37NQvJKLxYWUW6gPmB/lOF0cJK7zdshaKz1fM95vPELcbD/B8/ryDSEwuXiIRievseyRDYU6WMbfxqbtNunUJ92cothDTcL9KPpd8pQjTd1xoswL+gCu/zsHjTyCmk8P6awrl0/rC2PSBntMUKjBry87Q1GL1fa3LKDj7XORivChStFkz3TOYBG5kfqxTgLN2W0ydocLtCieGIV3LA6fHNABBZDqOMhEikIp1WsK9krv1CVnBqNYuaSo47kXPz1nE+YzSPnvA+CdRVa2Yd6dirslLEDaV1XcF0E+nr7NRJ+oRf3PlywCCjz26udA6BX51LVceLhYcpqrtAdBmbuSiMzjvp9NZ2H7db3I0pDyeP105gVN2UVToDHuqWC8IHXAK9ol1d+krnQDEGkHOcpi0oQ55TuO24ah79FBxikpqC+385Zr+ztsHUk=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94aedf82-a2bf-4e2b-e484-08d7f58e3cd1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 09:32:35.4222 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nvbn66es9nJOWOuSd9XBQ3lRrmJqSeqnHgwkc7wIlLT+lUN+f2HBA89/7XXIzdl3ESlpu51o1CcdyPPIT9geIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6637
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_023239_416755_22402ACE 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.45 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.45 listed in wl.mailspike.net]
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

This reverts commit d288bddd8374e0a043ac9dde64a1ae6a09411d74, since
'context_loaded' finally removed.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 drivers/dma/imx-sdma.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 4d4477d..3d4aac9 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -1338,7 +1338,6 @@ static void sdma_free_chan_resources(struct dma_chan *chan)
 
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
