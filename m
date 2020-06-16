Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC821FC165
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 00:06:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=+3D8nx/i1VEl8ITtZ8bXtuRETV8H2qkEPExgXI5xJ3I=; b=AeefJrTLRVwfFn
	PA7zFfF73BjovbdfB07kmk4KB2M5HsyKOZYgBsFUqeG2+68GGaWsp5EoXu3XGM2zRuJfv+EnrsJKq
	WAfcnp+6o7MiHa+EaczJiH6FFg8eOeTdZspEysY/dqxxnJKweDCd+d20Ya/4etxQvSWbNTMp6vL1j
	n5+mJSP9rj+Vno/UutSZ+f2e8NfjvJMWj/aEe+npHrGZh0CBP9wnj6N/MpFUjPRn0zKuGyyZ0EFrD
	l5+bG6ez7zV5Hgdn7bfbdXSQPCPkg6FMjzGGdr53mVhajtjyY3e9hTjNA1a6cfi0rZjfsZm3l6zxz
	poDYHh4p16kWjigTSS0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlJiO-0003U8-5h; Tue, 16 Jun 2020 22:05:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlJhu-0003Hc-Sa; Tue, 16 Jun 2020 22:05:28 +0000
Received: from localhost (mobile-166-170-222-206.mycingular.net
 [166.170.222.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 29BDF2065F;
 Tue, 16 Jun 2020 22:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592345126;
 bh=cjg56MtFckAMNiGqiqesfllN8oo0rmNVNmB85mlA4Gw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=W8srtufbe+T01VF0pOcteIR1VQgrqfBUimEIAW0zpUUvZSynaxgMAr2DG33cch51c
 VSveF2ucBNY5/1Uvr5BVcKkt8Kcv9lUl/Hd0T9N3XUnf3a2CTxtSwP09KHRDKaB/X3
 4hlq8jLWz6KspsghiP1VbW5Wb2J13QXjhW7QE29s=
Date: Tue, 16 Jun 2020 17:05:23 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH v5 07/12] PCI: brcmstb: Add control of rescal reset
Message-ID: <20200616220523.GA1984295@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616205533.3513-8-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_150526_982291_2B456403 
X-CRM114-Status: GOOD (  20.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 04:55:14PM -0400, Jim Quinlan wrote:
> From: Jim Quinlan <jquinlan@broadcom.com>
> 
> Some STB chips have a special purpose reset controller named RESCAL (reset
> calibration).  The PCIe HW can now control RESCAL to start and stop its
> operation.

The HW *can* now control RESCAL, but what does this patch do?

I guess maybe this patch uses RESCAL to turn on the PHY in probe and
resume and turn it off in suspend and remove?

> Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> Acked-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  drivers/pci/controller/pcie-brcmstb.c | 81 ++++++++++++++++++++++++++-
>  1 file changed, 80 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
> index d0e256d8578a..9189406fd35c 100644
> --- a/drivers/pci/controller/pcie-brcmstb.c
> +++ b/drivers/pci/controller/pcie-brcmstb.c
> @@ -23,6 +23,7 @@
>  #include <linux/of_platform.h>
>  #include <linux/pci.h>
>  #include <linux/printk.h>
> +#include <linux/reset.h>
>  #include <linux/sizes.h>
>  #include <linux/slab.h>
>  #include <linux/string.h>
> @@ -158,6 +159,16 @@
>  #define DATA_ADDR(pcie)			(pcie->reg_offsets[EXT_CFG_DATA])
>  #define PCIE_RGR1_SW_INIT_1(pcie)	(pcie->reg_offsets[RGR1_SW_INIT_1])
>  
> +/* Rescal registers */
> +#define PCIE_DVT_PMU_PCIE_PHY_CTRL				0xc700
> +#define  PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_NFLDS			0x3
> +#define  PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_DIG_RESET_MASK		0x4
> +#define  PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_DIG_RESET_SHIFT	0x2
> +#define  PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_RESET_MASK		0x2
> +#define  PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_RESET_SHIFT		0x1
> +#define  PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_PWRDN_MASK		0x1
> +#define  PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_PWRDN_SHIFT		0x0
> +
>  enum {
>  	RGR1_SW_INIT_1,
>  	EXT_CFG_INDEX,
> @@ -248,6 +259,7 @@ struct brcm_pcie {
>  	const int		*reg_offsets;
>  	const int		*reg_field_info;
>  	enum pcie_type		type;
> +	struct reset_control	*rescal;
>  };
>  
>  /*
> @@ -963,6 +975,47 @@ static void brcm_pcie_enter_l23(struct brcm_pcie *pcie)
>  		dev_err(pcie->dev, "failed to enter low-power link state\n");
>  }
>  
> +static int brcm_phy_cntl(struct brcm_pcie *pcie, const int start)
> +{
> +	static const u32 shifts[PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_NFLDS] = {
> +		PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_PWRDN_SHIFT,
> +		PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_RESET_SHIFT,
> +		PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_DIG_RESET_SHIFT,};
> +	static const u32 masks[PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_NFLDS] = {
> +		PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_PWRDN_MASK,
> +		PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_RESET_MASK,
> +		PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_DIG_RESET_MASK,};
> +	const int beg = start ? 0 : PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_NFLDS - 1;
> +	const int end = start ? PCIE_DVT_PMU_PCIE_PHY_CTRL_DAST_NFLDS : -1;
> +	u32 tmp, combined_mask = 0;
> +	u32 val = !!start;
> +	void __iomem *base = pcie->base;
> +	int i;
> +
> +	for (i = beg; i != end; start ? i++ : i--) {
> +		tmp = readl(base + PCIE_DVT_PMU_PCIE_PHY_CTRL);
> +		tmp = (tmp & ~masks[i]) | ((val << shifts[i]) & masks[i]);
> +		writel(tmp, base + PCIE_DVT_PMU_PCIE_PHY_CTRL);
> +		usleep_range(50, 200);
> +		combined_mask |= masks[i];
> +	}
> +
> +	tmp = readl(base + PCIE_DVT_PMU_PCIE_PHY_CTRL);
> +	val = start ? combined_mask : 0;
> +
> +	return (tmp & combined_mask) == val ? 0 : -EIO;
> +}
> +
> +static inline int brcm_phy_start(struct brcm_pcie *pcie)
> +{
> +	return pcie->rescal ? brcm_phy_cntl(pcie, 1) : 0;
> +}
> +
> +static inline int brcm_phy_stop(struct brcm_pcie *pcie)
> +{
> +	return pcie->rescal ? brcm_phy_cntl(pcie, 0) : 0;
> +}
> +
>  static void brcm_pcie_turn_off(struct brcm_pcie *pcie)
>  {
>  	void __iomem *base = pcie->base;
> @@ -990,11 +1043,15 @@ static void brcm_pcie_turn_off(struct brcm_pcie *pcie)
>  static int brcm_pcie_suspend(struct device *dev)
>  {
>  	struct brcm_pcie *pcie = dev_get_drvdata(dev);
> +	int ret;
>  
>  	brcm_pcie_turn_off(pcie);
> +	ret = brcm_phy_stop(pcie);
> +	if (ret)
> +		dev_err(pcie->dev, "failed to stop phy\n");
>  	clk_disable_unprepare(pcie->clk);
>  
> -	return 0;
> +	return ret;
>  }
>  
>  static int brcm_pcie_resume(struct device *dev)
> @@ -1007,6 +1064,12 @@ static int brcm_pcie_resume(struct device *dev)
>  	base = pcie->base;
>  	clk_prepare_enable(pcie->clk);
>  
> +	ret = brcm_phy_start(pcie);
> +	if (ret) {
> +		dev_err(pcie->dev, "failed to start phy\n");
> +		return ret;
> +	}
> +
>  	/* Take bridge out of reset so we can access the SERDES reg */
>  	brcm_pcie_bridge_sw_init_set(pcie, 0);
>  
> @@ -1032,6 +1095,9 @@ static void __brcm_pcie_remove(struct brcm_pcie *pcie)
>  {
>  	brcm_msi_remove(pcie);
>  	brcm_pcie_turn_off(pcie);
> +	if (brcm_phy_stop(pcie))
> +		dev_err(pcie->dev, "failed to stop phy\n");
> +	reset_control_assert(pcie->rescal);
>  	clk_disable_unprepare(pcie->clk);
>  }
>  
> @@ -1117,6 +1183,19 @@ static int brcm_pcie_probe(struct platform_device *pdev)
>  		dev_err(&pdev->dev, "could not enable clock\n");
>  		return ret;
>  	}
> +	pcie->rescal = devm_reset_control_get_optional_shared(&pdev->dev, "rescal");
> +	if (IS_ERR(pcie->rescal))
> +		return PTR_ERR(pcie->rescal);
> +
> +	ret = reset_control_deassert(pcie->rescal);
> +	if (ret)
> +		dev_err(&pdev->dev, "failed to deassert 'rescal'\n");
> +
> +	ret = brcm_phy_start(pcie);
> +	if (ret) {
> +		dev_err(pcie->dev, "failed to start phy\n");
> +		return ret;
> +	}
>  
>  	ret = brcm_pcie_setup(pcie);
>  	if (ret)
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
