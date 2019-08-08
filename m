Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4D686C83
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 23:33:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ndBCf3IKo4LutBd18E2R8bg0pl4KnWyzOIErEIgD+0s=; b=V4Wv3W2gKZXQyI
	AsqBUMxzpxzQFmPRiDxA63C/PtQuHA+1AUboh85tyktQ0bLQzKLzgHmmzF9yYER0ub+c0rFGKI2yf
	deB1UlMfo/lI7SQU2g/ERU2xrcwcU+xY8orOOtCNLkBM3ijNo8geq9xu22ttpVvuUQ7gyHBN/JkR5
	7Ry7VmV3bnV1saYqk6RYNVPnqbqNKABNWjiY82MzxEd3d2zHidrWSUDlu9BvkXw0csmYynixCZ3SV
	K7rqnJnhOx6LpPVXbV4o87FRBrlRATPJDI5EVwwhJ878v4XIq40Z0guNsqkQjsoyJvQRu3M3t2+OI
	SEWRWVdXLQWXEII+2oMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvq2a-0001cN-Iv; Thu, 08 Aug 2019 21:33:44 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvq2Q-0001bu-Gx
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 21:33:35 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1Mx0VH-1iGO1F3rXX-00yOIw; Thu, 08 Aug 2019 23:33:11 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Tony Lindgren <tony@atomide.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Dominik Brodowski <linux@dominikbrodowski.net>
Subject: [PATCH 14/22] ARM: omap1: use pci_ioremap_io() for omap_cf
Date: Thu,  8 Aug 2019 23:22:23 +0200
Message-Id: <20190808212234.2213262-15-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190808212234.2213262-1-arnd@arndb.de>
References: <20190808212234.2213262-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:T0h7JpBfhfIzzYs7SKu4WH/fYD3z37b4wcHxdCbVevtJL0SMgqT
 MzlFe2+AoIx6riMlQsNqVmF4HbP4A9qrAZpDoYTaYJNHGUGDxJfnK4RioNPDRkftU67cUIM
 0EV3FUdLQx3th9oUOUhABs6eV9TtFbK63ICTI9THmC6/PPmRK2yikOBeo1rTEhpHTqw2Omq
 GGWcW9jBHJVztyQvj1+2Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gXhQq6dGukQ=:HBAKuxIRKY9jeG1BoJ80W9
 eBMGVEbY6rqj0cUwfxjAQ471IvOegHVlF+xzSz4u7bfeGr35FS1bL9Sj+aZJwGPJoOvhkv8/g
 FXX+6vhT/maYfeJTd2/F7SduLYw2F0edqaSV9TExPZ3NMb1VUaJGYNWzNKyjK684aWsxduMzC
 a0qtr3GAWoyy+7D8yPAVBseTLUHW9wiWBol3cfOHwyBr/qSw5jt1dAxADs5P5mmjMvYmj1dM4
 4pQxDFvn/pjNrsG+kdQPDWCMY7PUhRRmZeZ0J+b3E34uUOKisHqhuxGN1VqH8e8ukIwUxOCBh
 lLsP5v6P49pUsDuZh0UBLeQHQ2VO2bFwEJ2bv61pu8YEz4CnDf2ljOxXrMl0gGY3DMNUzhn4I
 Dyo+Q45U35zXtbvOw1CgBATdtQDkIsqKpVszduAUa6gXTxHoDaIn70yhaC33rA6G9lsxGN1xv
 haHVS/EXhnf+z0lEDBfo1VonrUP2raV0QH77x6V8VEGIYk2iLtsj88zf/Uyu4dnHnNESUfH24
 4LDinB2dzm9/vXlkNGAlSe1ERpX708QiQbzTiYGzYAtCVOTdmpdt05JLreM1vaGQ77IqBIpq9
 me8HJs6u0BUekqyv9tgC2HMOudt4xvEcNcwg57enFk+Ddidd0nC8ILlvDhCEVE5ACaolsL+vV
 4yEQKvRDrHOwzlVOjKbNzl9W/7/xIkucERhLnrkAlCzWmic+L+lPNm0+wH3o3+swSEOvuuV5y
 aIekoO1WYWBMAGamIwyTr1QbjPOmS5muzbBEZQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_143334_853571_89BE0A50 
X-CRM114-Status: GOOD (  18.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ISA I/O space handling in omap_cf is incompatible with
PCI drivers in a multiplatform kernel, and requires a custom
mach/io.h.

Change the driver to use pci_ioremap_io() like PCI drivers do,
so the generic ioport access can work across platforms.

To actually use that code, we have to select CONFIG_PCI
here.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/Kconfig                      |  2 +-
 arch/arm/mach-omap1/include/mach/io.h | 45 ---------------------------
 drivers/pcmcia/omap_cf.c              |  9 ++----
 3 files changed, 4 insertions(+), 52 deletions(-)
 delete mode 100644 arch/arm/mach-omap1/include/mach/io.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index b7162ac8d756..8263fe7a5e64 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -496,13 +496,13 @@ config ARCH_OMAP1
 	select ARCH_OMAP
 	select CLKDEV_LOOKUP
 	select CLKSRC_MMIO
+	select FORCE_PCI if PCCARD
 	select GENERIC_CLOCKEVENTS
 	select GENERIC_IRQ_CHIP
 	select GENERIC_IRQ_MULTI_HANDLER
 	select GPIOLIB
 	select HAVE_IDE
 	select IRQ_DOMAIN
-	select NEED_MACH_IO_H if PCCARD
 	select NEED_MACH_MEMORY_H
 	select SPARSE_IRQ
 	help
diff --git a/arch/arm/mach-omap1/include/mach/io.h b/arch/arm/mach-omap1/include/mach/io.h
deleted file mode 100644
index ce4f8005b26f..000000000000
--- a/arch/arm/mach-omap1/include/mach/io.h
+++ /dev/null
@@ -1,45 +0,0 @@
-/*
- * arch/arm/mach-omap1/include/mach/io.h
- *
- * IO definitions for TI OMAP processors and boards
- *
- * Copied from arch/arm/mach-sa1100/include/mach/io.h
- * Copyright (C) 1997-1999 Russell King
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2 of the License, or (at your
- * option) any later version.
- *
- * THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESS OR IMPLIED
- * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
- * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN
- * NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
- * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
- * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
- * USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
- * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
- * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
- * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 675 Mass Ave, Cambridge, MA 02139, USA.
- *
- * Modifications:
- *  06-12-1997	RMK	Created.
- *  07-04-1999	RMK	Major cleanup
- */
-
-#ifndef __ASM_ARM_ARCH_IO_H
-#define __ASM_ARM_ARCH_IO_H
-
-#define IO_SPACE_LIMIT 0xffffffff
-
-/*
- * We don't actually have real ISA nor PCI buses, but there is so many
- * drivers out there that might just work if we fake them...
- */
-#define __io(a)		__typesafe_io(a)
-
-#endif
diff --git a/drivers/pcmcia/omap_cf.c b/drivers/pcmcia/omap_cf.c
index 98df6473034d..9f8ad82f5fce 100644
--- a/drivers/pcmcia/omap_cf.c
+++ b/drivers/pcmcia/omap_cf.c
@@ -235,9 +235,9 @@ static int __init omap_cf_probe(struct platform_device *pdev)
 	cf->phys_cf = res->start;
 
 	/* pcmcia layer only remaps "real" memory */
-	cf->socket.io_offset = (unsigned long)
-			ioremap(cf->phys_cf + SZ_4K, SZ_2K);
-	if (!cf->socket.io_offset)
+	cf->socket.io_offset = 0x10000;
+	status = pci_ioremap_io(cf->socket.io_offset, cf->phys_cf + SZ_4K);
+	if (status)
 		goto fail1;
 
 	if (!request_mem_region(cf->phys_cf, SZ_8K, driver_name))
@@ -281,8 +281,6 @@ static int __init omap_cf_probe(struct platform_device *pdev)
 fail2:
 	release_mem_region(cf->phys_cf, SZ_8K);
 fail1:
-	if (cf->socket.io_offset)
-		iounmap((void __iomem *) cf->socket.io_offset);
 	free_irq(irq, cf);
 fail0:
 	kfree(cf);
@@ -296,7 +294,6 @@ static int __exit omap_cf_remove(struct platform_device *pdev)
 	cf->active = 0;
 	pcmcia_unregister_socket(&cf->socket);
 	del_timer_sync(&cf->timer);
-	iounmap((void __iomem *) cf->socket.io_offset);
 	release_mem_region(cf->phys_cf, SZ_8K);
 	free_irq(cf->irq, cf);
 	kfree(cf);
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
