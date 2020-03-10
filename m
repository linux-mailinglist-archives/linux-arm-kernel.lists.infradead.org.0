Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C601B17EF56
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 04:34:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TBTADOsp2nYoU7oyGkW6UpzkPmtA/bRjS/Y6gAqTqJo=; b=nUIzwldW5cW+96
	MHuyefBfutIdc17+eMb0a0sMvvAu6uwJoRhiUPjJpIDY6rKN5ENon7uxg49tJ+NSBC677CsR8hx3r
	H+/NUhC7UwuGzEuEquJhFhnSyGqIFm0wooRoxdU8/GCIYChg7gGLIshM6RUsJvrRGtbqWR98dco0s
	vVMwJ+qH4ldngjn0a2GqNGW6nIrB9ekOKeRPmSSBplWNDORRyPBwJaDfNDkcnWawnsYsS2zh1fbdM
	oX/G0uvMRHoWUaDVjBVWL1pIwWxQdUkwcI6Qy4N1wnVBCsK9HkNFQjDt4EcDkq2pQuoEK/QQW0H8J
	CPQ4PS8Zse6X9zXidgNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBVfH-0005dw-2V; Tue, 10 Mar 2020 03:34:43 +0000
Received: from mail-eopbgr80084.outbound.protection.outlook.com ([40.107.8.84]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBVca-0002wK-0s
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 03:31:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BXGqGFY/oJb0psAMJTVwvos3HWv79F5jaCljLL9P3TsjJ3F5SyKtqf7X3Bb8AWuQ73Bl4gZc1DFeP4YXJz2HXqXH+SRgDGuRD1mD35ofYGZhbOT+ZwpsdKKQ4f3DZEapsUKqGwOcgmnQ9oNL8hF6Ac6DNBPnm6GLoB8Hzh/g5Jb6NnFQIc0c4yh6Oeow38A8c4DKqOrILajlGr43tBq4Gifhgfp8XHo7k7s1nisXD5Rm5TMIYUQtxST8e9bP2/6DQ0zsPs2uTnC3uQINWLxhRr2OW21WTu52l8532MXmoNbgpbgf6hDhoyBpR9MwacCqktQghP55OgzXt10ZlClbKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jFMiMbOLM2v65YRlJ+RXVBgXYhwuGIUpMeWPV7yKShw=;
 b=efyAGKkwQdYUVmWKqcRtOm5rz9N4pfAmzX5jH0c8GGH+mOpxKkQT3ByquWVgWkT9uI9kfJx1g+7VuytUTcSpOwI1QPeuDrvltu28tPWlz2RPxSWTNZGRMJ2f0h2eSIFYquKbUYCRmVWBu2YfzczKWcbNV3Foo7kBarSPf1kVLCJi9Oy+u81yZEZiHXZL/43kwYFvbQxlTXwsZfFxU47rCVTenGDYI/cXzl3CmETW235CPHl8zOFjOqLIkiQV9ZCCM3WzDPqc7mNR1xIAgAy4aj1Yur91vUyVP962mAGDOx1A4T5oaAtMVq4nboi9lQR1XdWjaROWSwkqCUOTeUthJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jFMiMbOLM2v65YRlJ+RXVBgXYhwuGIUpMeWPV7yKShw=;
 b=LyLsxOJmu16EBocBjuGkTMBHMid2HUxp22L6nyrLz31iQGzwMDofd9zPyafEw1idUBPrgDFKwmYcphB/l4cJ/NCkDOo7lTv57nv407aPcScmyXIdG3bsjAc2/UlQxJEubtUSAkpNFn8LD3jNOYIMRGxaUnFmeVw5aIxoObjIneE=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6621.eurprd04.prod.outlook.com (20.179.234.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Tue, 10 Mar 2020 03:31:53 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 03:31:53 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, broonie@kernel.org, robh+dt@kernel.org,
 festevam@gmail.com, dan.j.williams@intel.com, mark.rutland@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, l.stach@pengutronix.de,
 martin.fuzzey@flowbird.group
Subject: [RESEND v6  13/13] Revert "dmaengine: imx-sdma: fix context cache"
Date: Tue, 10 Mar 2020 19:32:02 +0800
Message-Id: <1583839922-22699-14-git-send-email-yibin.gong@nxp.com>
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
 15.20.2793.15 via Frontend Transport; Tue, 10 Mar 2020 03:31:47 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 1f8382d6-54c9-4693-f51b-08d7c4a39352
X-MS-TrafficTypeDiagnostic: VE1PR04MB6621:|VE1PR04MB6621:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6621CB430E614EB2024E33A589FF0@VE1PR04MB6621.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:59;
X-Forefront-PRVS: 033857D0BD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(366004)(376002)(396003)(199004)(189003)(4326008)(8936002)(6666004)(8676002)(81156014)(81166006)(4744005)(2906002)(5660300002)(2616005)(7416002)(36756003)(66556008)(66946007)(6506007)(52116002)(316002)(956004)(26005)(478600001)(16526019)(186003)(66476007)(86362001)(6486002)(6512007)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6621;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: K0T+rsMusn3LlXYy1TcndzbdDeiGOtx8JsShRHKAQnUukbChGGVvafU7MfAaS4Vl8Y+K8QTossCWYHdoe10R9f2CdRTfjpe2SirdQp5l1XoPypgbbiFpS2uAQhCoY/ciuvXV8A3d4dPiN0PX5rBTm4pDaE1Th30abnOfXvI9Jzd7Iy+JSLYmPSy9pzCsXKQDF/wKKdZexWVafeEZef8M4rWoo6PaZHBMNs+Lvp4pxXr/hOu0K1HPFtGWCpo8zEsWD2vNcwu4sFheJYjQJhhrQyaOlOjuqe4gzuUwQPAEdvXNRo32Xc/oUB/odQkKuy8bt8MPBax00Ol3aGScOhkCZ7+nwMHhyWi1LfmKkLwepA5a8/KaC78Xx93oCTTXUr3KFGm8vRlYqwD8hP6oHIxQn5LrxdeKqE2JWuVXOQ6jDZ689KMUhNvCc9Ij+0djid1mCxnj7cJzv8eFjL2T27+lf60nf+hqbj/ZyiPUkw2/ZzDPLAbJt+mc6D0vfb9+RT51
X-MS-Exchange-AntiSpam-MessageData: kIhhF7v49IKXnFLL8lgtUjsMyj7cr8oOEVztSRU2zsvMZ263E9EKENiKSqLs4ofswlLeyPLaJmDeqP6ruxKsvGAqxdBImneEQIiqBMwi2tRVeYTg4YJmyonwLgzMGW24vWd6lZqGsS559dwYMl1/qw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f8382d6-54c9-4693-f51b-08d7c4a39352
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2020 03:31:53.1722 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A+X3vln9vz1zwgs2JQNWmWmXRBa3wksjjbt7lLLUKWRVCyCFC/Tfxm/+KKbceXF5f5ipWOQume63mmWe2PHnnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6621
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_203156_095935_B5154EBF 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.84 listed in list.dnswl.org]
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

This reverts commit d288bddd8374e0a043ac9dde64a1ae6a09411d74, since
'context_loaded' finally removed.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 drivers/dma/imx-sdma.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 042cfbf..1abe4bd 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -1380,7 +1380,6 @@ static void sdma_free_chan_resources(struct dma_chan *chan)
 
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
