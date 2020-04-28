Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE2D1BBEC1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 15:16:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xyw48idqgFUJLVp96Mc+ScckZCiOM2MW+BuUYeJhRME=; b=j6U2/MwhfYWHlJ
	gPn2kDHhb1t+3v+0O91TeL0PTfCGAtagtmxFFLXyhD/6EpjnQFM+MUfEBqaLIo0hCj3jN3nHue6sK
	NIEDCFjC+0C5vrdy38l2cEeTPYj0KNOzOYbk/0H1pufYIX7cMVPfurnQN7bnnM6dUfP13JxjqbJ3q
	hR2b2DFto0yvsMFuI1bSyXkRYKhX3XMUwpdtcH+BzQIvme57J9Hjc0FzQnkzIuQhTlVknRxK3mMJ1
	dWSL7GKUFLzsJ5XI87NnlrB62Y4vOSE8ijoZzVrl4Zldzo34Lay4WlzII75EtH5Ayk4w0qUWxE8Su
	e43Wj2SXgdUXDOROmDIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQ5Z-0000N5-Fn; Tue, 28 Apr 2020 13:15:53 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQ3Q-0004q8-Nw; Tue, 28 Apr 2020 13:13:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=tAiU8DufUg5a+y6LZBlNyLKlmwCnn5CoVFDN0/EIDYc=; b=pm0DRjg7poa4Wf7GrclL4WsCru
 Nz7e580/NcFOCg+n+woPEKSBH9+u2ma7hhG+eGf7CdQV8vNt8+eKLynI9SZhaXFKwBxYypoYqwRy1
 Q9TdqbxPkCXioA61n1qZlfiKmAqMdbo4i4lKRkWe+y8ZpGyboH3Qplmj3gielPNIzMxYBCkIG0+4K
 bJgUn5lIyxjASWEQkHo4czkhiLYD6fDfabD7bIbFZAyEHoKauk4idgJCJWxT8eHd0ScF7WUQqEy9u
 +XpdsDcfO0SPmLPak2N/jPN4R8ncIN+Rl0PZJO2cl4PfwaYxPauauL+bUzEfg8DQDxDfSJjpXbBfs
 imHJHFgg==;
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQ3M-0004st-PB; Tue, 28 Apr 2020 13:13:39 +0000
X-UUID: 3ce84f1f394a4f01a049f77d936c319c-20200428
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=tAiU8DufUg5a+y6LZBlNyLKlmwCnn5CoVFDN0/EIDYc=; 
 b=dKULo0WJ8capQznkJUPm/wNC/qYjSJ4Z7tK4rDAlxFLHkWwllxb/5sUrJsyEYhcDT4yA2TsCx7svFdB9EoLu7o3Yzwksy+mMpkNFTzzKljWsHrfAfGubmTypyrJ/zuQJcMZDAy7GjdBDmjiVDYbgqFJBSCp3Gq8QsG5TvYs/ZIY=;
X-UUID: 3ce84f1f394a4f01a049f77d936c319c-20200428
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.mao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 804350474; Tue, 28 Apr 2020 05:13:09 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 28 Apr 2020 06:03:18 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Tue, 28 Apr 2020 21:03:14 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 28 Apr 2020 21:03:12 +0800
Message-ID: <1588078947.730.11.camel@mhfsdcap03>
Subject: Re: [PATCH v5 4/5] mmc: mediatek: command queue support
From: "yong.mao@mediatek.com" <yong.mao@mediatek.com>
To: Chun-Hung Wu <chun-hung.wu@mediatek.com>
Date: Tue, 28 Apr 2020 21:02:27 +0800
In-Reply-To: <1588031768-23677-5-git-send-email-chun-hung.wu@mediatek.com>
References: <1588031768-23677-1-git-send-email-chun-hung.wu@mediatek.com>
 <1588031768-23677-5-git-send-email-chun-hung.wu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: B19EDFDF45EA2A4C07BC3620755AB4A39CAA9E16B388784C1B5A658AB4906C472000:8
X-MTK: N
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kate
 Stewart <kstewart@linuxfoundation.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 wsd_upstream@mediatek.com, linux-mmc@vger.kernel.org, Linus
 Walleij <linus.walleij@linaro.org>, Al
 Cooper <alcooperx@gmail.com>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Pavel Machek <pavel@ucw.cz>, Florian Fainelli <f.fainelli@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Andy Gross <agross@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Allison Randal <allison@lohutok.net>, kernel-team@android.com,
 Pan Bian <bianpan2016@163.com>, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-msm@vger.kernel.org, mirq-linux@rere.qmqm.pl,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Thomas
 Gleixner <tglx@linutronix.de>, Stanley Chu <stanley.chu@mediatek.com>,
 Chaotian Jing <chaotian.jing@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Mathieu Malaterre <malat@debian.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kuohong Wang <kuohong.wang@mediatek.com>,
 Adrian Hunter <adrian.hunter@intel.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-04-28 at 07:56 +0800, Chun-Hung Wu wrote:
> Support command queue for mt6779 platform.
> a. Add msdc_set_busy_timeout() to calculate emmc write timeout
> b. Connect mtk msdc driver to cqhci driver through
>    host->cq_host->ops = &msdc_cmdq_ops;
> c. msdc_cmdq_irq() will link up with cqchi_irq(). Besides, it provides
>    more irq error messages like RSPCRCERR/CMDTO/DATACRCERR/DATTMO.
> d. Use the options below to separate support for CQHCI or not, because
>    some of our platform does not support CQHCI hence no kernel option:
>    CONFIG_MMC_CQHCI.
>    #if IS_ENABLED(CONFIG_MMC_CQHCI)
>    XXX //Support CQHCI
>    #else
>    XXX //Not support CQHCI
>    #endif
> 
Please split this patch into following patches
1. support mt6779 in mtk-sd.c
2. add new API for calculate timeout
3. support cmdq feature

> Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
> ---
>  drivers/mmc/host/mtk-sd.c | 119 ++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 119 insertions(+)
> 
> diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
> index a2328fb..8516888 100644
> --- a/drivers/mmc/host/mtk-sd.c
> +++ b/drivers/mmc/host/mtk-sd.c
> @@ -31,6 +31,8 @@
>  #include <linux/mmc/sdio.h>
>  #include <linux/mmc/slot-gpio.h>
>  
> +#include "cqhci.h"
> +
>  #define MAX_BD_NUM          1024
>  
>  /*--------------------------------------------------------------------------*/
> @@ -151,6 +153,7 @@
>  #define MSDC_INT_DMA_BDCSERR    (0x1 << 17)	/* W1C */
>  #define MSDC_INT_DMA_GPDCSERR   (0x1 << 18)	/* W1C */
>  #define MSDC_INT_DMA_PROTECT    (0x1 << 19)	/* W1C */
> +#define MSDC_INT_CMDQ           (0x1 << 28)	/* W1C */
>  
>  /* MSDC_INTEN mask */
>  #define MSDC_INTEN_MMCIRQ       (0x1 << 0)	/* RW */
> @@ -181,6 +184,7 @@
>  /* SDC_CFG mask */
>  #define SDC_CFG_SDIOINTWKUP     (0x1 << 0)	/* RW */
>  #define SDC_CFG_INSWKUP         (0x1 << 1)	/* RW */
> +#define SDC_CFG_WRDTOC          (0x1fff  << 2)  /* RW */
>  #define SDC_CFG_BUSWIDTH        (0x3 << 16)	/* RW */
>  #define SDC_CFG_SDIO            (0x1 << 19)	/* RW */
>  #define SDC_CFG_SDIOIDE         (0x1 << 20)	/* RW */
> @@ -229,6 +233,7 @@
>  #define MSDC_PATCH_BIT_DECRCTMO   (0x1 << 30)	/* RW */
>  
>  #define MSDC_PATCH_BIT1_CMDTA     (0x7 << 3)    /* RW */
> +#define MSDC_PB1_BUSY_CHECK_SEL   (0x1 << 7)    /* RW */
>  #define MSDC_PATCH_BIT1_STOP_DLY  (0xf << 8)    /* RW */
>  
>  #define MSDC_PATCH_BIT2_CFGRESP   (0x1 << 15)   /* RW */
> @@ -432,6 +437,7 @@ struct msdc_host {
>  	struct msdc_save_para save_para; /* used when gate HCLK */
>  	struct msdc_tune_para def_tune_para; /* default tune setting */
>  	struct msdc_tune_para saved_tune_para; /* tune result of CMD21/CMD19 */
> +	struct cqhci_host *cq_host;
>  };
>  
>  static const struct mtk_mmc_compatible mt8135_compat = {
> @@ -528,6 +534,18 @@ static const struct mtk_mmc_compatible mt7620_compat = {
>  	.use_internal_cd = true,
>  };
>  
> +static const struct mtk_mmc_compatible mt6779_compat = {
> +	.clk_div_bits = 12,
> +	.hs400_tune = false,
> +	.pad_tune_reg = MSDC_PAD_TUNE0,
> +	.async_fifo = true,
> +	.data_tune = true,
> +	.busy_check = true,
> +	.stop_clk_fix = true,
> +	.enhance_rx = true,
> +	.support_64g = true,
> +};
> +
>  static const struct of_device_id msdc_of_ids[] = {
>  	{ .compatible = "mediatek,mt8135-mmc", .data = &mt8135_compat},
>  	{ .compatible = "mediatek,mt8173-mmc", .data = &mt8173_compat},
> @@ -537,6 +555,7 @@ static const struct of_device_id msdc_of_ids[] = {
>  	{ .compatible = "mediatek,mt7622-mmc", .data = &mt7622_compat},
>  	{ .compatible = "mediatek,mt8516-mmc", .data = &mt8516_compat},
>  	{ .compatible = "mediatek,mt7620-mmc", .data = &mt7620_compat},
> +	{ .compatible = "mediatek,mt6779-mmc", .data = &mt6779_compat},
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, msdc_of_ids);
> @@ -740,6 +759,15 @@ static void msdc_set_timeout(struct msdc_host *host, u64 ns, u64 clks)
>  		      (u32)(timeout > 255 ? 255 : timeout));
>  }
>  
> +static void msdc_set_busy_timeout(struct msdc_host *host, u64 ns, u64 clks)
> +{
> +	u64 timeout;
> +
> +	timeout = msdc_timeout_cal(host, ns, clks);
> +	sdr_set_field(host->base + SDC_CFG, SDC_CFG_WRDTOC,
> +		      (u32)(timeout > 8191 ? 8191 : timeout));
> +}
> +
>  static void msdc_gate_clock(struct msdc_host *host)
>  {
>  	clk_disable_unprepare(host->src_clk_cg);
> @@ -1426,6 +1454,36 @@ static void msdc_enable_sdio_irq(struct mmc_host *mmc, int enb)
>  		pm_runtime_put_noidle(host->dev);
>  }
>  
> +#if IS_ENABLED(CONFIG_MMC_CQHCI)
> +static irqreturn_t msdc_cmdq_irq(struct msdc_host *host, u32 intsts)
> +{
> +	int cmd_err = 0, dat_err = 0;
> +
> +	if (intsts & MSDC_INT_RSPCRCERR) {
> +		cmd_err = (unsigned int)-EILSEQ;
> +		dev_err(host->dev, "%s: CMD CRC ERR", __func__);
> +	} else if (intsts & MSDC_INT_CMDTMO) {
> +		cmd_err = (unsigned int)-ETIMEDOUT;
> +		dev_err(host->dev, "%s: CMD TIMEOUT ERR", __func__);
> +	}
> +
> +	if (intsts & MSDC_INT_DATCRCERR) {
> +		dat_err = (unsigned int)-EILSEQ;
> +		dev_err(host->dev, "%s: DATA CRC ERR", __func__);
> +	} else if (intsts & MSDC_INT_DATTMO) {
> +		dat_err = (unsigned int)-ETIMEDOUT;
> +		dev_err(host->dev, "%s: DATA TIMEOUT ERR", __func__);
> +	}
> +
> +	if (cmd_err || dat_err) {
> +		dev_err(host->dev, "cmd_err = %d, dat_err =%d, intsts = 0x%x",
> +			cmd_err, dat_err, intsts);
> +	}
> +
> +	return cqhci_irq(host->mmc, 0, cmd_err, dat_err);
> +}
> +#endif
> +
>  static irqreturn_t msdc_irq(int irq, void *dev_id)
>  {
>  	struct msdc_host *host = (struct msdc_host *) dev_id;
> @@ -1462,6 +1520,16 @@ static irqreturn_t msdc_irq(int irq, void *dev_id)
>  		if (!(events & (event_mask & ~MSDC_INT_SDIOIRQ)))
>  			break;
>  
> +#if IS_ENABLED(CONFIG_MMC_CQHCI)
> +		if ((host->mmc->caps2 & MMC_CAP2_CQE) &&
> +		    (events & MSDC_INT_CMDQ)) {
> +			msdc_cmdq_irq(host, events);
> +			/* clear interrupts */
> +			writel(events, host->base + MSDC_INT);
> +			return IRQ_HANDLED;
> +		}
> +#endif
> +
>  		if (!mrq) {
>  			dev_err(host->dev,
>  				"%s: MRQ=NULL; events=%08X; event_mask=%08X\n",
> @@ -2146,6 +2214,36 @@ static int msdc_get_cd(struct mmc_host *mmc)
>  		return !val;
>  }
>  
> +static void msdc_cqe_enable(struct mmc_host *mmc)
> +{
> +	struct msdc_host *host = mmc_priv(mmc);
> +
> +	/* enable cmdq irq */
> +	writel(MSDC_INT_CMDQ, host->base + MSDC_INTEN);
> +	/* enable busy check */
> +	sdr_set_bits(host->base + MSDC_PATCH_BIT1, MSDC_PB1_BUSY_CHECK_SEL);
> +	/* default write data / busy timeout 20s */
> +	msdc_set_busy_timeout(host, 20 * 1000000000ULL, 0);
> +	/* default read data timeout 1s */
> +	msdc_set_timeout(host, 1000000000ULL, 0);
> +}
> +
> +void msdc_cqe_disable(struct mmc_host *mmc, bool recovery)
> +{
> +	struct msdc_host *host = mmc_priv(mmc);
> +
> +	/* disable cmdq irq */
> +	sdr_clr_bits(host->base + MSDC_INTEN, MSDC_INT_CMDQ);
> +	/* disable busy check */
> +	sdr_clr_bits(host->base + MSDC_PATCH_BIT1, MSDC_PB1_BUSY_CHECK_SEL);
> +
> +	if (recovery) {
> +		sdr_set_field(host->base + MSDC_DMA_CTRL,
> +			      MSDC_DMA_CTRL_STOP, 1);
> +		msdc_reset_hw(host);
> +	}
> +}
> +
>  static const struct mmc_host_ops mt_msdc_ops = {
>  	.post_req = msdc_post_req,
>  	.pre_req = msdc_pre_req,
> @@ -2162,6 +2260,11 @@ static const struct mmc_host_ops mt_msdc_ops = {
>  	.hw_reset = msdc_hw_reset,
>  };
>  
> +static const struct cqhci_host_ops msdc_cmdq_ops = {
> +	.enable         = msdc_cqe_enable,
> +	.disable        = msdc_cqe_disable,
> +};
> +
>  static void msdc_of_property_parse(struct platform_device *pdev,
>  				   struct msdc_host *host)
>  {
> @@ -2312,6 +2415,22 @@ static int msdc_drv_probe(struct platform_device *pdev)
>  		host->dma_mask = DMA_BIT_MASK(32);
>  	mmc_dev(mmc)->dma_mask = &host->dma_mask;
>  
> +#if IS_ENABLED(CONFIG_MMC_CQHCI)
> +	if (mmc->caps2 & MMC_CAP2_CQE) {
> +		host->cq_host = devm_kzalloc(host->mmc->parent,
> +					     sizeof(*host->cq_host),
> +					     GFP_KERNEL);
should free this memory if it is not used any more.
> +		host->cq_host->caps |= CQHCI_TASK_DESC_SZ_128;
> +		host->cq_host->mmio = host->base + 0x800;
> +		host->cq_host->ops = &msdc_cmdq_ops;
> +		cqhci_init(host->cq_host, mmc, true);
> +		mmc->max_segs = 128;
> +		/* cqhci 16bit length */
> +		/* 0 size, means 65536 so we don't have to -1 here */
> +		mmc->max_seg_size = 64 * 1024;
> +	}
> +#endif
> +
>  	host->timeout_clks = 3 * 1048576;
>  	host->dma.gpd = dma_alloc_coherent(&pdev->dev,
>  				2 * sizeof(struct mt_gpdma_desc),

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
