Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DAF6AF7B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 21:01:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=giFIz+Yh197RY/pPEdVfHRnCyajBUUmf84xFEw2tZeA=; b=pysWR8Kkclp6Lw
	BVOD3bUxA/TYOApsp07IftKZheonFxxHSZ0vkajBn9IxlWtGfFMUFZtQGyjKAnmfvaWXtWwbe10ue
	Bi68Hlzs0mKjXeKfT4TnGiGU35fg8jN9cVDTlYkrXrGuy3b0q5s+NZNv+Xgi0plTD0PD55YFtRiPd
	2PAUCvbnfeCc9uxLyN5meWedZFqTWyhs+za7yKVvSDofcfZoWVrZFkXk2R66od71jgNrSkpa+W6aI
	t1FlrlVXoWC3mlOhlAorJ+Hy3diSDq3Jp9E/uGEcLOuz2WSYXwZODWiBLgBczc22eCuWZmq1PSlZv
	SGClCRHNL2L7/o5ckdeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnSh0-0006vg-7u; Tue, 16 Jul 2019 19:00:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnSgU-0006hz-Fk
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 19:00:20 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 205B620665;
 Tue, 16 Jul 2019 19:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563303617;
 bh=PcKLpA+pS1VyNuIrEf+5mScc/jl5xMwC/Ln9VrThiwM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ds6GCOFDWGbqaeNEXsfyh5tTrSYmUSx2y6p+eKtWUUz6ysDpx1PT+fCUkaFwglGSE
 t11NOTkWtJPELCIfTSIY/hr7rfCOG445Vc4M6SbnWLkvumfjge1koPnOC50gsqRC4K
 jj3+9KVPYqnbOCetP8iEXNID4IrEyoeh5AeMtseM=
Date: Tue, 16 Jul 2019 14:00:13 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH V13 12/12] PCI: tegra: Add Tegra194 PCIe support
Message-ID: <20190716190013.GB4470@google.com>
References: <20190710062212.1745-1-vidyas@nvidia.com>
 <20190710062212.1745-13-vidyas@nvidia.com>
 <20190711125433.GB26088@e121166-lin.cambridge.arm.com>
 <986d0b1a-666a-7b05-a9f3-e761518bdc92@nvidia.com>
 <20190712160754.GA24285@e121166-lin.cambridge.arm.com>
 <a5f8689b-1358-dd2d-4f54-7e68a6ab158b@nvidia.com>
 <20190716112225.GA24335@e121166-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716112225.GA24335@e121166-lin.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_120018_793666_61F1D571 
X-CRM114-Status: GOOD (  27.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, mperttunen@nvidia.com,
 mmaddireddy@nvidia.com, linux-pci@vger.kernel.org, catalin.marinas@arm.com,
 Vidya Sagar <vidyas@nvidia.com>, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, kthota@nvidia.com,
 robh+dt@kernel.org, thierry.reding@gmail.com, gustavo.pimentel@synopsys.com,
 jingoohan1@gmail.com, linux-tegra@vger.kernel.org, digetx@gmail.com,
 jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 12:22:25PM +0100, Lorenzo Pieralisi wrote:
> On Sat, Jul 13, 2019 at 12:34:34PM +0530, Vidya Sagar wrote:

> > > > > So if the link is not up we still go ahead and make probe
> > > > > succeed. What for ?
> > > > We may need root port to be available to support hot-plugging of
> > > > endpoint devices, so, we don't fail the probe.
> > > 
> > > We need it or we don't. If you do support hotplugging of endpoint
> > > devices point me at the code, otherwise link up failure means
> > > failure to probe.
> > Currently hotplugging of endpoint is not supported, but it is one of
> > the use cases that we may add support for in future. 
> 
> You should elaborate on this, I do not understand what you mean,
> either the root port(s) supports hotplug or it does not.
> 
> > But, why should we fail probe if link up doesn't happen? As such,
> > nothing went wrong in terms of root port initialization right?  I
> > checked other DWC based implementations and following are not failing
> > the probe pci-dra7xx.c, pcie-armada8k.c, pcie-artpec6.c, pcie-histb.c,
> > pcie-kirin.c, pcie-spear13xx.c, pci-exynos.c, pci-imx6.c,
> > pci-keystone.c, pci-layerscape.c
> > 
> > Although following do fail the probe if link is not up.  pcie-qcom.c,
> > pcie-uniphier.c, pci-meson.c
> > 
> > So, to me, it looks more like a choice we can make whether to fail the
> > probe or not and in this case we are choosing not to fail.
> 
> I disagree. I had an offline chat with Bjorn and whether link-up should
> fail the probe or not depends on whether the root port(s) is hotplug
> capable or not and this in turn relies on the root port "Slot
> implemented" bit in the PCI Express capabilities register.

There might be a little more we can talk about in this regard.  I did
bring up the "Slot implemented" bit, but after thinking about it more,
I don't really think the host bridge driver should be looking at that.
That's a PCIe concept, and it's really *downstream* from the host
bridge itself.  The host bridge is logically a device on the CPU bus,
not the PCI bus.

I'm starting to think that the host bridge driver probe should be
disconnected from question of whether the root port links are up.

Logically, the host bridge driver connects the CPU bus to a PCI root
bus, so it converts CPU-side accesses to PCI config, memory, or I/O
port transactions.  Given that, the PCI core can enumerate devices on
the root bus and downstream buses.

Devices on the root bus typically include Root Ports, but might also
include endpoints, Root Complex Integrated Endpoints, Root Complex
Event Collectors, etc.  I think in principle, we would want the host
bridge probe to succeed so we can use these devices even if none of
the Root Ports have a link.

If a Root Port is present, I think users will expect to see it in the
"lspci" output, even if its downstream link is not up.  That will
enable things like manually poking the Root Port via "setpci" for
debug.  And if it has a connector, the generic pciehp should be able
to handle hot-add events without any special help from the host bridge
driver.

On ACPI systems there is no concept of the host bridge driver probe
failing because of lack of link on a Root Port.  If a Root Port
doesn't have an operational link, we still keep the pci_root.c driver,
and we'll enumerate the Root Port itself.  So I tend to think DT
systems should behave the same way, i.e., the driver probe should
succeed unless it fails to allocate resources or something similar.  I
think this is analogous to a NIC or USB adapter driver, where the
probe succeeds even if there's no network cable or USB device
attached.

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
