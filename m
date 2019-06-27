Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC9E58651
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 17:51:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RXqUG+W9s8Gq0HkqvpKQHYgeAujBQc8xghDx9zXVHGY=; b=gh/S8Vpi9JeD0p
	9iow3IupQvEFnci7syz2rpg5fH28dX3yzeJ0oP+Lg09GkbTjSuZa4J7vlFjxKuU16gJ5XwWiKILiM
	tmWt6mSCn2yOT54tYMa83bKKLNknKUmWer46WSEY9VV2q8GlgIw448qMho9Bd/fcUZ3I9XDQaKyV5
	ee/k0GY/rUmD4DmZ9i91H1zxk8BKz/A+Ca/4iCSIaD70jnWpc2ipcsowZZs50062nVuA1jps3nnFl
	hTN1FGG/Vjp7gm1JpX3CehdraY7OOYKdfdVCR1z4M2CJkiUrTWTC+N7X4FH6FBXEXG2ZeQKh531ll
	f7OrHJPAIRT7EDqIYvYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgWg4-0005US-0i; Thu, 27 Jun 2019 15:51:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgWfl-0005SF-Fo
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 15:50:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 11E7B360;
 Thu, 27 Jun 2019 08:50:52 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7C7413F246;
 Thu, 27 Jun 2019 08:50:49 -0700 (PDT)
Date: Thu, 27 Jun 2019 16:50:47 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V11 03/12] PCI: dwc: Perform dbi regs write lock towards
 the end
Message-ID: <20190627155047.GF3782@e121166-lin.cambridge.arm.com>
References: <20190624091505.1711-1-vidyas@nvidia.com>
 <20190624091505.1711-4-vidyas@nvidia.com>
 <20190627145800.GD3782@e121166-lin.cambridge.arm.com>
 <ecae46b4-54cc-7f4d-5a86-908431fd472a@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ecae46b4-54cc-7f4d-5a86-908431fd472a@nvidia.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_085053_622428_19D7AB92 
X-CRM114-Status: GOOD (  23.63  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, mperttunen@nvidia.com,
 mmaddireddy@nvidia.com, linux-pci@vger.kernel.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, kthota@nvidia.com,
 kishon@ti.com, linux-tegra@vger.kernel.org, robh+dt@kernel.org,
 thierry.reding@gmail.com, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, digetx@gmail.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 09:03:08PM +0530, Vidya Sagar wrote:
> On 6/27/2019 8:28 PM, Lorenzo Pieralisi wrote:
> > On Mon, Jun 24, 2019 at 02:44:56PM +0530, Vidya Sagar wrote:
> > > Remove multiple write enable and disable sequences of dbi registers as
> > > Tegra194 implements writes to BAR-0 register (offset: 0x10) controlled by
> > > DBI write-lock enable bit thereby not allowing any further writes to BAR-0
> > > register in config space to take place. Hence enabling write permission at
> > > the start of function and disabling the same only towards the end.
> > 
> > I do not understand what this patch does, I would like to rephrase
> > the commit log in a way that is easier to parse.
> > 
> > In particular I do not get what you mean in relation to BAR-0, I am
> > confused, please clarify.
> > 
> > Lorenzo
> Well, some of the Synopsys DesignWare core's DBI registers are
> protected with a lock without which, they are read-only by default.
> Existing code in dw_pcie_setup_rc() API tries to unlock and lock
> multiple times whenever it wants to update those write-protected
> registers. This patch attempts to unlock all such write-protected
> registers for writing once in the beginning of the function and lock
> them back towards the end.  As far as BAR-0 register (which is at
> offset 0x10 in DBI space... nothing but the config space) in Tegra194
> is concerned, it is one of those registers to which writes are
> protected. I could have added unlock/lock pair around accessing this
> register, but that would bloat this API with one more pair of
> unlock/lock, instead I chose to remove unlock/lock pairs for all
> protected registers and have unlock in the beginning and lock towards
> the end.

Ok, so DBI space registers that require write permissions are per-IP.
This is clearer so the commit log must be rewritten, it is not clear at
all in this respect at least not as-is, if you read it you will
notice ;-)

Lorenzo

> 
> -Vidya Sagar
> 
> > 
> > > Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> > > Reviewed-by: Thierry Reding <treding@nvidia.com>
> > > Acked-by: Jingoo Han <jingoohan1@gmail.com>
> > > ---
> > > Changes since [v10]:
> > > * None
> > > 
> > > Changes since [v9]:
> > > * None
> > > 
> > > Changes since [v8]:
> > > * None
> > > 
> > > Changes since [v7]:
> > > * None
> > > 
> > > Changes since [v6]:
> > > * None
> > > 
> > > Changes since [v5]:
> > > * Moved write enable to the beginning of the API and write disable to the end
> > > 
> > > Changes since [v4]:
> > > * None
> > > 
> > > Changes since [v3]:
> > > * None
> > > 
> > > Changes since [v2]:
> > > * None
> > > 
> > > Changes since [v1]:
> > > * None
> > > 
> > >   drivers/pci/controller/dwc/pcie-designware-host.c | 14 ++++++++------
> > >   1 file changed, 8 insertions(+), 6 deletions(-)
> > > 
> > > diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> > > index f93252d0da5b..d3156446ff27 100644
> > > --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> > > +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> > > @@ -628,6 +628,12 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
> > >   	u32 val, ctrl, num_ctrls;
> > >   	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> > > +	/*
> > > +	 * Enable DBI read-only registers for writing/updating configuration.
> > > +	 * Write permission gets disabled towards the end of this function.
> > > +	 */
> > > +	dw_pcie_dbi_ro_wr_en(pci);
> > > +
> > >   	dw_pcie_setup(pci);
> > >   	if (!pp->ops->msi_host_init) {
> > > @@ -650,12 +656,10 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
> > >   	dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_1, 0x00000000);
> > >   	/* Setup interrupt pins */
> > > -	dw_pcie_dbi_ro_wr_en(pci);
> > >   	val = dw_pcie_readl_dbi(pci, PCI_INTERRUPT_LINE);
> > >   	val &= 0xffff00ff;
> > >   	val |= 0x00000100;
> > >   	dw_pcie_writel_dbi(pci, PCI_INTERRUPT_LINE, val);
> > > -	dw_pcie_dbi_ro_wr_dis(pci);
> > >   	/* Setup bus numbers */
> > >   	val = dw_pcie_readl_dbi(pci, PCI_PRIMARY_BUS);
> > > @@ -687,15 +691,13 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
> > >   	dw_pcie_wr_own_conf(pp, PCI_BASE_ADDRESS_0, 4, 0);
> > > -	/* Enable write permission for the DBI read-only register */
> > > -	dw_pcie_dbi_ro_wr_en(pci);
> > >   	/* Program correct class for RC */
> > >   	dw_pcie_wr_own_conf(pp, PCI_CLASS_DEVICE, 2, PCI_CLASS_BRIDGE_PCI);
> > > -	/* Better disable write permission right after the update */
> > > -	dw_pcie_dbi_ro_wr_dis(pci);
> > >   	dw_pcie_rd_own_conf(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, 4, &val);
> > >   	val |= PORT_LOGIC_SPEED_CHANGE;
> > >   	dw_pcie_wr_own_conf(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, 4, val);
> > > +
> > > +	dw_pcie_dbi_ro_wr_dis(pci);
> > >   }
> > >   EXPORT_SYMBOL_GPL(dw_pcie_setup_rc);
> > > -- 
> > > 2.17.1
> > > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
