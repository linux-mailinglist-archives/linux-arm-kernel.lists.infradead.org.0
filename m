Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0A819E34B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 09:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=sfMW7bR/TySkqc3pt+7XSzbsLled9hh24kpJ8IAXMZA=; b=fdB
	yrCaz4BJYOtV/KLgQayypLRWBs787j/xSlaH/La4rI63lL66dyIX7owRG3Camwwwhgjakbc6feIOX
	ZIYmNY56Uy84TGF5o9HUuOTUGicPQm4K9LRIXibUKg3UiJ1uvlmKurLVvmwhDnPZp9PPA9nyo65uw
	DiV+Un5h1KPpSWpV6ulVV6EF3MwynHQGxJApiyqnqG1rTan5YPPHBjPpCevtZy1TOAYX608NW8lag
	bNWmlqL32a2Qt67GK6ANKmU5n6EnOoKXfUQKOusXVoNEk03Gu/9hSId3c2un9nneJ4P9anyrU+OLp
	XWhYt+vAk+s/kksHfrOVmq0ryy53Dmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKdGj-0004o8-6B; Sat, 04 Apr 2020 07:31:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKdGe-0004nn-AD
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Apr 2020 07:31:01 +0000
Received: from cam-smtp0.cambridge.arm.com (fw-tnat.cambridge.arm.com
 [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B057206B8;
 Sat,  4 Apr 2020 07:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585985459;
 bh=YwNzc3LPzS5Ne5jnpGLuUWb6+rpkRhuod22y6xQH6Ns=;
 h=From:To:Cc:Subject:Date:From;
 b=xmkfgME2VgYzepgggNgkR3Y8/eYJTjS7NiLFZaHFKXcIMLm5H8on+jNGaX2LXCMyc
 7FDMPC5g2ttYbfDPLY2SMuFBunWoqpIejtXawOun6+tyAc67CEY0BHjts3JwgAxKWX
 eT9G5pgOtBJkU/mCYBSIdIQ8D4qpycerV3gtliCM=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: iort: take _DMA methods into account for named
 components
Date: Sat,  4 Apr 2020 09:30:47 +0200
Message-Id: <20200404073047.17898-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_003100_377516_F2EB79B9 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: catalin.marinas@arm.com, lorenzo.pieralisi@arm.com, will@kernel.org,
 robin.murphy@arm.com, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Where IORT nodes for named components can describe simple DMA limits
expressed as the number of address bits a device can driver, _DMA methods
in AML can express more complex topologies, involving DMA translation in
particular.

Currently, we only take this _DMA method into account if it appears on a
ACPI device node describing a PCIe root complex, but it is perfectly
acceptable to attach them to named components as well, so let's ensure
we take them into account in those cases too.

Reported-by: Andrei Warkentin <awarkentin@vmware.com>
Fixes: 7ad4263980826e8b ("ACPI: Make acpi_dma_configure() DMA regions aware")
Cc: <stable@vger.kernel.org> # v4.14+
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/acpi/arm64/iort.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index ed3d2d1a7ae9..07eb78baf198 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -1146,13 +1146,10 @@ void iort_dma_setup(struct device *dev, u64 *dma_addr, u64 *dma_size)
 	else
 		size = 1ULL << 32;
 
-	if (dev_is_pci(dev)) {
-		ret = acpi_dma_get_range(dev, &dmaaddr, &offset, &size);
-		if (ret == -ENODEV)
-			ret = rc_dma_get_range(dev, &size);
-	} else {
-		ret = nc_dma_get_range(dev, &size);
-	}
+	ret = acpi_dma_get_range(dev, &dmaaddr, &offset, &size);
+	if (ret == -ENODEV)
+		ret = dev_is_pci(dev) ? rc_dma_get_range(dev, &size)
+				      : nc_dma_get_range(dev, &size);
 
 	if (!ret) {
 		/*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
