Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D666162BDC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:14:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YLBqYZtC1jdHjCtpduvynJ0UJekQqYetSfFch6g45jc=; b=jUdQCGSWihT04I
	wEeqHB0rYIJVzLFnuqr2Zpctuiq/qibwH2bBKPe+5j5BQhJihwZVjig3prrUe2kkZdkxYQqmcNudq
	jAaiXsSSmG/ZPkXj/G3X2UgfRiH6SJ6TudkXfG3opauMSar2OlkAM7xn/A+N5gcIG/jYkMx3EAQFf
	FH06mtMFesxcwenbCIxdVTAl4bdKjuNVNmFOZ5iv/nRNnLhmh9gsJ4tLbQWE3tr+0sSMM8XJLxkPH
	L0/ZvM7EuiBYvqPHzeHTkJUT4ETiVnitfHPlcfimtC436Uh3Ejk+jNPMKKIwIFl5zuQOJ7EviaOxx
	QDnISQWKgUMrcxJZXpjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46Ri-0002AX-J4; Tue, 18 Feb 2020 17:14:06 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46R5-0001rr-NC
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:13:29 +0000
Received: by mail-ot1-f66.google.com with SMTP id 66so20235133otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 09:13:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4LxZR/H/qWaW6PLZe7czUDlSa5Ov9S/K1kfsaVdcFug=;
 b=BCojIevanGf0/MVMNvzqIj23R46L29xrhbHlfArJ3a/Yas90VgUjN17sb+Ro9jYogG
 hilGqWyVbG3qKNmeapRitmfO38KqQqwfwRcGTW/gp6BDkZCHiCX1+xeGiorIRNJ4pzPR
 4Hm7a1rbXQhVofi1JESu05niwsqFE+u4y/3Ib1JbqUQKg9LKyW3lYagkc4bF8m2OlqvY
 NHy0rISfogqwiemBEQUkud0uRsmAgvq6CcIO9fljWZzPLVs4IlvOR3NsqaH5Q5H7qmfD
 Q2b41qp56VzlIVbNvYk2TqfQwyGWEeCShdaRAlIS2smAbsLgPduS8HaVKpKmNF+pL7MK
 t3yQ==
X-Gm-Message-State: APjAAAVGBnipVaR1qoDrcEgqbgyLDNRC1wtsqaUth13wM8Dn3W3JO3Hl
 uXx1XXd6nBsgFC7iXkOYNkeGC74=
X-Google-Smtp-Source: APXvYqzcQiA7Kz1hw5DSMbv4x/r+JIz0TrIbtjHbvB5jqm2ONigiZ49RPglyPaLbn09y6q4zITnNIw==
X-Received: by 2002:a05:6830:1f0c:: with SMTP id
 u12mr16226750otg.253.1582046005180; 
 Tue, 18 Feb 2020 09:13:25 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id y25sm1545755oto.27.2020.02.18.09.13.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 09:13:24 -0800 (PST)
From: Rob Herring <robh@kernel.org>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 soc@kernel.org, Andre Przywara <andre.przywara@arm.com>,
 Robert Richter <rrichter@marvell.com>, Jon Loeliger <jdl@jdl.com>,
 Alexander Graf <graf@amazon.com>, Matthias Brugger <mbrugger@suse.com>,
 Mark Langsdorf <mlangsdo@redhat.com>
Subject: [RFC PATCH 01/11] vfio: Remove Calxeda XGMAC reset driver
Date: Tue, 18 Feb 2020 11:13:11 -0600
Message-Id: <20200218171321.30990-2-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200218171321.30990-1-robh@kernel.org>
References: <20200218171321.30990-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_091327_758309_4A185F05 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: kvm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 linux-ide@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-edac@vger.kernel.org,
 Jens Axboe <axboe@kernel.dk>, Tony Luck <tony.luck@intel.com>,
 Stephen Boyd <sboyd@kernel.org>, netdev@vger.kernel.org,
 Cornelia Huck <cohuck@redhat.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 iommu@lists.linux-foundation.org, James Morse <james.morse@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cc: Eric Auger <eric.auger@redhat.com>
Cc: Alex Williamson <alex.williamson@redhat.com>
Cc: Cornelia Huck <cohuck@redhat.com>
Cc: kvm@vger.kernel.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
Do not apply yet.

 drivers/vfio/platform/reset/Kconfig           |  8 --
 drivers/vfio/platform/reset/Makefile          |  2 -
 .../reset/vfio_platform_calxedaxgmac.c        | 74 -------------------
 3 files changed, 84 deletions(-)
 delete mode 100644 drivers/vfio/platform/reset/vfio_platform_calxedaxgmac.c

diff --git a/drivers/vfio/platform/reset/Kconfig b/drivers/vfio/platform/reset/Kconfig
index 1edbe9ee7356..3668d1d92909 100644
--- a/drivers/vfio/platform/reset/Kconfig
+++ b/drivers/vfio/platform/reset/Kconfig
@@ -1,12 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
-config VFIO_PLATFORM_CALXEDAXGMAC_RESET
-	tristate "VFIO support for calxeda xgmac reset"
-	depends on VFIO_PLATFORM
-	help
-	  Enables the VFIO platform driver to handle reset for Calxeda xgmac
-
-	  If you don't know what to do here, say N.
-
 config VFIO_PLATFORM_AMDXGBE_RESET
 	tristate "VFIO support for AMD XGBE reset"
 	depends on VFIO_PLATFORM
diff --git a/drivers/vfio/platform/reset/Makefile b/drivers/vfio/platform/reset/Makefile
index 7294c5ea122e..be7960ce5dbc 100644
--- a/drivers/vfio/platform/reset/Makefile
+++ b/drivers/vfio/platform/reset/Makefile
@@ -1,7 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
-vfio-platform-calxedaxgmac-y := vfio_platform_calxedaxgmac.o
 vfio-platform-amdxgbe-y := vfio_platform_amdxgbe.o

-obj-$(CONFIG_VFIO_PLATFORM_CALXEDAXGMAC_RESET) += vfio-platform-calxedaxgmac.o
 obj-$(CONFIG_VFIO_PLATFORM_AMDXGBE_RESET) += vfio-platform-amdxgbe.o
 obj-$(CONFIG_VFIO_PLATFORM_BCMFLEXRM_RESET) += vfio_platform_bcmflexrm.o
diff --git a/drivers/vfio/platform/reset/vfio_platform_calxedaxgmac.c b/drivers/vfio/platform/reset/vfio_platform_calxedaxgmac.c
deleted file mode 100644
index 09a9453b75c5..000000000000
--- a/drivers/vfio/platform/reset/vfio_platform_calxedaxgmac.c
+++ /dev/null
@@ -1,74 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * VFIO platform driver specialized for Calxeda xgmac reset
- * reset code is inherited from calxeda xgmac native driver
- *
- * Copyright 2010-2011 Calxeda, Inc.
- * Copyright (c) 2015 Linaro Ltd.
- *              www.linaro.org
- */
-
-#include <linux/module.h>
-#include <linux/kernel.h>
-#include <linux/init.h>
-#include <linux/io.h>
-
-#include "../vfio_platform_private.h"
-
-#define DRIVER_VERSION  "0.1"
-#define DRIVER_AUTHOR   "Eric Auger <eric.auger@linaro.org>"
-#define DRIVER_DESC     "Reset support for Calxeda xgmac vfio platform device"
-
-/* XGMAC Register definitions */
-#define XGMAC_CONTROL           0x00000000      /* MAC Configuration */
-
-/* DMA Control and Status Registers */
-#define XGMAC_DMA_CONTROL       0x00000f18      /* Ctrl (Operational Mode) */
-#define XGMAC_DMA_INTR_ENA      0x00000f1c      /* Interrupt Enable */
-
-/* DMA Control registe defines */
-#define DMA_CONTROL_ST          0x00002000      /* Start/Stop Transmission */
-#define DMA_CONTROL_SR          0x00000002      /* Start/Stop Receive */
-
-/* Common MAC defines */
-#define MAC_ENABLE_TX           0x00000008      /* Transmitter Enable */
-#define MAC_ENABLE_RX           0x00000004      /* Receiver Enable */
-
-static inline void xgmac_mac_disable(void __iomem *ioaddr)
-{
-	u32 value = readl(ioaddr + XGMAC_DMA_CONTROL);
-
-	value &= ~(DMA_CONTROL_ST | DMA_CONTROL_SR);
-	writel(value, ioaddr + XGMAC_DMA_CONTROL);
-
-	value = readl(ioaddr + XGMAC_CONTROL);
-	value &= ~(MAC_ENABLE_TX | MAC_ENABLE_RX);
-	writel(value, ioaddr + XGMAC_CONTROL);
-}
-
-static int vfio_platform_calxedaxgmac_reset(struct vfio_platform_device *vdev)
-{
-	struct vfio_platform_region *reg = &vdev->regions[0];
-
-	if (!reg->ioaddr) {
-		reg->ioaddr =
-			ioremap(reg->addr, reg->size);
-		if (!reg->ioaddr)
-			return -ENOMEM;
-	}
-
-	/* disable IRQ */
-	writel(0, reg->ioaddr + XGMAC_DMA_INTR_ENA);
-
-	/* Disable the MAC core */
-	xgmac_mac_disable(reg->ioaddr);
-
-	return 0;
-}
-
-module_vfio_reset_handler("calxeda,hb-xgmac", vfio_platform_calxedaxgmac_reset);
-
-MODULE_VERSION(DRIVER_VERSION);
-MODULE_LICENSE("GPL v2");
-MODULE_AUTHOR(DRIVER_AUTHOR);
-MODULE_DESCRIPTION(DRIVER_DESC);
--
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
