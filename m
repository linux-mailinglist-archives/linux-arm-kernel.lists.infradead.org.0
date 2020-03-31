Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D90198E38
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 10:23:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9KP0c6ykTwTl6VFcCqWmlPG6Z8JdqlErx9O9vsD66OU=; b=UJQO3P+gOqrKRa
	wgdxDpE0Zo6WllSse9b3+Y8gfI0MzOL8zRaYMchODNiq83ldDQyH5csanS11gtzXd719NLsYagdu0
	/Oekt8IHczbOnaGMlFDH/V6UsEy/+4czDFiSNCF1/rRM3M87oBYE3zup1mxkgFoKQTJx85TaZMsV9
	Ji8F60oHw7v51H6fxIUiHEuDFKFVA9UW/PFVODUZYrc0BPWj2+23bwREk8tBv1LwblbQlfJclk50u
	8gAbSACvBg8FZkVzmFNeG+5MSNcYymAwxDNFRzGlxcpANez8SosSvn+LDXDRgua4nhS7dsm2UNKkq
	wSVKw+mo0O/dkGbTk7Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJCBV-0003th-Fd; Tue, 31 Mar 2020 08:23:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJCBL-0003sZ-W9
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 08:23:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6A4D530E;
 Tue, 31 Mar 2020 01:23:33 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2C58F3F71E;
 Tue, 31 Mar 2020 01:23:31 -0700 (PDT)
Date: Tue, 31 Mar 2020 09:23:25 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: bjorn@helgaas.com
Subject: Re: [PATCH V5 5/5] PCI: tegra: Add support for PCIe endpoint mode in
 Tegra194
Message-ID: <20200331082325.GA32028@e121166-lin.cambridge.arm.com>
References: <20200330214721.GA128269@google.com>
 <bba72560-85cc-b59b-b0e8-bfc7c7408736@nvidia.com>
 <CABhMZUXub++CLTJ_E88Jwar5RvVfL+3aWOHqZf5XSVeyS8X=wA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABhMZUXub++CLTJ_E88Jwar5RvVfL+3aWOHqZf5XSVeyS8X=wA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_012336_122184_EB3ACF67 
X-CRM114-Status: GOOD (  25.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: kishon@ti.com, mmaddireddy@nvidia.com, devicetree@vger.kernel.org,
 kthota@nvidia.com, gustavo.pimentel@synopsys.com,
 LKML <linux-kernel@vger.kernel.org>, robh+dt@kernel.org, jonathanh@nvidia.com,
 thierry.reding@gmail.com, Bjorn Helgaas <helgaas@kernel.org>,
 linux-pci@vger.kernel.org, linux-tegra@vger.kernel.org,
 Andrew Murray <andrew.murray@arm.com>, Vidya Sagar <vidyas@nvidia.com>,
 ARM <linux-arm-kernel@lists.infradead.org>, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 30, 2020 at 10:00:57PM -0500, Bjorn Helgaas wrote:
> On Mon, Mar 30, 2020 at 9:55 PM Vidya Sagar <vidyas@nvidia.com> wrote:
> >
> >
> >
> > On 3/31/2020 3:17 AM, Bjorn Helgaas wrote:
> > > External email: Use caution opening links or attachments
> > >
> > >
> > > On Tue, Mar 03, 2020 at 11:40:52PM +0530, Vidya Sagar wrote:
> > >> Add support for the endpoint mode of Synopsys DesignWare core based
> > >> dual mode PCIe controllers present in Tegra194 SoC.
> > >>
> > >> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> > >> Acked-by: Thierry Reding <treding@nvidia.com>
> > >> ---
> > >> V5:
> > >> * Added Acked-by: Thierry Reding <treding@nvidia.com>
> > >> * Removed unwanted header file inclusion
> > >>
> > >> V4:
> > >> * Addressed Lorenzo's review comments
> > >> * Started using threaded irqs instead of kthreads
> > >>
> > >> V3:
> > >> * Addressed Thierry's review comments
> > >>
> > >> V2:
> > >> * Addressed Bjorn's review comments
> > >> * Made changes as part of addressing review comments for other patches
> > >>
> > >>   drivers/pci/controller/dwc/Kconfig         |  30 +-
> > >>   drivers/pci/controller/dwc/pcie-tegra194.c | 679 ++++++++++++++++++++-
> > >>   2 files changed, 691 insertions(+), 18 deletions(-)
> > >>
> > >> diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
> > >> index 0830dfcfa43a..169cde58dd92 100644
> > >> --- a/drivers/pci/controller/dwc/Kconfig
> > >> +++ b/drivers/pci/controller/dwc/Kconfig
> > >> @@ -248,14 +248,38 @@ config PCI_MESON
> > >>          implement the driver.
> > >>
> > >>   config PCIE_TEGRA194
> > >> -     tristate "NVIDIA Tegra194 (and later) PCIe controller"
> > >> +     tristate
> > >> +
> > >> +config PCIE_TEGRA194_HOST
> > >> +     tristate "NVIDIA Tegra194 (and later) PCIe controller - Host Mode"
> > >>        depends on ARCH_TEGRA_194_SOC || COMPILE_TEST
> > >>        depends on PCI_MSI_IRQ_DOMAIN
> > >>        select PCIE_DW_HOST
> > >>        select PHY_TEGRA194_P2U
> > >> +     select PCIE_TEGRA194
> > >> +     default y
> > >
> > > Sorry I missed this before, but why is this "default y"?  From
> > > Documentation/kbuild/kconfig-language.rst:
> > >
> > >    The default value deliberately defaults to 'n' in order to avoid
> > >    bloating the build. With few exceptions, new config options should
> > >    not change this. The intent is for "make oldconfig" to add as little
> > >    as possible to the config from release to release.
> > >
> > > I do see that several other things in other drivers/pci/ Kconfig files
> > > are also "default y", and we should probably change some of them.  But
> > > I don't want to add even more unless there's a good reason.
> > >
> > > I'm not looking for more reactions like these:
> > >
> > > https://lore.kernel.org/r/CAHk-=wiZ24JuVehJ5sEC0UG1Gk2nvB363wO02RRsR1oEht6R9Q@mail.gmail.com
> > > https://lore.kernel.org/r/CA+55aFzPpuHU1Nqd595SEQS=F+kXMzPs0Rba9FUgTodGxmXsgg@mail.gmail.com
> > >
> > > Can you please update this patch to either remove the "default y" or
> > > add the rationale for keeping it?
> > I'm fine with removing 'default y' line.
> > Should I send a patch only with this change?
> 
> I think it's probably just as easy for Lorenzo to delete that line on
> his branch.  If not, I'll cherry-pick the patches on that branch and
> do it locally.

Done, pushed out. It is a guideline that it is worth keeping in mind
while I review the code, sorry for missing it.

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
