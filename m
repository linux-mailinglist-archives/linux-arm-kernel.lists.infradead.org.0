Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA66931087
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 16:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7h2NlZqjLHUu4HO/vJeh32iJ6MAdJR/vdvlJETYe5OM=; b=oGFjv4cZ+g4INp
	NT0JbR9OwtHstRdKM9qOfrucnaZu+vM25GCHin6LmNLIzPJBhN+4gxi67U9hdJ0sVzYg8DtvxMhbL
	03kjczCqzy92im1Tki5w3TsfAhAfxmOuRc8rTEhSGN+MPlyXX2zA7dTKzBzwapMmrWqsSBSj1yHgX
	CB82hn6laNd6DGyAZEezKoh8vIxImyTby/RRiNJiW0LXcAZZBC8medzKSAtYYsACUMxeTG5yLgPRx
	3ll7pstKwpPJCgMjlwhd2vurt/H03JwWf6epqnTE9YiOfHFufv7yKIoJdQ+lrFjCBisPs5tQvD20k
	IK7qhU+Kikuv1zKXPBXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWiop-0005Zq-8i; Fri, 31 May 2019 14:47:43 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWiog-0005YN-AS; Fri, 31 May 2019 14:47:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BE3AC341;
 Fri, 31 May 2019 07:47:31 -0700 (PDT)
Received: from redmoon (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5DA8D3F5AF;
 Fri, 31 May 2019 07:47:28 -0700 (PDT)
Date: Fri, 31 May 2019 15:47:18 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH] drivers/pci/controller: fix warning PTR_ERR_OR_ZERO can
 be used
Message-ID: <20190531144710.GA9356@redmoon>
References: <20190525085748.GA10926@hari-Inspiron-1545>
 <20190527140952.GB7202@ulmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527140952.GB7202@ulmo>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_074734_578985_05BE460E 
X-CRM114-Status: GOOD (  23.42  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Binghui Wang <wangbinghui@hisilicon.com>, linux-kernel@vger.kernel.org,
 linux-tegra@vger.kernel.org, ingoo Han <jingoohan1@gmail.com>,
 linux-arm-msm@vger.kernel.org, Xiaowei Song <songxiaowei@hisilicon.com>,
 linux-pci@vger.kernel.org, Andy Gross <agross@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Yue Wang <yue.wang@amlogic.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>, David Brown <david.brown@linaro.org>,
 Kukjin Kim <kgene@kernel.org>, linux-samsung-soc@vger.kernel.org,
 Kevin Hilman <khilman@baylibre.com>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-amlogic@lists.infradead.org, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 04:09:52PM +0200, Thierry Reding wrote:
> On Sat, May 25, 2019 at 02:27:48PM +0530, Hariprasad Kelam wrote:
> > fix below warnings reported by coccichek
> > 
> > /drivers/pci/controller/pci-tegra.c:1132:1-3: WARNING: PTR_ERR_OR_ZERO
> > can be used
> 
> This has been discussed many times before, but PTR_ERR_OR_ZERO is not
> liked by everybody. Most of these are actually in place on purpose. One
> of the reasons I hear most frequently cited in opposition to this macro
> is that it complicates things when you need to add some new code in, so
> PTR_ERR_OR_ZERO() becomes wrong and has to be changed. The original,
> with the "return 0;" being explicit doesn't have that problem and you
> can easily add things in between.
> 
> It's obviously up to Bjorn to decide whether he wants this, but I
> vaguely remember discussing this particular instance with him before and
> we both agreed that we didn't think this was worth it.

+1, patch dropped, thanks Hariprasad for reporting it anyway.

Lorenzo

> Perhaps it's time to make checkpatch not complain about this anymore? Or
> at least make this not a WARNING.
> 
> Thierry
> 
> > ./drivers/pci/controller/dwc/pcie-qcom.c:703:1-3: WARNING:
> > PTR_ERR_OR_ZERO can be used
> > ./drivers/pci/controller/dwc/pci-meson.c:185:1-3: WARNING:
> > PTR_ERR_OR_ZERO can be used
> > ./drivers/pci/controller/dwc/pci-meson.c:262:1-3: WARNING:
> > PTR_ERR_OR_ZERO can be used
> > ./drivers/pci/controller/dwc/pcie-kirin.c:141:1-3: WARNING:
> > PTR_ERR_OR_ZERO can be used
> > ./drivers/pci/controller/dwc/pcie-kirin.c:177:1-3: WARNING:
> > PTR_ERR_OR_ZERO can be used
> > ./drivers/pci/controller/dwc/pci-exynos.c:95:1-3: WARNING:
> > PTR_ERR_OR_ZERO can be used
> > 
> > Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> > ---
> >  drivers/pci/controller/dwc/pci-exynos.c | 4 +---
> >  drivers/pci/controller/dwc/pci-meson.c  | 8 ++------
> >  drivers/pci/controller/dwc/pcie-kirin.c | 8 ++------
> >  drivers/pci/controller/dwc/pcie-qcom.c  | 4 +---
> >  drivers/pci/controller/pci-tegra.c      | 4 +---
> >  5 files changed, 7 insertions(+), 21 deletions(-)
> > 
> > diff --git a/drivers/pci/controller/dwc/pci-exynos.c b/drivers/pci/controller/dwc/pci-exynos.c
> > index cee5f2f..b0b4849 100644
> > --- a/drivers/pci/controller/dwc/pci-exynos.c
> > +++ b/drivers/pci/controller/dwc/pci-exynos.c
> > @@ -92,10 +92,8 @@ static int exynos5440_pcie_get_mem_resources(struct platform_device *pdev,
> >  
> >  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> >  	ep->mem_res->elbi_base = devm_ioremap_resource(dev, res);
> > -	if (IS_ERR(ep->mem_res->elbi_base))
> > -		return PTR_ERR(ep->mem_res->elbi_base);
> >  
> > -	return 0;
> > +	return PTR_ERR_OR_ZERO(ep->mem_res->elbi_base);
> >  }
> >  
> >  static int exynos5440_pcie_get_clk_resources(struct exynos_pcie *ep)
> > diff --git a/drivers/pci/controller/dwc/pci-meson.c b/drivers/pci/controller/dwc/pci-meson.c
> > index e35e9ea..1ca78c2 100644
> > --- a/drivers/pci/controller/dwc/pci-meson.c
> > +++ b/drivers/pci/controller/dwc/pci-meson.c
> > @@ -182,10 +182,8 @@ static int meson_pcie_get_mems(struct platform_device *pdev,
> >  
> >  	/* Meson SoC has two PCI controllers use same phy register*/
> >  	mp->mem_res.phy_base = meson_pcie_get_mem_shared(pdev, mp, "phy");
> > -	if (IS_ERR(mp->mem_res.phy_base))
> > -		return PTR_ERR(mp->mem_res.phy_base);
> >  
> > -	return 0;
> > +	return PTR_ERR_OR_ZERO(mp->mem_res.phy_base);
> >  }
> >  
> >  static void meson_pcie_power_on(struct meson_pcie *mp)
> > @@ -259,10 +257,8 @@ static int meson_pcie_probe_clocks(struct meson_pcie *mp)
> >  		return PTR_ERR(res->general_clk);
> >  
> >  	res->clk = meson_pcie_probe_clock(dev, "pcie", 0);
> > -	if (IS_ERR(res->clk))
> > -		return PTR_ERR(res->clk);
> >  
> > -	return 0;
> > +	return PTR_ERR_OR_ZERO(res->clk);
> >  }
> >  
> >  static inline void meson_elb_writel(struct meson_pcie *mp, u32 val, u32 reg)
> > diff --git a/drivers/pci/controller/dwc/pcie-kirin.c b/drivers/pci/controller/dwc/pcie-kirin.c
> > index 9b59929..87cfdb4 100644
> > --- a/drivers/pci/controller/dwc/pcie-kirin.c
> > +++ b/drivers/pci/controller/dwc/pcie-kirin.c
> > @@ -138,10 +138,8 @@ static long kirin_pcie_get_clk(struct kirin_pcie *kirin_pcie,
> >  		return PTR_ERR(kirin_pcie->apb_sys_clk);
> >  
> >  	kirin_pcie->pcie_aclk = devm_clk_get(dev, "pcie_aclk");
> > -	if (IS_ERR(kirin_pcie->pcie_aclk))
> > -		return PTR_ERR(kirin_pcie->pcie_aclk);
> >  
> > -	return 0;
> > +	return PTR_ERR_OR_ZERO(kirin_pcie->pcie_aclk);
> >  }
> >  
> >  static long kirin_pcie_get_resource(struct kirin_pcie *kirin_pcie,
> > @@ -174,10 +172,8 @@ static long kirin_pcie_get_resource(struct kirin_pcie *kirin_pcie,
> >  
> >  	kirin_pcie->sysctrl =
> >  		syscon_regmap_lookup_by_compatible("hisilicon,hi3660-sctrl");
> > -	if (IS_ERR(kirin_pcie->sysctrl))
> > -		return PTR_ERR(kirin_pcie->sysctrl);
> >  
> > -	return 0;
> > +	return PTR_ERR_OR_ZERO(kirin_pcie->sysctrl);
> >  }
> >  
> >  static int kirin_pcie_phy_init(struct kirin_pcie *kirin_pcie)
> > diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> > index 0ed235d..6c421e6 100644
> > --- a/drivers/pci/controller/dwc/pcie-qcom.c
> > +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> > @@ -700,10 +700,8 @@ static int qcom_pcie_get_resources_2_4_0(struct qcom_pcie *pcie)
> >  		return PTR_ERR(res->ahb_reset);
> >  
> >  	res->phy_ahb_reset = devm_reset_control_get_exclusive(dev, "phy_ahb");
> > -	if (IS_ERR(res->phy_ahb_reset))
> > -		return PTR_ERR(res->phy_ahb_reset);
> >  
> > -	return 0;
> > +	return PTR_ERR_OR_ZERO(res->phy_ahb_reset);
> >  }
> >  
> >  static void qcom_pcie_deinit_2_4_0(struct qcom_pcie *pcie)
> > diff --git a/drivers/pci/controller/pci-tegra.c b/drivers/pci/controller/pci-tegra.c
> > index 464ba25..3cd5069 100644
> > --- a/drivers/pci/controller/pci-tegra.c
> > +++ b/drivers/pci/controller/pci-tegra.c
> > @@ -1129,10 +1129,8 @@ static int tegra_pcie_resets_get(struct tegra_pcie *pcie)
> >  		return PTR_ERR(pcie->afi_rst);
> >  
> >  	pcie->pcie_xrst = devm_reset_control_get_exclusive(dev, "pcie_x");
> > -	if (IS_ERR(pcie->pcie_xrst))
> > -		return PTR_ERR(pcie->pcie_xrst);
> >  
> > -	return 0;
> > +	return PTR_ERR_OR_ZERO(pcie->pcie_xrst);
> >  }
> >  
> >  static int tegra_pcie_phys_get_legacy(struct tegra_pcie *pcie)
> > -- 
> > 2.7.4
> > 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
