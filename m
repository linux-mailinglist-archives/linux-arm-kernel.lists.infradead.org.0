Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB3F195712
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 13:28:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7yZjB13A7PEd32Ueoyavnl+xSZt6ubnfJUKir84VHq0=; b=qs/fVeWWEvvnTC
	vH5sjr8XTwgxrNooVj7TRXbaDMbubSvbSp6zk2hrm/pB2XrTWEfwEIlLuDo+vPRE6wliXL9mj8lBI
	at3nLT5e237l40bErCxtbnyf2LGYZ6p0XF6urI2HeslRcDPVXjJKtUVENsuMfPXSb3GdW3BAysFn6
	tbCtkffLp2A07DuIf0nhTTDxRPhsFxfDMt3AUHIYJD8jboB6UCr4Zlli+Tv03Ig5LDvBK8Vsba1I/
	fyols0ITaHJqRCU1qMg3MOq7FVfFOj/FAsr/vA/+Pdn3io0Y+HP4xOXryn+n1ayx51+XaoXOH93df
	jI7ybIZKB+h5xR6Q7/hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHo5h-0000lv-Do; Fri, 27 Mar 2020 12:28:01 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHo5W-0000kA-JC
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 12:27:52 +0000
Received: by mail-ua1-x941.google.com with SMTP id d23so3171218uak.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 05:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yDbXsSaJLox3BEV/lGpLVToJP0inNIMb6h0DXnz5vRM=;
 b=V92IBXwmXN28A4jtMZdCWpv4Sv+iUOWOsJZSKw1vOK/qmoikLnv/lKYofQ5/9pVobO
 cTFxVWR9O34csQY6icAq2qd7sPEyLQs/loQiOdhm8goyYgpPN6QuhBL6fGEZ0Z6vLRLE
 dJ3yo0aKZqQK457sdAMrob7wUpHIhG8eLt/OGfDRy5FLAs6MXQ6PaPgHi7JKja+HVuUG
 mJfNanekq0IUpLncKOsLTRZOA/PqlkdfOxfiX22ghJRN0DZOwx7ZcsSHYqtQ9T6MV6eq
 jWJlQPkwqBy3NbC4dbUjQGIsOSX3XPuKgUNfKaCLMBR8DaWaRlQOa0kwnKiS+09po1Cb
 g6iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yDbXsSaJLox3BEV/lGpLVToJP0inNIMb6h0DXnz5vRM=;
 b=K+0zAjata4xXJFn8XsqVgd/5Wo1auef0DdZDp6e8tNg4i3PKgvhF0jr20lI5QDEMPv
 niWtmCwhtEkx9TqngIWzCAMPrjeKkU2CQxXCot1zzPNWkCQKXFcwXwDR1D+HFuz9FGwI
 42g6FuQph7CGACs1krlgYUi3sooGPB3EMAAnD93nFP2EgT2imunhVPPbS11u7axEQ6km
 6wOhL546pDNuzqz84tlMlOJYbiC0w1ff6hNLxGI7Qz54m1tDpayzDisYLrrYZYaaBMma
 oU/9wDxk0SWWPbZDSPDv9QN8A/QqQLThQf9F+Xzd+Ee7ZLc+1nNPg5WCAXe+oOhc+g5g
 Drbw==
X-Gm-Message-State: ANhLgQ3kfdoCQd3qS8rczi+rnx8mmB6nrTpss+QVJCifMdl6Zlh4SpGu
 ao4YsIqzkVsURtMa6NjOiOLfhMv4flOh4OZ+IuvVwQ==
X-Google-Smtp-Source: ADFU+vtKncJRqT4v3CpcXsHUWeMGn4VsoJj5VSwNTesK4hWsMiUrYYid02dt45zjVf50VayDFa8pUjpgDB7ygFBbcF8=
X-Received: by 2002:ab0:718b:: with SMTP id l11mr11488731uao.100.1585312067388; 
 Fri, 27 Mar 2020 05:27:47 -0700 (PDT)
MIME-Version: 1.0
References: <1585299097-6897-1-git-send-email-yong.mao@mediatek.com>
 <1585299097-6897-2-git-send-email-yong.mao@mediatek.com>
In-Reply-To: <1585299097-6897-2-git-send-email-yong.mao@mediatek.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 27 Mar 2020 13:27:11 +0100
Message-ID: <CAPDyKFqpEAooQ3f=YC5uVxrbVc2o1U-kC297rTOm_-LvDsRp0g@mail.gmail.com>
Subject: Re: [PATCH v2] mmc: mediatek: fix SDIO irq issue
To: Yong Mao <yong.mao@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_052750_719892_0C530D91 
X-CRM114-Status: GOOD (  20.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Chaotian Jing <chaotian.jing@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 27 Mar 2020 at 09:51, Yong Mao <yong.mao@mediatek.com> wrote:
>
> From: yong mao <yong.mao@mediatek.com>
>
> SDIO irq is not triggered by low level, but by falling edge in our
> previous IC. This mechanism only have one chance to catch the SDIO irq
> if a SDIO irq comes within the multiple block transmission. This SDIO
> irq may be easily lost, because falling edge appears only once within 2
> clock after data transmission is completed.
>
> SDIO irq recheck mechanism will make sure all irqs can be
> processed correctly.
>
> Signed-off-by: Yong Mao <yong.mao@mediatek.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/mtk-sd.c | 41 +++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 41 insertions(+)
>
> diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
> index 7726dcf..b221c02 100644
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
> @@ -591,6 +601,7 @@ static void msdc_reset_hw(struct msdc_host *host)
>
>  static void msdc_cmd_next(struct msdc_host *host,
>                 struct mmc_request *mrq, struct mmc_command *cmd);
> +static void __msdc_enable_sdio_irq(struct msdc_host *host, int enb);
>
>  static const u32 cmd_ints_mask = MSDC_INTEN_CMDRDY | MSDC_INTEN_RSPCRCERR |
>                         MSDC_INTEN_CMDTMO | MSDC_INTEN_ACMDRDY |
> @@ -1007,6 +1018,32 @@ static int msdc_auto_cmd_done(struct msdc_host *host, int events,
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
> +       if (host->mmc->caps & MMC_CAP_SDIO_IRQ) {
> +               reg_inten = readl(host->base + MSDC_INTEN);
> +               if (reg_inten & MSDC_INTEN_SDIOIRQ) {
> +                       reg_int = readl(host->base + MSDC_INT);
> +                       reg_ps = readl(host->base + MSDC_PS);
> +                       if (!(reg_int & MSDC_INT_SDIOIRQ ||
> +                             reg_ps & MSDC_PS_DATA1)) {
> +                               __msdc_enable_sdio_irq(host, 0);
> +                               sdio_signal_irq(host->mmc);
> +                       }
> +               }
> +       }
> +}
> +
>  static void msdc_track_cmd_data(struct msdc_host *host,
>                                 struct mmc_command *cmd, struct mmc_data *data)
>  {
> @@ -1035,6 +1072,8 @@ static void msdc_request_done(struct msdc_host *host, struct mmc_request *mrq)
>         if (host->error)
>                 msdc_reset_hw(host);
>         mmc_request_done(host->mmc, mrq);
> +       if (host->dev_comp->recheck_sdio_irq)
> +               msdc_recheck_sdio_irq(host);
>  }
>
>  /* returns true if command is fully handled; returns false otherwise */
> @@ -1393,6 +1432,8 @@ static void __msdc_enable_sdio_irq(struct msdc_host *host, int enb)
>         if (enb) {
>                 sdr_set_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
>                 sdr_set_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
> +               if (host->dev_comp->recheck_sdio_irq)
> +                       msdc_recheck_sdio_irq(host);
>         } else {
>                 sdr_clr_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
>                 sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
> --
> 1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
