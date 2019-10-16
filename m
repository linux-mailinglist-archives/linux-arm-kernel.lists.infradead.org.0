Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6D2D8C5C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 11:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y355WkfgaXVfL1TJ189+HFWPAb7KOul/Ydf+5GOlqsA=; b=c2IO8IzTXggFrk
	edcLT2uFzLus8ZChTz8OCH0nuRZ9Yeu7RU2RSh6F1QSLQZIW/74OBn4Ii52zsN6yhCfAgWMhnpEWh
	A0QZpNtClWwykvGjWY7cHD9kCWS8cLMsf8rirRq2PbXk8BaiDruxVuPwvnFdFsNApddYAlmWDU12r
	wR+zCJd7aTEuaYS9hj+e3ITrQP496iiktt2tz/5aTK0zx3RhEAF7x0xP/zRiYIeZInQVGE2LTMU1d
	p+7wAE9XzI/FnFizkR/HDc1u/CHMLWG1C8qE3YYjaHvaVcC56lqpRPvEKIfA/jR86IuvDsas/XQlU
	qjpnIuMb5jGjnQKDfNHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKfQ6-0008N1-Pi; Wed, 16 Oct 2019 09:16:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKfPk-0008Kd-PC
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 09:16:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 36DE5142F;
 Wed, 16 Oct 2019 02:16:16 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 357283F6C4;
 Wed, 16 Oct 2019 02:16:14 -0700 (PDT)
Date: Wed, 16 Oct 2019 10:16:07 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2 0/6] PAXB INTx support with proper model
Message-ID: <20191016091607.GA22848@e121166-lin.cambridge.arm.com>
References: <1566982488-9673-1-git-send-email-srinath.mannam@broadcom.com>
 <107116f2-a5ff-c545-1864-eb5885c4c60e@gmail.com>
 <88449493-4a32-1eda-434d-317b149173eb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <88449493-4a32-1eda-434d-317b149173eb@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_021616_859437_AB02C97A 
X-CRM114-Status: GOOD (  20.73  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Andy Shevchenko <andy.shevchenko@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Srinath Mannam <srinath.mannam@broadcom.com>,
 Bjorn Helgaas <bhelgaas@google.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 10:28:24AM -0700, Florian Fainelli wrote:
> On 9/4/19 10:16 AM, Florian Fainelli wrote:
> > On 8/28/19 1:54 AM, Srinath Mannam wrote:
> >> This patch series adds PCIe legacy interrupt (INTx) support to the iProc
> >> PCIe driver by modeling it with its own IRQ domain. All 4 interrupts INTA,
> >> INTB, INTC, INTD share the same interrupt line connected to the GIC
> >> in the system. This is now modeled by using its own IRQ domain.
> >>
> >> Also update all relevant devicetree files to adapt to the new model.
> >>
> >> This patch set is based on Linux-5.2-rc4.
> >>
> >> Changes from v1:
> >>   - Addressed Rob, Lorenzo, Arnd's comments
> >>     - Used child node for interrupt controller.
> >>   - Addressed Andy Shevchenko's comments
> >>     - Replaced while loop with do-while.
> > 
> > Lorenzo, Bjorn, if you are good with the binding and PCI host driver
> > changes, you can take patches 1-2 through your tree, and I will queue up
> > the others through the Broadcom ARM SoC pull requests. If not, please
> > feel free to add a:
> > 
> > Acked-by: Florian Fainelli <f.fainelli@gmail.com>
> 
> I am starting to queue Device Tree patches for 5.5 and I need to know
> whether I should be picking up patches 2 through 6, or if you are going
> to do this, thank you.

I am going to do this but I have comments on the patches they will
have to be updated anyway.

Thanks and apologies for the delay.

Lorenzo

> >> Ray Jui (6):
> >>   dt-bindings: pci: Update iProc PCI binding for INTx support
> >>   PCI: iproc: Add INTx support with better modeling
> >>   arm: dts: Change PCIe INTx mapping for Cygnus
> >>   arm: dts: Change PCIe INTx mapping for NSP
> >>   arm: dts: Change PCIe INTx mapping for HR2
> >>   arm64: dts: Change PCIe INTx mapping for NS2
> >>
> >>  .../devicetree/bindings/pci/brcm,iproc-pcie.txt    |  48 ++++++++--
> >>  arch/arm/boot/dts/bcm-cygnus.dtsi                  |  30 ++++++-
> >>  arch/arm/boot/dts/bcm-hr2.dtsi                     |  30 ++++++-
> >>  arch/arm/boot/dts/bcm-nsp.dtsi                     |  45 ++++++++--
> >>  arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi   |  28 +++++-
> >>  drivers/pci/controller/pcie-iproc.c                | 100 ++++++++++++++++++++-
> >>  drivers/pci/controller/pcie-iproc.h                |   6 ++
> >>  7 files changed, 260 insertions(+), 27 deletions(-)
> >>
> > 
> > 
> 
> 
> -- 
> Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
