Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 814D91CD530
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 11:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3G6i9cYcydccTMjpNWLIqrm7oDkot2uqF8NNIsLFFY=; b=YLH6zZ6m+mv8jj
	HWJjgpHZrob+nbZ9r5yCzWmYf0iIPnV5g7kwBxs0982v8Z30zvOMbpefrxxe+PNBDeFnAv0NFPHm4
	pVLGo6AfhAd8hW7+g5ugtnpGaIQt5xwCSkrrKpdYjN2u88l//oON30z9nDMpD3vwkZYLt3Hfd7Jz0
	eIonoHbS+gKZ8rGKRhzVxhnHOgKcf8LTjDNdd9lyEkEDTyzRxigqbEvi4wxLtsK085QbPo1PNDhPB
	qEFNLSH75qJB7bF++u8CiB1kfgsBQQRg9gYn5LHCvV0zFesmRa/UtRY216iW//bn9u6u06LIdBQTr
	7EurO8NBo9XNULaGzPQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY4os-0003W0-CJ; Mon, 11 May 2020 09:33:54 +0000
Received: from mail-eopbgr00071.outbound.protection.outlook.com ([40.107.0.71]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY4nj-0002g3-8x
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 09:32:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TRlECSUZaEU/OMXQBsxDn1tVokQqFx9d58w/S83mDYBHK6mra6z/WGcL5DoBlKbe0vbLg0tatBzdmY8lXi1/9Sege6Jim+xjMOuhQQiaJ93xNSLVeBUT5+JcJx7ybkNj7gqBCXsr/Gwiirq/oBQ4Z0CDJSDMofw2wi1z+0+MCFTSi5KS0gO9VYediaNmwH32rLNtXZrSHaiPvAUNsqTT9D/Q7YYaA/S4tSOzGQHbAWdPrDQssC5GE7h4Z+k4alJf3OkfiS5EN1f9VWq3Ry9tDr9hzWCUHUD02RYnpMYuRAhne1ktEGALT4X6vTtMaWNo4j9RU8mQHTpl/eiodbAIrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FQU5tzf+t2t35X5OIBCsPxLxNbwkyyrYCJLs6DM0iyA=;
 b=aG/g78nJZsRFXbR+JCfMjud9aJnKCNuxpX5wHv/bgmMSctxOTVQKlNo4Tx3LWkaiaQC7vMgYn13DdqvffmOwNZZDDsUREikV13cI0soM5oeWXF6tFXiUqWhL78/XWZR1fGnZvr/4XUyfPYTSO8mNUBKdNdyc3aky8gvk/rFUk09pxKH3bAFzi5VSspyR6EPcHuSgz7GABKl4j9Wnz50oW2fif6nzyDwmVcmbrrfgs53l2JjbPQTVYaCvU/FfG8ARcSfXTqn7pPOgJCGAiPIymkL8vfm9wyBq5l73bhzSz4WgXyO5pdjrySeAyCpBJy8YTvTLuOCxdwLJOm5/LvZUkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FQU5tzf+t2t35X5OIBCsPxLxNbwkyyrYCJLs6DM0iyA=;
 b=mdZsupbcLHNAyz0sCLdOzRVTbBxOG09ZZv5u3jA4ehzi6bPGFckJpOkigzcT3opzFMKObAR/fKFTvh6LeEF8MlZ5wmVv9t9YlVYU/F0DMBgWkyYQbpGXo4AFxtUUBb/viBqV3nYt87XwJCW+QtN1VMRlnGRvgQmxnqvP5JaXrVA=
Authentication-Results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6637.eurprd04.prod.outlook.com (2603:10a6:803:126::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.33; Mon, 11 May
 2020 09:32:40 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 09:32:40 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, robh+dt@kernel.org, festevam@gmail.com,
 dan.j.williams@intel.com, mark.rutland@arm.com, catalin.marinas@arm.com
Subject: [PATCH v7 RESEND 04/13] Revert "dmaengine: imx-sdma: refine to load
 context only once"
Date: Tue, 12 May 2020 01:32:27 +0800
Message-Id: <1589218356-17475-5-git-send-email-yibin.gong@nxp.com>
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
 15.20.2979.27 via Frontend Transport; Mon, 11 May 2020 09:32:35 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 2ebbaca4-111b-4230-6fa5-08d7f58e401e
X-MS-TrafficTypeDiagnostic: VE1PR04MB6637:|VE1PR04MB6637:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6637B2037727F69A29DFF55A89A10@VE1PR04MB6637.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:119;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VCtVB+q6u4vyvhSD9/JqxFnXVwjfPuvSwknaRSu9IPqocWSsiKa1UsGh66daCWQNBKdrk7FcOlZrWwi6nE3K1Sd4+Nn/E2c2NhX0El+MH5ZS9DJzd7XUkZVNVB7CqlFpJmfqYx/JndzD5rl6GKWZAInvSKJtXbj5otp2aPK9zEASv8X2CqqKSR0E8hIgp0IdOVi7as7JSnhUgW22s2HV9+FsRALYsmW57dB8HHC2zOCja8gExkeVYV7R1N8+wEXD+m53KJk/Ov1BpbUJASnOqjs5x71MfM0kw+nfOSJRUa32OCbInPCNCSZfgVtt1Y7OLWIDwO/n9oxDEZueWHL+JzrctV3uxyOTmYm7jf4WGE7900p6ZAD2grYpIL+QWiZvZPqejLqsgVbvRJ4d66H0647qnIzYB9u+O7NjiWqRC1OJewDGqFhphIaWT72Gl5Oo2MeFuTYZQ/l0lDoG+AQ0gJ86/jnMNR9WpBQf9Ur7OVLZQH6/Jl0O2np/3hX7tu6RoBN6HXB+wxJhjhgmuqaO4g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(376002)(346002)(396003)(366004)(33430700001)(8936002)(26005)(52116002)(6506007)(16526019)(2616005)(186003)(956004)(6666004)(6512007)(7416002)(5660300002)(2906002)(4326008)(6486002)(33440700001)(66476007)(8676002)(66946007)(66556008)(478600001)(86362001)(316002)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: HOeWLxtEcflJh6z8al5YYq8nNlDSUW2i3jbHJb+/V091fDzLWQBPApUT1LSo7QAbiUlGtSatTB9IdCxy6a0+w4PlVcZnNEXQcUSw+nJaHkSTfOJRtcXlVOMk04TwF0jkie7GKyu55epnHsT0l5LIvT2mCMkZpnjh6s4kYi7mywY4k6LahRcJHtBnZ42NM2qEnhBpPmPqjPywwkxM8OUa/5Vmx6v19KBOxmipT49owX3WOPn9SUV1+L6BbegInh0xrTMRAXkusNNcK3/ZnTjoAWzdQlSzdHUdKn40h+kWhQCcoIWNgcuiaqr5wejTCMJWJXQfY9Hz/n4UHn1esAgNgjBHhRLRUaBeavh1ub0q5AZut/izA10EcMgqiZJsWUnMWNECakpuyY1RYXRBicz4figfKbMU8uw0Vw9B7+perl0q+md8pfTdqYYRR8Jn8tQed11z5AAV0S733xDhcgCuGgjrODHz6u4jMLc96Nh+6uc=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ebbaca4-111b-4230-6fa5-08d7f58e401e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 09:32:40.7641 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Oq5+etXpb5Droi8d6i9SOES/mKWAS/kiyb3R+falVWmI5nm91a4ctzdch9EB8wjMxIo8mvVux5O7nvSeFjD7+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6637
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_023243_376404_AC02269B 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.71 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.71 listed in wl.mailspike.net]
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

This reverts commit ad0d92d7ba6aecbe2705907c38ff8d8be4da1e9c, because
in spi-imx case, burst length may be changed dynamically.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 drivers/dma/imx-sdma.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 3d4aac9..397f11d 100644
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
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
