Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E35F58465
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 16:23:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MzBN/uWrM5oqVLYXXmDEfx5stgVno4S9/JA9B01/GmI=; b=BtPEBvwcB5e9NJ
	Oa0OZ9sIonkR4Y5djWl+2ZPBLL8E3Xba5qrQwU2ps5zTfFHQBGtfg4uwxOeGfcOe/ivwxrbuxSjCp
	gFQ+z9Aa20oC3JwsVkKDWvD0pvpKhVPK5zbh02Yop6mZrKWu++Q2l8NdLYCJ6C/fFyrw3vI7NhumZ
	XpUweKpxrP4mq+WoYAzfki4l+avu6gatXpHcG8+5jgY3yhKi+tJGBiGAVgHtHXGJA/1tB+HvcjOFB
	/Qc9yUGtBBTJ5JX6qyFxOaNfkcPreWRInYpqTkUPmLmbUoeGmFGp8DWHAXFntIIPmdQO0Qw1tW/Qs
	ZtIadJ0sgUSHJn3IrBzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgVIn-0000AP-46; Thu, 27 Jun 2019 14:23:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgVIV-00009Q-JS
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 14:22:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5AC11360;
 Thu, 27 Jun 2019 07:22:44 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 56A253F246;
 Thu, 27 Jun 2019 07:22:43 -0700 (PDT)
Date: Thu, 27 Jun 2019 15:22:41 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Remi Pommarel <repk@triplefau.lt>
Subject: Re: [PATCH v3] PCI: aardvark: Fix PCI_EXP_RTCTL register configuration
Message-ID: <20190627142241.GB3782@e121166-lin.cambridge.arm.com>
References: <20190614101059.1664-1-repk@triplefau.lt>
 <20190617124328.GA27113@e121166-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617124328.GA27113@e121166-lin.cambridge.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_072247_688474_9C8D6AD7 
X-CRM114-Status: GOOD (  19.32  )
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
Cc: Ellie Reeves <ellierevves@gmail.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 01:43:36PM +0100, Lorenzo Pieralisi wrote:
> On Fri, Jun 14, 2019 at 12:10:59PM +0200, Remi Pommarel wrote:
> > PCI_EXP_RTCTL is used to activate PME interrupt only, so writing into it
> > should not modify other interrupts' mask. The ISR mask polarity was also
> > inverted, when PCI_EXP_RTCTL_PMEIE is set PCIE_MSG_PM_PME_MASK mask bit
> > should actually be cleared.
> > 
> > Fixes: 8a3ebd8de328 ("PCI: aardvark: Implement emulated root PCI bridge config space")
> > Signed-off-by: Remi Pommarel <repk@triplefau.lt>
> > ---
> > Changes since v1:
> >  * Improve code readability
> >  * Fix mask polarity
> >  * PME_MASK shift was off by one
> > Changes since v2:
> >  * Modify patch title
> >  * Change Fixes tag to commit that actually introduces the bug
> > ---
> >  drivers/pci/controller/pci-aardvark.c | 13 +++++++++----
> >  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> I need Thomas' ACK to apply it, thanks.

I still need it :), thanks.

Lorenzo

> Lorenzo
> 
> > diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
> > index 134e0306ff00..f6e55c4597b1 100644
> > --- a/drivers/pci/controller/pci-aardvark.c
> > +++ b/drivers/pci/controller/pci-aardvark.c
> > @@ -415,7 +415,7 @@ advk_pci_bridge_emul_pcie_conf_read(struct pci_bridge_emul *bridge,
> >  
> >  	case PCI_EXP_RTCTL: {
> >  		u32 val = advk_readl(pcie, PCIE_ISR0_MASK_REG);
> > -		*value = (val & PCIE_MSG_PM_PME_MASK) ? PCI_EXP_RTCTL_PMEIE : 0;
> > +		*value = (val & PCIE_MSG_PM_PME_MASK) ? 0 : PCI_EXP_RTCTL_PMEIE;
> >  		return PCI_BRIDGE_EMUL_HANDLED;
> >  	}
> >  
> > @@ -451,10 +451,15 @@ advk_pci_bridge_emul_pcie_conf_write(struct pci_bridge_emul *bridge,
> >  		advk_writel(pcie, new, PCIE_CORE_PCIEXP_CAP + reg);
> >  		break;
> >  
> > -	case PCI_EXP_RTCTL:
> > -		new = (new & PCI_EXP_RTCTL_PMEIE) << 3;
> > -		advk_writel(pcie, new, PCIE_ISR0_MASK_REG);
> > +	case PCI_EXP_RTCTL: {
> > +		/* Only mask/unmask PME interrupt */
> > +		u32 val = advk_readl(pcie, PCIE_ISR0_MASK_REG) &
> > +			~PCIE_MSG_PM_PME_MASK;
> > +		if ((new & PCI_EXP_RTCTL_PMEIE) == 0)
> > +			val |= PCIE_MSG_PM_PME_MASK;
> > +		advk_writel(pcie, val, PCIE_ISR0_MASK_REG);
> >  		break;
> > +	}
> >  
> >  	case PCI_EXP_RTSTA:
> >  		new = (new & PCI_EXP_RTSTA_PME) >> 9;
> > -- 
> > 2.20.1
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
