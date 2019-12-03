Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F22710FCB1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 12:48:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y3vHjnvuTW/uUjBOeDFzdHZXVaYhxvxOehcjYr62Xoc=; b=dGWVHGAx+qdI6I
	kUFOlkIheBNkPUkanMNark3FO5TpD9ghqZBqHI4XiwaLUYU6f6qTnFigq1T6rUR3ZQNW+IsmPtAfP
	2PT38XkNQjN8EmWnfrDX8CnXWst2gdJsIpkNW5wFox48AZKUZZfnQ65APNx4xXhm8bRub0+8s0tWs
	iP1IyA3rzP8YXLxQfBpxEhXgNqzs/yY1BcT9ji0dcVMYgtVYNU13CN94rtOZIlZNnOI85w4ZqoJ6a
	2/Kj/czickQXf3CXRf6rLnnPa/fWidQ2M1WjhzvmTLXUhm5ko2RKxmvsR3OiqwWW6us7nRi+qlYuY
	SQ+rT76shEGO07EtGucw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6f5-0000ou-Rq; Tue, 03 Dec 2019 11:48:11 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6en-0000lW-55; Tue, 03 Dec 2019 11:47:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6C137B183;
 Tue,  3 Dec 2019 11:47:49 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: andrew.murray@arm.com,
	maz@kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/8] Raspberry Pi 4 PCIe support
Date: Tue,  3 Dec 2019 12:47:33 +0100
Message-Id: <20191203114743.1294-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_034753_489942_6CA8CE7C 
X-CRM114-Status: GOOD (  15.30  )
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-nfs@vger.kernel.org, f.fainelli@gmail.com,
 linux-rockchip@lists.infradead.org, linux-rdma@vger.kernel.org,
 linux-pci@vger.kernel.org, phil@raspberrypi.org, jeremy.linton@arm.com,
 kexec@lists.infradead.org, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, mbrugger@suse.com,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 james.quinlan@broadcom.com, netdev@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-clk@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series aims at providing support for Raspberry Pi 4's PCIe
controller, which is also shared with the Broadcom STB family of
devices.

There was a previous attempt to upstream this some years ago[1] but was
blocked as most STB PCIe integrations have a sparse DMA mapping[2] which
is something currently not supported by the kernel.  Luckily this is not
the case for the Raspberry Pi 4.

Note that the driver code is to be based on top of Rob Herring's series
simplifying inbound and outbound range parsing.

[1] https://patchwork.kernel.org/cover/10605933/
[2] https://patchwork.kernel.org/patch/10605957/

---

Changes since v3:
  - Moved all the log2.h related changes at the end of the series, as I
    presume they will be contentious and I don't want the PCIe patches
    to depend on them. Ultimately I think I'll respin them on their own
    series but wanted to keep them in for this submission just for the
    sake of continuity.
  - Addressed small nits here and there.

Changes since v2:
  - Redo register access in driver avoiding indirection while keeping
    the naming intact
  - Add patch editing ARM64's config
  - Last MSI cleanups, notably removing MSIX flag
  - Got rid of all _RB writes
  - Got rid of all of_data
  - Overall churn removal
  - Address the rest of Andrew's comments

Changes since v1:
  - add generic rounddown/roundup_pow_two64() patch
  - Add MAINTAINERS patch
  - Fix Kconfig
  - Cleanup probe, use up to date APIs, exit on MSI failure
  - Get rid of linux,pci-domain and other unused constructs
  - Use edge triggered setup for MSI
  - Cleanup MSI implementation
  - Fix multiple cosmetic issues
  - Remove supend/resume code

Jim Quinlan (3):
  dt-bindings: PCI: Add bindings for brcmstb's PCIe device
  PCI: brcmstb: Add Broadcom STB PCIe host controller driver
  PCI: brcmstb: Add MSI support

Nicolas Saenz Julienne (5):
  ARM: dts: bcm2711: Enable PCIe controller
  MAINTAINERS: Add brcmstb PCIe controller
  arm64: defconfig: Enable Broadcom's STB PCIe controller
  linux/log2.h: Fix 64bit calculations in roundup/down_pow_two()
  linux/log2.h: Use roundup/dow_pow_two() on 64bit calculations

 .../bindings/pci/brcm,stb-pcie.yaml           |   97 ++
 MAINTAINERS                                   |    4 +
 arch/arm/boot/dts/bcm2711.dtsi                |   37 +
 arch/arm64/configs/defconfig                  |    1 +
 drivers/acpi/arm64/iort.c                     |    2 +-
 drivers/clk/clk-divider.c                     |    8 +-
 drivers/clk/sunxi/clk-sunxi.c                 |    2 +-
 drivers/infiniband/hw/hfi1/chip.c             |    4 +-
 drivers/infiniband/hw/hfi1/init.c             |    4 +-
 drivers/infiniband/hw/mlx4/srq.c              |    2 +-
 drivers/infiniband/hw/mthca/mthca_srq.c       |    2 +-
 drivers/infiniband/sw/rxe/rxe_qp.c            |    4 +-
 drivers/iommu/intel-iommu.c                   |    4 +-
 drivers/iommu/intel-svm.c                     |    4 +-
 drivers/iommu/intel_irq_remapping.c           |    2 +-
 drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c  |    4 +-
 drivers/net/ethernet/marvell/sky2.c           |    2 +-
 drivers/net/ethernet/mellanox/mlx4/en_clock.c |    3 +-
 drivers/net/ethernet/rocker/rocker_hw.h       |    4 +-
 drivers/net/ethernet/sfc/ef10.c               |    2 +-
 drivers/net/ethernet/sfc/efx.h                |    2 +-
 drivers/net/ethernet/sfc/falcon/efx.h         |    2 +-
 drivers/of/device.c                           |    3 +-
 drivers/pci/controller/Kconfig                |    9 +
 drivers/pci/controller/Makefile               |    1 +
 .../pci/controller/cadence/pcie-cadence-ep.c  |    3 +-
 drivers/pci/controller/cadence/pcie-cadence.c |    3 +-
 drivers/pci/controller/pcie-brcmstb.c         | 1008 +++++++++++++++++
 drivers/pci/controller/pcie-rockchip-ep.c     |    5 +-
 drivers/pci/msi.c                             |    2 +-
 include/linux/log2.h                          |   44 +-
 kernel/dma/direct.c                           |    2 +-
 kernel/kexec_core.c                           |    3 +-
 lib/rhashtable.c                              |    2 +-
 net/sunrpc/xprtrdma/verbs.c                   |    2 +-
 35 files changed, 1211 insertions(+), 72 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
 create mode 100644 drivers/pci/controller/pcie-brcmstb.c

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
