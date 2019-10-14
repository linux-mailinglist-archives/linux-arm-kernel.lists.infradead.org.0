Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F9CD697D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 20:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rwft9GnkNv3tJGdSlV4TPKhAppDFflV/osE3j4PnQw0=; b=cf2hHRMH6l9Qdo
	JGCmd1aR0THDNTmEbBH8Wz02SIK2DEkCSDC9XA2HMTlkCWAGsrIRT8obkihBQyaXVcwl7yW/qkOBO
	E/t+3rLtJHhYI2QdJCv3Ga5MPPxCVaNSMKGmhqPUyIAa2Xsy+RjLjmzJUuAU6tWMVL776YsqFFIxl
	EwVgqV+pjiHQ6XrtIbH7GYETRUNEIhtTtE6H2u581koj0CiFPo2A6x6FuSbjGIddSmBdTDz1DcpVj
	54reX2ltDiyPRun0mZZ+Oq484IojA5KnPT8/9gd8sRPGUPovxGsyDgUZVh+PLTYSuGUsvCSoXkeka
	ssjQnFOyeFp9RtS0v9pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK59j-0007Tc-Jm; Mon, 14 Oct 2019 18:33:19 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK58M-0006GN-Hn; Mon, 14 Oct 2019 18:31:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 4484DBB80;
 Mon, 14 Oct 2019 18:31:53 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, iommu@lists.linux-foundation.org,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, Eric Anholt <eric@anholt.net>,
 Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH RFC 5/5] ARM: bcm2711: use dma-direct
Date: Mon, 14 Oct 2019 20:31:07 +0200
Message-Id: <20191014183108.24804-6-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191014183108.24804-1-nsaenzjulienne@suse.de>
References: <20191014183108.24804-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_113154_779668_CC5A67E0 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: hch@infradead.org, mbrugger@suse.com, Russell King <linux@armlinux.org.uk>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Raspberry Pi 4 supports up to 4GB of memory yet most of its devices
are only able to address the fist GB. Enable dma-direct for that board
in order to benefit from swiotlb's bounce buffering mechanism.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 arch/arm/mach-bcm/Kconfig   | 1 +
 arch/arm/mach-bcm/bcm2711.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/mach-bcm/Kconfig b/arch/arm/mach-bcm/Kconfig
index e4e25f287ad7..fd7d725d596c 100644
--- a/arch/arm/mach-bcm/Kconfig
+++ b/arch/arm/mach-bcm/Kconfig
@@ -163,6 +163,7 @@ config ARCH_BCM2835
 	select ARM_ERRATA_411920 if ARCH_MULTI_V6
 	select ARM_GIC if ARCH_MULTI_V7
 	select ZONE_DMA if ARCH_MULTI_V7
+	select SWIOTLB if ARCH_MULTI_V7
 	select ARM_TIMER_SP804
 	select HAVE_ARM_ARCH_TIMER if ARCH_MULTI_V7
 	select TIMER_OF
diff --git a/arch/arm/mach-bcm/bcm2711.c b/arch/arm/mach-bcm/bcm2711.c
index dbe296798647..67d98cb0533f 100644
--- a/arch/arm/mach-bcm/bcm2711.c
+++ b/arch/arm/mach-bcm/bcm2711.c
@@ -19,6 +19,7 @@ DT_MACHINE_START(BCM2711, "BCM2711")
 #ifdef CONFIG_ZONE_DMA
 	.dma_zone_size	= SZ_1G,
 #endif
+	.dma_direct = true,
 	.dt_compat = bcm2711_compat,
 	.smp = smp_ops(bcm2836_smp_ops),
 MACHINE_END
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
