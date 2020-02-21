Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A96A167D50
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 13:20:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XDVs8O5yPfRI5koNryHtPHqjUvIC3PR8+NZjc7Eij6A=; b=S8kBQjPLHesNLf
	5TcFzCvXKYy1p3M6F11EW92BoZE7ejGXCpxpuYBN9AXOKw0tTQMUFlvzh1RQ1arnMPPS0GJ4j9NjI
	0FAgiG1xUeQYfvIHnSR7fS98i2I48fjwNn//aQ4diVGufaWW6iQg6r/xSh4uzOtlOp8/rRYXTYCys
	d4BTSBQcdidHBl00suVoqLZ/4GcpqMvSW//nEGpGlQ3mit8XDnHPgnVMW1m3UsdASKFqs1Y4fdz4F
	fDc+hBC2U0CcsHnxSmtBysNeJ3zz9TcSE/cczmG5f76nhb+EcBe1weuDAyxyDvBMbPIDiwv3Oflox
	XqHkUjKC/DR9i/I7u0Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j57I2-0006iL-70; Fri, 21 Feb 2020 12:20:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j57Hl-0006h5-QC
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 12:20:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C9BBD30E;
 Fri, 21 Feb 2020 04:20:00 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7F5BA3F68F;
 Fri, 21 Feb 2020 04:19:58 -0800 (PST)
Date: Fri, 21 Feb 2020 12:19:56 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
Subject: Re: [PATCHv10 00/13] PCI: Recode Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
Message-ID: <20200221121956.GC12711@e121166-lin.cambridge.arm.com>
References: <20200213040644.45858-1-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213040644.45858-1-Zhiqiang.Hou@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_042001_964084_17B4E4AE 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, Xiaowei.Bao@nxp.com,
 m.karthikeyan@mobiveil.co.in, arnd@arndb.de, linux-pci@vger.kernel.org,
 l.subrahmanya@mobiveil.co.in, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, Minghuan.Lian@nxp.com,
 robh+dt@kernel.org, Mingkai.Hu@nxp.com, catalin.marinas@arm.com,
 bhelgaas@google.com, andrew.murray@arm.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 12:06:31PM +0800, Zhiqiang Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> This patch set is to recode the Mobiveil driver and add
> PCIe support for NXP Layerscape series SoCs integrated
> Mobiveil's PCIe Gen4 controller.
> 
> Hou Zhiqiang (13):
>   PCI: mobiveil: Introduce a new structure mobiveil_root_port
>   PCI: mobiveil: Move the host initialization into a function
>   PCI: mobiveil: Collect the interrupt related operations into a
>     function
>   PCI: mobiveil: Modularize the Mobiveil PCIe Host Bridge IP driver
>   PCI: mobiveil: Add callback function for interrupt initialization
>   PCI: mobiveil: Add callback function for link up check
>   PCI: mobiveil: Allow mobiveil_host_init() to be used to re-init host
>   PCI: mobiveil: Add 8-bit and 16-bit CSR register accessors
>   PCI: mobiveil: Add Header Type field check
>   dt-bindings: PCI: Add NXP Layerscape SoCs PCIe Gen4 controller
>   PCI: mobiveil: Add PCIe Gen4 RC driver for NXP Layerscape SoCs
>   arm64: dts: lx2160a: Add PCIe controller DT nodes
>   arm64: defconfig: Enable CONFIG_PCIE_LAYERSCAPE_GEN4
> 
>  .../bindings/pci/layerscape-pcie-gen4.txt     |  52 ++
>  MAINTAINERS                                   |  10 +-
>  .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 163 +++++
>  arch/arm64/configs/defconfig                  |   1 +
>  drivers/pci/controller/Kconfig                |  11 +-
>  drivers/pci/controller/Makefile               |   2 +-
>  drivers/pci/controller/mobiveil/Kconfig       |  33 +
>  drivers/pci/controller/mobiveil/Makefile      |   5 +
>  .../mobiveil/pcie-layerscape-gen4.c           | 267 +++++++++
>  .../pcie-mobiveil-host.c}                     | 564 ++++--------------
>  .../controller/mobiveil/pcie-mobiveil-plat.c  |  61 ++
>  .../pci/controller/mobiveil/pcie-mobiveil.c   | 230 +++++++
>  .../pci/controller/mobiveil/pcie-mobiveil.h   | 226 +++++++
>  13 files changed, 1170 insertions(+), 455 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt
>  create mode 100644 drivers/pci/controller/mobiveil/Kconfig
>  create mode 100644 drivers/pci/controller/mobiveil/Makefile
>  create mode 100644 drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c
>  rename drivers/pci/controller/{pcie-mobiveil.c => mobiveil/pcie-mobiveil-host.c} (54%)
>  create mode 100644 drivers/pci/controller/mobiveil/pcie-mobiveil-plat.c
>  create mode 100644 drivers/pci/controller/mobiveil/pcie-mobiveil.c
>  create mode 100644 drivers/pci/controller/mobiveil/pcie-mobiveil.h

I dropped the last two patches since they must be re-routed via arm-soc
(defconfig update and dts), I tweaked most of commit logs and applied
the series to pci/mobiveil, please check everything is in order.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
