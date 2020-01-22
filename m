Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DDDA145F62
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 00:53:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Py94Uhoj1iFPMV/b0vECM3w+3cbnEOe9OKMbuhmqqCM=; b=c9mhIGIlnxf1b9
	aVTAtiJGF9EpsuXdWceh/IWZYJAOjhJdKJ+CX6fWr7YjkN13hSHq+HGJ/8HO5xaLXi07XXoYyTKLr
	BcZiMl0PSJHjH210NbuzlKh+n6xUzsU58CKL+q0B67Nabz8x2FB1f2ubQIfWvcYOest74QELZiy5O
	jWvFqRTmY85Gl9cNKARE7vgcjh3BoZInCy+BLftNyl3LZ2OnIpG0OKexICtRyXzccZVV59c1XHYQ/
	q5XsI5IcOhdeVmQa6gCDqb/FaRY+eIim2pqA9riQtL55oRfe+zDgM7Y8j3VChr8WEf7BDYllsUQDt
	075TrOqj6Pld5m4G6WnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuPns-0008FQ-Bb; Wed, 22 Jan 2020 23:52:56 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuPnk-0008Du-BF
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 23:52:49 +0000
Received: from [82.43.126.140] (helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1iuPna-0000S8-Aw; Wed, 22 Jan 2020 23:52:38 +0000
From: Colin King <colin.king@canonical.com>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 dmaengine@vger.kernel.org
Subject: [PATCH] dmaengine: s3c24xx-dma: fix spelling mistake "to" -> "too"
Date: Wed, 22 Jan 2020 23:52:37 +0000
Message-Id: <20200122235237.2830344-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_155248_521025_5095B6A5 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

There is a spelling mistake in a dev_err message. Fix it.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/dma/s3c24xx-dma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/s3c24xx-dma.c b/drivers/dma/s3c24xx-dma.c
index 1ed5dc1f597c..8e14c72d03f0 100644
--- a/drivers/dma/s3c24xx-dma.c
+++ b/drivers/dma/s3c24xx-dma.c
@@ -1198,7 +1198,7 @@ static int s3c24xx_dma_probe(struct platform_device *pdev)
 
 	/* Basic sanity check */
 	if (pdata->num_phy_channels > MAX_DMA_CHANNELS) {
-		dev_err(&pdev->dev, "to many dma channels %d, max %d\n",
+		dev_err(&pdev->dev, "too many dma channels %d, max %d\n",
 			pdata->num_phy_channels, MAX_DMA_CHANNELS);
 		return -EINVAL;
 	}
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
