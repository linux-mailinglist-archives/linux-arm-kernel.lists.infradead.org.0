Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDB711F774
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 12:30:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=StfB0xI8+WbB4abf2dKiLWpuO2XsAwwTz92inba2pX8=; b=uW0FWjzszPQPiB
	kiuig2bzdNeQzn1P8CK/svQNCG3en7EeS4zHiwWFehvUl8NjO9IlfkcLHlo7+42ddl0QmwLAHt4iL
	nntD5TwFPh79oqdpbfe/D47Tvoi4pq/ZbJT7MDWtcd610iCxPD55b228QqUS6famye65bv2AOqeQl
	xeaoOqTy4LeQs+0aLm44epJPH0NGCGGntpKzxFTekdp5TdOQ130IsCurfsgyAsoKE8xkwBtbkeCzQ
	kUf9YcFvR+7A6qzMDAx0pGuwhybfs0yhoOXONw1T17ht0LsBo++Q5vvjA9y/s6spgu6/vIqHpsnen
	iQ7AKmBitaLNWHy14eYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igS6P-0000a4-Ug; Sun, 15 Dec 2019 11:30:21 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igS6E-0008S9-0T; Sun, 15 Dec 2019 11:30:11 +0000
Received: from localhost (unknown [88.190.179.123])
 (Authenticated sender: repk@triplefau.lt)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id F41F9200003;
 Sun, 15 Dec 2019 11:29:55 +0000 (UTC)
Date: Sun, 15 Dec 2019 12:38:20 +0100
From: Remi Pommarel <repk@triplefau.lt>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH 2/2] PCI: amlogic: Use PCIe pll gate when available
Message-ID: <20191215113820.GC7304@voidbox>
References: <20191208210320.15539-1-repk@triplefau.lt>
 <20191208210320.15539-3-repk@triplefau.lt>
 <20191209110314.GQ18399@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209110314.GQ18399@e119886-lin.cambridge.arm.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_033010_190912_3B47EAEA 
X-CRM114-Status: GOOD (  20.10  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>, linux-pci@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 09, 2019 at 11:03:15AM +0000, Andrew Murray wrote:
> On Sun, Dec 08, 2019 at 10:03:20PM +0100, Remi Pommarel wrote:
> > In order to get PCIe working reliably on some AXG platforms, PCIe pll
> > cml needs to be enabled. This is done by using the PCIE_PLL_CML_ENABLE
> > clock gate.
> 
> s/cml/CML/
> 
> In addition to Jerome's feedback - it would also be helpful to explain
> when CML outputs should be enabled, i.e. which platforms and why those
> ones?
> 
> > 
> > This clock gate is optional, so do not fail if it is missing in the
> > devicetree.
> 
> If certain platforms require PCIE_PLL_CML_ENABLE to work reliably and
> thus the clock is specified in the device tree - then surely if there
> is an error in enabling the clock we should fail? I.e. should you only
> ignore -ENOENT here?

Good point. Will do.

Thanks

-- 
Remi

> 
> Thanks,
> 
> Andrew Murray
> 
> > 
> > Signed-off-by: Remi Pommarel <repk@triplefau.lt>
> > ---
> >  drivers/pci/controller/dwc/pci-meson.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/drivers/pci/controller/dwc/pci-meson.c b/drivers/pci/controller/dwc/pci-meson.c
> > index 3772b02a5c55..32b70ea9a426 100644
> > --- a/drivers/pci/controller/dwc/pci-meson.c
> > +++ b/drivers/pci/controller/dwc/pci-meson.c
> > @@ -89,6 +89,7 @@ struct meson_pcie_clk_res {
> >  	struct clk *mipi_gate;
> >  	struct clk *port_clk;
> >  	struct clk *general_clk;
> > +	struct clk *pll_cml_gate;
> >  };
> >  
> >  struct meson_pcie_rc_reset {
> > @@ -300,6 +301,10 @@ static int meson_pcie_probe_clocks(struct meson_pcie *mp)
> >  	if (IS_ERR(res->clk))
> >  		return PTR_ERR(res->clk);
> >  
> > +	res->pll_cml_gate = meson_pcie_probe_clock(dev, "pll_cml_en", 0);
> > +	if (IS_ERR(res->pll_cml_gate))
> > +		res->pll_cml_gate = NULL;
> > +
> >  	return 0;
> >  }
> >  
> > -- 
> > 2.24.0
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
