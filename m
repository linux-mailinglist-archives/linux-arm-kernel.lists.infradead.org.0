Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18816DCA04
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:58:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=85FxG86el5wfU51zW6Jz6Thx+Y2i8Nt4aky9OEhHY1U=; b=L4+ILx4iYGGE1d
	yKpvLQiWL3kd8IjtY0trYuGyAbU9KFqPeBOPiGhRXwwzs5HzotOZ/tedclTWV+mCB6EWRNZGujoJb
	VaSU1JOdwxzmGYkwM/CzW9UOf01dFDr+fqEclglnlull+pxIV5fSZGhGgcJ4mcPDcbsQ3Kqsyan1N
	5XrowdAXNb0G0gFe7AIwRKDVwHyiS+aAa3RzXDfPJjXihiYejQiCk99NNDru4TuZoaU0uKJyYg+Kl
	ubmxNB6RtmOZynCKQxrcXtppFKHmZgpHy2VWeTC1lVg+Vtd+bLu5vDcQN2tX7ai/fHm2fbhept6Pn
	Btg69uQrZxVMbLWOI9JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUdb-00085a-At; Fri, 18 Oct 2019 15:57:59 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUWX-0000Yn-Jn
 for linux-arm-kernel@bombadil.infradead.org; Fri, 18 Oct 2019 15:50:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5L89fA5qbTnX82EiJWm4JM3e53bqecjDJrjVSQtHUqI=; b=jxTPKGoH3rYuAziO0GzMqIiopD
 /oNj64br4ZiA/ZWpxDedzzMwG/kOf+4nOfXHm7ch4dNE9+HrcUGdpLHB4TwYipzm4oTdxpO22PA9G
 AwoeTICMkjKMWPrjU/7JFjWQaCBk8eBKDcWBCwba7b1e9ED3b/oF9BFYyWcybEI7I9alW6lcAf9HP
 Bsclm/KryWvzYnGRWS8Bsune8gImCBmntk5dCXJAGsbNS2tvDunb+jve8VRcqyUFGIQQeohw42uvX
 FXZj4C3YtSNdXlZjL43atHQtIksPgqltGahJHbwEGtsyLCNS6kcaBW9o+O01winz3iJXKAmeIe4Yd
 HGtelfHw==;
Received: from mout.kundenserver.de ([217.72.192.73])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUPB-0002Ex-Rc
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:43:08 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MTREY-1iT8oJ32Uu-00TnA9; Fri, 18 Oct 2019 17:42:35 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 43/46] ARM: pxa: pci-it8152: add platform checks
Date: Fri, 18 Oct 2019 17:41:58 +0200
Message-Id: <20191018154201.1276638-43-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:WnpsrCVsFtLZwYDKVWua5rhQugWiG4CHVyH0zXtk8Rwkd0XKS4O
 qLuwINJDZ99vCTkcLsvQieydiJjBBtfN8tJDP0HhkRRNiEApdn2+aHy+DIM2j8X+6/YS43G
 wkPG2uBkHUdQDHMAYY3e8pRHaIavRFuvZNCI5mEas5JaiBNLql2O4WsNCli9kkHM1Emglla
 oR9lTxTbZFwTF6ZybhGyw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cGFaOYnGTA4=:iSgeRul54ih3AO6Q/YxyU6
 U56cbaP608/+NlW6qy+EG1HeDZXJrVG8T8CF8/AgXYePJWOmx/z8vZhp+klobV6qB1amz3c1U
 Cd8QWozNwoBbI9ogvT9vJBo9dUpAl8FQTrN14OZkECNkSL4jOejc9CL2XV23wsGrJbxvVkfVA
 TatH5aKMGNBPCL/vyouOtxzVlRQ4BJsFyDwriU+9pLkn3NwMyxumR8AH++65ey/QzwaGiRDFG
 WNpijKl+ZCr6NTJ3Ds7FAmDztmzBIs4TIL9dWOagIIcv4KGC/l8r1PLOfD+HQ3wAtczvc6lXz
 gxH3SJXQ8A5+S0YwTB4eEkpFXGEntQg+djH4ZApbOH2xmU4V1aKjrFq9FTiypT7YsB9ajCH7a
 MXUeg1RrdQe4aGqyG+cmt0iD6ub4ioFc8McLJfSBgurh4FnuuiFksdv9VhGb3ZO/vBGatpl22
 Sk/t2Gs45fI0zHutMBgEVKilapZyuTDvUnROxD0hlaXk5Bg8Uipi9q3mdrBTha4+ZKu3t9ozp
 rxAnBvwS/JOU6RHZ59TQYI3iN4yGrqpvfkgae8ZgAwHGc9s2meWcc+ZX9bLvDkGdRBwctG0z4
 mgcMyZZXieGKA+85rjZRMiHYYVUV8+sSX4zURLELMbnqQzUnB6vzyvzxvVd3mGpZoxCkDYhog
 rLLOsAglaBDPaMPeqzbqXxFgnskROJkwN5cGKMArRm9rCM8Jyh+FyHDTqOc3DvH+kYwhgIQ+k
 Ly8tTwT7XaArfI935W5g+JvGv/8cmuPrNLfZe+hRPqyC0na1ARqm6VDysZSp/KaDh3kyECHfn
 DkMYGehNO7cuKNmxd5h7cN0RUU1GAeALUm3m6dcV+LE9RzT4e48WWeP6OLmqM/tWse1AJEjcf
 CC2GVCoYUa1FCftOz2XA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_164305_953447_552380C4 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The it8152 driver does a few things differently from
everyone else. Make sure that these have no effect when
running on anything other than a pxa2xx.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-pxa/pci-it8152.c | 22 +++++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-pxa/pci-it8152.c b/arch/arm/mach-pxa/pci-it8152.c
index af99c990f0c1..fe8cf7d2234d 100644
--- a/arch/arm/mach-pxa/pci-it8152.c
+++ b/arch/arm/mach-pxa/pci-it8152.c
@@ -23,6 +23,7 @@
 #include <linux/irq.h>
 #include <linux/io.h>
 #include <linux/export.h>
+#include <linux/soc/pxa/cpu.h>
 
 #include <asm/mach/pci.h>
 
@@ -274,10 +275,21 @@ static int it8152_pci_platform_notify_remove(struct device *dev)
 
 int dma_set_coherent_mask(struct device *dev, u64 mask)
 {
-	if (mask >= PHYS_OFFSET + SZ_64M - 1)
-		return 0;
+	/* We've always done it like this, but it looks wrong */
+	if (cpu_is_pxa2xx()) {
+		if (mask >= PHYS_OFFSET + SZ_64M - 1)
+			return 0;
 
-	return -EIO;
+		return -EIO;
+	}
+
+	/* generic implementation from kernel/dma/mapping.c */
+	mask = (dma_addr_t)mask;
+	if (!dma_supported(dev, mask))
+		return -EIO;
+
+	dev->coherent_dma_mask = mask;
+	return 0;
 }
 
 int __init it8152_pci_setup(int nr, struct pci_sys_data *sys)
@@ -331,6 +343,10 @@ void pcibios_set_master(struct pci_dev *dev)
 {
 	u8 lat;
 
+	/* running on something else */
+	if (!cpu_is_pxa2xx())
+		return;
+
 	/* no need to update on-chip OHCI controller */
 	if ((dev->vendor == PCI_VENDOR_ID_ITE) &&
 	    (dev->device == PCI_DEVICE_ID_ITE_8152) &&
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
