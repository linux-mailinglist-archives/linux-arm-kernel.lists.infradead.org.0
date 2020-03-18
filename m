Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 006ED1898EA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 11:07:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nkwlhV7TFjP0qq20qu5Mq/rthlIYF9YUv8oKxoq8v3o=; b=q4e+JyQd55qrP2
	JIEE8pkw8g4XI0LaJkWk+T84rbzJJERYxbst7JrG1jW3uxxeGl2KKfuyNNZzd8/t/iYe3sHVlUelx
	DHRM8YdBl5miv7myvOaSiD1m5lwAG2svCdUD3bI0h2PPhUvCj/PUnffdmqGNB1ngxxiuVZOcFAs6S
	Kf1owdggjITvUt92UgpSxXgiUXbr0bmUBFGuhACM5mwiP0dubKvgKtw3L/4orznCKIfjN5N1bQora
	J78xL3O56xC9ANjLpYq2GvKvjUe5vMerIgZcM0qAlvLCK0oEQYVqen4xI9nvnLU+WiUw+eWyOMTD1
	/cNU4OTvVA+OqIHLoBKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEVbz-0002i5-MN; Wed, 18 Mar 2020 10:07:43 +0000
Received: from cmccmta2.chinamobile.com ([221.176.66.80])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEVbr-0002fi-Lx
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 10:07:37 +0000
Received: from spf.mail.chinamobile.com (unknown[172.16.121.13]) by
 rmmx-syy-dmz-app06-12006 (RichMail) with SMTP id 2ee65e71f2af772-11483;
 Wed, 18 Mar 2020 18:06:41 +0800 (CST)
X-RM-TRANSID: 2ee65e71f2af772-11483
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[112.25.154.146])
 by rmsmtp-syy-appsvr07-12007 (RichMail) with SMTP id 2ee75e71f2aeb06-c9ca4;
 Wed, 18 Mar 2020 18:06:41 +0800 (CST)
X-RM-TRANSID: 2ee75e71f2aeb06-c9ca4
From: Tang Bin <tangbin@cmss.chinamobile.com>
To: linux@rempel-privat.de,
	s.hauer@pengutronix.de
Subject: [PATCH] drivers/i2c/busses/i2c-imx.c:remove duplicate print after
 platform_get_irq()
Date: Wed, 18 Mar 2020 18:07:48 +0800
Message-Id: <20200318100748.17540-1-tangbin@cmss.chinamobile.com>
X-Mailer: git-send-email 2.20.1.windows.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_030736_200869_EF839E5D 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [221.176.66.80 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Tang Bin <tangbin@cmss.chinamobile.com>, shawnguo@kernel.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We don't need dev_err() message because when something goes wrong,
platform_get_irq() has print an error message itself, so we should
remove duplicate dev_err().

Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
---
 drivers/i2c/busses/i2c-imx.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index a3b61336f..01fd46682 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -1066,10 +1066,8 @@ static int i2c_imx_probe(struct platform_device *pdev)
 	dev_dbg(&pdev->dev, "<%s>\n", __func__);
 
 	irq = platform_get_irq(pdev, 0);
-	if (irq < 0) {
-		dev_err(&pdev->dev, "can't get irq number\n");
+	if (irq < 0)
 		return irq;
-	}
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	base = devm_ioremap_resource(&pdev->dev, res);
-- 
2.20.1.windows.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
