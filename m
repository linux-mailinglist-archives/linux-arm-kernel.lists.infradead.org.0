Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA06B1022E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 12:19:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aNbVdvfUtNh2k470t/yK1psZwg5hA77p2fuyepbMUDI=; b=bdFj5ryqo4+SyR
	ek/Oi8FA9GDTM+0iae2EGTbihUlMcw/g38WyL0NTJaKhs25km+26kMzRu+iUerLvbrycdmRetueIA
	6WnMT53Jx61m7wzN0CScM5DNsBPJsrP9MYrZf+0PDt1liImxjDXZtVTAeIyIkDcN9rjCuzQjpowUs
	yzx6cfykM1Qru4/e25Mw8Mx0yZH2Nn07S1ws1YvPfJCSpkBtQmZNKPod40dzKgnKX3E3G36GlsPYg
	ofO5M/HROSlvCF+ZftKRrqeIwF57Gh6RkoDFRn5sNYVvViK52g/5KTSWpkmK+fW7hQOYfAbts1hd6
	lU2pXgM1FHi0mjqEPFwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX1XF-0002V6-S4; Tue, 19 Nov 2019 11:19:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX1X3-0002UD-DN; Tue, 19 Nov 2019 11:18:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 38842FEC;
 Tue, 19 Nov 2019 03:18:52 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6F07D3F703;
 Tue, 19 Nov 2019 03:18:51 -0800 (PST)
Date: Tue, 19 Nov 2019 11:18:49 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v2 0/6] Raspberry Pi 4 PCIe support
Message-ID: <20191119111848.GR43905@e119886-lin.cambridge.arm.com>
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112155926.16476-1-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_031853_496760_9252CC1F 
X-CRM114-Status: GOOD (  18.49  )
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com,
 linux-rdma@vger.kernel.org, maz@kernel.org, phil@raspberrypi.org,
 linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 linux-rockchip@lists.infradead.org, iommu@lists.linux-foundation.org,
 mbrugger@suse.com, bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 04:59:19PM +0100, Nicolas Saenz Julienne wrote:
> This series aims at providing support for Raspberry Pi 4's PCIe
> controller, which is also shared with the Broadcom STB family of
> devices.
> 
> There was a previous attempt to upstream this some years ago[1] but was
> blocked as most STB PCIe integrations have a sparse DMA mapping[2] which
> is something currently not supported by the kernel.  Luckily this is not
> the case for the Raspberry Pi 4.
> 
> Note that the driver code is to be based on top of Rob Herring's series
> simplifying inbound and outbound range parsing.
> 
> [1] https://patchwork.kernel.org/cover/10605933/
> [2] https://patchwork.kernel.org/patch/10605957/
> 

What happened to patch 3? I can't see it on the list or in patchwork?

Thanks,

Andrew Murray

> ---
> 
> Changes since v1:
>   - add generic rounddown/roundup_pow_two64() patch
>   - Add MAINTAINERS patch
>   - Fix Kconfig
>   - Cleanup probe, use up to date APIs, exit on MSI failure
>   - Get rid of linux,pci-domain and other unused constructs
>   - Use edge triggered setup for MSI
>   - Cleanup MSI implementation
>   - Fix multiple cosmetic issues
>   - Remove supend/resume code
> 
> Jim Quinlan (3):
>   dt-bindings: PCI: Add bindings for brcmstb's PCIe device
>   PCI: brcmstb: add Broadcom STB PCIe host controller driver
>   PCI: brcmstb: add MSI capability
> 
> Nicolas Saenz Julienne (3):
>   linux/log2.h: Add roundup/rounddown_pow_two64() family of functions
>   ARM: dts: bcm2711: Enable PCIe controller
>   MAINTAINERS: Add brcmstb PCIe controller
> 
>  .../bindings/pci/brcm,stb-pcie.yaml           |  110 ++
>  MAINTAINERS                                   |    4 +
>  arch/arm/boot/dts/bcm2711.dtsi                |   46 +
>  drivers/net/ethernet/mellanox/mlx4/en_clock.c |    3 +-
>  drivers/pci/controller/Kconfig                |    9 +
>  drivers/pci/controller/Makefile               |    1 +
>  drivers/pci/controller/pcie-brcmstb.c         | 1179 +++++++++++++++++
>  drivers/pci/controller/pcie-cadence-ep.c      |    7 +-
>  drivers/pci/controller/pcie-cadence.c         |    7 +-
>  drivers/pci/controller/pcie-rockchip-ep.c     |    9 +-
>  include/linux/log2.h                          |   52 +
>  kernel/dma/direct.c                           |    3 +-
>  12 files changed, 1412 insertions(+), 18 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
>  create mode 100644 drivers/pci/controller/pcie-brcmstb.c
> 
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
