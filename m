Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EB81CD677
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 12:23:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rvvhezDcaaSZCZnvskgh61MojTc6yaAB4M0p471di5k=; b=IpYhNZjo4LeZ8X
	O2dybhPgYv5hwVSjmaXPmb+v1+jI810yBx6UXhvhuEwDom30V98GbAqaTJQwcHPCzAmpmAM1f0P/u
	yEbAiaW2a2u9kevyerqhSceEdbiiy/7SRd1Woj568xlDuo1j3ukf6GGchO+MKnorBdQ/lSWPOuAX9
	2uiRN8md1HYK9m19ogE7r0uyAY6FnlTM4y1M46Qd/9edr1/N2V6JDjdsPRp7mRkJ85QD8M0RZN0TZ
	LiGAeX8BDzFkKkmwYAUT0Ofa2RA6lGmSjTiQXfuR7mKExTF0CbBqftxqxQdzhHVNv0nFVgi7PpFZ9
	mntmV5fOEwwMzynMqdRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY5aM-0004tu-5c; Mon, 11 May 2020 10:22:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY5aC-0004s8-6z; Mon, 11 May 2020 10:22:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D3A51FB;
 Mon, 11 May 2020 03:22:43 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4790F3F305;
 Mon, 11 May 2020 03:22:42 -0700 (PDT)
Date: Mon, 11 May 2020 11:22:40 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] PCI: amlogic: meson: Don't use FAST_LINK_MODE to set up
 link
Message-ID: <20200511102239.GC24149@e121166-lin.cambridge.arm.com>
References: <20200429164230.309922-1-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429164230.309922-1-maz@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_032248_295997_34455922 
X-CRM114-Status: GOOD (  17.56  )
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
Cc: Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Yue Wang <yue.wang@Amlogic.com>,
 Kevin Hilman <khilman@baylibre.com>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 05:42:30PM +0100, Marc Zyngier wrote:
> My vim3l board stubbornly refuses to play ball with a bog
> standard PCIe switch (ASM1184e), spitting all kind of errors
> ranging from link never coming up to crazy things like downstream
> ports falling off the face of the planet.
> 
> Upon investigating how the PCIe RC is configured, I found the
> following nugget: the Sysnopsys DWC PCIe Reference Manual, in the
> section dedicated to the PLCR register, describes bit 7 (FAST_LINK_MODE)
> as:
> 
> "Sets all internal timers to fast mode for simulation purposes."
> 
> I completely understand the need for setting this bit from a simulation
> perspective, but what I have on my desk is actual silicon, which
> expects timers to have a nominal value (and I expect this is the
> case for most people).
> 
> Making sure the FAST_LINK_MODE bit is cleared when configuring the RC
> solves this problem.
> 
> Fixes: 9c0ef6d34fdb ("PCI: amlogic: Add the Amlogic Meson PCIe controller driver")
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  drivers/pci/controller/dwc/pci-meson.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Reworded the commit log (even if yours was more fun :)) and applied
to pci/dwc, thanks !

Lorenzo

> diff --git a/drivers/pci/controller/dwc/pci-meson.c b/drivers/pci/controller/dwc/pci-meson.c
> index 3715dceca1bf..ca59ba9e0ecd 100644
> --- a/drivers/pci/controller/dwc/pci-meson.c
> +++ b/drivers/pci/controller/dwc/pci-meson.c
> @@ -289,11 +289,11 @@ static void meson_pcie_init_dw(struct meson_pcie *mp)
>  	meson_cfg_writel(mp, val, PCIE_CFG0);
>  
>  	val = meson_elb_readl(mp, PCIE_PORT_LINK_CTRL_OFF);
> -	val &= ~LINK_CAPABLE_MASK;
> +	val &= ~(LINK_CAPABLE_MASK | FAST_LINK_MODE);
>  	meson_elb_writel(mp, val, PCIE_PORT_LINK_CTRL_OFF);
>  
>  	val = meson_elb_readl(mp, PCIE_PORT_LINK_CTRL_OFF);
> -	val |= LINK_CAPABLE_X1 | FAST_LINK_MODE;
> +	val |= LINK_CAPABLE_X1;
>  	meson_elb_writel(mp, val, PCIE_PORT_LINK_CTRL_OFF);
>  
>  	val = meson_elb_readl(mp, PCIE_GEN2_CTRL_OFF);
> -- 
> 2.26.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
