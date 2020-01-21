Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAEB1437C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 08:39:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVVA9Eis9czuM8XKrW7s1s3w/3KFgigx6MY2mYndRdk=; b=MUz2MSUai43RRD
	ZnttrpF1BOTMzwPXaXLTJ9g+MK6oY+FlWxzkmnbD0tvsELzpG2ubwgb/vO1x7AiwJFXI7SKYb6Mhu
	7ot/aJ986tooa6/L8w9P1SqOXeIzXLY3omIeINSUh62rAE4iiw+aItAQAFP8k4F+jw73KiP+u4asW
	8kEDLKSPTG1uf1Z7MPcbvHfmcve0U8I77pXyQJ1w06/aN0QAd3lfK1BJ39XqcOz4V+56I30NU1fKc
	BMxzyEgSXa3wkbjP2oULgGfzJ8OS4k81K1zqEVFpseMVMeGNRpjtYhsUoeeWUxg1I9YBSsAnQqlUw
	74Mml4z6k6eLxfOJtNnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ito7q-0002Fn-EI; Tue, 21 Jan 2020 07:39:02 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ito7Y-0002Cy-Cs
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 07:38:53 +0000
Received: by mail-il1-x142.google.com with SMTP id p8so1570804iln.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Jan 2020 23:38:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PHqnHa0qnPxUWaLgWExp5NqTljru+b9BNhLxZoAb/74=;
 b=OmZPzAo9u4wNIjBaj5by2YVmcHi3W3kGgYCDYkOeX/sRuk/d6Ip2urxBgwBs+p4qXb
 e8Zs7A0p6K0Wk8LFpArEMZB0HpoKt8ZEe5W/8dqx6NDkhpINCAsFqIFoK90zejSFnGDE
 aBHqhA3HVcybPa8j6B/zbVNuB+bYrd1EieCoI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PHqnHa0qnPxUWaLgWExp5NqTljru+b9BNhLxZoAb/74=;
 b=oQMURF6Gmab4VMKZqGSI/ek+vW4xL9lOsMUoMd34tatcdOGJoxwHYajUdY4D9Z4fPX
 Nkf/RhIe6AgAvXxlUDb2FaiZ00cSwHyYIU6ZKXKdfEW20S8XsGSniY0SVK8XrWUNE2K/
 ntCWvm7w7BH+Mp+QWk/Z0iSlCyGB/HnUkVDKFbAh0SPXOBW81oxO9d7VIfngjyuSQELC
 +KRbiiVBBj5kTchuJcZl6l3T1hbas1o9ABqt/blMsgqCfPO7JYfeqJecfO94Iadahr+n
 ZK+ogrT98bOEpIDvKCucI6umUCBoInK0cbwIvFv0BdCio9oWcB0N/abKvStkdvMefPPq
 i+Kg==
X-Gm-Message-State: APjAAAWW7OlinuEjRELt4PbDY55tf2j0xIF0YOmjiujkgM0vAKnTpKc6
 YdIO6KOy1H9RmfkaUlpRxM4QAN4aV16Z6Ptc/NlBqg==
X-Google-Smtp-Source: APXvYqxEVd7Ck/bfZE7f0wlCDxyO/nhb3EbNs4Jfex0sGWrSKDd8Cp4Mi2akPZAanOm7rhHv5BOnETqZi6iUQknYyWM=
X-Received: by 2002:a92:af8e:: with SMTP id v14mr2485544ill.150.1579592322841; 
 Mon, 20 Jan 2020 23:38:42 -0800 (PST)
MIME-Version: 1.0
References: <1579591258-30940-1-git-send-email-yong.mao@mediatek.com>
 <1579591258-30940-2-git-send-email-yong.mao@mediatek.com>
In-Reply-To: <1579591258-30940-2-git-send-email-yong.mao@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Tue, 21 Jan 2020 15:38:16 +0800
Message-ID: <CAJMQK-gZcvpQTSqM4kNsnNOXpcOfJw9u-X9uedQDM6W2soF_4w@mail.gmail.com>
Subject: Re: [PATCH] mmc: mediatek: fix SDIO irq issue
To: Yong Mao <yong.mao@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_233844_464690_8F4CAA61 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, srv_heupstream@mediatek.com,
 linux-mmc@vger.kernel.org, lkml <linux-kernel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Chaotian Jing <chaotian.jing@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 7:20 AM Yong Mao <yong.mao@mediatek.com> wrote:
>
> From: yong mao <yong.mao@mediatek.com>
>
> Host controller may lost interrupt in some specail case.
> Add SDIO irq recheck mechanism to make sure all interrupts
> can be processed immediately.
>
> Signed-off-by: Yong Mao <yong.mao@mediatek.com>
> ---

Thanks, mt8173 need this patch for cap-sdio-irq to work.

Tested-by: Hsin-Yi Wang <hsinyi@chromium.org>


>  drivers/mmc/host/mtk-sd.c | 38 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 38 insertions(+)
>
> diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
> index 7726dcf..18a1b86 100644
> --- a/drivers/mmc/host/mtk-sd.c
> +++ b/drivers/mmc/host/mtk-sd.c
> @@ -128,6 +128,7 @@
>  #define MSDC_PS_CDSTS           (0x1 << 1)     /* R  */
>  #define MSDC_PS_CDDEBOUNCE      (0xf << 12)    /* RW */
>  #define MSDC_PS_DAT             (0xff << 16)   /* R  */
> +#define MSDC_PS_DATA1           (0x1 << 17)    /* R  */
>  #define MSDC_PS_CMD             (0x1 << 24)    /* R  */
>  #define MSDC_PS_WP              (0x1 << 31)    /* R  */
>
> @@ -361,6 +362,7 @@ struct msdc_save_para {
>
>  struct mtk_mmc_compatible {
>         u8 clk_div_bits;
> +       bool recheck_sdio_irq;
>         bool hs400_tune; /* only used for MT8173 */
>         u32 pad_tune_reg;
>         bool async_fifo;
> @@ -436,6 +438,7 @@ struct msdc_host {
>
>  static const struct mtk_mmc_compatible mt8135_compat = {
>         .clk_div_bits = 8,
> +       .recheck_sdio_irq = false,
>         .hs400_tune = false,
>         .pad_tune_reg = MSDC_PAD_TUNE,
>         .async_fifo = false,
> @@ -448,6 +451,7 @@ struct msdc_host {
>
>  static const struct mtk_mmc_compatible mt8173_compat = {
>         .clk_div_bits = 8,
> +       .recheck_sdio_irq = true,
>         .hs400_tune = true,
>         .pad_tune_reg = MSDC_PAD_TUNE,
>         .async_fifo = false,
> @@ -460,6 +464,7 @@ struct msdc_host {
>
>  static const struct mtk_mmc_compatible mt8183_compat = {
>         .clk_div_bits = 12,
> +       .recheck_sdio_irq = false,
>         .hs400_tune = false,
>         .pad_tune_reg = MSDC_PAD_TUNE0,
>         .async_fifo = true,
> @@ -472,6 +477,7 @@ struct msdc_host {
>
>  static const struct mtk_mmc_compatible mt2701_compat = {
>         .clk_div_bits = 12,
> +       .recheck_sdio_irq = false,
>         .hs400_tune = false,
>         .pad_tune_reg = MSDC_PAD_TUNE0,
>         .async_fifo = true,
> @@ -484,6 +490,7 @@ struct msdc_host {
>
>  static const struct mtk_mmc_compatible mt2712_compat = {
>         .clk_div_bits = 12,
> +       .recheck_sdio_irq = false,
>         .hs400_tune = false,
>         .pad_tune_reg = MSDC_PAD_TUNE0,
>         .async_fifo = true,
> @@ -496,6 +503,7 @@ struct msdc_host {
>
>  static const struct mtk_mmc_compatible mt7622_compat = {
>         .clk_div_bits = 12,
> +       .recheck_sdio_irq = false,
>         .hs400_tune = false,
>         .pad_tune_reg = MSDC_PAD_TUNE0,
>         .async_fifo = true,
> @@ -508,6 +516,7 @@ struct msdc_host {
>
>  static const struct mtk_mmc_compatible mt8516_compat = {
>         .clk_div_bits = 12,
> +       .recheck_sdio_irq = false,
>         .hs400_tune = false,
>         .pad_tune_reg = MSDC_PAD_TUNE0,
>         .async_fifo = true,
> @@ -518,6 +527,7 @@ struct msdc_host {
>
>  static const struct mtk_mmc_compatible mt7620_compat = {
>         .clk_div_bits = 8,
> +       .recheck_sdio_irq = false,
>         .hs400_tune = false,
>         .pad_tune_reg = MSDC_PAD_TUNE,
>         .async_fifo = false,
> @@ -1007,6 +1017,30 @@ static int msdc_auto_cmd_done(struct msdc_host *host, int events,
>         return cmd->error;
>  }
>
> +/**
> + * msdc_recheck_sdio_irq - recheck whether the SDIO irq is lost
> + *
> + * Host controller may lost interrupt in some special case.
> + * Add SDIO irq recheck mechanism to make sure all interrupts
> + * can be processed immediately
> + *
> + */
> +static void msdc_recheck_sdio_irq(struct msdc_host *host)
> +{
> +       u32 reg_int, reg_inten, reg_ps;
> +
> +       if ((host->mmc->caps & MMC_CAP_SDIO_IRQ)) {
> +               reg_inten = readl(host->base + MSDC_INTEN);
> +               if (reg_inten & MSDC_INTEN_SDIOIRQ) {
> +                       reg_int = readl(host->base + MSDC_INT);
> +                       reg_ps = readl(host->base + MSDC_PS);
> +                       if (!((reg_int & MSDC_INT_SDIOIRQ) ||
> +                             (reg_ps & MSDC_PS_DATA1)))
> +                               sdio_signal_irq(host->mmc);
> +               }
> +       }
> +}
> +
>  static void msdc_track_cmd_data(struct msdc_host *host,
>                                 struct mmc_command *cmd, struct mmc_data *data)
>  {
> @@ -1035,6 +1069,8 @@ static void msdc_request_done(struct msdc_host *host, struct mmc_request *mrq)
>         if (host->error)
>                 msdc_reset_hw(host);
>         mmc_request_done(host->mmc, mrq);
> +       if (host->dev_comp->recheck_sdio_irq)
> +               msdc_recheck_sdio_irq(host);
>  }
>
>  /* returns true if command is fully handled; returns false otherwise */
> @@ -1393,6 +1429,8 @@ static void __msdc_enable_sdio_irq(struct msdc_host *host, int enb)
>         if (enb) {
>                 sdr_set_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
>                 sdr_set_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
> +               if (host->dev_comp->recheck_sdio_irq)
> +                       msdc_recheck_sdio_irq(host);
>         } else {
>                 sdr_clr_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
>                 sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
