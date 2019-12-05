Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BB511483A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 21:39:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=5bRHaTITdxM3EWdUxxPVJITOwuXpzhs4nxbQFCPRvIw=; b=PGFtQQm1t+grub
	cT1XRlyeElciUgfisKHdOEjmuKoM4FeSH94omWcYTjD4sPnCgid/oo2LyUEqAx7peotjJ7yk+jl0S
	IqdQka7j+yf8IW9d5rZ1quJ4Ohfi2OIsdEPf4MxMTQSXpl5Ex688Ex8ViT75VVq2j9K+nY/ZScdPa
	YCTmsTvxidq2w4k1gzycOB0u+57Klmjn600oZkaRCZ1N5PuAgQD9kTFMmvl5ZEnIAF815YV7J0/tJ
	IrpNSYw9AbZ6F9Ag21BlDyC5ydrwA0CrJgfsXJeoy95/Co2csnrc3uzcFLPRsDG3mLfSLrXhAaMxE
	gtKQmSJbf48UjTgxAd9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icxtr-0005f0-59; Thu, 05 Dec 2019 20:38:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icxth-0005eW-5c; Thu, 05 Dec 2019 20:38:50 +0000
Received: from localhost (mobile-166-170-221-197.mycingular.net
 [166.170.221.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B455D205F4;
 Thu,  5 Dec 2019 20:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575578328;
 bh=K7c3qaYFnXWMMqmwVGrwX7rG4+uwWtUsCcODfBtRF1k=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=NWmiSx+ex1TjiKC4MaIx3xgvijveWrSbxbs+XjqnQh8NtXiBsDxOC54dxgdSCwY2Q
 JFbBLgr1/UwBKIqUKv7MLbUuUhoa33JyMTyHQS/JVBgESXzRhy4V3aJStQ6g6aSYgd
 BMEn5r9MAm2BdXlEKpf1Z9W0pYFSQT6+AX76sG20=
Date: Thu, 5 Dec 2019 14:38:45 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v4 8/8] linux/log2.h: Use roundup/dow_pow_two() on 64bit
 calculations
Message-ID: <20191205203845.GA243596@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203114743.1294-9-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_123849_259389_247C79D5 
X-CRM114-Status: GOOD (  19.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 FAKE_REPLY_C           No description available.
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, Eric Anholt <eric@anholt.net>,
 Hanjun Guo <guohanjun@huawei.com>, Frank Rowand <frowand.list@gmail.com>,
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-rdma@vger.kernel.org, maz@kernel.org, phil@raspberrypi.org,
 linux-acpi@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Len Brown <lenb@kernel.org>, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 mbrugger@suse.com, netdev@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 jeremy.linton@arm.com, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, Stefan Wahren <wahrenst@gmx.net>,
 james.quinlan@broadcom.com, Sudeep Holla <sudeep.holla@arm.com>,
 andrew.murray@arm.com, Robin Murphy <robin.murphy@arm.com>,
 "David S. Miller" <davem@davemloft.net>, Tariq Toukan <tariqt@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The subject contains a couple typos: it's missing "of" and it's
missing the "n" on "down".

On Tue, Dec 03, 2019 at 12:47:41PM +0100, Nicolas Saenz Julienne wrote:
> The function now is safe to use while expecting a 64bit value. Use it
> where relevant.

Please include the function names ("roundup_pow_of_two()",
"rounddown_pow_of_two()") in the changelog so it is self-contained and
doesn't depend on the subject.

> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

With the nits above and below addressed,

Acked-by: Bjorn Helgaas <bhelgaas@google.com>	# drivers/pci

> ---
>  drivers/acpi/arm64/iort.c                        | 2 +-
>  drivers/net/ethernet/mellanox/mlx4/en_clock.c    | 3 ++-
>  drivers/of/device.c                              | 3 ++-
>  drivers/pci/controller/cadence/pcie-cadence-ep.c | 3 ++-
>  drivers/pci/controller/cadence/pcie-cadence.c    | 3 ++-
>  drivers/pci/controller/pcie-brcmstb.c            | 3 ++-
>  drivers/pci/controller/pcie-rockchip-ep.c        | 5 +++--
>  kernel/dma/direct.c                              | 2 +-
>  8 files changed, 15 insertions(+), 9 deletions(-)

> --- a/drivers/pci/controller/cadence/pcie-cadence-ep.c
> +++ b/drivers/pci/controller/cadence/pcie-cadence-ep.c
> @@ -10,6 +10,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/sizes.h>
> +#include <linux/log2.h>
>  
>  #include "pcie-cadence.h"
>  
> @@ -65,7 +66,7 @@ static int cdns_pcie_ep_set_bar(struct pci_epc *epc, u8 fn,
>  	 * roundup_pow_of_two() returns an unsigned long, which is not suited
>  	 * for 64bit values.
>  	 */

Please remove the comment above since it no longer applies.

> -	sz = 1ULL << fls64(sz - 1);
> +	sz = roundup_pow_of_two(sz);
>  	aperture = ilog2(sz) - 7; /* 128B -> 0, 256B -> 1, 512B -> 2, ... */
>  
>  	if ((flags & PCI_BASE_ADDRESS_SPACE) == PCI_BASE_ADDRESS_SPACE_IO) {
> diff --git a/drivers/pci/controller/cadence/pcie-cadence.c b/drivers/pci/controller/cadence/pcie-cadence.c
> index cd795f6fc1e2..b1689f725b41 100644
> --- a/drivers/pci/controller/cadence/pcie-cadence.c
> +++ b/drivers/pci/controller/cadence/pcie-cadence.c
> @@ -4,6 +4,7 @@
>  // Author: Cyrille Pitchen <cyrille.pitchen@free-electrons.com>
>  
>  #include <linux/kernel.h>
> +#include <linux/log2.h>
>  
>  #include "pcie-cadence.h"
>  
> @@ -15,7 +16,7 @@ void cdns_pcie_set_outbound_region(struct cdns_pcie *pcie, u8 fn,
>  	 * roundup_pow_of_two() returns an unsigned long, which is not suited
>  	 * for 64bit values.
>  	 */

Same here.

> -	u64 sz = 1ULL << fls64(size - 1);
> +	u64 sz = roundup_pow_of_two(size);
>  	int nbits = ilog2(sz);
>  	u32 addr0, addr1, desc0, desc1;
>  
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -16,6 +16,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/pci-epf.h>
>  #include <linux/sizes.h>
> +#include <linux/log2.h>
>  
>  #include "pcie-rockchip.h"
>  
> @@ -70,7 +71,7 @@ static void rockchip_pcie_prog_ep_ob_atu(struct rockchip_pcie *rockchip, u8 fn,
>  					 u32 r, u32 type, u64 cpu_addr,
>  					 u64 pci_addr, size_t size)
>  {
> -	u64 sz = 1ULL << fls64(size - 1);
> +	u64 sz = roundup_pow_of_two(size);
>  	int num_pass_bits = ilog2(sz);
>  	u32 addr0, addr1, desc0, desc1;
>  	bool is_nor_msg = (type == AXI_WRAPPER_NOR_MSG);
> @@ -176,7 +177,7 @@ static int rockchip_pcie_ep_set_bar(struct pci_epc *epc, u8 fn,
>  	 * roundup_pow_of_two() returns an unsigned long, which is not suited
>  	 * for 64bit values.
>  	 */

And here.

> -	sz = 1ULL << fls64(sz - 1);
> +	sz = roundup_pow_of_two(sz);
>  	aperture = ilog2(sz) - 7; /* 128B -> 0, 256B -> 1, 512B -> 2, ... */
>  
>  	if ((flags & PCI_BASE_ADDRESS_SPACE) == PCI_BASE_ADDRESS_SPACE_IO) {
> diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
> index 6af7ae83c4ad..056886c4efec 100644
> --- a/kernel/dma/direct.c
> +++ b/kernel/dma/direct.c
> @@ -53,7 +53,7 @@ u64 dma_direct_get_required_mask(struct device *dev)
>  {
>  	u64 max_dma = phys_to_dma_direct(dev, (max_pfn - 1) << PAGE_SHIFT);
>  
> -	return (1ULL << (fls64(max_dma) - 1)) * 2 - 1;
> +	return rounddown_pow_of_two(max_dma) * 2 - 1;

Personally I would probably make this one a separate patch since it's
qualitatively different than the others and it would avoid the slight
awkwardness of the non-greppable "roundup/down_pow_of_two()"
construction in the commit subject.

But it's fine either way.

>  }
>  
>  static gfp_t __dma_direct_optimal_gfp_mask(struct device *dev, u64 dma_mask,
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
