Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D71199A09
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:43:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=hQcjaGgclu25MOulWogoVhNJ34VsaLBT9iv7T/gcqYM=; b=h5MsyAbIvHEF6h
	X+SkdSksWiQaM6thcldlqk2qI8xd0Rtht7QkSHv+pQKOFPcaKw9gwvyVu5Q03jk4sHdwj1AAfeIwX
	Wvd+9M+ZS+y6fjX+FoVKItvA0oAizyWnQJJJh6Q51gurRnLDa6cP/0Mtg+d73LBJbIYuYE+yVuY7L
	QpvMS7xtEZVBM4E208RWkIAvqCdAnatZrmL53Niq6iVOcXt9b/3woLHA/GAHn95GWZ0pPHcZAD68M
	ycGOT6zjKrkeMqvlvPQCLjiRgjBxpBIYQ2fI10nUFKPydX7IYgwdLr9yVijenX7IosrXrhKcEBrPL
	BQxFCgqPh+nWrQSnvAPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJ2f-0008Fy-T4; Tue, 31 Mar 2020 15:43:06 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJ1S-0007fu-LH
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 15:41:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:References;
 bh=susDA3MmSpFR7XGFwJVem4VEAE8V//KAzRKOF5sweBw=; b=qUQd/7s9Ga6A7mu0P5r2M79YLh
 efSKBPg+e8xDJthppzx1dYykvW4LOObyFobYiF6AsgwE2jcxeaLte6sD8CR+5p05XMUkQKG/yPKzD
 DaGfT00788o8PhjtGi90G/cAaqL6OfmfzKEgrN3UGMh9g3oPRIZNyle4gt9XlIhCwY2cdYz+EQeyd
 S4cRY39ps8Smyk2lqjEFe2RwFME08d+7HB+fkjFzy3sJ9ROX3UcvsBWVx7H6xk4LR1Pz2o2J2/x8u
 T9lUZhNKHek4u8RYl3SDCnlm4suLhNVcW9zWp6jJTOHFoJJD3KqCuBNmC5z5jzSUjBHenCdpMQ1ih
 /SDLuS1Q==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJImK-00055l-Ff
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:26:15 +0000
Received: from localhost (mobile-166-175-186-165.mycingular.net
 [166.175.186.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9CF4620786;
 Tue, 31 Mar 2020 15:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585668369;
 bh=5IJuX6AkKeckjXGkAnpY4cbNqHBPFLgHVhnLoOaMTdI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=S/oqF+T/HoROYfLFrY1ioWZF2kvgn+TqZ1BT4qOw6L5CrOyrHgE3MbMhmE8CGoJO5
 YdrpvTO4rp0NRKQr6DqkamIxS0DWA1Byijc8wOr2ELiD+yVjDYg49zvbg7lYW3qkSa
 EaYSi5CK3cgeHod56nIIqFUezoWvFggl0C/lpW1A=
Date: Tue, 31 Mar 2020 10:25:54 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH V5 5/5] PCI: tegra: Add support for PCIe endpoint mode in
 Tegra194
Message-ID: <20200331152554.GA188434@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331082325.GA32028@e121166-lin.cambridge.arm.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_162613_006787_254B2643 
X-CRM114-Status: GOOD (  37.24  )
X-Spam-Score: -5.8 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-5.8 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.5 FAKE_REPLY_C           No description available.
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kishon@ti.com, mmaddireddy@nvidia.com, devicetree@vger.kernel.org,
 kthota@nvidia.com, gustavo.pimentel@synopsys.com,
 LKML <linux-kernel@vger.kernel.org>, jonathanh@nvidia.com,
 linux-tegra@vger.kernel.org, robh+dt@kernel.org, thierry.reding@gmail.com,
 linux-pci@vger.kernel.org, bjorn@helgaas.com,
 Andrew Murray <andrew.murray@arm.com>, Vidya Sagar <vidyas@nvidia.com>,
 ARM <linux-arm-kernel@lists.infradead.org>, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 09:23:25AM +0100, Lorenzo Pieralisi wrote:
> On Mon, Mar 30, 2020 at 10:00:57PM -0500, Bjorn Helgaas wrote:
> > On Mon, Mar 30, 2020 at 9:55 PM Vidya Sagar <vidyas@nvidia.com> wrote:
> > > On 3/31/2020 3:17 AM, Bjorn Helgaas wrote:
> > > > External email: Use caution opening links or attachments
> > > >
> > > >
> > > > On Tue, Mar 03, 2020 at 11:40:52PM +0530, Vidya Sagar wrote:
> > > >> Add support for the endpoint mode of Synopsys DesignWare core based
> > > >> dual mode PCIe controllers present in Tegra194 SoC.
> > > >>
> > > >> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> > > >> Acked-by: Thierry Reding <treding@nvidia.com>
> > > >> ---
> > > >> V5:
> > > >> * Added Acked-by: Thierry Reding <treding@nvidia.com>
> > > >> * Removed unwanted header file inclusion
> > > >>
> > > >> V4:
> > > >> * Addressed Lorenzo's review comments
> > > >> * Started using threaded irqs instead of kthreads
> > > >>
> > > >> V3:
> > > >> * Addressed Thierry's review comments
> > > >>
> > > >> V2:
> > > >> * Addressed Bjorn's review comments
> > > >> * Made changes as part of addressing review comments for other patches
> > > >>
> > > >>   drivers/pci/controller/dwc/Kconfig         |  30 +-
> > > >>   drivers/pci/controller/dwc/pcie-tegra194.c | 679 ++++++++++++++++++++-
> > > >>   2 files changed, 691 insertions(+), 18 deletions(-)
> > > >>
> > > >> diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
> > > >> index 0830dfcfa43a..169cde58dd92 100644
> > > >> --- a/drivers/pci/controller/dwc/Kconfig
> > > >> +++ b/drivers/pci/controller/dwc/Kconfig
> > > >> @@ -248,14 +248,38 @@ config PCI_MESON
> > > >>          implement the driver.
> > > >>
> > > >>   config PCIE_TEGRA194
> > > >> -     tristate "NVIDIA Tegra194 (and later) PCIe controller"
> > > >> +     tristate
> > > >> +
> > > >> +config PCIE_TEGRA194_HOST
> > > >> +     tristate "NVIDIA Tegra194 (and later) PCIe controller - Host Mode"
> > > >>        depends on ARCH_TEGRA_194_SOC || COMPILE_TEST
> > > >>        depends on PCI_MSI_IRQ_DOMAIN
> > > >>        select PCIE_DW_HOST
> > > >>        select PHY_TEGRA194_P2U
> > > >> +     select PCIE_TEGRA194
> > > >> +     default y
> > > >
> > > > Sorry I missed this before, but why is this "default y"?  From
> > > > Documentation/kbuild/kconfig-language.rst:
> > > >
> > > >    The default value deliberately defaults to 'n' in order to avoid
> > > >    bloating the build. With few exceptions, new config options should
> > > >    not change this. The intent is for "make oldconfig" to add as little
> > > >    as possible to the config from release to release.
> > > >
> > > > I do see that several other things in other drivers/pci/ Kconfig files
> > > > are also "default y", and we should probably change some of them.  But
> > > > I don't want to add even more unless there's a good reason.
> > > >
> > > > I'm not looking for more reactions like these:
> > > >
> > > > https://lore.kernel.org/r/CAHk-=wiZ24JuVehJ5sEC0UG1Gk2nvB363wO02RRsR1oEht6R9Q@mail.gmail.com
> > > > https://lore.kernel.org/r/CA+55aFzPpuHU1Nqd595SEQS=F+kXMzPs0Rba9FUgTodGxmXsgg@mail.gmail.com
> > > >
> > > > Can you please update this patch to either remove the "default y" or
> > > > add the rationale for keeping it?
> > > I'm fine with removing 'default y' line.
> > > Should I send a patch only with this change?
> > 
> > I think it's probably just as easy for Lorenzo to delete that line on
> > his branch.  If not, I'll cherry-pick the patches on that branch and
> > do it locally.
> 
> Done, pushed out. It is a guideline that it is worth keeping in mind
> while I review the code, sorry for missing it.

Got it, thanks!  No worries, easy to fix.

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
