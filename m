Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6D41DCD9D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 15:01:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Bjcv9XH+pEkgBC/iXlgnxg4vWKlyWQL2Wu2xNL4AtPg=; b=Y95yaM2k0PcQLX
	LS9SZsH3U5JKMHDvfn+jc0t4yOWrI8r8h2a5HbxBW2mtkx2vOsIRH/Rz0+3GpkWq+++wB8y31Q6yB
	vWi5WU/mJe3/eYtTF07Q9B2aznAf4C+BrGU29KCzmuI1VoUzSSCSrpTfbE8jROkGI3sHN9WuLJpoa
	SuVXVGzMPv5Yqw6Ug4y2M/3D7ZPjCqI6gcnPucoU9jLB6ewmpLJtaK+dVqbAO4tLmo5mHL+XmlioZ
	MAPOErRMFOggz+16ApdkUaY1lJaSdJP108kpO8fpqlzvDNsgIvEEFM9BxqdawgSyLgykEL3Y3F3UA
	uLuD325nLcIXmkhrpTNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbkoj-00089A-KF; Thu, 21 May 2020 13:00:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbko8-0007v9-Aq
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 13:00:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D010ED6E;
 Thu, 21 May 2020 06:00:16 -0700 (PDT)
Received: from red-moon.arm.com (unknown [10.57.29.145])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5AC5A3F305;
 Thu, 21 May 2020 06:00:14 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 00/12] ACPI/OF: Upgrade MSI/IOMMU ID mapping APIs
Date: Thu, 21 May 2020 13:59:56 +0100
Message-Id: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_060020_462490_BB9F47D2 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Marc Zyngier <maz@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Hanjun Guo <guohanjun@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Robin Murphy <robin.murphy@arm.com>, Diana Craciun <diana.craciun@oss.nxp.com>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Firmware bindings provided in the ACPI IORT table[1] and device tree
bindings define rules to carry out input/output ID mappings - ie
retrieving an IOMMU/MSI controller input ID for a device with a given
ID.

At the moment these firmware bindings are used exclusively for PCI
devices and their requester ID to IOMMU/MSI id mapping but there is
nothing PCI specific in the ACPI and devicetree bindings that prevent
the firmware and kernel from using the firmware bindings to traslate
device IDs for any bus that requires its devices to carry out
input/output id translations.

The Freescale FSL bus is an example whereby the input/output ID
translation kernel code put in place for PCI can be reused for devices
attached to the bus that are not PCI devices.

This series updates the kernel code to make the MSI/IOMMU input/output
ID translation PCI agnostic and apply the resulting changes to the
device ID space provided by the Freescale FSL bus.

[1] http://infocenter.arm.com/help/topic/com.arm.doc.den0049d/DEN0049D_IO_Remapping_Table.pdf

Cc: Rob Herring <robh+dt@kernel.org>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: "Joerg Roedel <joro@8bytes.org>
Cc: Hanjun Guo <guohanjun@huawei.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>

Diana Craciun (3):
  of/irq: make of_msi_map_get_device_domain() bus agnostic
  bus/fsl-mc: Refactor the MSI domain creation in the DPRC driver
  bus: fsl-mc: Add ACPI support for fsl-mc

Laurentiu Tudor (1):
  dt-bindings: arm: fsl: Add msi-map device-tree binding for fsl-mc bus

Lorenzo Pieralisi (8):
  ACPI/IORT: Make iort_match_node_callback walk the ACPI namespace for
    NC
  ACPI/IORT: Make iort_get_device_domain IRQ domain agnostic
  ACPI/IORT: Make iort_msi_map_rid() PCI agnostic
  ACPI/IORT: Remove useless PCI bus walk
  ACPI/IORT: Add an input ID to acpi_dma_configure()
  of/iommu: Make of_map_rid() PCI agnostic
  of/device: Add input id to of_dma_configure()
  of/irq: Make of_msi_map_rid() PCI bus agnostic

 .../devicetree/bindings/misc/fsl,qoriq-mc.txt |  30 ++++-
 drivers/acpi/arm64/iort.c                     | 108 ++++++++++++------
 drivers/acpi/scan.c                           |   8 +-
 drivers/bus/fsl-mc/dprc-driver.c              |  31 ++---
 drivers/bus/fsl-mc/fsl-mc-bus.c               |  79 +++++++++----
 drivers/bus/fsl-mc/fsl-mc-msi.c               |  36 ++++--
 drivers/bus/fsl-mc/fsl-mc-private.h           |   6 +-
 drivers/iommu/of_iommu.c                      |  53 ++++++---
 drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c   |  88 +++++++++++++-
 drivers/of/base.c                             |  42 +++----
 drivers/of/device.c                           |   8 +-
 drivers/of/irq.c                              |  34 +++---
 drivers/pci/msi.c                             |   5 +-
 include/acpi/acpi_bus.h                       |   9 +-
 include/linux/acpi.h                          |   7 ++
 include/linux/acpi_iort.h                     |  26 +++--
 include/linux/of.h                            |  17 ++-
 include/linux/of_device.h                     |  16 ++-
 include/linux/of_iommu.h                      |   6 +-
 include/linux/of_irq.h                        |  19 ++-
 20 files changed, 451 insertions(+), 177 deletions(-)

-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
