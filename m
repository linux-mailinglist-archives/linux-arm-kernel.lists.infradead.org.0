Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2162355D02
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 02:42:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QcAypXR7Hxq5hSfGCDjb+0FGXznq+wJTcq9pGlrjHzM=; b=sP1qFBgTtX708W0dlQVN/0x/rE
	FUhQgYI3ZqInlZLwJr0aCM9FuQAvljKMJf9jYVCe3m4DTMLPKBVrJ3FGy2uhu2EztSc/JP081L3+1
	9lwTblEGrN4d9Q0xkw8YfMl7C05S9aQKENSe0zeKnZuAJf4udE9olz/MLJ5nt1V0L3JzamuMJj2PE
	t1o1DT1s3FKnzq1KLlFaLfcCrVQhbYB792+vKb8c8UgqEIu4Dk8Ck3DichUmwvzKHnDJgv3402j6U
	7KQFpYhsp0tEG1aAXtTk4pcBGVKc1mAPb5Cgsm3+PBpakjsSl0GCH7veEkZDVlWRjYz4n6sBsijQo
	/PAfmvxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfw1B-000580-FA; Wed, 26 Jun 2019 00:42:33 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfw0c-0004uV-9z
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 00:41:59 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 26 Jun 2019 09:41:55 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 8F16F60629;
 Wed, 26 Jun 2019 09:41:55 +0900 (JST)
Received: from 172.31.9.53 (172.31.9.53) by m-FILTER with ESMTP;
 Wed, 26 Jun 2019 09:41:55 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by iyokan.css.socionext.com (Postfix) with ESMTP id 78EDF40377;
 Wed, 26 Jun 2019 09:41:55 +0900 (JST)
Received: from hamster.e01.socionext.com (unknown [10.213.134.20])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 4E6AD120138;
 Wed, 26 Jun 2019 09:41:55 +0900 (JST)
From: Keiji Hayashibara <hayashibara.keiji@socionext.com>
To: broonie@kernel.org, yamada.masahiro@socionext.com,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] spi: uniphier: fix timeout error
Date: Wed, 26 Jun 2019 09:41:47 +0900
Message-Id: <1561509708-4175-2-git-send-email-hayashibara.keiji@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561509708-4175-1-git-send-email-hayashibara.keiji@socionext.com>
References: <1561509708-4175-1-git-send-email-hayashibara.keiji@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_174158_460657_68E5F896 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: jaswinder.singh@linaro.org, linux-kernel@vger.kernel.org,
 masami.hiramatsu@linaro.org, hayashibara.keiji@socionext.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Timeout error was silently ignored.
This commit adds timeout error handling and modifies return type of
wait_for_completion_timeout().

Signed-off-by: Keiji Hayashibara <hayashibara.keiji@socionext.com>
---
 drivers/spi/spi-uniphier.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/spi/spi-uniphier.c b/drivers/spi/spi-uniphier.c
index 5a6137f..c3c35c0 100644
--- a/drivers/spi/spi-uniphier.c
+++ b/drivers/spi/spi-uniphier.c
@@ -328,7 +328,8 @@ static int uniphier_spi_transfer_one(struct spi_master *master,
 				     struct spi_transfer *t)
 {
 	struct uniphier_spi_priv *priv = spi_master_get_devdata(master);
-	int status;
+	struct device *dev = master->dev.parent;
+	unsigned long time_left;
 
 	uniphier_spi_setup_transfer(spi, t);
 
@@ -338,13 +339,15 @@ static int uniphier_spi_transfer_one(struct spi_master *master,
 
 	uniphier_spi_irq_enable(spi, SSI_IE_RCIE | SSI_IE_RORIE);
 
-	status = wait_for_completion_timeout(&priv->xfer_done,
-					     msecs_to_jiffies(SSI_TIMEOUT_MS));
+	time_left = wait_for_completion_timeout(&priv->xfer_done,
+					msecs_to_jiffies(SSI_TIMEOUT_MS));
 
 	uniphier_spi_irq_disable(spi, SSI_IE_RCIE | SSI_IE_RORIE);
 
-	if (status < 0)
-		return status;
+	if (!time_left) {
+		dev_err(dev, "transfer timeout.\n");
+		return -ETIMEDOUT;
+	}
 
 	return priv->error;
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
