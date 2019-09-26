Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 208C5BEDD8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 10:51:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=porKnfNVJakXg+Yf07b1eTCh77/CnU4Ia65Ihr4t/2g=; b=rUZAtVXfQln+Hi
	XjNI/eKZuWYucWvXnGn5HWrCUaFq4mxJCRAtR77n4MvT8HEVONdTUFn2+i0HVijIqcRFyZzYZb7fn
	yDGkG5ihRR4Qcnv6tWRRwxWY9L4Dgf8g/Zid3MS++Kt1s/uOhv96hO9WPvC03DDkyYL/KRSZAY5HP
	lW2XTtiVSYjyubO2QXycieMFi81PWX6Qm/Ftq4afCEcRf7QZFBLARG0wCoo7KwXB2giT7HyMaKeiq
	HmyDQAh6ZF8ZnRAVQf35RzMY+4QYu3fZ10IsSlak0hysOEAIv3Cppge6+BgG7uNKiQma3FgJH5d8M
	NvFBgR16kUH50tWkzisA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDPUu-0001W0-Qo; Thu, 26 Sep 2019 08:51:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDPSQ-0001Mk-OZ; Thu, 26 Sep 2019 08:49:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2D1901000;
 Thu, 26 Sep 2019 01:49:02 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 785163F67D;
 Thu, 26 Sep 2019 01:49:01 -0700 (PDT)
Date: Thu, 26 Sep 2019 09:49:00 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 00/11] PCI dma-ranges parsing consolidation
Message-ID: <20190926084859.GB9720@e119886-lin.cambridge.arm.com>
References: <20190924214630.12817-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924214630.12817-1-robh@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_014904_685560_D39186C9 
X-CRM114-Status: GOOD (  17.88  )
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
 Shawn Lin <shawn.lin@rock-chips.com>, Ryder Lee <ryder.lee@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-rockchip@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Simon Horman <horms@verge.net.au>,
 linux-mediatek@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>, rfi@lists.rocketboards.org,
 linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Jingoo Han <jingoohan1@gmail.com>, Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 04:46:19PM -0500, Rob Herring wrote:
> This series moves the DT 'dma-ranges' parsing into common helpers
> utilizing a resource list. In the process of doing this, I noticed
> several cases where pci_parse_request_of_pci_ranges() could be used so
> I converted those drivers first. The last 5 patches make the actual
> change to use the common 'dma_ranges' resource list. There's no
> (intended) functional change in this series though I'm also working on
> a separate series to improve the handling of 'dma-ranges' and dma
> masks.
> 
> pci-rcar-gen2 is the only remaining driver doing its own dma-ranges
> handling as it is still using the old ARM PCI functions. Looks like it
> is the last one (in drivers/pci/).

It also seems that pcie-tango is using of_pci_dma_range_parser_init
and so parsing dma-ranges. Though it's using the dma_ranges for a
slightly different purpose.

Thanks,

Andrew Murray

> 
> Compile tested only.
> 
> Rob
> 
> Rob Herring (11):
>   PCI: aardvark: Use pci_parse_request_of_pci_ranges()
>   PCI: altera: Use pci_parse_request_of_pci_ranges()
>   PCI: mediatek: Use pci_parse_request_of_pci_ranges()
>   PCI: versatile: Enable COMPILE_TEST
>   PCI: versatile: Use pci_parse_request_of_pci_ranges()
>   PCI: of: Add inbound resource parsing to helpers
>   PCI: ftpci100: Use inbound resources for setup
>   PCI: v3-semi: Use inbound resources for setup
>   PCI: xgene: Use inbound resources for setup
>   PCI: iproc: Use inbound resources for setup
>   PCI: rcar: Use inbound resources for setup
> 
>  drivers/pci/controller/Kconfig                |  2 +-
>  .../pci/controller/dwc/pcie-designware-host.c |  3 +-
>  drivers/pci/controller/pci-aardvark.c         | 58 ++---------------
>  drivers/pci/controller/pci-ftpci100.c         | 29 ++++-----
>  drivers/pci/controller/pci-host-common.c      |  2 +-
>  drivers/pci/controller/pci-v3-semi.c          | 40 +++++-------
>  drivers/pci/controller/pci-versatile.c        | 62 ++++--------------
>  drivers/pci/controller/pci-xgene.c            | 33 ++++------
>  drivers/pci/controller/pcie-altera.c          | 38 +----------
>  drivers/pci/controller/pcie-cadence-host.c    |  2 +-
>  drivers/pci/controller/pcie-iproc-platform.c  |  1 +
>  drivers/pci/controller/pcie-iproc.c           | 63 +++----------------
>  drivers/pci/controller/pcie-mediatek.c        | 47 +++++---------
>  drivers/pci/controller/pcie-mobiveil.c        |  4 +-
>  drivers/pci/controller/pcie-rcar.c            | 48 ++++++--------
>  drivers/pci/controller/pcie-rockchip-host.c   |  3 +-
>  drivers/pci/controller/pcie-xilinx-nwl.c      |  2 +-
>  drivers/pci/controller/pcie-xilinx.c          |  2 +-
>  drivers/pci/of.c                              | 44 ++++++++++++-
>  drivers/pci/pci.h                             |  8 ++-
>  include/linux/pci.h                           |  2 +
>  21 files changed, 162 insertions(+), 331 deletions(-)
> 
> --
> 2.20.1
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
