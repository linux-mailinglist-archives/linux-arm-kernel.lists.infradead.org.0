Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7671C8892
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=J3uO8Gc5ox4FhKG7GmN9vVliwdI4zQHfT0Q7UkcaQXM=; b=g7P
	Kv4w2TxykbHP7Vatn8+pnaY+WpEHXEUhIzoJ3b7TZGLwMrFJpAUFl0i4vjFMn5QAjlLK7tzJrKGb3
	qN6/tyKgl1tZjZgkMpo7nUIg6fG6lACeOVuBH/w+13ICSsFO1CmT3oAR3kNGv+wk6Ep8PYDtcg6Dp
	srbBGl3DNkSzwFmr9pS3hQer1NLfoJeWnHoRplNaElkvflmrSqz0ayobnC6rNxd94fTXVmuJS12kI
	Z4jICm5pSm+lfnlzkipPSiJ4fjnh0WNKCkRGNk9Ii1Xv7OR8ZaAlrk/6DYOKVd792B84SaQ+i6gCg
	Qk/5UNmVhsQiOrxYUL8k4A6QeIHCsVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeuz-0008MC-OL; Thu, 07 May 2020 11:42:21 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWeuq-0008KT-AJ
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 11:42:13 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:6572:4a1f:d283:9ae8])
 by michel.telenet-ops.be with bizsmtp
 id bni7220033ZRV0X06ni7wQ; Thu, 07 May 2020 13:42:08 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jWeul-0007Lg-2y; Thu, 07 May 2020 13:42:07 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jWeul-0006Q6-0m; Thu, 07 May 2020 13:42:07 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: "David S . Miller" <davem@davemloft.net>,
 Tony Prisk <linux@prisktech.co.nz>
Subject: [PATCH] via-rhine: Add platform dependencies
Date: Thu,  7 May 2020 13:42:05 +0200
Message-Id: <20200507114205.24621-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_044212_499069_FB07E7CB 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: netdev@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The VIA Rhine Ethernet interface is only present on PCI devices or
VIA/WonderMedia VT8500/WM85xx SoCs.  Add platform dependencies to the
VIA_RHINE config symbol, to avoid asking the user about it when
configuring a kernel without PCI or VT8500/WM85xx support.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/net/ethernet/via/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/via/Kconfig b/drivers/net/ethernet/via/Kconfig
index a962097b58c66935..6cff5f7d57c47ba7 100644
--- a/drivers/net/ethernet/via/Kconfig
+++ b/drivers/net/ethernet/via/Kconfig
@@ -19,6 +19,7 @@ if NET_VENDOR_VIA
 config VIA_RHINE
 	tristate "VIA Rhine support"
 	depends on PCI || (OF_IRQ && GENERIC_PCI_IOMAP)
+	depends on PCI || ARCH_VT8500 || COMPILE_TEST
 	depends on HAS_DMA
 	select CRC32
 	select MII
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
