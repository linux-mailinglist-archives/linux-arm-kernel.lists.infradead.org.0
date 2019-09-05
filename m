Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F03A9E7F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 11:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wihtJe2TYjbar7865frwJmWTgUhCKbNbAvEfDGwf7Io=; b=O0W5uBSJ1UywE3
	0oL+wb+Ih/2P6Pl391q2wwuNSOnmAkjubMAf42JlK+x41K3DtoQKoqshhwB5WxFyn4z3xGBcnfpAL
	nmfJLBNdsWWtoKU7zKZiBSqlRl6obOyZY9ae0kg1bETFoVkri+XVyPVTE/+TUj2NMqbaxMBu9sYLS
	AOHIZQazGU77OA3+bOD5dX8bghPzKb4B9huIwSk+Jt7V8GMUGNWl/87If37H9QopfxvefRwp5PBgc
	oYAugKGWPayE9E8JdK+UrBvxus37G0uae4Tqmjr1GYQY7KYJjO9LFshrEKhwHYIvkiXHgdfkG8hHG
	euqnMJs5C8GMGPSY0haw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5oAq-0004tY-Nr; Thu, 05 Sep 2019 09:35:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5oAI-0003F3-Ez
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 09:34:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 366941576;
 Thu,  5 Sep 2019 02:34:51 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F0E9E3F67D;
 Thu,  5 Sep 2019 02:34:48 -0700 (PDT)
Date: Thu, 5 Sep 2019 10:34:44 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V3 0/6] PCI: tegra: Enable PCIe C5 controller of Tegra194
 in p2972-0000 platform
Message-ID: <20190905093444.GA16642@e121166-lin.cambridge.arm.com>
References: <20190828172850.19871-1-vidyas@nvidia.com>
 <7751a77d-5812-49b7-0c6b-00e6740e209b@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7751a77d-5812-49b7-0c6b-00e6740e209b@nvidia.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_023454_659125_3FBFE272 
X-CRM114-Status: GOOD (  16.90  )
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

On Thu, Sep 05, 2019 at 01:44:46PM +0530, Vidya Sagar wrote:
> Hi Lorenzo / Bjorn,
> Can you please review this series?
> I have Reviewed-by and Acked-by from Rob, Thierry and Andrew already.

Rebase it on top of my pci/tegra branch (it does not apply),
resend it and I will merge it.

Thanks,
Lorenzo

> Thanks,
> Vidya Sagar
> 
> On 8/28/2019 10:58 PM, Vidya Sagar wrote:
> > This patch series enables Tegra194's C5 controller which owns x16 slot in
> > p2972-0000 platform. C5 controller's PERST# and CLKREQ# are not configured as
> > output and bi-directional signals by default and hence they need to be
> > configured explicitly. Also, x16 slot's 3.3V and 12V supplies are controlled
> > through GPIOs and hence they need to be enabled through regulator framework.
> > This patch series adds required infrastructural support to address both the
> > aforementioned requirements.
> > Testing done on p2972-0000 platform
> > - Able to enumerate devices connected to x16 slot (owned by C5 controller)
> > - Enumerated device's functionality verified
> > - Suspend-Resume sequence is verified with device connected to x16 slot
> > 
> > V3:
> > * Addressed some more review comments from Andrew Murray and Thierry Reding
> > 
> > V2:
> > * Changed the order of patches in the series for easy merging
> > * Addressed review comments from Thierry Reding and Andrew Murray
> > 
> > Vidya Sagar (6):
> >    dt-bindings: PCI: tegra: Add sideband pins configuration entries
> >    dt-bindings: PCI: tegra: Add PCIe slot supplies regulator entries
> >    PCI: tegra: Add support to configure sideband pins
> >    PCI: tegra: Add support to enable slot regulators
> >    arm64: tegra: Add configuration for PCIe C5 sideband signals
> >    arm64: tegra: Add PCIe slot supply information in p2972-0000 platform
> > 
> >   .../bindings/pci/nvidia,tegra194-pcie.txt     | 16 ++++
> >   .../arm64/boot/dts/nvidia/tegra194-p2888.dtsi | 24 +++++
> >   .../boot/dts/nvidia/tegra194-p2972-0000.dts   |  4 +-
> >   arch/arm64/boot/dts/nvidia/tegra194.dtsi      | 38 +++++++-
> >   drivers/pci/controller/dwc/pcie-tegra194.c    | 94 ++++++++++++++++++-
> >   5 files changed, 172 insertions(+), 4 deletions(-)
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
