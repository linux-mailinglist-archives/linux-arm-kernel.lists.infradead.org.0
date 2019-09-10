Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B165AE2CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 06:17:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EO25ZheNRwHGgIl5ZNpF7PNmqSpMmoQZ5EtSBwnLXcs=; b=sdYRAKuQo5u/TS
	UudTKUwNcJVQ9fmEKmgN+owBEGJ+pmjJjRKLFaG4olGg1viLyiUec+AdbeyU6orZK8OXHzfSNxKyK
	MyHg1lgCm4QSw89vTnqH2C8wTmbpE08yw828dKTjUUMAnByngxAU4E4FyyYT/5mWUoS1a2Xz9FfxS
	IL+9jpn3CVMgDIFpynEG8yPGSeMMXa3iFLBgJxW7GdKx+/7FSky25fp7D1GIqIr3YMUO9ONhT8BTm
	Y9aPOXFZNKGoUZmexLyjzFcLS5QaoirGXs25jnUklVYR243i3781URkveJTfjaPVwKHZVYWFAGFby
	8Kedr9qq6U5LX7eCX2Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Xah-0006xg-QO; Tue, 10 Sep 2019 04:17:20 +0000
Received: from smtp05.smtpout.orange.fr ([80.12.242.127]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7XaT-0006wf-W3
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 04:17:07 +0000
Received: from localhost.localdomain ([90.126.97.183]) by mwinf5d81 with ME
 id zgH32000R3xPcdm03gH4Xg; Tue, 10 Sep 2019 06:17:04 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Tue, 10 Sep 2019 06:17:04 +0200
X-ME-IP: 90.126.97.183
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: manivannan.sadhasivam@linaro.org, gregkh@linuxfoundation.org,
 jslaby@suse.com
Subject: [PATCH] tty: serial: rda: Fix the link time qualifier of
 'rda_uart_exit()'
Date: Tue, 10 Sep 2019 06:17:02 +0200
Message-Id: <20190910041702.7357-1-christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_211706_329480_FB40D977 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.127 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.127 listed in wl.mailspike.net]
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-unisoc@lists.infradead.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

'exit' functions should be marked as __exit, not __init.

Fixes: c10b13325ced ("tty: serial: Add RDA8810PL UART driver")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/tty/serial/rda-uart.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/tty/serial/rda-uart.c b/drivers/tty/serial/rda-uart.c
index c1b0d7662ef9..ff9a27d48bca 100644
--- a/drivers/tty/serial/rda-uart.c
+++ b/drivers/tty/serial/rda-uart.c
@@ -815,7 +815,7 @@ static int __init rda_uart_init(void)
 	return ret;
 }
 
-static void __init rda_uart_exit(void)
+static void __exit rda_uart_exit(void)
 {
 	platform_driver_unregister(&rda_uart_platform_driver);
 	uart_unregister_driver(&rda_uart_driver);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
