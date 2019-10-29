Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB12E8E2A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 18:34:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ondyjCoNcxY0vrNyHkfH1gH7DEj3XogKEFT9WFzOJoM=; b=Nw14AS5h9eoawO
	CGMais22shhdweG/W3KRFpvjEKrQRrgiIudCDomIiRKmFXNqd3fBrlGXHvFuKabtoGDPmdoZlKlNz
	Yr0cGuOrV9VkE2z+FTzWjCRrE0w7yS08/aw5Sog/aKZhpsH8NwYE+y4YlcIPBQeOumEVeBvT6P0Q3
	oUCiU+N2j070nKzWe7L5JT0wp6k68a8uny/4q0+SCpKSwWxVaVHG4UJv/kphfSduReOl0mtkJNkxF
	apoPJlMvuNtmuVgQr/ab8fEj7ApcuAhtsRYs7BQcUUxItoUFqyxt51WNrjrA2J+topnuotFMuQRMZ
	lYRPbIEdr1HkcNt9dmqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPVOQ-000160-So; Tue, 29 Oct 2019 17:34:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPVNt-0000mn-J6; Tue, 29 Oct 2019 17:34:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 53A801FB;
 Tue, 29 Oct 2019 10:34:15 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BB2123F71F;
 Tue, 29 Oct 2019 10:34:11 -0700 (PDT)
Date: Tue, 29 Oct 2019 17:34:06 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Srinath Mannam <srinath.mannam@broadcom.com>
Subject: Re: [PATCH v3 19/25] PCI: of: Add inbound resource parsing to helpers
Message-ID: <20191029173406.GA25104@e121166-lin.cambridge.arm.com>
References: <20191028163256.8004-1-robh@kernel.org>
 <20191028163256.8004-20-robh@kernel.org>
 <20191029110751.GB27171@e121166-lin.cambridge.arm.com>
 <CABe79T7LPi-XvzARVh-_oVnv1Dr=Uzztps-W2vTr_7gSeiPFQg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABe79T7LPi-XvzARVh-_oVnv1Dr=Uzztps-W2vTr_7gSeiPFQg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_103421_723856_5BC5C550 
X-CRM114-Status: GOOD (  26.17  )
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Rob Herring <robh@kernel.org>, Ryder Lee <ryder.lee@mediatek.com>,
 Michal Simek <michal.simek@xilinx.com>, Christoph Hellwig <hch@infradead.org>,
 linux-rockchip@lists.infradead.org,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Simon Horman <horms@verge.net.au>,
 linux-mediatek@lists.infradead.org, Andrew Murray <andrew.murray@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Scott Branden <sbranden@broadcom.com>, Jingoo Han <jingoohan1@gmail.com>,
 rfi@lists.rocketboards.org, linux-renesas-soc@vger.kernel.org,
 Tom Joseph <tjoseph@cadence.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 09:26:51PM +0530, Srinath Mannam wrote:
> Hi Lorenzo,
> 
> All changes are looks good to me.
> I have one doubt regarding, resources added in the
> "bridge->dma_ranges" list are expected to be in sorted order which are
> used in "iova_reserve_pci_windows". Please correct me if I missed any
> patch specific to this.

No I don't think so, it is just that we need to decide which piece of
code should sort that list, whether in this patchset or by patching the
kernel in iova_reserve_pci_windows().

I tend to think the sorting should be done in iova_reserve_pci_windows()
because that's where the requirement is.

Lorenzo

> Regards,
> Srinath.
> 
> On Tue, Oct 29, 2019 at 4:37 PM Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com> wrote:
> >
> > On Mon, Oct 28, 2019 at 11:32:50AM -0500, Rob Herring wrote:
> > > Extend devm_of_pci_get_host_bridge_resources() and
> > > pci_parse_request_of_pci_ranges() helpers to also parse the inbound
> > > addresses from DT 'dma-ranges' and populate a resource list with the
> > > translated addresses. This will help ensure 'dma-ranges' is always
> > > parsed in a consistent way.
> > >
> > > Cc: Jingoo Han <jingoohan1@gmail.com>
> > > Cc: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> > > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > > Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
> > > Cc: Will Deacon <will@kernel.org>
> > > Cc: Linus Walleij <linus.walleij@linaro.org>
> > > Cc: Toan Le <toan@os.amperecomputing.com>
> > > Cc: Ley Foon Tan <lftan@altera.com>
> > > Cc: Tom Joseph <tjoseph@cadence.com>
> > > Cc: Ray Jui <rjui@broadcom.com>
> > > Cc: Scott Branden <sbranden@broadcom.com>
> > > Cc: bcm-kernel-feedback-list@broadcom.com
> > > Cc: Ryder Lee <ryder.lee@mediatek.com>
> > > Cc: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>
> > > Cc: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> > > Cc: Simon Horman <horms@verge.net.au>
> > > Cc: Shawn Lin <shawn.lin@rock-chips.com>
> > > Cc: Heiko Stuebner <heiko@sntech.de>
> > > Cc: Michal Simek <michal.simek@xilinx.com>
> > > Cc: rfi@lists.rocketboards.org
> > > Cc: linux-mediatek@lists.infradead.org
> > > Cc: linux-renesas-soc@vger.kernel.org
> > > Cc: linux-rockchip@lists.infradead.org
> > > Tested-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com> # for AArdvark
> > > Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> > > Acked-by: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > ---
> > > v2:
> > >  - Fix crash in INIT_LIST_HEAD when ib_resources is NULL
> > > ---
> > >  .../pci/controller/dwc/pcie-designware-host.c |  3 +-
> > >  drivers/pci/controller/pci-aardvark.c         |  2 +-
> > >  drivers/pci/controller/pci-ftpci100.c         |  3 +-
> > >  drivers/pci/controller/pci-host-common.c      |  2 +-
> > >  drivers/pci/controller/pci-v3-semi.c          |  3 +-
> > >  drivers/pci/controller/pci-versatile.c        |  3 +-
> > >  drivers/pci/controller/pci-xgene.c            |  3 +-
> > >  drivers/pci/controller/pcie-altera.c          |  2 +-
> > >  drivers/pci/controller/pcie-cadence-host.c    |  2 +-
> > >  drivers/pci/controller/pcie-iproc-platform.c  |  3 +-
> > >  drivers/pci/controller/pcie-mediatek.c        |  2 +-
> > >  drivers/pci/controller/pcie-mobiveil.c        |  3 +-
> > >  drivers/pci/controller/pcie-rcar.c            |  3 +-
> > >  drivers/pci/controller/pcie-rockchip-host.c   |  3 +-
> > >  drivers/pci/controller/pcie-xilinx-nwl.c      |  3 +-
> > >  drivers/pci/controller/pcie-xilinx.c          |  3 +-
> > >  drivers/pci/of.c                              | 45 ++++++++++++++++++-
> > >  drivers/pci/pci.h                             |  8 +++-
> > >  include/linux/pci.h                           |  9 ++--
> > >  19 files changed, 82 insertions(+), 23 deletions(-)
> >
> > Hi Bjorn,
> >
> > please let me know if you are OK with this patch, the series is
> > ready to go upstream IMO.
> >
> > Thanks,
> > Lorenzo
> >
> > > diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> > > index aeec8b65eb97..f7b1d80c4a0a 100644
> > > --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> > > +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> > > @@ -342,7 +342,8 @@ int dw_pcie_host_init(struct pcie_port *pp)
> > >       if (!bridge)
> > >               return -ENOMEM;
> > >
> > > -     ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
> > > +     ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> > > +                                           &bridge->dma_ranges, NULL);
> > >       if (ret)
> > >               return ret;
> > >
> > > diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
> > > index 9cbeba507f0c..b34eaa2cd762 100644
> > > --- a/drivers/pci/controller/pci-aardvark.c
> > > +++ b/drivers/pci/controller/pci-aardvark.c
> > > @@ -939,7 +939,7 @@ static int advk_pcie_probe(struct platform_device *pdev)
> > >       }
> > >
> > >       ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> > > -                                           &bus);
> > > +                                           &bridge->dma_ranges, &bus);
> > >       if (ret) {
> > >               dev_err(dev, "Failed to parse resources\n");
> > >               return ret;
> > > diff --git a/drivers/pci/controller/pci-ftpci100.c b/drivers/pci/controller/pci-ftpci100.c
> > > index 75603348b88a..66288b94e92d 100644
> > > --- a/drivers/pci/controller/pci-ftpci100.c
> > > +++ b/drivers/pci/controller/pci-ftpci100.c
> > > @@ -477,7 +477,8 @@ static int faraday_pci_probe(struct platform_device *pdev)
> > >       if (IS_ERR(p->base))
> > >               return PTR_ERR(p->base);
> > >
> > > -     ret = pci_parse_request_of_pci_ranges(dev, &host->windows, NULL);
> > > +     ret = pci_parse_request_of_pci_ranges(dev, &host->windows,
> > > +                                           &host->dma_ranges, NULL);
> > >       if (ret)
> > >               return ret;
> > >
> > > diff --git a/drivers/pci/controller/pci-host-common.c b/drivers/pci/controller/pci-host-common.c
> > > index c8cb9c5188a4..250a3fc80ec6 100644
> > > --- a/drivers/pci/controller/pci-host-common.c
> > > +++ b/drivers/pci/controller/pci-host-common.c
> > > @@ -27,7 +27,7 @@ static struct pci_config_window *gen_pci_init(struct device *dev,
> > >       struct pci_config_window *cfg;
> > >
> > >       /* Parse our PCI ranges and request their resources */
> > > -     err = pci_parse_request_of_pci_ranges(dev, resources, &bus_range);
> > > +     err = pci_parse_request_of_pci_ranges(dev, resources, NULL, &bus_range);
> > >       if (err)
> > >               return ERR_PTR(err);
> > >
> > > diff --git a/drivers/pci/controller/pci-v3-semi.c b/drivers/pci/controller/pci-v3-semi.c
> > > index 96677520f6c1..2209c7671115 100644
> > > --- a/drivers/pci/controller/pci-v3-semi.c
> > > +++ b/drivers/pci/controller/pci-v3-semi.c
> > > @@ -776,7 +776,8 @@ static int v3_pci_probe(struct platform_device *pdev)
> > >       if (IS_ERR(v3->config_base))
> > >               return PTR_ERR(v3->config_base);
> > >
> > > -     ret = pci_parse_request_of_pci_ranges(dev, &host->windows, NULL);
> > > +     ret = pci_parse_request_of_pci_ranges(dev, &host->windows,
> > > +                                           &host->dma_ranges, NULL);
> > >       if (ret)
> > >               return ret;
> > >
> > > diff --git a/drivers/pci/controller/pci-versatile.c b/drivers/pci/controller/pci-versatile.c
> > > index eae1b859990b..b911359b6d81 100644
> > > --- a/drivers/pci/controller/pci-versatile.c
> > > +++ b/drivers/pci/controller/pci-versatile.c
> > > @@ -92,7 +92,8 @@ static int versatile_pci_probe(struct platform_device *pdev)
> > >       if (IS_ERR(versatile_cfg_base[1]))
> > >               return PTR_ERR(versatile_cfg_base[1]);
> > >
> > > -     ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
> > > +     ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> > > +                                           NULL, NULL);
> > >       if (ret)
> > >               return ret;
> > >
> > > diff --git a/drivers/pci/controller/pci-xgene.c b/drivers/pci/controller/pci-xgene.c
> > > index 7d0f0395a479..9408269d943d 100644
> > > --- a/drivers/pci/controller/pci-xgene.c
> > > +++ b/drivers/pci/controller/pci-xgene.c
> > > @@ -627,7 +627,8 @@ static int xgene_pcie_probe(struct platform_device *pdev)
> > >       if (ret)
> > >               return ret;
> > >
> > > -     ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
> > > +     ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> > > +                                           &bridge->dma_ranges, NULL);
> > >       if (ret)
> > >               return ret;
> > >
> > > diff --git a/drivers/pci/controller/pcie-altera.c b/drivers/pci/controller/pcie-altera.c
> > > index ba025efeae28..b447c3e4abad 100644
> > > --- a/drivers/pci/controller/pcie-altera.c
> > > +++ b/drivers/pci/controller/pcie-altera.c
> > > @@ -800,7 +800,7 @@ static int altera_pcie_probe(struct platform_device *pdev)
> > >       }
> > >
> > >       ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> > > -                                           NULL);
> > > +                                           &bridge->dma_ranges, NULL);
> > >       if (ret) {
> > >               dev_err(dev, "Failed add resources\n");
> > >               return ret;
> > > diff --git a/drivers/pci/controller/pcie-cadence-host.c b/drivers/pci/controller/pcie-cadence-host.c
> > > index 97e251090b4f..a8f7a6284c3e 100644
> > > --- a/drivers/pci/controller/pcie-cadence-host.c
> > > +++ b/drivers/pci/controller/pcie-cadence-host.c
> > > @@ -211,7 +211,7 @@ static int cdns_pcie_host_init(struct device *dev,
> > >       int err;
> > >
> > >       /* Parse our PCI ranges and request their resources */
> > > -     err = pci_parse_request_of_pci_ranges(dev, resources, &bus_range);
> > > +     err = pci_parse_request_of_pci_ranges(dev, resources, NULL, &bus_range);
> > >       if (err)
> > >               return err;
> > >
> > > diff --git a/drivers/pci/controller/pcie-iproc-platform.c b/drivers/pci/controller/pcie-iproc-platform.c
> > > index 375d815f7301..ff0a81a632a1 100644
> > > --- a/drivers/pci/controller/pcie-iproc-platform.c
> > > +++ b/drivers/pci/controller/pcie-iproc-platform.c
> > > @@ -95,7 +95,8 @@ static int iproc_pcie_pltfm_probe(struct platform_device *pdev)
> > >       if (IS_ERR(pcie->phy))
> > >               return PTR_ERR(pcie->phy);
> > >
> > > -     ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
> > > +     ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> > > +                                           &bridge->dma_ranges, NULL);
> > >       if (ret) {
> > >               dev_err(dev, "unable to get PCI host bridge resources\n");
> > >               return ret;
> > > diff --git a/drivers/pci/controller/pcie-mediatek.c b/drivers/pci/controller/pcie-mediatek.c
> > > index d9206a3cd56b..cb982891b22b 100644
> > > --- a/drivers/pci/controller/pcie-mediatek.c
> > > +++ b/drivers/pci/controller/pcie-mediatek.c
> > > @@ -1034,7 +1034,7 @@ static int mtk_pcie_setup(struct mtk_pcie *pcie)
> > >       int err;
> > >
> > >       err = pci_parse_request_of_pci_ranges(dev, windows,
> > > -                                           &bus);
> > > +                                           &host->dma_ranges, &bus);
> > >       if (err)
> > >               return err;
> > >
> > > diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
> > > index 4eab8624ce4d..257ba49c177c 100644
> > > --- a/drivers/pci/controller/pcie-mobiveil.c
> > > +++ b/drivers/pci/controller/pcie-mobiveil.c
> > > @@ -875,7 +875,8 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
> > >       }
> > >
> > >       /* parse the host bridge base addresses from the device tree file */
> > > -     ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
> > > +     ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> > > +                                           &bridge->dma_ranges, NULL);
> > >       if (ret) {
> > >               dev_err(dev, "Getting bridge resources failed\n");
> > >               return ret;
> > > diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/pcie-rcar.c
> > > index f6a669a9af41..b8d6e86a5539 100644
> > > --- a/drivers/pci/controller/pcie-rcar.c
> > > +++ b/drivers/pci/controller/pcie-rcar.c
> > > @@ -1138,7 +1138,8 @@ static int rcar_pcie_probe(struct platform_device *pdev)
> > >       pcie->dev = dev;
> > >       platform_set_drvdata(pdev, pcie);
> > >
> > > -     err = pci_parse_request_of_pci_ranges(dev, &pcie->resources, NULL);
> > > +     err = pci_parse_request_of_pci_ranges(dev, &pcie->resources,
> > > +                                           &bridge->dma_ranges, NULL);
> > >       if (err)
> > >               goto err_free_bridge;
> > >
> > > diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> > > index f375e55ea02e..ee83f8494ee9 100644
> > > --- a/drivers/pci/controller/pcie-rockchip-host.c
> > > +++ b/drivers/pci/controller/pcie-rockchip-host.c
> > > @@ -1004,7 +1004,8 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
> > >       if (err < 0)
> > >               goto err_deinit_port;
> > >
> > > -     err = pci_parse_request_of_pci_ranges(dev, &bridge->windows, &bus_res);
> > > +     err = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> > > +                                           &bridge->dma_ranges, &bus_res);
> > >       if (err)
> > >               goto err_remove_irq_domain;
> > >
> > > diff --git a/drivers/pci/controller/pcie-xilinx-nwl.c b/drivers/pci/controller/pcie-xilinx-nwl.c
> > > index e135a4b60489..9bd1427f2fd6 100644
> > > --- a/drivers/pci/controller/pcie-xilinx-nwl.c
> > > +++ b/drivers/pci/controller/pcie-xilinx-nwl.c
> > > @@ -843,7 +843,8 @@ static int nwl_pcie_probe(struct platform_device *pdev)
> > >               return err;
> > >       }
> > >
> > > -     err = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
> > > +     err = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> > > +                                           &bridge->dma_ranges, NULL);
> > >       if (err) {
> > >               dev_err(dev, "Getting bridge resources failed\n");
> > >               return err;
> > > diff --git a/drivers/pci/controller/pcie-xilinx.c b/drivers/pci/controller/pcie-xilinx.c
> > > index 257702288787..98e55297815b 100644
> > > --- a/drivers/pci/controller/pcie-xilinx.c
> > > +++ b/drivers/pci/controller/pcie-xilinx.c
> > > @@ -645,7 +645,8 @@ static int xilinx_pcie_probe(struct platform_device *pdev)
> > >               return err;
> > >       }
> > >
> > > -     err = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
> > > +     err = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> > > +                                           &bridge->dma_ranges, NULL);
> > >       if (err) {
> > >               dev_err(dev, "Getting bridge resources failed\n");
> > >               return err;
> > > diff --git a/drivers/pci/of.c b/drivers/pci/of.c
> > > index f3da49a31db4..0b1e4623dfcf 100644
> > > --- a/drivers/pci/of.c
> > > +++ b/drivers/pci/of.c
> > > @@ -257,7 +257,9 @@ EXPORT_SYMBOL_GPL(of_pci_check_probe_only);
> > >   */
> > >  int devm_of_pci_get_host_bridge_resources(struct device *dev,
> > >                       unsigned char busno, unsigned char bus_max,
> > > -                     struct list_head *resources, resource_size_t *io_base)
> > > +                     struct list_head *resources,
> > > +                     struct list_head *ib_resources,
> > > +                     resource_size_t *io_base)
> > >  {
> > >       struct device_node *dev_node = dev->of_node;
> > >       struct resource *res, tmp_res;
> > > @@ -340,6 +342,42 @@ int devm_of_pci_get_host_bridge_resources(struct device *dev,
> > >               pci_add_resource_offset(resources, res, res->start - range.pci_addr);
> > >       }
> > >
> > > +     /* Check for dma-ranges property */
> > > +     if (!ib_resources)
> > > +             return 0;
> > > +     err = of_pci_dma_range_parser_init(&parser, dev_node);
> > > +     if (err)
> > > +             return 0;
> > > +
> > > +     dev_dbg(dev, "Parsing dma-ranges property...\n");
> > > +     for_each_of_pci_range(&parser, &range) {
> > > +             /*
> > > +              * If we failed translation or got a zero-sized region
> > > +              * then skip this range
> > > +              */
> > > +             if (((range.flags & IORESOURCE_TYPE_BITS) != IORESOURCE_MEM) ||
> > > +                 range.cpu_addr == OF_BAD_ADDR || range.size == 0)
> > > +                     continue;
> > > +
> > > +             dev_info(dev, "IB MEM %#010llx..%#010llx -> %#010llx\n",
> > > +                      range.cpu_addr,
> > > +                      range.cpu_addr + range.size - 1, range.pci_addr);
> > > +
> > > +
> > > +             err = of_pci_range_to_resource(&range, dev_node, &tmp_res);
> > > +             if (err)
> > > +                     continue;
> > > +
> > > +             res = devm_kmemdup(dev, &tmp_res, sizeof(tmp_res), GFP_KERNEL);
> > > +             if (!res) {
> > > +                     err = -ENOMEM;
> > > +                     goto failed;
> > > +             }
> > > +
> > > +             pci_add_resource_offset(ib_resources, res,
> > > +                                     res->start - range.pci_addr);
> > > +     }
> > > +
> > >       return 0;
> > >
> > >  failed:
> > > @@ -482,6 +520,7 @@ EXPORT_SYMBOL_GPL(of_irq_parse_and_map_pci);
> > >
> > >  int pci_parse_request_of_pci_ranges(struct device *dev,
> > >                                   struct list_head *resources,
> > > +                                 struct list_head *ib_resources,
> > >                                   struct resource **bus_range)
> > >  {
> > >       int err, res_valid = 0;
> > > @@ -489,8 +528,10 @@ int pci_parse_request_of_pci_ranges(struct device *dev,
> > >       struct resource_entry *win, *tmp;
> > >
> > >       INIT_LIST_HEAD(resources);
> > > +     if (ib_resources)
> > > +             INIT_LIST_HEAD(ib_resources);
> > >       err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, resources,
> > > -                                                 &iobase);
> > > +                                                 ib_resources, &iobase);
> > >       if (err)
> > >               return err;
> > >
> > > diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
> > > index 3f6947ee3324..6692c4fe4290 100644
> > > --- a/drivers/pci/pci.h
> > > +++ b/drivers/pci/pci.h
> > > @@ -633,11 +633,15 @@ static inline void pci_release_bus_of_node(struct pci_bus *bus) { }
> > >  #if defined(CONFIG_OF_ADDRESS)
> > >  int devm_of_pci_get_host_bridge_resources(struct device *dev,
> > >                       unsigned char busno, unsigned char bus_max,
> > > -                     struct list_head *resources, resource_size_t *io_base);
> > > +                     struct list_head *resources,
> > > +                     struct list_head *ib_resources,
> > > +                     resource_size_t *io_base);
> > >  #else
> > >  static inline int devm_of_pci_get_host_bridge_resources(struct device *dev,
> > >                       unsigned char busno, unsigned char bus_max,
> > > -                     struct list_head *resources, resource_size_t *io_base)
> > > +                     struct list_head *resources,
> > > +                     struct list_head *ib_resources,
> > > +                     resource_size_t *io_base)
> > >  {
> > >       return -EINVAL;
> > >  }
> > > diff --git a/include/linux/pci.h b/include/linux/pci.h
> > > index f9088c89a534..5cb94916eaa1 100644
> > > --- a/include/linux/pci.h
> > > +++ b/include/linux/pci.h
> > > @@ -2278,6 +2278,7 @@ struct irq_domain;
> > >  struct irq_domain *pci_host_bridge_of_msi_domain(struct pci_bus *bus);
> > >  int pci_parse_request_of_pci_ranges(struct device *dev,
> > >                                   struct list_head *resources,
> > > +                                 struct list_head *ib_resources,
> > >                                   struct resource **bus_range);
> > >
> > >  /* Arch may override this (weak) */
> > > @@ -2286,9 +2287,11 @@ struct device_node *pcibios_get_phb_of_node(struct pci_bus *bus);
> > >  #else        /* CONFIG_OF */
> > >  static inline struct irq_domain *
> > >  pci_host_bridge_of_msi_domain(struct pci_bus *bus) { return NULL; }
> > > -static inline int pci_parse_request_of_pci_ranges(struct device *dev,
> > > -                                               struct list_head *resources,
> > > -                                               struct resource **bus_range)
> > > +static inline int
> > > +pci_parse_request_of_pci_ranges(struct device *dev,
> > > +                             struct list_head *resources,
> > > +                             struct list_head *ib_resources,
> > > +                             struct resource **bus_range)
> > >  {
> > >       return -EINVAL;
> > >  }
> > > --
> > > 2.20.1
> > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
