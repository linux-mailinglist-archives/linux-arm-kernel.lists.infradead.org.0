Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD1AAB608
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 12:34:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ls/6eyTPxnga9ZWAvnwSO2gtWps/4S3nUhkybEGAXaM=; b=ecwtJWTA/Ku2TR
	ToDv7tWRvk4pmJCp+gtm8ssWyxBtE16k5ulOL3FYUQLlEr+nETyWJERLuuZzVgDMwrD0lVit8QIvF
	SA+QeFayDJapHdTKgcs3/H2+72tHB9g5XOwg8ba/CKvw+BeqKTu93EljwQAR3IL9JubaRGDckbZQk
	ONFjucsoAuQo3UkJLwg/nMULi2OIVBDmbgzX7fvJaMOdpEEyWok3hk3yRXx5jZsfAgsXxkRVMxRzC
	YaB0eEfEffIZu5qmsNtIXbT27jzIKjXp+prZScZQna5kLQU4OGOZy34x9iU7YvgBhyPejPVcef16I
	SyF46RUu3fuwtT2SilJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6BZR-0004xp-HW; Fri, 06 Sep 2019 10:34:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6BZF-0004wg-2R
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 10:34:14 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1i6BZ3-0002uq-Ch; Fri, 06 Sep 2019 12:34:01 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 1/2] soc: imx: gpc: set DMA mask for PD platform devices
Date: Fri,  6 Sep 2019 12:34:00 +0200
Message-Id: <20190906103401.22294-2-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190906103401.22294-1-l.stach@pengutronix.de>
References: <20190906103401.22294-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_033413_117962_C134FCF1 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: kernel@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>,
 linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PD platform devices aren't DMA capable (as is correctly reflected
in with a zero mask coherent_dma_mask). As they have a of_node attached
they will go through of_dma_configure, which will warn if it finds an
uninitialized DMA mask. Let the driver core know that this isn't a
missing configuration, but a non DMA capable device by pointing the
dma_mask to the coherent_dma_mask.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/soc/imx/gpc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/imx/gpc.c b/drivers/soc/imx/gpc.c
index 34d167a8b08a..136d328690fb 100644
--- a/drivers/soc/imx/gpc.c
+++ b/drivers/soc/imx/gpc.c
@@ -498,6 +498,7 @@ static int imx_gpc_probe(struct platform_device *pdev)
 
 			pd_pdev->dev.parent = &pdev->dev;
 			pd_pdev->dev.of_node = np;
+			pd_pdev->dev.dma_mask = &pd_pdev->dev.coherent_dma_mask;
 
 			ret = platform_device_add(pd_pdev);
 			if (ret) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
