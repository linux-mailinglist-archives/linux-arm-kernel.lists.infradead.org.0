Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D28421DDE02
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 05:37:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B5IHLdpFvcy15Nv6BVR7H6iSDw8O9xOLsy3gphOrASs=; b=jlHIarP/2Rrsin
	ApdrdG2kqbuwX/HUliKQnfjXOAfXkCM5z49BcTcfUz/TIIPyY0ZVGqb/8QQpvlk/f0oRpy7ErSB9n
	qN6BSegMmuaRXvQ1h0IhIQoB0Q9BSZLV3tjsEVQgXRBGZwNvWDmlqr7pbDtteCuCMCaKwoafspnng
	7EvX8grkFV2w9K5rg/u/hXr9mbjQfCfSy3YAfhuyFmT7CuXedhXsqSzWLVkP6pi+QhXBVzaojdQuV
	61n6OeZJYaOmSahe96dm4WIwvc4Hne/XoNjSWAKqLnEVO8fClFl+e3bdkoGJLOrgJscaWZzLMoRU+
	9nryRKlT8zWpPdl2vDUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbyUh-0007ew-4s; Fri, 22 May 2020 03:37:11 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbyUM-0007a0-Ez
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 03:36:52 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04M3acrN038170;
 Thu, 21 May 2020 22:36:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590118598;
 bh=8RzM7i3Rrp8uXl7sKSFGjegEX/Cv2nNjtc1FHktE03I=;
 h=From:To:CC:Subject:Date;
 b=nYMOV5Z3PnBeHAFeSZkM48c3Pgb60gCIL3yNP7BnURZqr8EAPcx502W3E4NEwdtfb
 G8Z62AbmzmeXePIGnRrq30FcAr1KmI689pq2KRQ1KIel+zN3scfgNedDkgRfSmEEtI
 +utDjA7zVo0OlVAG47drdKVhp+lxyTc9g97yeadg=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04M3ac9n028344
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 21 May 2020 22:36:38 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 May 2020 22:36:38 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 May 2020 22:36:37 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04M3aYbu062596;
 Thu, 21 May 2020 22:36:34 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tom Joseph <tjoseph@cadence.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Rob Herring <robh@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>
Subject: [PATCH v5 00/14] Add PCIe support to TI's J721E SoC
Date: Fri, 22 May 2020 09:06:17 +0530
Message-ID: <20200522033631.32574-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_203650_599024_0DE6319B 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TI's J721E SoC uses Cadence PCIe core to implement both RC mode
and EP mode.

The high level features are:
  *) Supports Legacy, MSI and MSI-X interrupt
  *) Supports upto GEN4 speed mode
  *) Supports SR-IOV
  *) Supports multiple physical function
  *) Ability to route all transactions via SMMU

This patch series
  *) Add support in Cadence PCIe core to be used for TI's J721E SoC
  *) Add a driver for J721E PCIe wrapper

v1 of the series can be found @ [1]
v2 of the series can be found @ [2]
v3 of the series can be found @ [5]
v4 of the series can be found @ [6]

Changes from v4:
1) Added Reviewed-by: & Acked-by: tags from RobH
2) Removed un-used accessors for pcie-cadence.h and removed having ops
   for read/write accessors
3) Updated cdns,cdns-pcie-host.yaml to remove "mem" from reg

Changes from v3:
1) Changed the order of files in MAINTAINTERS file to fix Joe's comments
2) Fixed indentation and added Reviewed-by: Rob Herring <robh@kernel.org>
3) Cleaned up computing msix_tbl
4) Fixed RobH's comment on J721E driver

Changes from v2:
1) Converting Cadence binding to YAML schema was done as a
   separate series [3] & [4]. [3] is merged and [4] is
   pending.
2) Included MSI-X support in this series
3) Added link down interrupt handling (only error message)
4) Rebased to latest 5.7-rc1
5) Adapted TI J721E binding to [3] & [4]

Changes from v1:
1) Added DT schemas cdns-pcie-host.yaml, cdns-pcie-ep.yaml and
   cdns-pcie.yaml for Cadence PCIe core and included it in
   TI's PCIe DT schema.
2) Added cpu_addr_fixup() for Cadence Platform driver.
3) Fixed subject/description/renamed functions as commented by
   Andrew Murray.

[1] -> http://lore.kernel.org/r/20191209092147.22901-1-kishon@ti.com
[2] -> http://lore.kernel.org/r/20200106102058.19183-1-kishon@ti.com
[3] -> http://lore.kernel.org/r/20200305103017.16706-1-kishon@ti.com
[4] -> http://lore.kernel.org/r/20200417114322.31111-1-kishon@ti.com
[5] -> http://lore.kernel.org/r/20200417125753.13021-1-kishon@ti.com
[6] -> http://lore.kernel.org/r/20200506151429.12255-1-kishon@ti.com

Alan Douglas (1):
  PCI: cadence: Add MSI-X support to Endpoint driver

Kishon Vijay Abraham I (13):
  PCI: cadence: Fix cdns_pcie_{host|ep}_setup() error path
  linux/kernel.h: Add PTR_ALIGN_DOWN macro
  PCI: cadence: Convert all r/w accessors to perform only 32-bit
    accesses
  PCI: cadence: Add support to start link and verify link status
  PCI: cadence: Allow pci_host_bridge to have custom pci_ops
  dt-bindings: PCI: cadence: Remove "mem" from reg binding
  PCI: cadence: Add new *ops* for CPU addr fixup
  PCI: cadence: Fix updating Vendor ID and Subsystem Vendor ID register
  dt-bindings: PCI: Add host mode dt-bindings for TI's J721E SoC
  dt-bindings: PCI: Add EP mode dt-bindings for TI's J721E SoC
  PCI: j721e: Add TI J721E PCIe driver
  misc: pci_endpoint_test: Add J721E in pci_device_id table
  MAINTAINERS: Add Kishon Vijay Abraham I for TI J721E SoC PCIe

 .../bindings/pci/cdns,cdns-pcie-host.yaml     |   8 +-
 .../bindings/pci/ti,j721e-pci-ep.yaml         |  89 ++++
 .../bindings/pci/ti,j721e-pci-host.yaml       | 113 ++++
 MAINTAINERS                                   |   4 +-
 drivers/misc/pci_endpoint_test.c              |   9 +
 drivers/pci/controller/cadence/Kconfig        |  23 +
 drivers/pci/controller/cadence/Makefile       |   1 +
 drivers/pci/controller/cadence/pci-j721e.c    | 490 ++++++++++++++++++
 .../pci/controller/cadence/pcie-cadence-ep.c  | 125 ++++-
 .../controller/cadence/pcie-cadence-host.c    |  59 ++-
 .../controller/cadence/pcie-cadence-plat.c    |  13 +
 drivers/pci/controller/cadence/pcie-cadence.c |   8 +-
 drivers/pci/controller/cadence/pcie-cadence.h | 127 ++++-
 include/linux/kernel.h                        |   1 +
 14 files changed, 1017 insertions(+), 53 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
 create mode 100644 Documentation/devicetree/bindings/pci/ti,j721e-pci-host.yaml
 create mode 100644 drivers/pci/controller/cadence/pci-j721e.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
