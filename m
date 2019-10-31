Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C4CEADFB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 11:57:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dZq9kRNhjynJI+W8tguP9hsMJP4tfkrIWr0/Oq0xh7s=; b=DPSBJWjh4CnuE0
	Zfffsdq90B9vRxIYMRqGy8dqwJJbjEirQ+5CBoY/Hp0yvh4SJwxnjBimt0Mdwtf5qrc8WDK2dwAl1
	aAuuNAY5NEU1Yfy6pjL2I1W+7JrZIF5DLJ/3aX4qO7yU5LdqbqmZV1TDUGVpYLISkpxkPjrDORMSj
	O2RxbyLM3Ke5W7xJl2oP03VPobYwIGunPvxy4KqMYzvmiASMfvFmgKo+UkSa9B2aEXIINsRABuZGf
	aFgWdP7UmXlKe/Jm662j+7/WqsYi4Mtth2vws2tAPJjDzKGMdd+jiEyMpKggV+Ow2mB6muj12yUNJ
	mHoS9bOjO9vfKf2pqw1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ88l-0001g1-TY; Thu, 31 Oct 2019 10:57:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ88c-0001fX-Kf; Thu, 31 Oct 2019 10:57:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A76E446A;
 Thu, 31 Oct 2019 03:57:09 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1AB5F3F719;
 Thu, 31 Oct 2019 03:57:05 -0700 (PDT)
Date: Thu, 31 Oct 2019 10:57:01 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 00/25] PCI host resource consolidation
Message-ID: <20191031105701.GA26080@e121166-lin.cambridge.arm.com>
References: <20191028163256.8004-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028163256.8004-1-robh@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_035710_765494_E7932450 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Ryder Lee <ryder.lee@mediatek.com>, Michal Simek <michal.simek@xilinx.com>,
 Christoph Hellwig <hch@infradead.org>, linux-rockchip@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, Shawn Lin <shawn.lin@rock-chips.com>,
 Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Simon Horman <horms@verge.net.au>, linux-mediatek@lists.infradead.org,
 Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org,
 linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 11:32:31AM -0500, Rob Herring wrote:
> This started with just dma-ranges parsing consolidation, but has expanded
> to converting all host drivers to use pci_parse_request_of_pci_ranges()
> rather than devm_of_pci_get_host_bridge_resources(). This series moves
> the DT 'dma-ranges' parsing into common helpers utilizing a resource list.
> There's no (intended) functional change in this series though I'm also
> working on a separate series now in dt/next to improve the handling of
> 'dma-ranges' and dma masks.
> 
> The last patch may need to wait if there's any new users of
> devm_of_pci_get_host_bridge_resources.

I have applied it, along with the rest of the series, with v4 for:

PCI: of: Add inbound resource parsing to helpers

branch pci/mmio-dma-ranges, please let me know if there is something
I have missed.

Thanks,
Lorenzo

> Only versatile has been tested (on QEMU). The rest is compiled only. A git
> branch is here[1].
> 
> v3:
> - Fix >80 char lines
> - Rename resource_list_get_entry_of_type to resource_list_first_type
> 
> Rob
> 
> [1] git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git pci-ranges-cleanup-v3
> 
> 
> Rob Herring (25):
>   resource: Add a resource_list_first_type helper
>   PCI: Export pci_parse_request_of_pci_ranges()
>   PCI: aardvark: Use pci_parse_request_of_pci_ranges()
>   PCI: altera: Use pci_parse_request_of_pci_ranges()
>   PCI: dwc: Use pci_parse_request_of_pci_ranges()
>   PCI: faraday: Use pci_parse_request_of_pci_ranges()
>   PCI: iproc: Use pci_parse_request_of_pci_ranges()
>   PCI: mediatek: Use pci_parse_request_of_pci_ranges()
>   PCI: mobiveil: Use pci_parse_request_of_pci_ranges()
>   PCI: rockchip: Use pci_parse_request_of_pci_ranges()
>   PCI: rockchip: Drop storing driver private outbound resource data
>   PCI: v3-semi: Use pci_parse_request_of_pci_ranges()
>   PCI: xgene: Use pci_parse_request_of_pci_ranges()
>   PCI: xilinx: Use pci_parse_request_of_pci_ranges()
>   PCI: xilinx-nwl: Use pci_parse_request_of_pci_ranges()
>   PCI: versatile: Use pci_parse_request_of_pci_ranges()
>   PCI: versatile: Remove usage of PHYS_OFFSET
>   PCI: versatile: Enable COMPILE_TEST
>   PCI: of: Add inbound resource parsing to helpers
>   PCI: ftpci100: Use inbound resources for setup
>   PCI: v3-semi: Use inbound resources for setup
>   PCI: xgene: Use inbound resources for setup
>   PCI: iproc: Use inbound resources for setup
>   PCI: rcar: Use inbound resources for setup
>   PCI: Make devm_of_pci_get_host_bridge_resources() static
> 
>  drivers/pci/controller/Kconfig                |  2 +-
>  .../pci/controller/dwc/pcie-designware-host.c | 29 ++----
>  drivers/pci/controller/pci-aardvark.c         | 60 +------------
>  drivers/pci/controller/pci-ftpci100.c         | 79 +++++-----------
>  drivers/pci/controller/pci-host-common.c      |  2 +-
>  drivers/pci/controller/pci-v3-semi.c          | 74 +++++----------
>  drivers/pci/controller/pci-versatile.c        | 71 ++++-----------
>  drivers/pci/controller/pci-xgene.c            | 73 +++++----------
>  drivers/pci/controller/pcie-altera.c          | 41 +--------
>  drivers/pci/controller/pcie-cadence-host.c    |  2 +-
>  drivers/pci/controller/pcie-iproc-platform.c  |  9 +-
>  drivers/pci/controller/pcie-iproc.c           | 82 ++++-------------
>  drivers/pci/controller/pcie-mediatek.c        | 43 +++------
>  drivers/pci/controller/pcie-mobiveil.c        | 27 ++----
>  drivers/pci/controller/pcie-rcar.c            | 48 ++++------
>  drivers/pci/controller/pcie-rockchip-host.c   | 89 +++++++------------
>  drivers/pci/controller/pcie-rockchip.h        |  5 --
>  drivers/pci/controller/pcie-xilinx-nwl.c      | 21 ++---
>  drivers/pci/controller/pcie-xilinx.c          | 18 +---
>  drivers/pci/of.c                              | 51 +++++++++--
>  drivers/pci/pci.h                             | 13 ---
>  include/linux/pci.h                           |  9 +-
>  include/linux/resource_ext.h                  | 12 +++
>  23 files changed, 261 insertions(+), 599 deletions(-)
> 
> --
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
