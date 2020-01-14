Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8736B13B4B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 22:49:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SuuOnpsBuug218/N2MiWP1YUe6VHb7/uuxmkHlpemfY=; b=Qyotje3l+3LAYQdWFW9v67XpIh
	stMKTo1Xef9GXmUw5VQwBYxGdlmSuGUln0UiJA1DU6MJ0zXO4CtryqbCNHc8utT/fJ0wWBLEnMHBL
	Y8U2Fl0Wi7XhwvzD8GvVGu6n+YyZ2jh4mD4To3iMBbxhxPwZytv5FxTpnyWOXZhZWE3LiuH3yE3eE
	aI2dbGeKZvIY9hItF5Os6Cu1B13Aa2BWJcPqBxvytVBOV5ApsJvKMXxYyDVsy5JHQbjklG8oFxAhw
	2gs3G5utFogi5wz7s5TeKHV5WfzmHNrfHo9uLbbkocPht7F7mgZtQ8FXlw5a7ZZrG37EERuo2aDbR
	uxXG4eoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irU4E-0005IF-6c; Tue, 14 Jan 2020 21:49:42 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irU2z-0004Ix-IK; Tue, 14 Jan 2020 21:48:27 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6EF77201224;
 Tue, 14 Jan 2020 22:48:22 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6F4B02004FB;
 Tue, 14 Jan 2020 22:48:16 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id E635D402AE;
 Wed, 15 Jan 2020 05:48:08 +0800 (SGT)
From: Han Xu <han.xu@nxp.com>
To: vkoul@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 esben@geanix.com, boris.brezillon@collabora.com
Subject: [PATCH 2/6] dmaengine: mxs: add the remove function
Date: Wed, 15 Jan 2020 05:43:59 +0800
Message-Id: <1579038243-28550-3-git-send-email-han.xu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579038243-28550-1-git-send-email-han.xu@nxp.com>
References: <1579038243-28550-1-git-send-email-han.xu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_134825_738052_3206F47D 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-imx@nxp.com, dmaengine@vger.kernel.org, han.xu@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

add the remove function for mxs-dma

Signed-off-by: Han Xu <han.xu@nxp.com>
---
 drivers/dma/mxs-dma.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/dma/mxs-dma.c b/drivers/dma/mxs-dma.c
index 9deaaf4fc58f..b458f06f9067 100644
--- a/drivers/dma/mxs-dma.c
+++ b/drivers/dma/mxs-dma.c
@@ -863,6 +863,22 @@ static int mxs_dma_probe(struct platform_device *pdev)
 	return 0;
 }
 
+static int mxs_dma_remove(struct platform_device *pdev)
+{
+	struct mxs_dma_engine *mxs_dma = platform_get_drvdata(pdev);
+	int i;
+
+	dma_async_device_unregister(&mxs_dma->dma_device);
+
+	for (i = 0; i < MXS_DMA_CHANNELS; i++) {
+		struct mxs_dma_chan *mxs_chan = &mxs_dma->mxs_chans[i];
+
+		tasklet_kill(&mxs_chan->tasklet);
+	}
+
+	return 0;
+}
+
 static struct platform_driver mxs_dma_driver = {
 	.driver		= {
 		.name	= "mxs-dma",
@@ -870,6 +886,7 @@ static struct platform_driver mxs_dma_driver = {
 	},
 	.id_table	= mxs_dma_ids,
 	.probe		= mxs_dma_probe,
+	.remove		= mxs_dma_remove,
 };
 
 module_platform_driver(mxs_dma_driver);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
