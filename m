Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AB925860
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 21:36:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TaN6gLWRv1HEqpM7BuX7KNTpYjkJ4INfL3U/tighpBo=; b=QVPGca5qen56mS
	HDLwb/7KqE5CNYsd3+T1YWCBNNuVJHTxSZUs/ku7HzneTEax42v33f8RyZKDpi7usj8yr2vYFE6CM
	BBPTQtnO6y+kteRzADEHpwS2749FbNnaxloiZbXYE6I7+luZxnbxe4Td5QQaXgSOFzWv76APAjqcJ
	5ZWnUntvdpuTxn/C624bnOH+bFvDSOWgfFKtKuyKJ/owbZlIndf1rtVvuIjszH17dvvp5SEshBZzR
	VbIgb395f1sYEcw3Xyb9M5hhejDAf/IBalzoryBGqgeeDdXlLW9WogZxjv0PdZvL8v3Qgk66VEkRZ
	KlNTtqRL6VeMyj9eAYpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTAYn-0000Oy-7n; Tue, 21 May 2019 19:36:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTAYf-0000OV-Sd
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 19:36:23 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BA0CB217D9;
 Tue, 21 May 2019 19:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558467381;
 bh=KIETrny8+uJ6mb/6sbywMXsqjLr/B13v3e2H5fLDq/Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xsAf94Br7UIrfKZQZlaeMGdzgOt2IN/9tfSepnhZ0KrezAUPzlKQ/O4r+xK/7dBYH
 luMzlO9OxVdclvvHY7utbK1jvz+7ovtu4aW5LS1rc3VTYJc9zEvrfQAuQDqx1tqDma
 pc60VB7NdUlB4TT4YKcs782g29IIsk8H6GaSeUA4=
Date: Tue, 21 May 2019 14:36:16 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V7 02/15] PCI: Disable MSI for Tegra194 root port
Message-ID: <20190521193616.GE57618@google.com>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-3-vidyas@nvidia.com>
 <20190521102729.GB29166@ulmo>
 <f63051b0-a220-125b-219e-25156d65ea6d@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f63051b0-a220-125b-219e-25156d65ea6d@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_123621_960696_31A6C300 
X-CRM114-Status: GOOD (  23.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, kishon@ti.com, kthota@nvidia.com,
 Thierry Reding <thierry.reding@gmail.com>, gustavo.pimentel@synopsys.com,
 jingoohan1@gmail.com, linux-tegra@vger.kernel.org, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 10:17:26PM +0530, Vidya Sagar wrote:
> On 5/21/2019 3:57 PM, Thierry Reding wrote:
> > On Fri, May 17, 2019 at 06:08:33PM +0530, Vidya Sagar wrote:
> > > Tegra194 rootports don't generate MSI interrupts for PME events and hence
> > > MSI needs to be disabled for them to avoid root ports service drivers
> > > registering their respective ISRs with MSI interrupt.

The service drivers (AER, hotplug, etc) don't know whether the
interrupt is INTx or MSI; they just register their ISRs with
pcie_device.irq.

The point of this patch is that the PCI core doesn't support devices
that use MSI and INTx at the same time, and since this device can't
generate MSI for PME, we have to use INTx for *all* its interrupts.

> > > Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> > > ---
> > > Changes since [v6]:
> > > * This is a new patch
> > > 
> > >   drivers/pci/quirks.c | 14 ++++++++++++++
> > >   1 file changed, 14 insertions(+)
> > > 
> > > diff --git a/drivers/pci/quirks.c b/drivers/pci/quirks.c
> > > index 0f16acc323c6..28f9a0380df5 100644
> > > --- a/drivers/pci/quirks.c
> > > +++ b/drivers/pci/quirks.c
> > > @@ -2592,6 +2592,20 @@ DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_NVIDIA,
> > >   			PCI_DEVICE_ID_NVIDIA_NVENET_15,
> > >   			nvenet_msi_disable);
> > > +/*
> > > + * Tegra194's PCIe root ports don't generate MSI interrupts for PME events
> > > + * instead legacy interrupts are generated. Hence, to avoid service drivers
> > > + * registering their respective ISRs for MSIs, need to disable MSI interrupts
> > > + * for root ports.
> > > + */
> > > +static void disable_tegra194_rp_msi(struct pci_dev *dev)
> > > +{
> > > +	dev->no_msi = 1;
> > > +}
> > > +DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_NVIDIA, 0x1ad0, disable_tegra194_rp_msi);
> > > +DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_NVIDIA, 0x1ad1, disable_tegra194_rp_msi);
> > > +DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_NVIDIA, 0x1ad2, disable_tegra194_rp_msi);
> > > +
> > 
> > Later functions in this file seem to use a more consistent naming
> > pattern, according to which the name for this would become:
> > 
> > 	pci_quirk_nvidia_tegra194_disable_rp_msi
> > 
> > Might be worth considering making this consistent.
> > 
> > This could also be moved to the DWC driver to restrict this to where it
> > is needed. In either case, this seems like a good solution, so:
> > 
> > Reviewed-by: Thierry Reding <treding@nvidia.com>
> > 
> Ok. I'll move it to DWC driver along with name change for the quirk API.

Is there any possibility this hardware would be used in an ACPI
system?  If so, the quirk should probably stay in drivers/pci/quirks.c
because the DWC driver would not be present.

Either way, please also add some PCIe spec references about this in
the changelog and a comment in the code about working around this
issue.  I think the MSI/MSI-X sections that prohibit a device from
using both INTx and MSI/MSI-X are probably the most pertinent.

The reason I want a comment about this is to discourage future
hardware from following this example because every device that *does*
follow this example requires a kernel update that would be otherwise
unnecessary.

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
