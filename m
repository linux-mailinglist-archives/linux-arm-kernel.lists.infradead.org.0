Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD70E6116
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 07:22:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zFyy7IaRlrzeYrSO76QLJipIeMFZf0nFjLxyl3tEou8=; b=Zj1
	9FhMvhUb3nIq/Gl5JAhmnkhaBdX4a/vkrQhS3fO+qtB3fXAi7gmCbCytaUuCT6uaOTiLiIegNmDS2
	jqRhNnf9sWRmGAz/W5Vqmx58tweFA0Jw/VWtTUWRn5fYOuBEuKIuBx511VadaIYywRwpaVx9B3G8T
	pB9RCi1R07GU+ckjGvplp3S747QH3TOP+vs5rgumE2pKe5tKbDG4S32/vY8jRhrJ2gqAQQsDq0p2K
	EArnLe5PO2PHQRm6RZZC0NvBFC6sRtxlkMknLJTtcTn39ZM3H/B+JpGQcwAOmoab1tdCkfAzX4G0r
	EU1ht4Fco+4iTIuLlKmdwj+ACTT54uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iObwi-0002Dd-RG; Sun, 27 Oct 2019 06:22:36 +0000
Received: from mxwww.masterlogin.de ([95.129.51.220])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iObwa-0002BV-I6; Sun, 27 Oct 2019 06:22:30 +0000
Received: from mxout1.routing.net (unknown [192.168.10.81])
 by new.mxwww.masterlogin.de (Postfix) with ESMTPS id 75BCD96C06;
 Sun, 27 Oct 2019 06:21:51 +0000 (UTC)
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
 by mxout1.routing.net (Postfix) with ESMTP id D3DD543C53;
 Sun, 27 Oct 2019 06:21:51 +0000 (UTC)
Received: from localhost.localdomain (fttx-pool-217.61.153.185.bambit.de
 [217.61.153.185])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 369AB403C2;
 Sun, 27 Oct 2019 06:21:51 +0000 (UTC)
From: Frank Wunderlich <frank-w@public-files.de>
To: linux-mediatek@lists.infradead.org
Subject: [PATCH] serial: 8250-mtk: Use platform_get_irq_optional() for
 optional irq
Date: Sun, 27 Oct 2019 07:21:17 +0100
Message-Id: <20191027062117.20389-1-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_232228_748934_40E422D6 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [95.129.51.220 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As platform_get_irq() now prints an error when the interrupt does not
exist, this warnings are printed on bananapi-r2:

[    4.935780] mt6577-uart 11004000.serial: IRQ index 1 not found
[    4.962589] 11002000.serial: ttyS1 at MMIO 0x11002000 (irq = 202, base_baud = 1625000) is a ST16650V2
[    4.972127] mt6577-uart 11002000.serial: IRQ index 1 not found
[    4.998927] 11003000.serial: ttyS2 at MMIO 0x11003000 (irq = 203, base_baud = 1625000) is a ST16650V2
[    5.008474] mt6577-uart 11003000.serial: IRQ index 1 not found

Fix this by calling platform_get_irq_optional() instead.

now it looks like this:

[    4.872751] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled

Fixes: 7723f4c5ecdb8d83 ("driver core: platform: Add an error message to platform_get_irq*()")

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
changes since v1:
	https://patchwork.kernel.org/patch/11213813/
	change from platform_irq_count to platform_get_irq_optional
---
 drivers/tty/serial/8250/8250_mtk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/tty/serial/8250/8250_mtk.c b/drivers/tty/serial/8250/8250_mtk.c
index b411ba4eb5e9..4d067f515f74 100644
--- a/drivers/tty/serial/8250/8250_mtk.c
+++ b/drivers/tty/serial/8250/8250_mtk.c
@@ -544,7 +544,7 @@ static int mtk8250_probe(struct platform_device *pdev)
 	pm_runtime_set_active(&pdev->dev);
 	pm_runtime_enable(&pdev->dev);
 
-	data->rx_wakeup_irq = platform_get_irq(pdev, 1);
+	data->rx_wakeup_irq = platform_get_irq_optional(pdev, 1);
 
 	return 0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
