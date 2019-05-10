Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CFD1A1CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 18:46:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8PEGO+VV5btnkiLhBbQavmsgSnKSgtI0sIZNNrhh+Fw=; b=FmrFomlOOYtM7y
	dNvE/rFJagSWEIZNHJPrKQNMVGkcigROOIh0TT+Fs0GvW6qnCQxma6/f8fSnf8OKU7YY+DLxwhGjN
	ve+eKVhwQPniRo4EMSsF1pb0Y197sKxUmhgzzvSQXq8qysUuIG8odegbS5kE8f0OLyOr+xORVWiSh
	iNCYeW3/noSHUQkbEQfDSr/+Hi2FjfljF+vjdGaq4EdWhkkp9pHA/wwXeih6HKvlyYYaBKXIEhgPO
	CUUNo4fHsbtjbRq04PWirugySMd0r6U33+CrnI2E5syOZmVonsoumcaTV7WaK37BUujZ7qJi1vwYk
	syXHEA76Njz1hjg4VE4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP8fH-00025N-7k; Fri, 10 May 2019 16:46:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP8fB-00024u-5m
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 16:46:26 +0000
Received: from localhost (50-81-62-123.client.mchsi.com [50.81.62.123])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 53FD621479;
 Fri, 10 May 2019 16:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557506784;
 bh=LEjaS1MAo+FVs84vgyW9ohJdElC+EdhY5JNBgJJ0kXc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=d5iGk90ST5ha9qiSiEKOuBLBE/5YfAGKZZqMDt3dtoEyUp2xOSPufHTzJvUhtgSuH
 bzfRXNuc3hmP81jpY554uu1MC5PG/LY4kYnGnlGLT4d0b3UEoK6V9TK/XUwJO+/rY9
 JrSIJXoLDzmEERceK0J4TLYrf8Ptwo0Wc96tETj0=
Date: Fri, 10 May 2019 11:46:23 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V5 03/16] PCI: Export pcie_bus_config symbol
Message-ID: <20190510164623.GI235064@google.com>
References: <20190424052004.6270-1-vidyas@nvidia.com>
 <20190424052004.6270-4-vidyas@nvidia.com>
 <20190503110732.GC32400@ulmo>
 <80616ff5-d7a5-84a4-a71b-569e340d128c@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <80616ff5-d7a5-84a4-a71b-569e340d128c@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_094625_252419_F16EF1E3 
X-CRM114-Status: GOOD (  27.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
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
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 Mikko Perttunen <mperttunen@nvidia.com>,
 Manikanta Maddireddy <mmaddireddy@nvidia.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
 Krishna Thota <kthota@nvidia.com>, Thierry Reding <thierry.reding@gmail.com>,
 "gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>,
 "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "sagar.tv@gmail.com" <sagar.tv@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vidya,

On Fri, May 10, 2019 at 11:51:24AM +0530, Vidya Sagar wrote:
> > -----Original Message-----
> > From: linux-pci-owner@vger.kernel.org <linux-pci-owner@vger.kernel.org> On
> > Behalf Of Thierry Reding
> > Sent: Friday, May 3, 2019 4:38 PM
> > To: Vidya Sagar <vidyas@nvidia.com>
> > On Wed, Apr 24, 2019 at 10:49:51AM +0530, Vidya Sagar wrote:
> > > Export pcie_bus_config to enable host controller drivers setting it to
> > > a specific configuration be able to build as loadable modules
> > >
> > > Signed-off-by: Vidya Sagar <vidyas@nvidia.com>

> > It doesn't look to me like this is something that host controller drivers are
> > supposed to change. This is set via the pci kernel command- line parameter,
> > meaning it's a way of tuning the system configuration.
> > Drivers should not be allowed to override this after the fact.
> > 
> > Why do we need to set this?
> Here is the reason I'm doing it.
> First things first, Tegra194 supports MPS up to 256 bytes.
> Assume there are two endpoints with MPS supported up to
> a) 128 bytes (Ex:- Realtek NIC with 8168 controller)
> b) 256 bytes (Ex:- Kingston NVMe drive)
> Now, leaving "pcie_bus_config" untouched in the driver sets it to
> PCIE_BUS_DEFAULT by default. With this setting, for both (a) and (b),
> MPS is set to 128, which means, even though Tegra194 supports 256 MPS, it is not
> set to 256 even in case of (b) thereby not using RP's 256 MPS feature.
> If I explicitly set pcie_bus_config=PCIE_BUS_PERFORMACE in the code, then 256 MPS is set when
> (b) is connected, but when (a) is connected, for root port MPS 256 is set and for
> endpoint MPS 128 is set, because of which root port tries to send packets with 256
> payload that breaks functionality of Realtek NIC card.
> The best option I've found out is that when I set 256 in PCI_EXP_DEVCTL of root port
> explicitly before link up and use pcie_bus_config=PCIE_BUS_SAFE, then, I get the best of both
> PCIE_BUS_DEFAULT and PCIE_BUS_PERFORMANCE i.e. with (a) connected, MPS is set to 128 in both RP
> and EP and with (b) connected, MPS is set to 256 in both RP and EP.
> 
> So, is it like, pcie_bus_config shouldn't be set to anything explicitly in the driver and depending on the
> platform and what is connected to root port, kernel parameter can be passed with appropriate setting?

Host controller drivers shouldn't change this unless there's some host
controller defect that means the generic code can't do the right
thing.  Even then, I'd prefer that the host controller driver merely
set a quirk bit that describes the defect, e.g., "mps_*_broken".  Then
the generic code could pay attention to that and we wouldn't have to
make "pcie_bus_config" a part of the ABI.

From your description, it sounds like there's nothing actually wrong
with the Tegra194 hardware, but the generic code isn't as smart about
setting MPS as it possibly could be.  My solution to that would be to
make the generic code smarter so everybody can benefit.

Bjorn

> > > diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c index
> > > f5ff01dc4b13..731f78508601 100644
> > > --- a/drivers/pci/pci.c
> > > +++ b/drivers/pci/pci.c
> > > @@ -94,6 +94,7 @@ unsigned long pci_hotplug_mem_size =
> > > DEFAULT_HOTPLUG_MEM_SIZE;  unsigned long pci_hotplug_bus_size =
> > > DEFAULT_HOTPLUG_BUS_SIZE;
> > >
> > >  enum pcie_bus_config_types pcie_bus_config = PCIE_BUS_DEFAULT;
> > > +EXPORT_SYMBOL_GPL(pcie_bus_config);
> > >
> > >  /*
> > >   * The default CLS is used if arch didn't set CLS explicitly and not
> > > --
> > > 2.17.1
> > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
