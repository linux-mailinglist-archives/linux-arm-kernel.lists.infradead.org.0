Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3741177C9C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 18:01:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QI3GNHJokBRirCYpZKPQQ5qZDi48K5t3tZNOXjLXRCg=; b=dxwUtXkhJDbzPM
	irkvqwWwLwH6XCRk0IrxsrvyB9P/gFBXeftzYMeVHSQjZhRYIbhgpUilfhyckJXNMUlmXAaewMohv
	4/881qsB+OJdOylAF1jRL7bUUXCKoSPcmyrZFTHxKjW0wNadWtTHe+PoG3V+At5mwbnE+RfJV4TnT
	Iv5CzOh2VdPTKs3pYVTAbrI03xxMC75YFDDpjFpbXADEn86AvvzYwXRc9p9nx9muCu40pPR5SJYaJ
	6r/A7PDemV/gVp56H8CXOFdamzTGpZmclioiVP+N4md0jOGywUJb39ASUypQDt2Jci2CaN56tBOrs
	3qblK7YBrmaXDjP2dvpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9AvL-0008ID-S5; Tue, 03 Mar 2020 17:01:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9AvF-0008Hg-CI
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 17:01:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9C5CE2F;
 Tue,  3 Mar 2020 09:01:32 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9B8393F534;
 Tue,  3 Mar 2020 09:01:30 -0800 (PST)
Date: Tue, 3 Mar 2020 17:01:16 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V4 0/5] Add support for PCIe endpoint mode in Tegra194
Message-ID: <20200303170103.GA9641@e121166-lin.cambridge.arm.com>
References: <20200303105418.2840-1-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303105418.2840-1-vidyas@nvidia.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_090133_462825_732BD57A 
X-CRM114-Status: GOOD (  17.20  )
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

On Tue, Mar 03, 2020 at 04:24:13PM +0530, Vidya Sagar wrote:
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
> V4:
> * Started using threaded irqs instead of kthreads

Hi Vidya,

sorry for the bother, may I ask you to rebase the series (after
answering Thierry's query) on top of my pci/endpoint branch please ?

Please resend it and I will merge patches {1,2,5} then.

Thanks,
Lorenzo

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
>  drivers/pci/controller/dwc/pcie-tegra194.c    | 681 +++++++++++++++++-
>  include/soc/tegra/bpmp-abi.h                  |  10 +-
>  6 files changed, 918 insertions(+), 45 deletions(-)
> 
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
