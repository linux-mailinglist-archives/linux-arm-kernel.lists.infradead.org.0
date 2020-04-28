Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9493E1BB69D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 08:32:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TJMftqgAGdCqvgMRQTh5AkIn60OUUWfU6Pk6lJT3e4I=; b=DGeVUg6b35mVGZ
	FP/C6HU+/N6JAykB/nSTO5P/Y7cf3ie9MsfB026YQZ/4IvyvIQF+xUBiK1mitd+YJw0VgaGkYqFsB
	RJhd770RgnnvOpYiK0UI+KAjQ4qFb7jyajqa1wQpBJmoQKLA0zt25sBd4tJoKU3xS2Y39AY1cXVQx
	OHZSRPjOqd7a3rQ4E8C0gqOMvMmsCaNU+a80goto3NwfCNpupo1Xrc/7Gr+uEcmJZVoUaitn8O3JY
	U0uMjIO0GcOZTfgPcNc59Mi3/XcUPtaAhNJkpklkLqsrU5ip+9Nbz6LrTYl9l2e3wB97jinRDKBxC
	JTKhn9Zp/YzZu+48X5oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTJnQ-0005Gf-P9; Tue, 28 Apr 2020 06:32:44 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTJnG-0005Ez-6f
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 06:32:35 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 1C6034743E8AD600B435;
 Tue, 28 Apr 2020 14:32:22 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.487.0; Tue, 28 Apr 2020
 14:32:12 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <kgene@kernel.org>, <krzk@kernel.org>, <wsa@the-dreams.de>,
 <linus.walleij@linaro.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-samsung-soc@vger.kernel.org>, <linux-i2c@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] i2c: s3c2410: make i2c_s3c_irq_nextbyte() void
Date: Tue, 28 Apr 2020 14:31:38 +0800
Message-ID: <20200428063138.26463-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_233234_425978_418456E0 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the following coccicheck warning:

drivers/i2c/busses/i2c-s3c2410.c:391:5-8: Unneeded variable: "ret".
Return "0" on line 552

Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 drivers/i2c/busses/i2c-s3c2410.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-s3c2410.c b/drivers/i2c/busses/i2c-s3c2410.c
index 5a5638e1daa1..22315d8f616f 100644
--- a/drivers/i2c/busses/i2c-s3c2410.c
+++ b/drivers/i2c/busses/i2c-s3c2410.c
@@ -136,7 +136,7 @@ static const struct platform_device_id s3c24xx_driver_ids[] = {
 };
 MODULE_DEVICE_TABLE(platform, s3c24xx_driver_ids);
 
-static int i2c_s3c_irq_nextbyte(struct s3c24xx_i2c *i2c, unsigned long iicstat);
+static void i2c_s3c_irq_nextbyte(struct s3c24xx_i2c *i2c, unsigned long iicstat);
 
 #ifdef CONFIG_OF
 static const struct of_device_id s3c24xx_i2c_match[] = {
@@ -384,11 +384,10 @@ static inline int is_msgend(struct s3c24xx_i2c *i2c)
 /*
  * process an interrupt and work out what to do
  */
-static int i2c_s3c_irq_nextbyte(struct s3c24xx_i2c *i2c, unsigned long iicstat)
+static void i2c_s3c_irq_nextbyte(struct s3c24xx_i2c *i2c, unsigned long iicstat)
 {
 	unsigned long tmp;
 	unsigned char byte;
-	int ret = 0;
 
 	switch (i2c->state) {
 
@@ -549,7 +548,7 @@ static int i2c_s3c_irq_nextbyte(struct s3c24xx_i2c *i2c, unsigned long iicstat)
 	tmp &= ~S3C2410_IICCON_IRQPEND;
 	writel(tmp, i2c->regs + S3C2410_IICCON);
  out:
-	return ret;
+	return;
 }
 
 /*
-- 
2.21.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
