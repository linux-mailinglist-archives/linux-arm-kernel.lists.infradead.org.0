Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E7A44ECF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 23:57:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eMO8sGXAR+ezcArqiinRPDmYln78U8B+/XSm2nJvhb0=; b=m9Ewu45aKt/gDK
	ijM63Br553gt5UMoF1TyKNd1GMEWXrElG+k7Uiu+LfyG0ovZi/syYIPFUViFyzeBM+fMgP1ElsjRs
	7Onwdby+sh0cP6k0f7tKsQbH4bq/uwTt9kAjiFstG353aWePgH9jAQoN9M99Lb7mxDUlZStliTkCj
	YC8jbeFXMF4IQIBmgUUO/RW/CVDxeyy4P5m/o7P/UqyKeMupG2S6bSTmELFUgd5OXPDg55MokfHaL
	j8/IvfrsiczrcqOIarbzOwRaAfjwyzKgQAgGwG10toGOifcZ5ECO21HjwmL1Y0Rz/iH7UglewTDPC
	dN3DvMHbAhpFqbzU+oPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbXjF-0001mz-Mt; Thu, 13 Jun 2019 21:57:53 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbXj9-0001mq-ER
 for linux-arm-kernel@bombadil.infradead.org; Thu, 13 Jun 2019 21:57:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eSfGJqOciOrlZTffR40iw8/Y+MZHoDP7Kn2h+s5mm4E=; b=qMayn7eOsNEwKAUi+ecMf2+Qj
 9o32FSqo/PR7z/BlxulChF9wQdiD4vzYXZOQNXfcSoRPuOn1oEGNaFJceq3m7CgCH9qHJtcXGAoFF
 i0e+u3/yNd5WXohzBy45i4vbR5tCSFAEeBL1/AOVn+0wQqQkVj72qheS03IjQzkVSYifaSl+T9QrZ
 fXIko7cbiqm3/Q6R3GTWQdV+SXT7qjK2xOblTN5107+u3dlc/5PW38fJm2ApAcyuv5SzqLLbig5p4
 UpoAWyWp9DlIu7zf7rfJThSV+SiNDdmV2LP1ERqlJjJGxa+0pYkOZjRB2XRz8RGMNtKPREH7TjN0f
 e4Hz3yXQA==;
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbXj5-0002Lh-DN
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 21:57:44 +0000
X-Originating-IP: 88.190.179.123
Received: from localhost (unknown [88.190.179.123])
 (Authenticated sender: repk@triplefau.lt)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id E8A4A240005;
 Thu, 13 Jun 2019 21:57:06 +0000 (UTC)
Date: Fri, 14 Jun 2019 00:06:54 +0200
From: Remi Pommarel <repk@triplefau.lt>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH] PCI: aardvark: Fix PCI_EXP_RTCTL conf register writing
Message-ID: <20190613220653.GB12859@voidbox.localdomain>
References: <20190522213351.21366-1-repk@triplefau.lt>
 <20190613161441.GA2247@e121166-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613161441.GA2247@e121166-lin.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Thu, Jun 13, 2019 at 05:14:41PM +0100, Lorenzo Pieralisi wrote:
> On Wed, May 22, 2019 at 11:33:49PM +0200, Remi Pommarel wrote:
> > PCI_EXP_RTCTL is used to activate PME interrupt only, so writing into it
> > should not modify other interrupts' mask (such as ISR0).
> > 
> > Fixes: 6302bf3ef78d ("PCI: Init PCIe feature bits for managed host bridge alloc")
> > Signed-off-by: Remi Pommarel <repk@triplefau.lt>
> > ---
> > Please note that I will unlikely be able to answer any comments from May
> > 24th to June 10th.
> > ---
> >  drivers/pci/controller/pci-aardvark.c | 10 +++++++---
> >  1 file changed, 7 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
> > index 134e0306ff00..27102d3b4f9c 100644
> > --- a/drivers/pci/controller/pci-aardvark.c
> > +++ b/drivers/pci/controller/pci-aardvark.c
> > @@ -451,10 +451,14 @@ advk_pci_bridge_emul_pcie_conf_write(struct pci_bridge_emul *bridge,
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
> > +		val |= (new & PCI_EXP_RTCTL_PMEIE) << 3;
> 
> I know you have not introduced this code but maybe we can
> take an opportunity to clarify it (that << 3 shift obfuscates
> a bit):
> 
> 	u32 val = advk_readl(pcie, PCIE_ISR0_MASK_REG) &
> 			~PCIE_MSG_PM_PME_MASK;
> 
> 	if (new & PCI_EXP_RTCTL_PMEIE)
> 		val |= PCIE_MSG_PM_PME_MASK;
> 
> 	advk_writel(pcie, val, PCIE_ISR0_MASK_REG);
> 	break;
> 
> Or I am not reading the code correctly ?

Sure, that clarifies the code at the point where I realize that the
"<< 3" from the original code was off by one and the mask polarity was
inverted. So I'll fix all that in the v2.

Thanks.

-- 
Remi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
