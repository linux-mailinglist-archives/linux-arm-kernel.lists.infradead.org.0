Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2072F181631
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 11:52:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LqwrV0NKmio5En3aaG5F9Q2+6WRL3MAjTMcWs0vu+X8=; b=SwGoNQ/5mITQe1
	RCcNzqSJG1HuzBird5oRAKIam/994WGi79RZ6Oo4Heq6gpkBs+s0vEKqahCcSOZ12A+nE5kwFpzsd
	sUtIJoJob8vBAOGZ248EjWoaEQQ1xm7JA1kGnE1cBhi9UoLKNtoShNKCIljmYrxnx9UHj61a3sgWI
	l4R3za+XcGcqd3nZIHx0ATbUeibrq/SUnfR2jLD1RAkabmZ0PcxrMd+1ePTRA5SvitdeBi8Nlmmki
	5nRyKbOpa0fMQP9QcdFBH6M98w3/FeQT2HOiVC3HVF++SQFDqaKYHdzWFYVYWptmb2Ze9s2qQjFaw
	Aq3ECHjl/zSC+CWWA9fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jByyV-00008j-Mo; Wed, 11 Mar 2020 10:52:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jByyI-00007q-6r
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 10:52:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A2821FB;
 Wed, 11 Mar 2020 03:52:17 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1E8453F6CF;
 Wed, 11 Mar 2020 03:52:15 -0700 (PDT)
Date: Wed, 11 Mar 2020 10:52:00 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V5 0/5] Add support for PCIe endpoint mode in Tegra194
Message-ID: <20200311105141.GA30083@e121166-lin.cambridge.arm.com>
References: <20200303181052.16134-1-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303181052.16134-1-vidyas@nvidia.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_035218_298310_078C9B7D 
X-CRM114-Status: GOOD (  16.46  )
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-tegra@vger.kernel.org, robh+dt@kernel.org, thierry.reding@gmail.com,
 linux-pci@vger.kernel.org, bhelgaas@google.com, andrew.murray@arm.com,
 jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 03, 2020 at 11:40:47PM +0530, Vidya Sagar wrote:
> Tegra194 has three (C0, C4 & C5) dual mode PCIe controllers that can operate
> either in root port mode or in end point mode but only in one mode at a time.
> Platform P2972-0000 supports enabling endpoint mode for C5 controller. This
> patch series adds support for PCIe endpoint mode in both the driver as well as
> in DT.
> This patch series depends on the changes made for Synopsys DesignWare endpoint
> mode subsystem that are recently accepted.
> @ https://patchwork.kernel.org/project/linux-pci/list/?series=202211
> which in turn depends on the patch made by Kishon
> @ https://patchwork.kernel.org/patch/10975123/
> which is also under review.
> 
> V5:
> * Rebased patch-2 on top of Lorenzo's pci/endpoint branch
> * Removed unwanted header files inclusion in patch-5

Applied patches 1,2,5 to pci/endpoint for v5.7, please let me know
if something is missing.

Thanks,
Lorenzo

> V4:
> * Started using threaded irqs instead of kthreads
> 
> V3:
> * Re-ordered patches in the series to make the driver change as the last patch
> * Took care of Thierry's review comments
> 
> V2:
> * Addressed Thierry & Bjorn's review comments
> * Added EP mode specific binding documentation to already existing binding documentation file
> * Removed patch that enables GPIO controller nodes explicitly as they are enabled already
> 
> Vidya Sagar (5):
>   soc/tegra: bpmp: Update ABI header
>   dt-bindings: PCI: tegra: Add DT support for PCIe EP nodes in Tegra194
>   arm64: tegra: Add PCIe endpoint controllers nodes for Tegra194
>   arm64: tegra: Add support for PCIe endpoint mode in P2972-0000
>     platform
>   PCI: tegra: Add support for PCIe endpoint mode in Tegra194
> 
>  .../bindings/pci/nvidia,tegra194-pcie.txt     | 125 +++-
>  .../boot/dts/nvidia/tegra194-p2972-0000.dts   |  18 +
>  arch/arm64/boot/dts/nvidia/tegra194.dtsi      |  99 +++
>  drivers/pci/controller/dwc/Kconfig            |  30 +-
>  drivers/pci/controller/dwc/pcie-tegra194.c    | 679 +++++++++++++++++-
>  include/soc/tegra/bpmp-abi.h                  |  10 +-
>  6 files changed, 916 insertions(+), 45 deletions(-)
> 
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
