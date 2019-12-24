Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 553B7129C32
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 01:59:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5l2JUt6aJMSI0WfsVOCHRfMcOPJIzi3JL/uZH1FDE20=; b=slw8C250b8sFzZtbzx/vD/R9Cn
	pUR2K+RVhQ0kWzQpBDK18aTBsCeNIQQ8mT05eXWmys3g728tpjk7fmjwmhnEpt7nWQTodNVjM7aom
	YaOvvhQTK85D12PY9Na/z7KQvQ5GvMYlCVhWz+QPXiVA2DnIwvTTJlj3Tj5nKLLj2phaBDzQvhPfA
	32yQoWqjvuoi04Gm8zqNxP7JmWljjRaRxDvi3YDYvp3EwI2dpC4AaRP8fPFucP7wyushufsYhYr87
	TuNiddtKuLiHRqhdhV6hvHMIzUc5tFepY+xL/4XpIdVioq2PNdvnBlZIZXQjdEY1bWeVXbA4Ooh/1
	9D6wRwfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijYY7-0002yZ-Kz; Tue, 24 Dec 2019 00:59:47 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijYXD-0002Ib-4t
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 00:58:52 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 24 Dec 2019 09:58:48 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id C4C45603AB;
 Tue, 24 Dec 2019 09:58:48 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 24 Dec 2019 09:59:28 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 4149E1A01CF;
 Tue, 24 Dec 2019 09:58:48 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Mark Brown <broonie@kernel.org>,
	linux-spi@vger.kernel.org
Subject: [PATCH 3/5] spi: uniphier: Add handle_err callback function
Date: Tue, 24 Dec 2019 09:58:25 +0900
Message-Id: <1577149107-30670-4-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1577149107-30670-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1577149107-30670-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_165851_292492_56171D00 
X-CRM114-Status: GOOD (  11.26  )
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
Cc: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Keiji Hayashibara <hayashibara.keiji@socionext.com>,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds master->handle_err() callback function to stop transfer due to
error. The function also resets FIFOs and disables interrupt.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/spi/spi-uniphier.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/spi/spi-uniphier.c b/drivers/spi/spi-uniphier.c
index 3859649..c4e3b96 100644
--- a/drivers/spi/spi-uniphier.c
+++ b/drivers/spi/spi-uniphier.c
@@ -432,6 +432,22 @@ static int uniphier_spi_unprepare_transfer_hardware(struct spi_master *master)
 	return 0;
 }
 
+static void uniphier_spi_handle_err(struct spi_master *master,
+				    struct spi_message *msg)
+{
+	struct uniphier_spi_priv *priv = spi_master_get_devdata(master);
+	u32 val;
+
+	/* stop running spi transfer */
+	writel(0, priv->base + SSI_CTL);
+
+	/* reset FIFOs */
+	val = SSI_FC_TXFFL | SSI_FC_RXFFL;
+	writel(val, priv->base + SSI_FC);
+
+	uniphier_spi_irq_disable(priv, SSI_IE_RCIE | SSI_IE_RORIE);
+}
+
 static irqreturn_t uniphier_spi_handler(int irq, void *dev_id)
 {
 	struct uniphier_spi_priv *priv = dev_id;
@@ -538,6 +554,7 @@ static int uniphier_spi_probe(struct platform_device *pdev)
 				= uniphier_spi_prepare_transfer_hardware;
 	master->unprepare_transfer_hardware
 				= uniphier_spi_unprepare_transfer_hardware;
+	master->handle_err = uniphier_spi_handle_err;
 	master->num_chipselect = 1;
 
 	ret = devm_spi_register_master(&pdev->dev, master);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
