Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B314FD6643
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 17:39:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZYvjtTHlzTWh3zFmjfQVeymDgjhzuIaxDv8LtrqZAU4=; b=jJ9cJ0mo/Wah3K
	aRcS+pEPQQ8uQTZ/s65BSj297spMKscGOWvUYJRJ830m7f4B2UZ5EX4im83DHF0dpAqUbSMRdGfXk
	fRNQzDrrS9RS46qv/gLAvnxImkA5ROgkokrdzTsGD+MZHb2rSDeiq/QqIvkvaStUtqJkqFYTpkMCG
	/1sMFWiPrfTuecV824SNvHo0+k50DDuvDnjYNAcCGPCNItvxE8pxtOxVhZMM333Rn+sZlALN/ujIa
	u7C35Ci7At31l+K5c1EjnB/ygeooguCybHiTrmvzryaQ6un4zN4jS9FtSKMdHCT3ymlRyadg12iuM
	N99tosj2OG+5hA2nTB2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK2RW-0004hB-Mj; Mon, 14 Oct 2019 15:39:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK2RP-0004gR-8Q
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 15:39:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7942B28;
 Mon, 14 Oct 2019 08:39:22 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 761AF3F68E;
 Mon, 14 Oct 2019 08:39:21 -0700 (PDT)
Date: Mon, 14 Oct 2019 16:39:19 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Remi Pommarel <repk@triplefau.lt>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2] PCI: aardvark: Wait for endpoint to be ready before
 training link
Message-ID: <20191014153919.GB2928@e121166-lin.cambridge.arm.com>
References: <20190522213351.21366-2-repk@triplefau.lt>
 <20190806184945.GU12859@voidbox.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806184945.GU12859@voidbox.localdomain>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_083923_341961_A692E41C 
X-CRM114-Status: GOOD (  19.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-pci@vger.kernel.org, Ellie Reeves <ellierevves@gmail.com>,
 Bjorn Helgaas <helgaas@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 08:49:46PM +0200, Remi Pommarel wrote:
> On Wed, May 22, 2019 at 11:33:50PM +0200, Remi Pommarel wrote:
> > When configuring pcie reset pin from gpio (e.g. initially set by
> > u-boot) to pcie function this pin goes low for a brief moment
> > asserting the PERST# signal. Thus connected device enters fundamental
> > reset process and link configuration can only begin after a minimal
> > 100ms delay (see [1]).
> > 
> > Because the pin configuration comes from the "default" pinctrl it is
> > implicitly configured before the probe callback is called:
> > 
> > driver_probe_device()
> >   really_probe()
> >     ...
> >     pinctrl_bind_pins() /* Here pin goes from gpio to PCIE reset
> >                            function and PERST# is asserted */
> >     ...
> >     drv->probe()
> > 
> > [1] "PCI Express Base Specification", REV. 4.0
> >     PCI Express, February 19 2014, 6.6.1 Conventional Reset
> > 
> > Signed-off-by: Remi Pommarel <repk@triplefau.lt>
> > ---
> > Changes since v1:
> >   - Add a comment about pinctrl implicit pin configuration
> >   - Use more legible msleep
> >   - Use PCI_PM_D3COLD_WAIT macro
> > 
> > Please note that I will unlikely be able to answer any comments from May
> > 24th to June 10th.
> > ---
> >  drivers/pci/controller/pci-aardvark.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
> > index 134e0306ff00..d998c2b9cd04 100644
> > --- a/drivers/pci/controller/pci-aardvark.c
> > +++ b/drivers/pci/controller/pci-aardvark.c
> > @@ -324,6 +324,14 @@ static void advk_pcie_setup_hw(struct advk_pcie *pcie)
> >  	reg |= PIO_CTRL_ADDR_WIN_DISABLE;
> >  	advk_writel(pcie, reg, PIO_CTRL);
> >  
> > +	/*
> > +	 * PERST# signal could have been asserted by pinctrl subsystem before
> > +	 * probe() callback has been called, making the endpoint going into
> > +	 * fundamental reset. As required by PCI Express spec a delay for at
> > +	 * least 100ms after such a reset before link training is needed.
> > +	 */
> > +	msleep(PCI_PM_D3COLD_WAIT);
> > +
> >  	/* Start link training */
> >  	reg = advk_readl(pcie, PCIE_CORE_LINK_CTRL_STAT_REG);
> >  	reg |= PCIE_CORE_LINK_TRAINING;
> > -- 
> > 2.20.1
> 
> Gentle ping.

Thomas, sorry for the delay, unless you object I would merge this
patch, I need your ACK to proceed though.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
