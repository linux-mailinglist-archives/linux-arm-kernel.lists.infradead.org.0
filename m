Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5171D7672
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 13:14:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uQiENcL/ZpOn2KkopgdhGuvLB21pwjia+KbgxvixkYI=; b=P7rhO5aDiiMTXR
	2xWRacnM+y9h37vC7TAcyiwqKJzzXEVIJJyAYeK8qL0U9nPku2DQyPgjkSnqF7EAurhTkmIPa5BL/
	+UKj1X0nWrvIVGojHolNlmEka+TTmr8BSTEiraiqFyqUCLhoPmdClO9vtW/hZxn331YhZl2tP0m8u
	M5hWEsvZWlVSpvVOqSxbE6Ax+NgaW3Siu/NsUhPUaHznfSkqq06Tcgb8xb9A/omN9OFysxZiByqBe
	Y82JHN3tObYbp0K0Vy+jl6xG4SmgU83iHbw8V3zU78ElYGo5bVS/IjO/0Bbc/EjQtKfoMIb9TaNpC
	MdIBPekvwKO3l7xYZnpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jadjB-0003fY-G9; Mon, 18 May 2020 11:14:37 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jadj2-0003f4-T8
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 11:14:30 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04IBEFVH058603;
 Mon, 18 May 2020 06:14:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589800455;
 bh=E7fcJxnUqqFrAQDBSAN/iBT0XuTjX3npLA0yWrc9VYA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=mtgETvu6xqx3g7gfJLdVqm1+VQxFSci/CZr7ghnLfM5jbF57diyHocidjdlY0XpDs
 ageZWmXJBKi/pV9jV4RAXbZFMSy3wisTEkU8lHZ+J0GveB/JosKnSo7yGqQESvylEO
 9J79gg99a+NMw+xDCkX5cK43m33pBBulP942fNtI=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04IBEF6l123119
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 18 May 2020 06:14:15 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 18
 May 2020 06:14:14 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 18 May 2020 06:14:14 -0500
Received: from [10.250.233.85] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04IBEBg0114342;
 Mon, 18 May 2020 06:14:11 -0500
Subject: Re: [PATCH v4 00/14] Add PCIe support to TI's J721E SoC
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Tom Joseph <tjoseph@cadence.com>
References: <20200506151429.12255-1-kishon@ti.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <35f10b75-8235-7ea2-866f-dfb81fc8e485@ti.com>
Date: Mon, 18 May 2020 16:44:10 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200506151429.12255-1-kishon@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_041429_032012_774D93BC 
X-CRM114-Status: GOOD (  20.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lorenzo, RobH

On 5/6/2020 8:44 PM, Kishon Vijay Abraham I wrote:
> TI's J721E SoC uses Cadence PCIe core to implement both RC mode
> and EP mode.
> 
> The high level features are:
>   *) Supports Legacy, MSI and MSI-X interrupt
>   *) Supports upto GEN4 speed mode
>   *) Supports SR-IOV
>   *) Supports multiple physical function
>   *) Ability to route all transactions via SMMU
> 
> This patch series
>   *) Add support in Cadence PCIe core to be used for TI's J721E SoC
>   *) Add a driver for J721E PCIe wrapper

Do you have any other comments on this series? I'm hoping this gets merged for 5.8.

Thanks
Kishon

> 
> v1 of the series can be found @ [1]
> v2 of the series can be found @ [2]
> v3 of the series can be found @ [5]
> 
> Changes from v3:
> 1) Changed the order of files in MAINTAINTERS file to fix Joe's comments
> 2) Fixed indentation and added Reviewed-by: Rob Herring <robh@kernel.org>
> 3) Cleaned up computing msix_tbl
> 4) Fixed RobH's comment on J721E driver
> 
> Changes from v2:
> 1) Converting Cadence binding to YAML schema was done as a 
>    separate series [3] & [4]. [3] is merged and [4] is
>    pending.
> 2) Included MSI-X support in this series
> 3) Added link down interrupt handling (only error message)
> 4) Rebased to latest 5.7-rc1
> 5) Adapted TI J721E binding to [3] & [4] 
> 
> Changes from v1:
> 1) Added DT schemas cdns-pcie-host.yaml, cdns-pcie-ep.yaml and
>    cdns-pcie.yaml for Cadence PCIe core and included it in
>    TI's PCIe DT schema.
> 2) Added cpu_addr_fixup() for Cadence Platform driver.
> 3) Fixed subject/description/renamed functions as commented by
>    Andrew Murray.
> 
> [1] -> http://lore.kernel.org/r/20191209092147.22901-1-kishon@ti.com
> [2] -> http://lore.kernel.org/r/20200106102058.19183-1-kishon@ti.com
> [3] -> http://lore.kernel.org/r/20200305103017.16706-1-kishon@ti.com
> [4] -> http://lore.kernel.org/r/20200417114322.31111-1-kishon@ti.com
> [5] -> http://lore.kernel.org/r/20200417125753.13021-1-kishon@ti.com
> 
> Alan Douglas (1):
>   PCI: cadence: Add MSI-X support to Endpoint driver
> 
> Kishon Vijay Abraham I (13):
>   PCI: cadence: Fix cdns_pcie_{host|ep}_setup() error path
>   linux/kernel.h: Add PTR_ALIGN_DOWN macro
>   PCI: cadence: Add support to use custom read and write accessors
>   PCI: cadence: Add support to start link and verify link status
>   PCI: cadence: Add read/write accessors to perform only 32-bit accesses
>   PCI: cadence: Allow pci_host_bridge to have custom pci_ops
>   PCI: cadence: Add new *ops* for CPU addr fixup
>   PCI: cadence: Fix updating Vendor ID and Subsystem Vendor ID register
>   dt-bindings: PCI: Add host mode dt-bindings for TI's J721E SoC
>   dt-bindings: PCI: Add EP mode dt-bindings for TI's J721E SoC
>   PCI: j721e: Add TI J721E PCIe driver
>   misc: pci_endpoint_test: Add J721E in pci_device_id table
>   MAINTAINERS: Add Kishon Vijay Abraham I for TI J721E SoC PCIe
> 
>  .../bindings/pci/ti,j721e-pci-ep.yaml         |  89 ++++
>  .../bindings/pci/ti,j721e-pci-host.yaml       | 113 ++++
>  MAINTAINERS                                   |   4 +-
>  drivers/misc/pci_endpoint_test.c              |   9 +
>  drivers/pci/controller/cadence/Kconfig        |  23 +
>  drivers/pci/controller/cadence/Makefile       |   1 +
>  drivers/pci/controller/cadence/pci-j721e.c    | 492 ++++++++++++++++++
>  .../pci/controller/cadence/pcie-cadence-ep.c  | 125 ++++-
>  .../controller/cadence/pcie-cadence-host.c    |  59 ++-
>  .../controller/cadence/pcie-cadence-plat.c    |  13 +
>  drivers/pci/controller/cadence/pcie-cadence.c |  48 +-
>  drivers/pci/controller/cadence/pcie-cadence.h | 158 +++++-
>  include/linux/kernel.h                        |   1 +
>  13 files changed, 1093 insertions(+), 42 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
>  create mode 100644 Documentation/devicetree/bindings/pci/ti,j721e-pci-host.yaml
>  create mode 100644 drivers/pci/controller/cadence/pci-j721e.c
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
