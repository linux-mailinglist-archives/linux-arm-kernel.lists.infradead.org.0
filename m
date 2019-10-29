Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABF2E8C39
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 16:57:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nVPSYQ895wkqVtxVDUpwrRVbnpDfbR4ux7p+K8/Rf/4=; b=o3d1bQMVtDxe9L
	97dUyvNgSqp4zwQWuvM3wrlEBm8mmwcv97J9a5OC59i82tMC68DhaLtiE4Tb0t7HRwrgCUI1H4r/1
	C5+pX/a9fxmgIvnd7FgLCibm4AhESKojRJh6EK0abSD1dR5S+nAR300pXkhQj0wyM/3lWnQX/XKIp
	jgsN9iK23b9Y/UDCyT16+sZ1uGQpFfLQqOi2HJR0qLSM3NLnLXa+ysMVo9fxW2lXZhYBJxvcyKcl0
	yVEHh2Zs7dz9iYv4z9oJQ8R9Qo0cy6H7MhGbAmh+wej7NaWJb9zY4Ht6HS3YQ88l/SZlMy1nVj6eg
	h1JuqVJ8BGCWMKGOjkLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPTs3-0000iK-Cj; Tue, 29 Oct 2019 15:57:23 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPTrm-0000eB-U3
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 15:57:12 +0000
Received: by mail-wr1-x444.google.com with SMTP id w18so14263056wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 08:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+9HgdeOFfyKTqcHpQgvUplqGjd/QZNN7r0/vdq5nMsg=;
 b=HPSLDEkmuFPJhqnJFwb/Fg6waWHOZmboa5D8x+29TROsrBZf+adk4rHYdob7RUZA7f
 W0gnYwVrVpEBQkwIVPA6cFvI4VTdjjcVtYxUWnqquPWF15hqu+z5pFBvJyd108M7eOWf
 YO70CuD9qfNx+KQu+B++zD+fecsSxFouBVDGc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+9HgdeOFfyKTqcHpQgvUplqGjd/QZNN7r0/vdq5nMsg=;
 b=RVWZHn9rHlmzAGhArDFtBa87Oq/6OlIrePPty35kfiBLvy2hcMI8fUqlVjIb3hYTl0
 U3Jvr9MV3Nr9B7vu5/oe/d2cgyGWzqzyqFAbp3he38c1M+Jg4z2vm83lWFKOqEjhSZ8w
 XD9bmF3eQJn6RSi0MoVEIzMC4q5gccf41yZJxhVbdW6YZrld0HMLasJmAMMj0NrLBBlC
 onW3axhP9Q8jDFmooDA55q3vXekmdZoNHaxx0FTe67ejtoqW8Luq1RjTuTNaa9YL7L4U
 zdZm1K7dcwmqcXvHXoZ6Ep/1fmMW5CY/6JqLQSXpLWwGN1nYSO55xIoixr7rn/DQoInS
 cndw==
X-Gm-Message-State: APjAAAWGtwiHheJxxhVIQTLICpRHRpwxk2/qt/bI2fu5QbZqllETN3sR
 3bqwuOnStf6AeL+dsEcLqm6I12SCr2MeA9Gx6e5dCQ==
X-Google-Smtp-Source: APXvYqy38mj6NenP5LYzJpT1n/DNqNYBuYzCW8J1WFz5xO9UypBLcsy0Nje96sCBrCE5sDgEyfCZhUw2kDddkhZzE9M=
X-Received: by 2002:a5d:4a82:: with SMTP id o2mr20189074wrq.186.1572364623017; 
 Tue, 29 Oct 2019 08:57:03 -0700 (PDT)
MIME-Version: 1.0
References: <20191028163256.8004-1-robh@kernel.org>
 <20191028163256.8004-20-robh@kernel.org>
 <20191029110751.GB27171@e121166-lin.cambridge.arm.com>
In-Reply-To: <20191029110751.GB27171@e121166-lin.cambridge.arm.com>
From: Srinath Mannam <srinath.mannam@broadcom.com>
Date: Tue, 29 Oct 2019 21:26:51 +0530
Message-ID: <CABe79T7LPi-XvzARVh-_oVnv1Dr=Uzztps-W2vTr_7gSeiPFQg@mail.gmail.com>
Subject: Re: [PATCH v3 19/25] PCI: of: Add inbound resource parsing to helpers
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_085706_980094_7F543474 
X-CRM114-Status: GOOD (  22.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Hi Lorenzo,

All changes are looks good to me.
I have one doubt regarding, resources added in the
"bridge->dma_ranges" list are expected to be in sorted order which are
used in "iova_reserve_pci_windows". Please correct me if I missed any
patch specific to this.

Regards,
Srinath.

On Tue, Oct 29, 2019 at 4:37 PM Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Mon, Oct 28, 2019 at 11:32:50AM -0500, Rob Herring wrote:
> > Extend devm_of_pci_get_host_bridge_resources() and
> > pci_parse_request_of_pci_ranges() helpers to also parse the inbound
> > addresses from DT 'dma-ranges' and populate a resource list with the
> > translated addresses. This will help ensure 'dma-ranges' is always
> > parsed in a consistent way.
> >
> > Cc: Jingoo Han <jingoohan1@gmail.com>
> > Cc: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Linus Walleij <linus.walleij@linaro.org>
> > Cc: Toan Le <toan@os.amperecomputing.com>
> > Cc: Ley Foon Tan <lftan@altera.com>
> > Cc: Tom Joseph <tjoseph@cadence.com>
> > Cc: Ray Jui <rjui@broadcom.com>
> > Cc: Scott Branden <sbranden@broadcom.com>
> > Cc: bcm-kernel-feedback-list@broadcom.com
> > Cc: Ryder Lee <ryder.lee@mediatek.com>
> > Cc: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>
> > Cc: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> > Cc: Simon Horman <horms@verge.net.au>
> > Cc: Shawn Lin <shawn.lin@rock-chips.com>
> > Cc: Heiko Stuebner <heiko@sntech.de>
> > Cc: Michal Simek <michal.simek@xilinx.com>
> > Cc: rfi@lists.rocketboards.org
> > Cc: linux-mediatek@lists.infradead.org
> > Cc: linux-renesas-soc@vger.kernel.org
> > Cc: linux-rockchip@lists.infradead.org
> > Tested-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com> # for AArdvark
> > Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> > Acked-by: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> > v2:
> >  - Fix crash in INIT_LIST_HEAD when ib_resources is NULL
> > ---
> >  .../pci/controller/dwc/pcie-designware-host.c |  3 +-
> >  drivers/pci/controller/pci-aardvark.c         |  2 +-
> >  drivers/pci/controller/pci-ftpci100.c         |  3 +-
> >  drivers/pci/controller/pci-host-common.c      |  2 +-
> >  drivers/pci/controller/pci-v3-semi.c          |  3 +-
> >  drivers/pci/controller/pci-versatile.c        |  3 +-
> >  drivers/pci/controller/pci-xgene.c            |  3 +-
> >  drivers/pci/controller/pcie-altera.c          |  2 +-
> >  drivers/pci/controller/pcie-cadence-host.c    |  2 +-
> >  drivers/pci/controller/pcie-iproc-platform.c  |  3 +-
> >  drivers/pci/controller/pcie-mediatek.c        |  2 +-
> >  drivers/pci/controller/pcie-mobiveil.c        |  3 +-
> >  drivers/pci/controller/pcie-rcar.c            |  3 +-
> >  drivers/pci/controller/pcie-rockchip-host.c   |  3 +-
> >  drivers/pci/controller/pcie-xilinx-nwl.c      |  3 +-
> >  drivers/pci/controller/pcie-xilinx.c          |  3 +-
> >  drivers/pci/of.c                              | 45 ++++++++++++++++++-
> >  drivers/pci/pci.h                             |  8 +++-
> >  include/linux/pci.h                           |  9 ++--
> >  19 files changed, 82 insertions(+), 23 deletions(-)
>
> Hi Bjorn,
>
> please let me know if you are OK with this patch, the series is
> ready to go upstream IMO.
>
> Thanks,
> Lorenzo
>
> > diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> > index aeec8b65eb97..f7b1d80c4a0a 100644
> > --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> > +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> > @@ -342,7 +342,8 @@ int dw_pcie_host_init(struct pcie_port *pp)
> >       if (!bridge)
> >               return -ENOMEM;
> >
> > -     ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
> > +     ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> > +                                           &bridge->dma_ranges, NULL);
> >       if (ret)
> >               return ret;
> >
> > diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
> > index 9cbeba507f0c..b34eaa2cd762 100644
> > --- a/drivers/pci/controller/pci-aardvark.c
> > +++ b/drivers/pci/controller/pci-aardvark.c
> > @@ -939,7 +939,7 @@ static int advk_pcie_probe(struct platform_device *pdev)
> >       }
> >
> >       ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> > -                                           &bus);
> > +                                           &bridge->dma_ranges, &bus);
> >       if (ret) {
> >               dev_err(dev, "Failed to parse resources\n");
> >               return ret;
> > diff --git a/drivers/pci/controller/pci-ftpci100.c b/drivers/pci/controller/pci-ftpci100.c
> > index 75603348b88a..66288b94e92d 100644
> > --- a/drivers/pci/controller/pci-ftpci100.c
> > +++ b/drivers/pci/controller/pci-ftpci100.c
> > @@ -477,7 +477,8 @@ static int faraday_pci_probe(struct platform_device *pdev)
> >       if (IS_ERR(p->base))
> >               return PTR_ERR(p->base);
> >
> > -     ret = pci_parse_request_of_pci_ranges(dev, &host->windows, NULL);
> > +     ret = pci_parse_request_of_pci_ranges(dev, &host->windows,
> > +                                           &host->dma_ranges, NULL);
> >       if (ret)
> >               return ret;
> >
> > diff --git a/drivers/pci/controller/pci-host-common.c b/drivers/pci/controller/pci-host-common.c
> > index c8cb9c5188a4..250a3fc80ec6 100644
> > --- a/drivers/pci/controller/pci-host-common.c
> > +++ b/drivers/pci/controller/pci-host-common.c
> > @@ -27,7 +27,7 @@ static struct pci_config_window *gen_pci_init(struct device *dev,
> >       struct pci_config_window *cfg;
> >
> >       /* Parse our PCI ranges and request their resources */
> > -     err = pci_parse_request_of_pci_ranges(dev, resources, &bus_range);
> > +     err = pci_parse_request_of_pci_ranges(dev, resources, NULL, &bus_range);
> >       if (err)
> >               return ERR_PTR(err);
> >
> > diff --git a/drivers/pci/controller/pci-v3-semi.c b/drivers/pci/controller/pci-v3-semi.c
> > index 96677520f6c1..2209c7671115 100644
> > --- a/drivers/pci/controller/pci-v3-semi.c
> > +++ b/drivers/pci/controller/pci-v3-semi.c
> > @@ -776,7 +776,8 @@ static int v3_pci_probe(struct platform_device *pdev)
> >       if (IS_ERR(v3->config_base))
> >               return PTR_ERR(v3->config_base);
> >
> > -     ret = pci_parse_request_of_pci_ranges(dev, &host->windows, NULL);
> > +     ret = pci_parse_request_of_pci_ranges(dev, &host->windows,
> > +                                           &host->dma_ranges, NULL);
> >       if (ret)
> >               return ret;
> >
> > diff --git a/drivers/pci/controller/pci-versatile.c b/drivers/pci/controller/pci-versatile.c
> > index eae1b859990b..b911359b6d81 100644
> > --- a/drivers/pci/controller/pci-versatile.c
> > +++ b/drivers/pci/controller/pci-versatile.c
> > @@ -92,7 +92,8 @@ static int versatile_pci_probe(struct platform_device *pdev)
> >       if (IS_ERR(versatile_cfg_base[1]))
> >               return PTR_ERR(versatile_cfg_base[1]);
> >
> > -     ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
> > +     ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> > +                                           NULL, NULL);
> >       if (ret)
> >               return ret;
> >
> > diff --git a/drivers/pci/controller/pci-xgene.c b/drivers/pci/controller/pci-xgene.c
> > index 7d0f0395a479..9408269d943d 100644
> > --- a/drivers/pci/controller/pci-xgene.c
> > +++ b/drivers/pci/controller/pci-xgene.c
> > @@ -627,7 +627,8 @@ static int xgene_pcie_probe(struct platform_device *pdev)
> >       if (ret)
> >               return ret;
> >
> > -     ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
> > +     ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> > +                                           &bridge->dma_ranges, NULL);
> >       if (ret)
> >               return ret;
> >
> > diff --git a/drivers/pci/controller/pcie-altera.c b/drivers/pci/controller/pcie-altera.c
> > index ba025efeae28..b447c3e4abad 100644
> > --- a/drivers/pci/controller/pcie-altera.c
> > +++ b/drivers/pci/controller/pcie-altera.c
> > @@ -800,7 +800,7 @@ static int altera_pcie_probe(struct platform_device *pdev)
> >       }
> >
> >       ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> > -                                           NULL);
> > +                                           &bridge->dma_ranges, NULL);
> >       if (ret) {
> >               dev_err(dev, "Failed add resources\n");
> >               return ret;
> > diff --git a/drivers/pci/controller/pcie-cadence-host.c b/drivers/pci/controller/pcie-cadence-host.c
> > index 97e251090b4f..a8f7a6284c3e 100644
> > --- a/drivers/pci/controller/pcie-cadence-host.c
> > +++ b/drivers/pci/controller/pcie-cadence-host.c
> > @@ -211,7 +211,7 @@ static int cdns_pcie_host_init(struct device *dev,
> >       int err;
> >
> >       /* Parse our PCI ranges and request their resources */
> > -     err = pci_parse_request_of_pci_ranges(dev, resources, &bus_range);
> > +     err = pci_parse_request_of_pci_ranges(dev, resources, NULL, &bus_range);
> >       if (err)
> >               return err;
> >
> > diff --git a/drivers/pci/controller/pcie-iproc-platform.c b/drivers/pci/controller/pcie-iproc-platform.c
> > index 375d815f7301..ff0a81a632a1 100644
> > --- a/drivers/pci/controller/pcie-iproc-platform.c
> > +++ b/drivers/pci/controller/pcie-iproc-platform.c
> > @@ -95,7 +95,8 @@ static int iproc_pcie_pltfm_probe(struct platform_device *pdev)
> >       if (IS_ERR(pcie->phy))
> >               return PTR_ERR(pcie->phy);
> >
> > -     ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
> > +     ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> > +                                           &bridge->dma_ranges, NULL);
> >       if (ret) {
> >               dev_err(dev, "unable to get PCI host bridge resources\n");
> >               return ret;
> > diff --git a/drivers/pci/controller/pcie-mediatek.c b/drivers/pci/controller/pcie-mediatek.c
> > index d9206a3cd56b..cb982891b22b 100644
> > --- a/drivers/pci/controller/pcie-mediatek.c
> > +++ b/drivers/pci/controller/pcie-mediatek.c
> > @@ -1034,7 +1034,7 @@ static int mtk_pcie_setup(struct mtk_pcie *pcie)
> >       int err;
> >
> >       err = pci_parse_request_of_pci_ranges(dev, windows,
> > -                                           &bus);
> > +                                           &host->dma_ranges, &bus);
> >       if (err)
> >               return err;
> >
> > diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
> > index 4eab8624ce4d..257ba49c177c 100644
> > --- a/drivers/pci/controller/pcie-mobiveil.c
> > +++ b/drivers/pci/controller/pcie-mobiveil.c
> > @@ -875,7 +875,8 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
> >       }
> >
> >       /* parse the host bridge base addresses from the device tree file */
> > -     ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
> > +     ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> > +                                           &bridge->dma_ranges, NULL);
> >       if (ret) {
> >               dev_err(dev, "Getting bridge resources failed\n");
> >               return ret;
> > diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/pcie-rcar.c
> > index f6a669a9af41..b8d6e86a5539 100644
> > --- a/drivers/pci/controller/pcie-rcar.c
> > +++ b/drivers/pci/controller/pcie-rcar.c
> > @@ -1138,7 +1138,8 @@ static int rcar_pcie_probe(struct platform_device *pdev)
> >       pcie->dev = dev;
> >       platform_set_drvdata(pdev, pcie);
> >
> > -     err = pci_parse_request_of_pci_ranges(dev, &pcie->resources, NULL);
> > +     err = pci_parse_request_of_pci_ranges(dev, &pcie->resources,
> > +                                           &bridge->dma_ranges, NULL);
> >       if (err)
> >               goto err_free_bridge;
> >
> > diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> > index f375e55ea02e..ee83f8494ee9 100644
> > --- a/drivers/pci/controller/pcie-rockchip-host.c
> > +++ b/drivers/pci/controller/pcie-rockchip-host.c
> > @@ -1004,7 +1004,8 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
> >       if (err < 0)
> >               goto err_deinit_port;
> >
> > -     err = pci_parse_request_of_pci_ranges(dev, &bridge->windows, &bus_res);
> > +     err = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> > +                                           &bridge->dma_ranges, &bus_res);
> >       if (err)
> >               goto err_remove_irq_domain;
> >
> > diff --git a/drivers/pci/controller/pcie-xilinx-nwl.c b/drivers/pci/controller/pcie-xilinx-nwl.c
> > index e135a4b60489..9bd1427f2fd6 100644
> > --- a/drivers/pci/controller/pcie-xilinx-nwl.c
> > +++ b/drivers/pci/controller/pcie-xilinx-nwl.c
> > @@ -843,7 +843,8 @@ static int nwl_pcie_probe(struct platform_device *pdev)
> >               return err;
> >       }
> >
> > -     err = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
> > +     err = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> > +                                           &bridge->dma_ranges, NULL);
> >       if (err) {
> >               dev_err(dev, "Getting bridge resources failed\n");
> >               return err;
> > diff --git a/drivers/pci/controller/pcie-xilinx.c b/drivers/pci/controller/pcie-xilinx.c
> > index 257702288787..98e55297815b 100644
> > --- a/drivers/pci/controller/pcie-xilinx.c
> > +++ b/drivers/pci/controller/pcie-xilinx.c
> > @@ -645,7 +645,8 @@ static int xilinx_pcie_probe(struct platform_device *pdev)
> >               return err;
> >       }
> >
> > -     err = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
> > +     err = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> > +                                           &bridge->dma_ranges, NULL);
> >       if (err) {
> >               dev_err(dev, "Getting bridge resources failed\n");
> >               return err;
> > diff --git a/drivers/pci/of.c b/drivers/pci/of.c
> > index f3da49a31db4..0b1e4623dfcf 100644
> > --- a/drivers/pci/of.c
> > +++ b/drivers/pci/of.c
> > @@ -257,7 +257,9 @@ EXPORT_SYMBOL_GPL(of_pci_check_probe_only);
> >   */
> >  int devm_of_pci_get_host_bridge_resources(struct device *dev,
> >                       unsigned char busno, unsigned char bus_max,
> > -                     struct list_head *resources, resource_size_t *io_base)
> > +                     struct list_head *resources,
> > +                     struct list_head *ib_resources,
> > +                     resource_size_t *io_base)
> >  {
> >       struct device_node *dev_node = dev->of_node;
> >       struct resource *res, tmp_res;
> > @@ -340,6 +342,42 @@ int devm_of_pci_get_host_bridge_resources(struct device *dev,
> >               pci_add_resource_offset(resources, res, res->start - range.pci_addr);
> >       }
> >
> > +     /* Check for dma-ranges property */
> > +     if (!ib_resources)
> > +             return 0;
> > +     err = of_pci_dma_range_parser_init(&parser, dev_node);
> > +     if (err)
> > +             return 0;
> > +
> > +     dev_dbg(dev, "Parsing dma-ranges property...\n");
> > +     for_each_of_pci_range(&parser, &range) {
> > +             /*
> > +              * If we failed translation or got a zero-sized region
> > +              * then skip this range
> > +              */
> > +             if (((range.flags & IORESOURCE_TYPE_BITS) != IORESOURCE_MEM) ||
> > +                 range.cpu_addr == OF_BAD_ADDR || range.size == 0)
> > +                     continue;
> > +
> > +             dev_info(dev, "IB MEM %#010llx..%#010llx -> %#010llx\n",
> > +                      range.cpu_addr,
> > +                      range.cpu_addr + range.size - 1, range.pci_addr);
> > +
> > +
> > +             err = of_pci_range_to_resource(&range, dev_node, &tmp_res);
> > +             if (err)
> > +                     continue;
> > +
> > +             res = devm_kmemdup(dev, &tmp_res, sizeof(tmp_res), GFP_KERNEL);
> > +             if (!res) {
> > +                     err = -ENOMEM;
> > +                     goto failed;
> > +             }
> > +
> > +             pci_add_resource_offset(ib_resources, res,
> > +                                     res->start - range.pci_addr);
> > +     }
> > +
> >       return 0;
> >
> >  failed:
> > @@ -482,6 +520,7 @@ EXPORT_SYMBOL_GPL(of_irq_parse_and_map_pci);
> >
> >  int pci_parse_request_of_pci_ranges(struct device *dev,
> >                                   struct list_head *resources,
> > +                                 struct list_head *ib_resources,
> >                                   struct resource **bus_range)
> >  {
> >       int err, res_valid = 0;
> > @@ -489,8 +528,10 @@ int pci_parse_request_of_pci_ranges(struct device *dev,
> >       struct resource_entry *win, *tmp;
> >
> >       INIT_LIST_HEAD(resources);
> > +     if (ib_resources)
> > +             INIT_LIST_HEAD(ib_resources);
> >       err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, resources,
> > -                                                 &iobase);
> > +                                                 ib_resources, &iobase);
> >       if (err)
> >               return err;
> >
> > diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
> > index 3f6947ee3324..6692c4fe4290 100644
> > --- a/drivers/pci/pci.h
> > +++ b/drivers/pci/pci.h
> > @@ -633,11 +633,15 @@ static inline void pci_release_bus_of_node(struct pci_bus *bus) { }
> >  #if defined(CONFIG_OF_ADDRESS)
> >  int devm_of_pci_get_host_bridge_resources(struct device *dev,
> >                       unsigned char busno, unsigned char bus_max,
> > -                     struct list_head *resources, resource_size_t *io_base);
> > +                     struct list_head *resources,
> > +                     struct list_head *ib_resources,
> > +                     resource_size_t *io_base);
> >  #else
> >  static inline int devm_of_pci_get_host_bridge_resources(struct device *dev,
> >                       unsigned char busno, unsigned char bus_max,
> > -                     struct list_head *resources, resource_size_t *io_base)
> > +                     struct list_head *resources,
> > +                     struct list_head *ib_resources,
> > +                     resource_size_t *io_base)
> >  {
> >       return -EINVAL;
> >  }
> > diff --git a/include/linux/pci.h b/include/linux/pci.h
> > index f9088c89a534..5cb94916eaa1 100644
> > --- a/include/linux/pci.h
> > +++ b/include/linux/pci.h
> > @@ -2278,6 +2278,7 @@ struct irq_domain;
> >  struct irq_domain *pci_host_bridge_of_msi_domain(struct pci_bus *bus);
> >  int pci_parse_request_of_pci_ranges(struct device *dev,
> >                                   struct list_head *resources,
> > +                                 struct list_head *ib_resources,
> >                                   struct resource **bus_range);
> >
> >  /* Arch may override this (weak) */
> > @@ -2286,9 +2287,11 @@ struct device_node *pcibios_get_phb_of_node(struct pci_bus *bus);
> >  #else        /* CONFIG_OF */
> >  static inline struct irq_domain *
> >  pci_host_bridge_of_msi_domain(struct pci_bus *bus) { return NULL; }
> > -static inline int pci_parse_request_of_pci_ranges(struct device *dev,
> > -                                               struct list_head *resources,
> > -                                               struct resource **bus_range)
> > +static inline int
> > +pci_parse_request_of_pci_ranges(struct device *dev,
> > +                             struct list_head *resources,
> > +                             struct list_head *ib_resources,
> > +                             struct resource **bus_range)
> >  {
> >       return -EINVAL;
> >  }
> > --
> > 2.20.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
