Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 097CAD8BEB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 10:57:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y20BQJU7ugWNZQ6jI0dRos7bn3t2QevTludZSxjMohw=; b=BbL4KXGyTJiME1
	cuvOVmfBOIZ8iQvT0KuLXTdgI1PTg9zHsmPZ1lW6bGVUdBI+FJOfKxE7wn9qIh2EAcumpNNj8giFO
	scTY1EVPAvA1uW8IOLTmAqFh3PiKMBi4l/pQRI7U4x3GFUk234g2nZfp2ZvrCJqBniQEx76xNpH1y
	FzhsF8ormr8Vpq/+0V0Qh7uneK7Nd8rS1d9Qv7U8auBnVULjh+VPdzN+bDrF9gd538Is5ppkdIAg/
	mTkJ8/LkBgB1d8EE7m0MpTvdGfG6uIp+MUdz5IQDq0Qi6G/iIS8N5rag0BnAK/Ir0eI4TI9ttXCJg
	kJY/xI9BmAnrNJdHhwIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKf74-00079q-OD; Wed, 16 Oct 2019 08:56:58 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKf6x-00078Y-4d
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 08:56:52 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 452EDFC2962ADAF91686;
 Wed, 16 Oct 2019 16:56:41 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Wed, 16 Oct 2019
 16:56:30 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <mripard@kernel.org>, <paul.kocialkowski@bootlin.com>,
 <mchehab@kernel.org>, <gregkh@linuxfoundation.org>, <wens@csie.org>
Subject: [PATCH -next] staging: media: cedrus: use
 devm_platform_ioremap_resource() to simplify code
Date: Wed, 16 Oct 2019 16:56:04 +0800
Message-ID: <20191016085604.21076-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_015651_350709_F88BC8D2 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/media/sunxi/cedrus/cedrus_hw.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
index a942cd9..f19b87c 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
@@ -146,7 +146,6 @@ static irqreturn_t cedrus_irq(int irq, void *data)
 int cedrus_hw_probe(struct cedrus_dev *dev)
 {
 	const struct cedrus_variant *variant;
-	struct resource *res;
 	int irq_dec;
 	int ret;
 
@@ -225,8 +224,7 @@ int cedrus_hw_probe(struct cedrus_dev *dev)
 		goto err_sram;
 	}
 
-	res = platform_get_resource(dev->pdev, IORESOURCE_MEM, 0);
-	dev->base = devm_ioremap_resource(dev->dev, res);
+	dev->base = devm_platform_ioremap_resource(dev->pdev, 0);
 	if (IS_ERR(dev->base)) {
 		dev_err(dev->dev, "Failed to map registers\n");
 
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
