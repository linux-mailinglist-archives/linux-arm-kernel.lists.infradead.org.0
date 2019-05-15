Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0DE81EF75
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 13:35:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z31bLIS2kGT6QH/URO+izU25hhc1q1m596SMwXtoP3w=; b=gwdZkkKtUGQus6
	tJjAcW7trq+4HBtYDg8hgS4vWNkWFtUSgIVV9O8lIhW6e2gfPAh/8Ckc10YgSA70N+9ESfS950mwj
	hUhdNKG6Db2/Kzdx1Ymrc0EakaRhbXo3K6ZAGkmKF1lUH1ppWIVjTxI8bF/bRrZZgvhPGCpnKWpbD
	+Ju9FUbG6Xys1Mzxty67MWI6yQTykurm1HKGZrY9/OTe3/HwZb8cl4ngpwlUi/+q664EedZiyop88
	IoFMEKo+UZbLue0r9ae2MHwPz/JE1Bd5GTLyNCYq0couXaXr/YLNquRvoeq0MmvdxtuQ/UjyZnzUP
	H6GQMuHFsY2mbp8rgQRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQsBw-0002SL-D0; Wed, 15 May 2019 11:35:24 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQsBm-0002OZ-O4
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 11:35:16 +0000
Received: by mail-vs1-xe44.google.com with SMTP id q64so1468315vsd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 04:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZWqAGCI5yMJx23kt3Mfd3kN55xmuwLQAWVG8F0xyeaE=;
 b=H8I82c784m0jGWAdSgfv70xt5W/e2W1AydqnX4HmVv/TyjugE8NKbcb1hozMQxpxXA
 2DMvnzUlpl5Z1ddBvv2j5+QHYXWqvRQEFmf36SjeHZ6L+5iZOIw1vd3+5EkGfiyLlQ9i
 15zeYIjV3z+qqaNh0MOrCDWQbxw713gfubMr5pupFHsP8XOl4YSYRWbcAC8N06GjUEU/
 Lr96fSdftzVvoCVyjH52mglkTzdVXx8RxOwGFH0TnFCIwyZWT+XGaNw5B6DHuoZzAiUW
 BKddH9aLOjw/edqV2fNVOwoMJ1m+Nq21PbvSIoFwQbfjNBmlfngrPtntXUGB2/yrjQI+
 r0FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZWqAGCI5yMJx23kt3Mfd3kN55xmuwLQAWVG8F0xyeaE=;
 b=uanJ/QXbA7HEQEmLBaEeFL2Vy4ul8z3MZrRTqjddPFAIy9VjK2WPpQb+Qz7Ox87Neq
 xEopH2+Qninbr8vlZ17lVCpwAhmRG6QI51b/iZ6OQen0E5+2XyqE6ruSLHfxFt5zhcf7
 Zdg1dteSXkTzYOsLHW0/iIKRfDTRnNnXHau1Z1/MYFaL1n/UDOXuSYgflh5E7E8+4jNh
 89qZAmsullVOaQu8Z0fn7fRqSbpBB5XnE2D1MalbKYCshesKbgca+sy3vVzK4ej8eYvD
 MEvflMt3io5Gthb2wNp+28ifvyCGrgXNrh+4FXpzJaKURnpKl9J7L+m5cxC8lKt4C8Gl
 ZXrg==
X-Gm-Message-State: APjAAAWprsKMEoTP+mNJPTLf3gaOWfGWWWfRwJEr77fT1T5kYjgPxR51
 wKfj/02R4+kNkgc4DRyLaqRHP11bNlpXzT+kh8zf5g==
X-Google-Smtp-Source: APXvYqxP1+Bj5N0OGQvJ0bEb5lturNgpY8085Ucz8PC4rk0LP/xJeG6jujlA3rtCO12XfPL7fW5CNb2hO4LJ6tng7NA=
X-Received: by 2002:a67:c987:: with SMTP id y7mr20082008vsk.35.1557920111662; 
 Wed, 15 May 2019 04:35:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190513091548.16674-1-narmstrong@baylibre.com>
 <20190513091548.16674-3-narmstrong@baylibre.com>
In-Reply-To: <20190513091548.16674-3-narmstrong@baylibre.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 15 May 2019 13:34:35 +0200
Message-ID: <CAPDyKFp-mU-pCcwGUkL8B5YfhXamHtTcRHe8eX9SNupMxr-kgg@mail.gmail.com>
Subject: Re: [PATCH 2/3] mmc: meson-gx: add ddr-access-quirk
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_043514_782980_718D0653 
X-CRM114-Status: GOOD (  31.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: baylibre-upstreaming@groups.io, Kevin Hilman <khilman@baylibre.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 May 2019 at 11:16, Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> On the Amlogic G12A SoC family, (only) the SDIO controller fails to access
> the data from DDR, leading to a broken controller.

Could you possibly make it more clear that this is about the internal
DMA support in the controller that is broken?

Did you consider to use the controller without using the DMA mode? Is
that possible?

>
> But each MMC controller has 1,5KiB of SRAM after the registers, that can
> be used as bounce buffer to avoid direct DDR access from the integrated
> DMAs (this SRAM may be used by the boot ROM when DDR is not yet initialized).

I think "DDR" is a confusing terminology, that goes for the DT binding
as well. What about using "DRAM" instead?

In any case, using the SRAM seems like it could work. However, just so
I get this right, it solely dedicated to the SDIO controller or may
someone else also try to use it?

>
> The quirk is to disable the chained descriptor for this controller, and
> use this SRAM memory zone as buffer for the bounce buffer fallback mode.
>
> The performance hit hasn't been evaluated, but the fix has been tested
> using a WiFi AP6398S SDIO module, and the iperf3 Bandwidth measurement gave
> 55.2 Mbits/sec over a 63 Hours long test, with the SDIO ios set as High-Speed
> at 50MHz clock. It gave 170 Mbits/sec as SDR104 and 200MHz clock.

If possible to not use DMA, it would be interesting to compare numbers. :-)

>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  drivers/mmc/host/meson-gx-mmc.c | 65 ++++++++++++++++++++++++++-------
>  1 file changed, 52 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/mmc/host/meson-gx-mmc.c b/drivers/mmc/host/meson-gx-mmc.c
> index c5a8af4ca76b..6ef465304052 100644
> --- a/drivers/mmc/host/meson-gx-mmc.c
> +++ b/drivers/mmc/host/meson-gx-mmc.c
> @@ -129,6 +129,9 @@
>  #define SD_EMMC_TXD 0x94
>  #define SD_EMMC_LAST_REG SD_EMMC_TXD
>
> +#define SD_EMMC_SRAM_DATA_BUF_LEN 1536
> +#define SD_EMMC_SRAM_DATA_BUF_OFF 0x200
> +
>  #define SD_EMMC_CFG_BLK_SIZE 512 /* internal buffer max: 512 bytes */
>  #define SD_EMMC_CFG_RESP_TIMEOUT 256 /* in clock cycles */
>  #define SD_EMMC_CMD_TIMEOUT 1024 /* in ms */
> @@ -168,6 +171,8 @@ struct meson_host {
>         unsigned long req_rate;
>         bool ddr;
>
> +       bool ddr_access_quirk;
> +
>         struct pinctrl *pinctrl;
>         struct pinctrl_state *pins_default;
>         struct pinctrl_state *pins_clk_gate;
> @@ -232,11 +237,20 @@ static struct mmc_command *meson_mmc_get_next_command(struct mmc_command *cmd)
>  static void meson_mmc_get_transfer_mode(struct mmc_host *mmc,
>                                         struct mmc_request *mrq)
>  {
> +       struct meson_host *host = mmc_priv(mmc);
>         struct mmc_data *data = mrq->data;
>         struct scatterlist *sg;
>         int i;
>         bool use_desc_chain_mode = true;
>
> +       /*
> +        * When Controller DMA cannot directly access DDR memory, disable
> +        * support for Chain Mode to directly use the internal SRAM using
> +        * the bounce buffer mode.
> +        */
> +       if (host->ddr_access_quirk)
> +               return;
> +
>         /*
>          * Broken SDIO with AP6255-based WiFi on Khadas VIM Pro has been
>          * reported. For some strange reason this occurs in descriptor
> @@ -1049,6 +1063,10 @@ static int meson_mmc_probe(struct platform_device *pdev)
>         host->dev = &pdev->dev;
>         dev_set_drvdata(&pdev->dev, host);
>
> +       /* The G12A SDIO Controller needs an SRAM bounce buffer */
> +       host->ddr_access_quirk = device_property_read_bool(&pdev->dev,
> +                                       "amlogic,ddr-access-quirk");
> +
>         /* Get regulators and the supported OCR mask */
>         host->vqmmc_enabled = false;
>         ret = mmc_regulator_get_supply(mmc);
> @@ -1146,9 +1164,16 @@ static int meson_mmc_probe(struct platform_device *pdev)
>                 goto err_init_clk;
>
>         mmc->caps |= MMC_CAP_CMD23;
> -       mmc->max_blk_count = CMD_CFG_LENGTH_MASK;
> +       if (host->ddr_access_quirk) {
> +               /* Limit to the available sram memory */
> +               mmc->max_segs = SD_EMMC_SRAM_DATA_BUF_LEN / mmc->max_blk_size;
> +               mmc->max_blk_count = mmc->max_segs;
> +       } else {
> +               mmc->max_blk_count = CMD_CFG_LENGTH_MASK;
> +               mmc->max_segs = SD_EMMC_DESC_BUF_LEN /
> +                               sizeof(struct sd_emmc_desc);
> +       }
>         mmc->max_req_size = mmc->max_blk_count * mmc->max_blk_size;
> -       mmc->max_segs = SD_EMMC_DESC_BUF_LEN / sizeof(struct sd_emmc_desc);
>         mmc->max_seg_size = mmc->max_req_size;
>
>         /*
> @@ -1158,15 +1183,27 @@ static int meson_mmc_probe(struct platform_device *pdev)
>          */
>         mmc->caps2 &= ~MMC_CAP2_HS400;
>
> -       /* data bounce buffer */
> -       host->bounce_buf_size = mmc->max_req_size;
> -       host->bounce_buf =
> -               dma_alloc_coherent(host->dev, host->bounce_buf_size,
> -                                  &host->bounce_dma_addr, GFP_KERNEL);
> -       if (host->bounce_buf == NULL) {
> -               dev_err(host->dev, "Unable to map allocate DMA bounce buffer.\n");
> -               ret = -ENOMEM;
> -               goto err_free_irq;
> +       if (host->ddr_access_quirk) {
> +               /*
> +                * The MMC Controller embeds 1,5KiB of internal SRAM
> +                * that can be used to be used as bounce buffer.
> +                * In the case of the G12A SDIO controller, use these
> +                * instead of the DDR memory
> +                */
> +               host->bounce_buf_size = SD_EMMC_SRAM_DATA_BUF_LEN;
> +               host->bounce_buf = host->regs + SD_EMMC_SRAM_DATA_BUF_OFF;
> +               host->bounce_dma_addr = res->start + SD_EMMC_SRAM_DATA_BUF_OFF;
> +       } else {
> +               /* data bounce buffer */
> +               host->bounce_buf_size = mmc->max_req_size;
> +               host->bounce_buf =
> +                       dma_alloc_coherent(host->dev, host->bounce_buf_size,
> +                                          &host->bounce_dma_addr, GFP_KERNEL);
> +               if (host->bounce_buf == NULL) {
> +                       dev_err(host->dev, "Unable to map allocate DMA bounce buffer.\n");
> +                       ret = -ENOMEM;
> +                       goto err_free_irq;
> +               }
>         }
>
>         host->descs = dma_alloc_coherent(host->dev, SD_EMMC_DESC_BUF_LEN,
> @@ -1208,8 +1245,10 @@ static int meson_mmc_remove(struct platform_device *pdev)
>
>         dma_free_coherent(host->dev, SD_EMMC_DESC_BUF_LEN,
>                           host->descs, host->descs_dma_addr);
> -       dma_free_coherent(host->dev, host->bounce_buf_size,
> -                         host->bounce_buf, host->bounce_dma_addr);
> +
> +       if (!host->ddr_access_quirk)
> +               dma_free_coherent(host->dev, host->bounce_buf_size,
> +                                 host->bounce_buf, host->bounce_dma_addr);
>
>         clk_disable_unprepare(host->mmc_clk);
>         clk_disable_unprepare(host->core_clk);
> --
> 2.21.0
>

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
