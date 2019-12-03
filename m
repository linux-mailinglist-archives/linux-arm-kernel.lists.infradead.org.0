Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F35A310FCD8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 12:50:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WNt30GwrdIDAPu72wAA/0tQouxRvBGwnw6tQ3W9HEv0=; b=QUreDcdLJthAPy
	bQ9zqLy3TVG3vkKqEx8ckaJZwtZ5mLXWiXAs0m5TcWJ8YRc5/MEnzlAzKzjHq3Z5endui/40m/L05
	TOSVDhEcEP80P9cN3K2KIjtyhOiWMwEUmcnj/qOVPTvVQKVZBfhWwGP2ouUF5yLkZP6VowHTYqtHs
	0pnO2PqUuTXEq0u+r6i7nyn9U46q2ahtQCpL0MuPPapkl8No0Z2a9yTtihQJaAvOk6EZfHgwXOgw6
	gGW9BLzoZPhCI9EU39xSG49I9ZpfZ2nF72QS6ZukmufPRZvaMchsEfg6kBbMS+ptJYEjGklkAWrFl
	wQAUsa3WOTMuLG85EAEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6go-0002ey-Iy; Tue, 03 Dec 2019 11:49:58 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6ez-0000vS-1z; Tue, 03 Dec 2019 11:48:08 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 523B6AF93;
 Tue,  3 Dec 2019 11:48:03 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: andrew.murray@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Hanjun Guo <guohanjun@huawei.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Tariq Toukan <tariqt@mellanox.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Eric Anholt <eric@anholt.net>,
 Stefan Wahren <wahrenst@gmx.net>, Shawn Lin <shawn.lin@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH v4 8/8] linux/log2.h: Use roundup/dow_pow_two() on 64bit
 calculations
Date: Tue,  3 Dec 2019 12:47:41 +0100
Message-Id: <20191203114743.1294-9-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191203114743.1294-1-nsaenzjulienne@suse.de>
References: <20191203114743.1294-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_034805_570753_8A2C30E4 
X-CRM114-Status: GOOD (  15.85  )
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
Cc: linux-arm-kernel@lists.infradead.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, mbrugger@suse.com,
 devicetree@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-pci@vger.kernel.org, phil@raspberrypi.org, jeremy.linton@arm.com,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-rpi-kernel@lists.infradead.org, james.quinlan@broadcom.com,
 netdev@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-rockchip@lists.infradead.org, "David S. Miller" <davem@davemloft.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The function now is safe to use while expecting a 64bit value. Use it
where relevant.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/acpi/arm64/iort.c                        | 2 +-
 drivers/net/ethernet/mellanox/mlx4/en_clock.c    | 3 ++-
 drivers/of/device.c                              | 3 ++-
 drivers/pci/controller/cadence/pcie-cadence-ep.c | 3 ++-
 drivers/pci/controller/cadence/pcie-cadence.c    | 3 ++-
 drivers/pci/controller/pcie-brcmstb.c            | 3 ++-
 drivers/pci/controller/pcie-rockchip-ep.c        | 5 +++--
 kernel/dma/direct.c                              | 2 +-
 8 files changed, 15 insertions(+), 9 deletions(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 33f71983e001..9950c9757092 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -1090,7 +1090,7 @@ void iort_dma_setup(struct device *dev, u64 *dma_addr, u64 *dma_size)
 		 * firmware.
 		 */
 		end = dmaaddr + size - 1;
-		mask = DMA_BIT_MASK(ilog2(end) + 1);
+		mask = roundup_pow_of_two(end) - 1;
 		dev->bus_dma_limit = end;
 		dev->coherent_dma_mask = mask;
 		*dev->dma_mask = mask;
diff --git a/drivers/net/ethernet/mellanox/mlx4/en_clock.c b/drivers/net/ethernet/mellanox/mlx4/en_clock.c
index 024788549c25..23dcb18224d4 100644
--- a/drivers/net/ethernet/mellanox/mlx4/en_clock.c
+++ b/drivers/net/ethernet/mellanox/mlx4/en_clock.c
@@ -33,6 +33,7 @@
 
 #include <linux/mlx4/device.h>
 #include <linux/clocksource.h>
+#include <linux/log2.h>
 
 #include "mlx4_en.h"
 
@@ -252,7 +253,7 @@ static u32 freq_to_shift(u16 freq)
 {
 	u32 freq_khz = freq * 1000;
 	u64 max_val_cycles = freq_khz * 1000 * MLX4_EN_WRAP_AROUND_SEC;
-	u64 max_val_cycles_rounded = 1ULL << fls64(max_val_cycles - 1);
+	u64 max_val_cycles_rounded = roundup_pow_of_two(max_val_cycles);
 	/* calculate max possible multiplier in order to fit in 64bit */
 	u64 max_mul = div64_u64(ULLONG_MAX, max_val_cycles_rounded);
 
diff --git a/drivers/of/device.c b/drivers/of/device.c
index e9127db7b067..7259922d2078 100644
--- a/drivers/of/device.c
+++ b/drivers/of/device.c
@@ -11,6 +11,7 @@
 #include <linux/mod_devicetable.h>
 #include <linux/slab.h>
 #include <linux/platform_device.h>
+#include <linux/log2.h>
 
 #include <asm/errno.h>
 #include "of_private.h"
@@ -149,7 +150,7 @@ int of_dma_configure(struct device *dev, struct device_node *np, bool force_dma)
 	 * set by the driver.
 	 */
 	end = dma_addr + size - 1;
-	mask = DMA_BIT_MASK(ilog2(end) + 1);
+	mask = roundup_pow_of_two(end) - 1;
 	dev->coherent_dma_mask &= mask;
 	*dev->dma_mask &= mask;
 	/* ...but only set bus limit if we found valid dma-ranges earlier */
diff --git a/drivers/pci/controller/cadence/pcie-cadence-ep.c b/drivers/pci/controller/cadence/pcie-cadence-ep.c
index 1c173dad67d1..72eda0b2f939 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-ep.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-ep.c
@@ -10,6 +10,7 @@
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/sizes.h>
+#include <linux/log2.h>
 
 #include "pcie-cadence.h"
 
@@ -65,7 +66,7 @@ static int cdns_pcie_ep_set_bar(struct pci_epc *epc, u8 fn,
 	 * roundup_pow_of_two() returns an unsigned long, which is not suited
 	 * for 64bit values.
 	 */
-	sz = 1ULL << fls64(sz - 1);
+	sz = roundup_pow_of_two(sz);
 	aperture = ilog2(sz) - 7; /* 128B -> 0, 256B -> 1, 512B -> 2, ... */
 
 	if ((flags & PCI_BASE_ADDRESS_SPACE) == PCI_BASE_ADDRESS_SPACE_IO) {
diff --git a/drivers/pci/controller/cadence/pcie-cadence.c b/drivers/pci/controller/cadence/pcie-cadence.c
index cd795f6fc1e2..b1689f725b41 100644
--- a/drivers/pci/controller/cadence/pcie-cadence.c
+++ b/drivers/pci/controller/cadence/pcie-cadence.c
@@ -4,6 +4,7 @@
 // Author: Cyrille Pitchen <cyrille.pitchen@free-electrons.com>
 
 #include <linux/kernel.h>
+#include <linux/log2.h>
 
 #include "pcie-cadence.h"
 
@@ -15,7 +16,7 @@ void cdns_pcie_set_outbound_region(struct cdns_pcie *pcie, u8 fn,
 	 * roundup_pow_of_two() returns an unsigned long, which is not suited
 	 * for 64bit values.
 	 */
-	u64 sz = 1ULL << fls64(size - 1);
+	u64 sz = roundup_pow_of_two(size);
 	int nbits = ilog2(sz);
 	u32 addr0, addr1, desc0, desc1;
 
diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index 7ba06a0e1a71..e705d9d73030 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -627,7 +627,8 @@ static inline int brcm_pcie_get_rc_bar2_size_and_offset(struct brcm_pcie *pcie,
 		return -ENODEV;
 
 	*rc_bar2_offset = -entry->offset;
-	*rc_bar2_size = 1ULL << fls64(entry->res->end - entry->res->start);
+	*rc_bar2_size = roundup_pow_of_two(entry->res->end -
+					   entry->res->start + 1);
 
 	/*
 	 * We validate the inbound memory view even though we should trust
diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index d743b0a48988..83665f5f804a 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -16,6 +16,7 @@
 #include <linux/platform_device.h>
 #include <linux/pci-epf.h>
 #include <linux/sizes.h>
+#include <linux/log2.h>
 
 #include "pcie-rockchip.h"
 
@@ -70,7 +71,7 @@ static void rockchip_pcie_prog_ep_ob_atu(struct rockchip_pcie *rockchip, u8 fn,
 					 u32 r, u32 type, u64 cpu_addr,
 					 u64 pci_addr, size_t size)
 {
-	u64 sz = 1ULL << fls64(size - 1);
+	u64 sz = roundup_pow_of_two(size);
 	int num_pass_bits = ilog2(sz);
 	u32 addr0, addr1, desc0, desc1;
 	bool is_nor_msg = (type == AXI_WRAPPER_NOR_MSG);
@@ -176,7 +177,7 @@ static int rockchip_pcie_ep_set_bar(struct pci_epc *epc, u8 fn,
 	 * roundup_pow_of_two() returns an unsigned long, which is not suited
 	 * for 64bit values.
 	 */
-	sz = 1ULL << fls64(sz - 1);
+	sz = roundup_pow_of_two(sz);
 	aperture = ilog2(sz) - 7; /* 128B -> 0, 256B -> 1, 512B -> 2, ... */
 
 	if ((flags & PCI_BASE_ADDRESS_SPACE) == PCI_BASE_ADDRESS_SPACE_IO) {
diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
index 6af7ae83c4ad..056886c4efec 100644
--- a/kernel/dma/direct.c
+++ b/kernel/dma/direct.c
@@ -53,7 +53,7 @@ u64 dma_direct_get_required_mask(struct device *dev)
 {
 	u64 max_dma = phys_to_dma_direct(dev, (max_pfn - 1) << PAGE_SHIFT);
 
-	return (1ULL << (fls64(max_dma) - 1)) * 2 - 1;
+	return rounddown_pow_of_two(max_dma) * 2 - 1;
 }
 
 static gfp_t __dma_direct_optimal_gfp_mask(struct device *dev, u64 dma_mask,
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
