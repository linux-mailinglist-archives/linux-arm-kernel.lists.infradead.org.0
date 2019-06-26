Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DADE55D06
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 02:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YfwcAy1prz/BHaBekuheZKYq6eBjdeDMeOz8wosvygY=; b=WVf39zfLetKeWZO2fNBIgXqB1H
	wwjC5kC6WUTPlNJshQtupIfwZoCycdOs4m18Uzk62p0KahzDsDgobcjGlgW4YGQA4hphL+8RW5LQF
	R07g9iGpLs8mCBs/aPm2AZgm6ZcBZkjejDsjnhKY5Ky8jwZBQR6w+lBHeCccfQ5EbHjPdgs184R9b
	c1xplWBGdXjFt3MaBCGejR141JQM668DAY43N/1NlctOZ0cfRH3W0btYWIfkTwPrFxFJAbdMNlVIC
	vdxOky1DFk9OLjjpDMBQ7lse28RWEM7ThnzOi1RJCpCTvjjI88VQJ2RISZZn0SkutVnJ8zj0J8C/D
	feprsBKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfw1S-0005N9-8k; Wed, 26 Jun 2019 00:42:50 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfw0e-0004uV-6z
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 00:42:01 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 26 Jun 2019 09:41:55 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id F38CC60629;
 Wed, 26 Jun 2019 09:41:55 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Wed, 26 Jun 2019 09:41:55 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by kinkan.css.socionext.com (Postfix) with ESMTP id A99A21A14E3;
 Wed, 26 Jun 2019 09:41:55 +0900 (JST)
Received: from hamster.e01.socionext.com (unknown [10.213.134.20])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 7F157120138;
 Wed, 26 Jun 2019 09:41:55 +0900 (JST)
From: Keiji Hayashibara <hayashibara.keiji@socionext.com>
To: broonie@kernel.org, yamada.masahiro@socionext.com,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] spi: uniphier: fix zero-length transfer
Date: Wed, 26 Jun 2019 09:41:48 +0900
Message-Id: <1561509708-4175-3-git-send-email-hayashibara.keiji@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561509708-4175-1-git-send-email-hayashibara.keiji@socionext.com>
References: <1561509708-4175-1-git-send-email-hayashibara.keiji@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_174200_360326_15471FDB 
X-CRM114-Status: GOOD (  11.20  )
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

The zero-length transfer results in timeout error because
the transfer doesn't start.
This commit modified to return success in this case.

Signed-off-by: Keiji Hayashibara <hayashibara.keiji@socionext.com>
---
 drivers/spi/spi-uniphier.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/spi/spi-uniphier.c b/drivers/spi/spi-uniphier.c
index c3c35c0..b32c77d 100644
--- a/drivers/spi/spi-uniphier.c
+++ b/drivers/spi/spi-uniphier.c
@@ -331,6 +331,10 @@ static int uniphier_spi_transfer_one(struct spi_master *master,
 	struct device *dev = master->dev.parent;
 	unsigned long time_left;
 
+	/* Terminate and return success for 0 byte length transfer */
+	if (!t->len)
+		return 0;
+
 	uniphier_spi_setup_transfer(spi, t);
 
 	reinit_completion(&priv->xfer_done);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
