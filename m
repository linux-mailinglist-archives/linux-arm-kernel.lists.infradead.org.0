Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4F31FD38D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 19:33:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+D1ErKsEiCgq5QwQ6HBPIcRMH0I6Unh0JvOYjZglaAU=; b=tIehjvNw3miuIV
	2XDwbbPZ/XQj2dd0UMhVwlEClmDE/T3CuA+aKwZDryoyugQPPvmlUopKY3HoS6GQH9tWaNiLcQcHc
	udqXdmXLhhg0KBZ67QyMBMhwtDakO18Nxi/HDIjMjG7V/Vf9HytHITe73Y3pTtoNda/XvW1VMArHI
	RWo7te2NF1CkxausLDsnTUP4ynd73Fz7qzI9CJNjMzDPftbuKUJ2jPoXBxBkxio+ZTkwUE3Ldcjgh
	4jw8pdfEvjzsDbCtnn6S+exeK4QuX6qsIcHZFjdgf/R4cRjq7NRxrJxQCaZBWGaGsRL6hDMgd4a9I
	C+FblcwPzorodRfPsHzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlbvw-0002GO-MZ; Wed, 17 Jun 2020 17:33:08 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlbvo-0002Fa-Lp
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 17:33:02 +0000
Received: by mail-wm1-x342.google.com with SMTP id t194so2892119wmt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 10:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0QNRuJcws82P7uD3W5Xs1rYxppxPq6ASHSPM69pBKQM=;
 b=Fe61Js+MQ1NB3hDW2FqZX6bK8y0TfX5sBHTNEU2Yk0JzXcTVSvMsGzfAwL++w0EQLB
 gvg4q3+aUrOL9iaNWSM/h2bqDpSD3Vin8EmXucGR/bq6V6PQc6smK+NR7dHcQXgMaWzD
 UgjU7cA2bLrL+Byh9BAxtmivf+9accbbBQyCc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0QNRuJcws82P7uD3W5Xs1rYxppxPq6ASHSPM69pBKQM=;
 b=hDI28eNBuftNLtTb603CxkLfE3LyRo+qOXYH9G0OJQhE22GoBsL0+Q3KLHAKOhT3Cp
 2jo3i/rS2c3XnB4nHVifZbu00td/ylpcCjozwRNQaXO/7vQ8t+pHCLeMG5/LlYrRS/AN
 vKV9Db4xTVV+ntCpTF3V/hGY6U88NQzVHZys7oPG9ZcA5gr1V7trES4vW5oTYw+oIrMF
 5HVMxtuXGIPwCz0b24l1hOaZOq8k5PgAzPv3Qn5ZUglgD211OZyuADVgrA8jY+tWLcTB
 KFBzBmS5BFCEUuwwpV+Hz3Qz2lWP02JE8+DvN72d8Fg/uaTTrOlcDo0xkTALmQs1V19+
 6DMg==
X-Gm-Message-State: AOAM533Iu5J1UQOAB2TOPGvtOvhV+aus5WKgn7/FayWVfz9bB3uDqdeI
 bYYgnNEv00NRGDVScCXx5ZWJPfgsxM6qd8GuJzO9ew==
X-Google-Smtp-Source: ABdhPJxnOs2MLe3C0AP9rvozUlSx2/nymavZrjsSjsvAn9I5kRCXHvTT2TSpRqQfMipTr/dlVrVwhPVh03aW+M/MoWI=
X-Received: by 2002:a7b:c0cc:: with SMTP id s12mr9971856wmh.111.1592415179181; 
 Wed, 17 Jun 2020 10:32:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200616205533.3513-8-james.quinlan@broadcom.com>
 <20200616220523.GA1984295@bjorn-Precision-5520>
In-Reply-To: <20200616220523.GA1984295@bjorn-Precision-5520>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Wed, 17 Jun 2020 13:32:46 -0400
Message-ID: <CA+-6iNzFVmFp9MkYkRU=nf-sXSFPZY0gqmA0ZT4rfR0q1sueiA@mail.gmail.com>
Subject: Re: [PATCH v5 07/12] PCI: brcmstb: Add control of rescal reset
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_103300_729127_7C028282 
X-CRM114-Status: GOOD (  23.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 6:05 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Tue, Jun 16, 2020 at 04:55:14PM -0400, Jim Quinlan wrote:
> > From: Jim Quinlan <jquinlan@broadcom.com>
> >
> > Some STB chips have a special purpose reset controller named RESCAL (reset
> > calibration).  The PCIe HW can now control RESCAL to start and stop its
> > operation.
>
> The HW *can* now control RESCAL, but what does this patch do?
>
> I guess maybe this patch uses RESCAL to turn on the PHY in probe and
> resume and turn it off in suspend and remove?
Yes, I will redo this text with a better description.

Thanks,
Jim

PS Will attend to your other responses as well in the V6.
>
> > Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> > Acked-by: Florian Fainelli <f.fainelli@gmail.com>
> > ---
> >  drivers/pci/controller/pcie-brcmstb.c | 81 ++++++++++++++++++++++++++-
> >  1 file changed, 80 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
> > index d0e256d8578a..9189406fd35c 100644
> > --- a/drivers/pci/controller/pcie-brcmstb.c
> > +++ b/drivers/pci/controller/pcie-brcmstb.c
> > @@ -23,6 +23,7 @@
> >  #include <linux/of_platform.h>
> >  #include <linux/pci.h>
> >  #include <linux/printk.h>
> > +#include <linux/reset.h>
> >  #include <linux/sizes.h>
> >  #include <linux/slab.h>
> >  #include <linux/string.h>
> > @@ -158,6 +159,16 @@
> >  #define DATA_ADDR(pcie)                      (pcie->reg_offsets[EXT_CFG_DATA])
> >  #define PCIE_RGR1_SW_INIT_1(pcie)    (pcie->reg_offsets[RGR1_SW_INIT_1])
> >
> > +/* Rescal registers */
> > +#define PCIE_DVT_PMU_PCIE_PHY_CTRL                           0xc700
> > +#define  PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_NFLDS                       0x3
> > +#define  PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_DIG_RESET_MASK              0x4
> > +#define  PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_DIG_RESET_SHIFT     0x2
> > +#define  PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_RESET_MASK          0x2
> > +#define  PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_RESET_SHIFT         0x1
> > +#define  PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_PWRDN_MASK          0x1
> > +#define  PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_PWRDN_SHIFT         0x0
> > +
> >  enum {
> >       RGR1_SW_INIT_1,
> >       EXT_CFG_INDEX,
> > @@ -248,6 +259,7 @@ struct brcm_pcie {
> >       const int               *reg_offsets;
> >       const int               *reg_field_info;
> >       enum pcie_type          type;
> > +     struct reset_control    *rescal;
> >  };
> >
> >  /*
> > @@ -963,6 +975,47 @@ static void brcm_pcie_enter_l23(struct brcm_pcie *pcie)
> >               dev_err(pcie->dev, "failed to enter low-power link state\n");
> >  }
> >
> > +static int brcm_phy_cntl(struct brcm_pcie *pcie, const int start)
> > +{
> > +     static const u32 shifts[PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_NFLDS] = {
> > +             PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_PWRDN_SHIFT,
> > +             PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_RESET_SHIFT,
> > +             PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_DIG_RESET_SHIFT,};
> > +     static const u32 masks[PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_NFLDS] = {
> > +             PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_PWRDN_MASK,
> > +             PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_RESET_MASK,
> > +             PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_DIG_RESET_MASK,};
> > +     const int beg = start ? 0 : PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_NFLDS - 1;
> > +     const int end = start ? PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_NFLDS : -1;
> > +     u32 tmp, combined_mask = 0;
> > +     u32 val = !!start;
> > +     void __iomem *base = pcie->base;
> > +     int i;
> > +
> > +     for (i = beg; i != end; start ? i++ : i--) {
> > +             tmp = readl(base + PCIE_DVT_PMU_PCIE_PHY_CTRL);
> > +             tmp = (tmp & ~masks[i]) | ((val << shifts[i]) & masks[i]);
> > +             writel(tmp, base + PCIE_DVT_PMU_PCIE_PHY_CTRL);
> > +             usleep_range(50, 200);
> > +             combined_mask |= masks[i];
> > +     }
> > +
> > +     tmp = readl(base + PCIE_DVT_PMU_PCIE_PHY_CTRL);
> > +     val = start ? combined_mask : 0;
> > +
> > +     return (tmp & combined_mask) == val ? 0 : -EIO;
> > +}
> > +
> > +static inline int brcm_phy_start(struct brcm_pcie *pcie)
> > +{
> > +     return pcie->rescal ? brcm_phy_cntl(pcie, 1) : 0;
> > +}
> > +
> > +static inline int brcm_phy_stop(struct brcm_pcie *pcie)
> > +{
> > +     return pcie->rescal ? brcm_phy_cntl(pcie, 0) : 0;
> > +}
> > +
> >  static void brcm_pcie_turn_off(struct brcm_pcie *pcie)
> >  {
> >       void __iomem *base = pcie->base;
> > @@ -990,11 +1043,15 @@ static void brcm_pcie_turn_off(struct brcm_pcie *pcie)
> >  static int brcm_pcie_suspend(struct device *dev)
> >  {
> >       struct brcm_pcie *pcie = dev_get_drvdata(dev);
> > +     int ret;
> >
> >       brcm_pcie_turn_off(pcie);
> > +     ret = brcm_phy_stop(pcie);
> > +     if (ret)
> > +             dev_err(pcie->dev, "failed to stop phy\n");
> >       clk_disable_unprepare(pcie->clk);
> >
> > -     return 0;
> > +     return ret;
> >  }
> >
> >  static int brcm_pcie_resume(struct device *dev)
> > @@ -1007,6 +1064,12 @@ static int brcm_pcie_resume(struct device *dev)
> >       base = pcie->base;
> >       clk_prepare_enable(pcie->clk);
> >
> > +     ret = brcm_phy_start(pcie);
> > +     if (ret) {
> > +             dev_err(pcie->dev, "failed to start phy\n");
> > +             return ret;
> > +     }
> > +
> >       /* Take bridge out of reset so we can access the SERDES reg */
> >       brcm_pcie_bridge_sw_init_set(pcie, 0);
> >
> > @@ -1032,6 +1095,9 @@ static void __brcm_pcie_remove(struct brcm_pcie *pcie)
> >  {
> >       brcm_msi_remove(pcie);
> >       brcm_pcie_turn_off(pcie);
> > +     if (brcm_phy_stop(pcie))
> > +             dev_err(pcie->dev, "failed to stop phy\n");
> > +     reset_control_assert(pcie->rescal);
> >       clk_disable_unprepare(pcie->clk);
> >  }
> >
> > @@ -1117,6 +1183,19 @@ static int brcm_pcie_probe(struct platform_device *pdev)
> >               dev_err(&pdev->dev, "could not enable clock\n");
> >               return ret;
> >       }
> > +     pcie->rescal = devm_reset_control_get_optional_shared(&pdev->dev, "rescal");
> > +     if (IS_ERR(pcie->rescal))
> > +             return PTR_ERR(pcie->rescal);
> > +
> > +     ret = reset_control_deassert(pcie->rescal);
> > +     if (ret)
> > +             dev_err(&pdev->dev, "failed to deassert 'rescal'\n");
> > +
> > +     ret = brcm_phy_start(pcie);
> > +     if (ret) {
> > +             dev_err(pcie->dev, "failed to start phy\n");
> > +             return ret;
> > +     }
> >
> >       ret = brcm_pcie_setup(pcie);
> >       if (ret)
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
