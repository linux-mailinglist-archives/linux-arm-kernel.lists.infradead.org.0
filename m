Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AD5D0BE4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 11:52:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wuoYWlUncHzdVzdyMvsqoYm8p/yXd+hWC0Q/ZeRio5g=; b=dZS
	goLCaisCmzNyUU9v/jjSTJP4qT9aZ1v3EaRvN6EmvE1VD8WBmSyg9MQVK/56Mr7TxfkdxBIMG8Lve
	MuG1rawpbprJkIkAak3uFVHSHkZh6CVhoe/8x3zmLPRhcMwZjqlycv93qPEwK/8wdrn7bQoGYF70k
	WBO+sFuzAv77YwzI0jdiPZEVkEwCdJHx7k2BIXp1ZxOusSZOeRPLv0xly+lLuRqAspiNVwW5RutXT
	RSjmXmp1dQPJoYYn+OwZEBVKSRLgns1V9naJOmzusLasIyyakbEkXuDfWVjRk21UhHyxUb1vXvza3
	ac7APoxyfNaXKEecamkCFApbHxb82Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI8dy-00064G-MS; Wed, 09 Oct 2019 09:52:30 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI8dM-0005a8-Eg
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 09:51:53 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6275C2003A5;
 Wed,  9 Oct 2019 11:51:48 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 452862001C1;
 Wed,  9 Oct 2019 11:51:42 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 9025E402B1;
 Wed,  9 Oct 2019 17:51:34 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: gregkh@linuxfoundation.org, jslaby@suse.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 rafael.j.wysocki@intel.com, swboyd@chromium.org, andy.shevchenko@gmail.com,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2] tty: serial: imx: Use platform_get_irq_optional() for
 optional IRQs
Date: Wed,  9 Oct 2019 17:49:19 +0800
Message-Id: <1570614559-11900-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_025152_638163_6ADD6F31 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All i.MX SoCs except i.MX1 have ONLY one necessary IRQ, use
platform_get_irq_optional() to get second/third IRQ which are
optional to avoid below error message during probe:

[    0.726219] imx-uart 30860000.serial: IRQ index 1 not found
[    0.731329] imx-uart 30860000.serial: IRQ index 2 not found

Fixes: 7723f4c5ecdb8d83 ("driver core: platform: Add an error message to platform_get_irq*()")
Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- use platform_get_irq_optional() directly instead of getting irq count.
---
 drivers/tty/serial/imx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index 504d81c..357d3ff 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -2221,8 +2221,8 @@ static int imx_uart_probe(struct platform_device *pdev)
 		return PTR_ERR(base);
 
 	rxirq = platform_get_irq(pdev, 0);
-	txirq = platform_get_irq(pdev, 1);
-	rtsirq = platform_get_irq(pdev, 2);
+	txirq = platform_get_irq_optional(pdev, 1);
+	rtsirq = platform_get_irq_optional(pdev, 2);
 
 	sport->port.dev = &pdev->dev;
 	sport->port.mapbase = res->start;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
