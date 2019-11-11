Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A03F752C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 14:38:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zazQRs5ee6eezDUAYMNa1zMO8S8UEGmYDBrOMqfkwrk=; b=KjUSnknOeQ1xx8
	5dZAAX8AFZukyuHkMCs8QTh0FfE9JAzNDD6vrR4ARnzEbNp5H3czfpVHJWBIzcuyddItqHxt6dQE4
	W6defTBrRL82sHNxB1LySJhqXyPNKUp+Sj/f40NiIrOCuk2z965LJ8WfavYZdMWTii5vHdy8EpsmM
	KVmKMHG9zmNTzfD+17NvVw7wSYD4uPSgJ6R+YKeJPAH1aAy2B5y4soI041vpjHKL4uk4EGrcB/txs
	CiUjTgQ18Jcji1fLlX4mUElfblPklG5YyDqzu/zD8M0eDO5mthb8weTXmVpmRnVqRnR3kncNJ08oK
	IzNGIDZsmcWclCiFyobg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU9tw-0002XB-OF; Mon, 11 Nov 2019 13:38:40 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU9tn-0002Vu-LK
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 13:38:34 +0000
Received: by mail-vk1-xa43.google.com with SMTP id o2so3182314vkc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 05:38:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TseRgVO5KMxUPu8yg6AH/nb9GpfwCcnFGSRrzoJ8Pw0=;
 b=MXvmIvvkLnHT3nGUTSGEBIRXDjdazqjSQW0G5EPHVze8R3G9fZhwqK7Nk5ivgS3iRR
 4gVpUMcXb3yVVjCOWISEUpq/g4urGg3MjRbqZ+Vu4ICLtoEk2WGvK87YhBFRnitxX5+U
 Z/DFQgXkqUpBV8+JTDF6esWrl4/KmthCGo46L7cj9/WC0GWeG5SON9ZzmVL/WQSbbwba
 Dm8Z3f+PWGiybizOrNAqKBGNH5pebrBF5BVic4hW12rrJCr9CF34KucWNXbV3qTFSqB8
 SmVvorR23HEj1kdlHR0FTdn23dKc/VHHTlto3OywPfg/b2WmuDuJY7MDzrauO0OyMS8e
 5vlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TseRgVO5KMxUPu8yg6AH/nb9GpfwCcnFGSRrzoJ8Pw0=;
 b=aFiNOsZEo63MIVH1hJMYfDwOokTt8/dqCeyDivOSGClHUrxxdeQLG0fJ0BTtbhDyj6
 m7ImaafoS6fBRpVCXxeG5ApDlQGE/UKIEsDJcDjDJiY3IdOKNVdTjLGOoQDjHwW98etw
 a4IewgDveJREc6kGv6QITwuDSmhZtokhVNgKL8/gmQAydC06d1LcuNGjVeu7K/KlhU/a
 uFxDRtDkhQalDykYuxQwUqjkJd4EZaeEU39bwG7Q6E73Q2zEPLtxYhTlGEj2QTdOoO9s
 fsAEpYtC3XF21qJpzUEL8jZMJCcZcm5osOFJg2popMjUfICTP8km9yiAZ0JZQEeAjFBm
 +iuA==
X-Gm-Message-State: APjAAAV4t3iS8bNrMM5zocBO0JSZ/LKcb4lluK2YdvNR95IZkJeYqABR
 UsoFOIhIio5QsZX5rj/wJG583vOjR1DJrod35LPuvQ==
X-Google-Smtp-Source: APXvYqxnr5ZW7MuTR56E3PWgQp6UVn+dMM0TlslXroVCAveGqOdArQ6NsC5UPVVmIVLceQRld5c1oKyu05yFIeYQPt8=
X-Received: by 2002:a1f:7381:: with SMTP id o123mr13357405vkc.53.1573479509614; 
 Mon, 11 Nov 2019 05:38:29 -0800 (PST)
MIME-Version: 1.0
References: <1572590582-11056-1-git-send-email-chun-hung.wu@mediatek.com>
 <1572590582-11056-2-git-send-email-chun-hung.wu@mediatek.com>
In-Reply-To: <1572590582-11056-2-git-send-email-chun-hung.wu@mediatek.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 11 Nov 2019 14:37:53 +0100
Message-ID: <CAPDyKFqJEhTsPOsBJPCx6acDNKsiJ+kZX_NRwy901xEVCbiR4Q@mail.gmail.com>
Subject: Re: [PATCH 2/3] [2/3] mmc: mediatek: command queue support
To: Chun-Hung Wu <chun-hung.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_053831_709954_E0C2ED83 
X-CRM114-Status: GOOD (  23.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: wsd_upstream@mediatek.com,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Pan Bian <bianpan2016@163.com>, Kuohong Wang <kuohong.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Stanley Chu <stanley.chu@mediatek.com>,
 Chaotian Jing <chaotian.jing@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+ Trimmed cc list (please do that as well for your next submission).

On Fri, 1 Nov 2019 at 07:43, Chun-Hung Wu <chun-hung.wu@mediatek.com> wrote:
>
> Support command queue for mt6779 platform.

A lot of changes summarized on only one line. I would appreciate some
more information here, please.

>
> Change-Id: I56b866fa4097a3c0bee77f53486c470e4f1944b9
> Feature:

Drop these please.

> Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>

For the next submission, please add the maintainers for the cqhci
driver. They may have some valuable feedback for you.

Below follows a few review comments, which are more from a patch
formatting point of view, than technical.

> ---
>  drivers/mmc/host/mtk-sd.c | 151 +++++++++++++++++++++++++++++++++++++++++++---
>  1 file changed, 141 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
> index 189e426..b132397 100644
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
>  #define MSDC_INT_DMA_BDCSERR    (0x1 << 17)    /* W1C */
>  #define MSDC_INT_DMA_GPDCSERR   (0x1 << 18)    /* W1C */
>  #define MSDC_INT_DMA_PROTECT    (0x1 << 19)    /* W1C */
> +#define MSDC_INT_CMDQ           (0x1 << 28)    /* W1C */
>
>  /* MSDC_INTEN mask */
>  #define MSDC_INTEN_MMCIRQ       (0x1 << 0)     /* RW */
> @@ -181,6 +184,7 @@
>  /* SDC_CFG mask */
>  #define SDC_CFG_SDIOINTWKUP     (0x1 << 0)     /* RW */
>  #define SDC_CFG_INSWKUP         (0x1 << 1)     /* RW */
> +#define SDC_CFG_WRDTOC          (0x1fff  << 2)  /* RW */
>  #define SDC_CFG_BUSWIDTH        (0x3 << 16)    /* RW */
>  #define SDC_CFG_SDIO            (0x1 << 19)    /* RW */
>  #define SDC_CFG_SDIOIDE         (0x1 << 20)    /* RW */
> @@ -228,6 +232,7 @@
>  #define MSDC_PATCH_BIT_SPCPUSH    (0x1 << 29)  /* RW */
>  #define MSDC_PATCH_BIT_DECRCTMO   (0x1 << 30)  /* RW */
>
> +#define MSDC_PB1_BUSY_CHECK_SEL   (0x1 << 7)    /* RW */
>  #define MSDC_PATCH_BIT1_STOP_DLY  (0xf << 8)    /* RW */
>
>  #define MSDC_PATCH_BIT2_CFGRESP   (0x1 << 15)   /* RW */
> @@ -431,6 +436,7 @@ struct msdc_host {
>         struct msdc_save_para save_para; /* used when gate HCLK */
>         struct msdc_tune_para def_tune_para; /* default tune setting */
>         struct msdc_tune_para saved_tune_para; /* tune result of CMD21/CMD19 */
> +       struct cqhci_host *cq_host;
>  };
>
>  static const struct mtk_mmc_compatible mt8135_compat = {
> @@ -527,6 +533,18 @@ struct msdc_host {
>         .use_internal_cd = true,
>  };
>
> +static const struct mtk_mmc_compatible mt6779_compat = {
> +       .clk_div_bits = 12,
> +       .hs400_tune = false,
> +       .pad_tune_reg = MSDC_PAD_TUNE0,
> +       .async_fifo = true,
> +       .data_tune = true,
> +       .busy_check = true,
> +       .stop_clk_fix = true,
> +       .enhance_rx = true,
> +       .support_64g = true,
> +};
> +
>  static const struct of_device_id msdc_of_ids[] = {
>         { .compatible = "mediatek,mt8135-mmc", .data = &mt8135_compat},
>         { .compatible = "mediatek,mt8173-mmc", .data = &mt8173_compat},
> @@ -536,6 +554,7 @@ struct msdc_host {
>         { .compatible = "mediatek,mt7622-mmc", .data = &mt7622_compat},
>         { .compatible = "mediatek,mt8516-mmc", .data = &mt8516_compat},
>         { .compatible = "mediatek,mt7620-mmc", .data = &mt7620_compat},
> +       { .compatible = "mediatek,mt6779-mmc", .data = &mt6779_compat},
>         {}
>  };
>  MODULE_DEVICE_TABLE(of, msdc_of_ids);
> @@ -698,21 +717,21 @@ static void msdc_unprepare_data(struct msdc_host *host, struct mmc_request *mrq)
>         }
>  }
>
> -/* clock control primitives */
> -static void msdc_set_timeout(struct msdc_host *host, u32 ns, u32 clks)
> +static u64 msdc_timeout_cal(struct msdc_host *host, u64 ns, u64 clks)
>  {
> -       u32 timeout, clk_ns;
> +       u64 timeout, clk_ns;
>         u32 mode = 0;
>
> -       host->timeout_ns = ns;
> -       host->timeout_clks = clks;
>         if (host->mmc->actual_clock == 0) {
>                 timeout = 0;
>         } else {
> -               clk_ns  = 1000000000UL / host->mmc->actual_clock;
> -               timeout = (ns + clk_ns - 1) / clk_ns + clks;
> +               clk_ns  = 1000000000ULL;
> +               do_div(clk_ns, host->mmc->actual_clock);
> +               timeout = ns + clk_ns - 1;
> +               do_div(timeout, clk_ns);
> +               timeout += clks;
>                 /* in 1048576 sclk cycle unit */
> -               timeout = (timeout + (0x1 << 20) - 1) >> 20;
> +               timeout = DIV_ROUND_UP(timeout, (0x1 << 20));
>                 if (host->dev_comp->clk_div_bits == 8)
>                         sdr_get_field(host->base + MSDC_CFG,
>                                       MSDC_CFG_CKMOD, &mode);
> @@ -722,9 +741,30 @@ static void msdc_set_timeout(struct msdc_host *host, u32 ns, u32 clks)
>                 /*DDR mode will double the clk cycles for data timeout */
>                 timeout = mode >= 2 ? timeout * 2 : timeout;
>                 timeout = timeout > 1 ? timeout - 1 : 0;
> -               timeout = timeout > 255 ? 255 : timeout;
>         }
> -       sdr_set_field(host->base + SDC_CFG, SDC_CFG_DTOC, timeout);
> +       return timeout;
> +}
> +
> +/* clock control primitives */
> +static void msdc_set_timeout(struct msdc_host *host, u64 ns, u64 clks)
> +{
> +       u64 timeout;
> +
> +       host->timeout_ns = ns;
> +       host->timeout_clks = clks;
> +
> +       timeout = msdc_timeout_cal(host, ns, clks);
> +       sdr_set_field(host->base + SDC_CFG, SDC_CFG_DTOC,
> +                     (u32)(timeout > 255 ? 255 : timeout));
> +}

Does the above changes make sense to split out in a separate patch?

It looks to me, that these are generic clock updates to the driver
that really doesn't have to be included in $subject patch.

> +
> +static void msdc_set_busy_timeout(struct msdc_host *host, u64 ns, u64 clks)
> +{
> +       u64 timeout;
> +
> +       timeout = msdc_timeout_cal(host, ns, clks);
> +       sdr_set_field(host->base + SDC_CFG, SDC_CFG_WRDTOC,
> +                     (u32)(timeout > 8191 ? 8191 : timeout));
>  }
>
>  static void msdc_gate_clock(struct msdc_host *host)
> @@ -1413,6 +1453,36 @@ static void msdc_enable_sdio_irq(struct mmc_host *mmc, int enb)
>                 pm_runtime_put_noidle(host->dev);
>  }
>
> +#if IS_ENABLED(CONFIG_MMC_CQHCI)

Other drivers Kconfig option, uses "select MMC_CQHCI". Would that make
this more simple and allowing to remove the "if IS_ENABLED" thingy?

> +static irqreturn_t msdc_cmdq_irq(struct msdc_host *host, u32 intsts)
> +{
> +       int cmd_err = 0, dat_err = 0;
> +
> +       if (intsts & MSDC_INT_RSPCRCERR) {
> +               cmd_err = (unsigned int)-EILSEQ;
> +               dev_err(host->dev, "%s: CMD CRC ERR", __func__);
> +       } else if (intsts & MSDC_INT_CMDTMO) {
> +               cmd_err = (unsigned int)-ETIMEDOUT;
> +               dev_err(host->dev, "%s: CMD TIMEOUT ERR", __func__);
> +       }
> +
> +       if (intsts & MSDC_INT_DATCRCERR) {
> +               dat_err = (unsigned int)-EILSEQ;
> +               dev_err(host->dev, "%s: DATA CRC ERR", __func__);
> +       } else if (intsts & MSDC_INT_DATTMO) {
> +               dat_err = (unsigned int)-ETIMEDOUT;
> +               dev_err(host->dev, "%s: DATA TIMEOUT ERR", __func__);
> +       }
> +
> +       if (cmd_err || dat_err) {
> +               dev_err(host->dev, "cmd_err = %d, dat_err =%d, intsts = 0x%x",
> +                       cmd_err, dat_err, intsts);
> +       }
> +
> +       return cqhci_irq(host->mmc, 0, cmd_err, dat_err);
> +}
> +#endif
> +
>  static irqreturn_t msdc_irq(int irq, void *dev_id)
>  {
>         struct msdc_host *host = (struct msdc_host *) dev_id;
> @@ -1449,6 +1519,16 @@ static irqreturn_t msdc_irq(int irq, void *dev_id)
>                 if (!(events & (event_mask & ~MSDC_INT_SDIOIRQ)))
>                         break;
>
> +#if IS_ENABLED(CONFIG_MMC_CQHCI)

Again, please to avoid these "IS_ENABLED".

> +               if ((host->mmc->caps2 & MMC_CAP2_CQE) &&
> +                   (events & MSDC_INT_CMDQ)) {
> +                       msdc_cmdq_irq(host, events);
> +                       /* clear interrupts */
> +                       writel(events, host->base + MSDC_INT);
> +                       return IRQ_HANDLED;
> +               }
> +#endif
> +
>                 if (!mrq) {
>                         dev_err(host->dev,
>                                 "%s: MRQ=NULL; events=%08X; event_mask=%08X\n",
> @@ -2132,6 +2212,36 @@ static int msdc_get_cd(struct mmc_host *mmc)
>                 return !val;
>  }
>
> +static void msdc_cqe_enable(struct mmc_host *mmc)
> +{
> +       struct msdc_host *host = mmc_priv(mmc);
> +
> +       /* enable cmdq irq */
> +       writel(MSDC_INT_CMDQ, host->base + MSDC_INTEN);
> +       /* enable busy check */
> +       sdr_set_bits(host->base + MSDC_PATCH_BIT1, MSDC_PB1_BUSY_CHECK_SEL);
> +       /* default write data / busy timeout 20s */
> +       msdc_set_busy_timeout(host, 20 * 1000000000ULL, 0);
> +       /* default read data timeout 1s */
> +       msdc_set_timeout(host, 1000000000ULL, 0);

Some magic timeout values here. Can you elaborate why these values?

> +}
> +
> +void msdc_cqe_disable(struct mmc_host *mmc, bool recovery)
> +{
> +       struct msdc_host *host = mmc_priv(mmc);
> +
> +       /* disable cmdq irq */
> +       sdr_clr_bits(host->base + MSDC_INTEN, MSDC_INT_CMDQ);
> +       /* disable busy check */
> +       sdr_clr_bits(host->base + MSDC_PATCH_BIT1, MSDC_PB1_BUSY_CHECK_SEL);
> +
> +       if (recovery) {
> +               sdr_set_field(host->base + MSDC_DMA_CTRL,
> +                             MSDC_DMA_CTRL_STOP, 1);
> +               msdc_reset_hw(host);
> +       }
> +}
> +
>  static const struct mmc_host_ops mt_msdc_ops = {
>         .post_req = msdc_post_req,
>         .pre_req = msdc_pre_req,
> @@ -2148,6 +2258,11 @@ static int msdc_get_cd(struct mmc_host *mmc)
>         .hw_reset = msdc_hw_reset,

The hw_reset callback is really for resetting the card, but it seems
like you are using it to reset the controller. No?

I notice there are some other drivers abusing the callback as well,
but I am wondering whether it's time to really look into what's going
on here.

Can you elaborate on why you need this?

>  };
>
> +static const struct cqhci_host_ops msdc_cmdq_ops = {
> +       .enable         = msdc_cqe_enable,
> +       .disable        = msdc_cqe_disable,
> +};
> +
>  static void msdc_of_property_parse(struct platform_device *pdev,
>                                    struct msdc_host *host)
>  {
> @@ -2299,6 +2414,22 @@ static int msdc_drv_probe(struct platform_device *pdev)
>                 host->dma_mask = DMA_BIT_MASK(32);
>         mmc_dev(mmc)->dma_mask = &host->dma_mask;
>
> +#if IS_ENABLED(CONFIG_MMC_CQHCI)
> +       if (mmc->caps2 & MMC_CAP2_CQE) {
> +               host->cq_host = devm_kzalloc(host->mmc->parent,
> +                                            sizeof(*host->cq_host),
> +                                            GFP_KERNEL);
> +               host->cq_host->caps |= CQHCI_TASK_DESC_SZ_128;
> +               host->cq_host->mmio = host->base + 0x800;
> +               host->cq_host->ops = &msdc_cmdq_ops;
> +               cqhci_init(host->cq_host, mmc, true);
> +               mmc->max_segs = 128;
> +               /* cqhci 16bit length */
> +               /* 0 size, means 65536 so we don't have to -1 here */
> +               mmc->max_seg_size = 64 * 1024;
> +       }
> +#endif
> +
>         host->timeout_clks = 3 * 1048576;
>         host->dma.gpd = dma_alloc_coherent(&pdev->dev,
>                                 2 * sizeof(struct mt_gpdma_desc),
> --
> 1.9.1
>

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
