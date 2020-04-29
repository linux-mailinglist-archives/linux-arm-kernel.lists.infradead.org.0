Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2776B1BD6B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 09:58:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zXxSDVR8TW9vq6OKTbm4t/ZaDY5b/EF2nOkKeeKgUII=; b=GikaSqgdCbuLFL
	WPFsIDPPO/JOgno/78v/DUP+1pbNYdY8sOdFp1pJJWLHL+tYQA0Aj0TOIgQRESloUjScy1VxQbjqI
	pOWLGvm1ooWGiJR/ka8mRBKNokegCJwoCapGzAgP1mMoG8iuqNTmV4OuVpf/79d9O/UMPspnF5THT
	zQCMxVESRy3tOJMhqxNSxRPGLin0vL/xWu0GbYui6ego4KM/uEY1SdOJDtXc92Qixzs8IWgFvGA95
	m8MV3bFWKKskduugSFIyUOsR1tlyn45Noap23rWQ+jlp6ObpBM5JzMm67OkpV6JQddDZPwGfoAqMo
	RYpCJeVHwIgpQAexMxaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jThbd-0007Oe-Gu; Wed, 29 Apr 2020 07:58:09 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jThbS-0007MM-Km
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 07:58:00 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C0607939E7E81C5643B7;
 Wed, 29 Apr 2020 15:57:49 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.487.0; Wed, 29 Apr 2020 15:57:41 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Mark Brown <broonie@kernel.org>, Masahiro Yamada
 <yamada.masahiro@socionext.com>
Subject: [PATCH -next] spi: uniphier: fix error return code in
 uniphier_spi_probe()
Date: Wed, 29 Apr 2020 07:58:55 +0000
Message-ID: <20200429075855.104487-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_005758_863030_A57F9926 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kernel-janitors@vger.kernel.org, Wei Yongjun <weiyongjun1@huawei.com>,
 linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix to return negative error code -EPROBE_DEFER from the DMA probe defer
error handling case instead of 0, as done elsewhere in this function.

Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/spi/spi-uniphier.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-uniphier.c b/drivers/spi/spi-uniphier.c
index 0fa50979644d..0457d3376873 100644
--- a/drivers/spi/spi-uniphier.c
+++ b/drivers/spi/spi-uniphier.c
@@ -716,8 +716,10 @@ static int uniphier_spi_probe(struct platform_device *pdev)
 
 	master->dma_tx = dma_request_chan(&pdev->dev, "tx");
 	if (IS_ERR_OR_NULL(master->dma_tx)) {
-		if (PTR_ERR(master->dma_tx) == -EPROBE_DEFER)
+		if (PTR_ERR(master->dma_tx) == -EPROBE_DEFER) {
+			ret = -EPROBE_DEFER;
 			goto out_disable_clk;
+		}
 		master->dma_tx = NULL;
 		dma_tx_burst = INT_MAX;
 	} else {
@@ -732,8 +734,10 @@ static int uniphier_spi_probe(struct platform_device *pdev)
 
 	master->dma_rx = dma_request_chan(&pdev->dev, "rx");
 	if (IS_ERR_OR_NULL(master->dma_rx)) {
-		if (PTR_ERR(master->dma_rx) == -EPROBE_DEFER)
+		if (PTR_ERR(master->dma_rx) == -EPROBE_DEFER) {
+			ret = -EPROBE_DEFER;
 			goto out_disable_clk;
+		}
 		master->dma_rx = NULL;
 		dma_rx_burst = INT_MAX;
 	} else {




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
