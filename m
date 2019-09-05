Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD0DAA12C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 13:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jWYET1hxfB30Og4J0YNcZXj3wbVzKEPryPNT6bp3BCo=; b=EXrnz58/UWJl4Y
	0kKX2vala502xsls8Er+sHuxUiLwP4PlIL8fgw4ps0bfATQI3NFEeIGv29IpXLeWNGmHfCX2zvlSC
	EDarQABJYC+Kt2sjFEonBobobZrHaeeQhglgVXMYGCb+vGsLHJhbFZgjZ0Jlun9swTnr2edYM3rx3
	7vdNISh/0+nVqvkdcdCGXOf4yXzlG2xm5xpdyJdiXb0pNQqqN/22E6TaxulChqMNepWH0FgpH1WHF
	bfuDv5DV0ta1u6MFffIQ9h1CUVpa/g+g7UmYPqa8Nbnc5ar7sxGKIKKhMb6vc4d8+rHRpQ4u4jUpa
	1hy24I7iiKv7T5wOC/ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ppF-0002gq-JS; Thu, 05 Sep 2019 11:21:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pp1-0002fZ-1t
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 11:21:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2BA6E28;
 Thu,  5 Sep 2019 04:21:00 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E627A3F718;
 Thu,  5 Sep 2019 04:20:57 -0700 (PDT)
Date: Thu, 5 Sep 2019 12:20:55 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V4 0/6] PCI: tegra: Enable PCIe C5 controller of Tegra194
 in p2972-0000 platform
Message-ID: <20190905112055.GB16642@e121166-lin.cambridge.arm.com>
References: <20190905104553.2884-1-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905104553.2884-1-vidyas@nvidia.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_042103_143111_A7226574 
X-CRM114-Status: GOOD (  13.75  )
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
Cc: devicetree@vger.kernel.org, mperttunen@nvidia.com, mmaddireddy@nvidia.com,
 kthota@nvidia.com, gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org,
 kishon@ti.com, linux-tegra@vger.kernel.org, robh+dt@kernel.org,
 thierry.reding@gmail.com, linux-pci@vger.kernel.org, bhelgaas@google.com,
 andrew.murray@arm.com, digetx@gmail.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 04:15:47PM +0530, Vidya Sagar wrote:
> This patch series enables Tegra194's C5 controller which owns x16 slot in
> p2972-0000 platform. C5 controller's PERST# and CLKREQ# are not configured as
> output and bi-directional signals by default and hence they need to be
> configured explicitly. Also, x16 slot's 3.3V and 12V supplies are controlled
> through GPIOs and hence they need to be enabled through regulator framework.
> This patch series adds required infrastructural support to address both the
> aforementioned requirements.
> Testing done on p2972-0000 platform
> - Able to enumerate devices connected to x16 slot (owned by C5 controller)
> - Enumerated device's functionality verified
> - Suspend-Resume sequence is verified with device connected to x16 slot
> 
> V4:
> * Rebased (Patch-4/6 particularly) on top of Lorenzo's pci/tegra branch
> 
> V3:
> * Addressed some more review comments from Andrew Murray and Thierry Reding
> 
> V2:
> * Changed the order of patches in the series for easy merging
> * Addressed review comments from Thierry Reding and Andrew Murray
> 
> Vidya Sagar (6):
>   dt-bindings: PCI: tegra: Add sideband pins configuration entries
>   dt-bindings: PCI: tegra: Add PCIe slot supplies regulator entries
>   PCI: tegra: Add support to configure sideband pins
>   PCI: tegra: Add support to enable slot regulators
>   arm64: tegra: Add configuration for PCIe C5 sideband signals
>   arm64: tegra: Add PCIe slot supply information in p2972-0000 platform
> 
>  .../bindings/pci/nvidia,tegra194-pcie.txt     | 16 ++++
>  .../arm64/boot/dts/nvidia/tegra194-p2888.dtsi | 24 +++++
>  .../boot/dts/nvidia/tegra194-p2972-0000.dts   |  4 +-
>  arch/arm64/boot/dts/nvidia/tegra194.dtsi      | 38 +++++++-
>  drivers/pci/controller/dwc/pcie-tegra194.c    | 94 ++++++++++++++++++-
>  5 files changed, 172 insertions(+), 4 deletions(-)

Applied to pci/tegra for v5.4, thanks.

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
