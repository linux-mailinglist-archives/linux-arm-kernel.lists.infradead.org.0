Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4536EEBF9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 23:15:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1SOgrxarsNFHJT2v0FFRjaBwQGAmdqDFYkdwo344LiM=; b=rM/Q0eLW9HFD57
	VYg3sfEhqAu6o1+5NLv/5I/o/n6LwNxMTAVbHX3zZ2/2vrebwtOa3l8lr7bGMtO6a2MvalD5CBTsg
	NY+E3OGwv2RMsLariDM0hNCAJmZlu27UmU2asAK6SSsKASoq1i5uUBnbxu4SmoFAhB42WuMSD5p5Y
	tVQ6Mx8eINmswWsOXF/YJBJwxkIMjxEa6ITybBjUruC52dSq9qOm0+uCNxZQ91FnRlpip6IY6+TtB
	TGc7lZdpNXEJdBaEEvCA0+TQzDwwRTWBW/MXp/bFZxZ6TRf73Gi8OQeh/zbu7K/cEwlWU8x0WHtFm
	I09w6+Ee+yh02RmU3ecg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLDbz-0004c7-Kw; Mon, 29 Apr 2019 21:14:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLDbs-0004bi-KE
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 21:14:49 +0000
Received: from localhost (odyssey.drury.edu [64.22.249.253])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 95338215EA;
 Mon, 29 Apr 2019 21:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556572487;
 bh=XX0aTJglLKQg7dsZbY4eNn1vqzsBT3b0Sj+xLrzx0yk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YxHibykQtphUqTaLCrPFMVUnoPuwdK1iYO2VrtH44UQZDBpPNEIgM+EQM+ho0ajOH
 U7bQco5v19ubB1D43u2lfNBs8KvFl6/Tbwn+o5UIMte+7mdc6Euc/IXTI8nadeZc+Z
 9qxqwwsQIbuhid6oF/FqEvGGNc8TC6PpId9D37hU=
Date: Mon, 29 Apr 2019 16:14:46 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Heiner Kallweit <hkallweit1@gmail.com>
Subject: Re: [PATCH v2 0/9] PCI: add help pci_dev_id
Message-ID: <20190429211446.GA145057@google.com>
References: <2e1f9a57-6d08-d017-24da-3e6b97fa2449@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2e1f9a57-6d08-d017-24da-3e6b97fa2449@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_141448_697805_6388A4CB 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: David Airlie <airlied@linux.ie>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 "open list:AMD KFD" <dri-devel@lists.freedesktop.org>,
 Paul Mackerras <paulus@samba.org>, "moderated list:ARM/STM32 ARCHITECTURE"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Joerg Roedel <joro@8bytes.org>,
 "open list:RADEON and AMDGPU DRM DRIVERS" <amd-gfx@lists.freedesktop.org>,
 Jose Abreu <joabreu@synopsys.com>,
 "open list:PCI SUBSYSTEM" <linux-pci@vger.kernel.org>,
 Realtek linux nic maintainers <nic_swsd@realtek.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Alex Deucher <alexander.deucher@amd.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Benson Leung <bleung@chromium.org>,
 "moderated list:ARM/STM32 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Oded Gabbay <oded.gabbay@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "open list:8169 10/100/1000 GIGABIT ETHERNET DRIVER" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "open list:AMD IOMMU \(AMD-VI\)" <iommu@lists.linux-foundation.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 David Woodhouse <dwmw2@infradead.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 24, 2019 at 09:10:21PM +0200, Heiner Kallweit wrote:
> In several places in the kernel we find PCI_DEVID used like this:
> PCI_DEVID(dev->bus->number, dev->devfn) Therefore create a helper
> for it.
> 
> v2:
> - apply the change to all affected places in the kernel
> 
> Heiner Kallweit (9):
>   PCI: add helper pci_dev_id
>   PCI: use helper pci_dev_id
>   r8169: use new helper pci_dev_id
>   powerpc/powernv/npu: use helper pci_dev_id
>   drm/amdkfd: use helper pci_dev_id
>   iommu/amd: use helper pci_dev_id
>   iommu/vt-d: use helper pci_dev_id
>   stmmac: pci: use helper pci_dev_id
>   platform/chrome: chromeos_laptop: use helper pci_dev_id
> 
>  arch/powerpc/platforms/powernv/npu-dma.c         | 14 ++++++--------
>  drivers/gpu/drm/amd/amdkfd/kfd_topology.c        |  3 +--
>  drivers/iommu/amd_iommu.c                        |  2 +-
>  drivers/iommu/intel-iommu.c                      |  2 +-
>  drivers/iommu/intel_irq_remapping.c              |  2 +-
>  drivers/net/ethernet/realtek/r8169.c             |  3 +--
>  drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c |  2 +-
>  drivers/pci/msi.c                                |  6 +++---
>  drivers/pci/search.c                             | 10 +++-------
>  drivers/platform/chrome/chromeos_laptop.c        |  2 +-
>  include/linux/pci.h                              |  5 +++++
>  11 files changed, 24 insertions(+), 27 deletions(-)

Applied with acks/reviewed-by from Benson, Joerg, Christian, Alexey, and
David to pci/misc for v5.2, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
