Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 043A771CC1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 18:20:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+MJW1K9dnuS+t/bKdNZPoUpn7Nhv1g8RuS2fk3NdrtM=; b=U6t5zXB5SuCNqq
	9D9Y82ALSC59K2gJAMcIAo40sn/f+WH4IOzugG0bya7jqs9FSWhd0nN/1j5nj7mKCwI7OuVXhJdeK
	MWpIahjnNzE+P+5gqy1QtYtr64ue/z4ZrvCqvSKS1slZqMZS7dVmEhpwNqjqc4k9/oQ6nmYJ+5d2o
	vfUd5c0xwT+z1TXukX12+H2wn2QsVqhseDdp7DxJgHsENorN2JD5aSyRtaapTKAfBfYUiMaql/IVu
	ssI2sGB3FZlMC+WyFFnvXEe+dRZ5k4OPPG1rDFLphZp0A8kvHnFsNz7x2qXI51SZR/wtbNvBh0ggT
	Dr6PieKJKowE/V0hUe+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpxWA-00020W-EM; Tue, 23 Jul 2019 16:19:58 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpxVs-0001zV-JE; Tue, 23 Jul 2019 16:19:42 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B21ADAF19;
 Tue, 23 Jul 2019 16:19:38 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Eric Anholt <eric@anholt.net>,
 Stefan Wahren <wahrenst@gmx.net>
Subject: [RFC] ARM: bcm2835: register dmabounce on devices hooked to main
 interconnect
Date: Tue, 23 Jul 2019 18:19:33 +0200
Message-Id: <20190723161934.4590-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_091940_780451_043A0A0B 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: mbrugger@suse.com, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, hch@lst.de,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

NOTE: This patch builds upon Stefan's series providing basic support for
RPi4[1]. I'm mostly interested in verifying if this is the correct approach
to the issue stated below. If so I assume this will be added to Stefan's
v2 series.

The new Raspberry Pi 4 happens to have weird DMA constraints. Even
though it might contain up to 4 GB of ram, most devices can only access
the first lower GB of memory.

This breaks the overall assumption DMA API makes whereas 32-bit DMA
masks are always supported[2], and potentially breaks DMA addressing for
all streaming DMA users. This has already been observed with
'sdhci-iproc' but might as well happen elsewhere. Note that contiguous
allocations are safe as 'dma_zone_size' is set accordingly.

To get around that limitation we register arm's dmabounce dma-ops on all
devices hooked to the SoC's main interconnect.

[1] https://www.spinics.net/lists/arm-kernel/msg742120.html
[2] https://www.spinics.net/lists/arm-kernel/msg742736.html

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 arch/arm/mach-bcm/Kconfig         |  1 +
 arch/arm/mach-bcm/board_bcm2835.c | 29 +++++++++++++++++++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/arch/arm/mach-bcm/Kconfig b/arch/arm/mach-bcm/Kconfig
index 5e5f1fabc3d4..588326f7e269 100644
--- a/arch/arm/mach-bcm/Kconfig
+++ b/arch/arm/mach-bcm/Kconfig
@@ -168,6 +168,7 @@ config ARCH_BCM2835
 	select PINCTRL
 	select PINCTRL_BCM2835
 	select MFD_CORE
+	select DMABOUNCE if ARCH_MULTI_V7
 	help
 	  This enables support for the Broadcom BCM2835 and BCM2836 SoCs.
 	  This SoC is used in the Raspberry Pi and Roku 2 devices.
diff --git a/arch/arm/mach-bcm/board_bcm2835.c b/arch/arm/mach-bcm/board_bcm2835.c
index c09cf25596af..7aff29f77ca7 100644
--- a/arch/arm/mach-bcm/board_bcm2835.c
+++ b/arch/arm/mach-bcm/board_bcm2835.c
@@ -3,6 +3,8 @@
  * Copyright (C) 2010 Broadcom
  */
 
+#include <linux/device.h>
+#include <linux/dma-mapping.h>
 #include <linux/init.h>
 #include <linux/irqchip.h>
 #include <linux/of_address.h>
@@ -24,8 +26,35 @@ static const char * const bcm2835_compat[] = {
 	NULL
 };
 
+static int bcm2835_needs_bounce(struct device *dev, dma_addr_t dma_addr, size_t size)
+{
+	/*
+	 * The accepted dma addresses are [0xc0000000, 0xffffffff] which map to
+	 * ram's [0x00000000, 0x3fffffff].
+	 */
+	return dma_addr < 3ULL * SZ_1G;
+}
+
+static int bcm2835_platform_notify(struct device *dev)
+{
+	if (dev->parent && !strcmp("soc", dev_name(dev->parent))) {
+		dev->dma_mask = &dev->coherent_dma_mask;
+		dev->coherent_dma_mask = DMA_BIT_MASK(30);
+		dmabounce_register_dev(dev, 2048, 4096, bcm2835_needs_bounce);
+	}
+
+	return 0;
+}
+
+void __init bcm2835_init_early(void)
+{
+	if(of_machine_is_compatible("brcm,bcm2711"))
+		platform_notify = bcm2835_platform_notify;
+}
+
 DT_MACHINE_START(BCM2835, "BCM2835")
 	.dma_zone_size	= SZ_1G,
 	.dt_compat = bcm2835_compat,
 	.smp = smp_ops(bcm2836_smp_ops),
+	.init_early = bcm2835_init_early,
 MACHINE_END
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
