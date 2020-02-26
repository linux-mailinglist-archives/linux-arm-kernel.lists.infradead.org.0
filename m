Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FF116FB4B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 10:51:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DdWQqqEQdFXg3Zv4NllDxvtdtxBYyExqeW6Fo3BiDWQ=; b=fipTY3KS0+ntIH
	bYtL5cqQGAIdqD+fk+r70IcyFmwgR4hc5nBaBpBwA5TjXdb3n5vxRra4hleSeYBMFvTrUetTkaSe1
	YI4/WexwVypC5jDfrk2SF+oF08RYo6QiNEQydBRUuKq9PelBBJl9DcHhyvqOhP+nB/P14amDCw839
	V5y/yYGTDpnrcmYHaQeToj5yPjgXaEVplCa5Fpu8lUfOqkd+vFQOfDdxvWTEXjDzOjSH4mRVflxFn
	J8XdIzgacLf0f5pA2b8Fe8PDleYyiRWAanBbRzx/CXmaJgGdiYz72vzJraQ9TIFjDY6yQa8Au2LYg
	9Hlv/kNJx+L1gryJBt5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6tLN-00019m-Ss; Wed, 26 Feb 2020 09:51:05 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6tLD-000194-Fd; Wed, 26 Feb 2020 09:50:57 +0000
X-UUID: b3ac374e7b6e4344a5313ccfc81e3f1d-20200226
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=/fRN2IsbZHXdwcvgbzOFioJIocfRS7K6ro41pSVrsFw=; 
 b=E84a7a9tmh1SWcspjCJrtEVfZui3pFWGq1YRDdyS8MyPGOWA1gIVgTLxFshwZxPD2pKi8MOqnBYbMjk1tWeSSYxIeRTpE7KHWaZLQHxRGKm0pzMMgHxUiH2Wuq/R22JaG4d/0pH/OpvBplOgq2dcl9ZPaj5bqzce/p4ZPA6kuGs=;
X-UUID: b3ac374e7b6e4344a5313ccfc81e3f1d-20200226
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.mao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1675009510; Wed, 26 Feb 2020 01:50:48 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 26 Feb 2020 01:51:52 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 26 Feb 2020 17:49:27 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 26 Feb 2020 17:49:20 +0800
Message-ID: <1582710640.27285.8.camel@mhfsdcap03>
Subject: Re: [PATCH] mmc: mediatek: fix SDIO irq issue
From: "yong.mao@mediatek.com" <yong.mao@mediatek.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 26 Feb 2020 17:50:40 +0800
In-Reply-To: <CAPDyKFqh17yRi2wQcu-UxdskRHKwXWhirn8gjCH5qx3i2n=EbQ@mail.gmail.com>
References: <1579591258-30940-1-git-send-email-yong.mao@mediatek.com>
 <1579591258-30940-2-git-send-email-yong.mao@mediatek.com>
 <CAPDyKFqh17yRi2wQcu-UxdskRHKwXWhirn8gjCH5qx3i2n=EbQ@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: AE4A606A3A45BE2D2D0088196BED2738BF0F53B0C3B8590C6B46C89702285D212000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_015055_538926_EEAB186C 
X-CRM114-Status: GOOD (  28.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 Chaotian Jing <chaotian.jing@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Wed, 2020-02-12 at 16:29 +0100, Ulf Hansson wrote:
> On Tue, 21 Jan 2020 at 08:21, Yong Mao <yong.mao@mediatek.com> wrote:
> >
> > From: yong mao <yong.mao@mediatek.com>
> >
> > Host controller may lost interrupt in some specail case.
> 
> Please explain a bit more about the special cases. When and how often
> does it happen?
SDIO irq is not triggered by low level, but by falling edge in our
previous IC. This mechanism only have one chance to catch if a SDIO irq
comes within the multiple block transmission. This SDIO irq may easily
lost, because falling edge appears only once within 2 clock after data
transmission is completed. 

> 
> > Add SDIO irq recheck mechanism to make sure all interrupts
> > can be processed immediately.
> >
> > Signed-off-by: Yong Mao <yong.mao@mediatek.com>
> > ---
> >  drivers/mmc/host/mtk-sd.c | 38 ++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 38 insertions(+)
> >
> > diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
> > index 7726dcf..18a1b86 100644
> > --- a/drivers/mmc/host/mtk-sd.c
> > +++ b/drivers/mmc/host/mtk-sd.c
> > @@ -128,6 +128,7 @@
> >  #define MSDC_PS_CDSTS           (0x1 << 1)     /* R  */
> >  #define MSDC_PS_CDDEBOUNCE      (0xf << 12)    /* RW */
> >  #define MSDC_PS_DAT             (0xff << 16)   /* R  */
> > +#define MSDC_PS_DATA1           (0x1 << 17)    /* R  */
> >  #define MSDC_PS_CMD             (0x1 << 24)    /* R  */
> >  #define MSDC_PS_WP              (0x1 << 31)    /* R  */
> >
> > @@ -361,6 +362,7 @@ struct msdc_save_para {
> >
> >  struct mtk_mmc_compatible {
> >         u8 clk_div_bits;
> > +       bool recheck_sdio_irq;
> >         bool hs400_tune; /* only used for MT8173 */
> >         u32 pad_tune_reg;
> >         bool async_fifo;
> > @@ -436,6 +438,7 @@ struct msdc_host {
> >
> >  static const struct mtk_mmc_compatible mt8135_compat = {
> >         .clk_div_bits = 8,
> > +       .recheck_sdio_irq = false,
> >         .hs400_tune = false,
> >         .pad_tune_reg = MSDC_PAD_TUNE,
> >         .async_fifo = false,
> > @@ -448,6 +451,7 @@ struct msdc_host {
> >
> >  static const struct mtk_mmc_compatible mt8173_compat = {
> >         .clk_div_bits = 8,
> > +       .recheck_sdio_irq = true,
> >         .hs400_tune = true,
> >         .pad_tune_reg = MSDC_PAD_TUNE,
> >         .async_fifo = false,
> > @@ -460,6 +464,7 @@ struct msdc_host {
> >
> >  static const struct mtk_mmc_compatible mt8183_compat = {
> >         .clk_div_bits = 12,
> > +       .recheck_sdio_irq = false,
> >         .hs400_tune = false,
> >         .pad_tune_reg = MSDC_PAD_TUNE0,
> >         .async_fifo = true,
> > @@ -472,6 +477,7 @@ struct msdc_host {
> >
> >  static const struct mtk_mmc_compatible mt2701_compat = {
> >         .clk_div_bits = 12,
> > +       .recheck_sdio_irq = false,
> >         .hs400_tune = false,
> >         .pad_tune_reg = MSDC_PAD_TUNE0,
> >         .async_fifo = true,
> > @@ -484,6 +490,7 @@ struct msdc_host {
> >
> >  static const struct mtk_mmc_compatible mt2712_compat = {
> >         .clk_div_bits = 12,
> > +       .recheck_sdio_irq = false,
> >         .hs400_tune = false,
> >         .pad_tune_reg = MSDC_PAD_TUNE0,
> >         .async_fifo = true,
> > @@ -496,6 +503,7 @@ struct msdc_host {
> >
> >  static const struct mtk_mmc_compatible mt7622_compat = {
> >         .clk_div_bits = 12,
> > +       .recheck_sdio_irq = false,
> >         .hs400_tune = false,
> >         .pad_tune_reg = MSDC_PAD_TUNE0,
> >         .async_fifo = true,
> > @@ -508,6 +516,7 @@ struct msdc_host {
> >
> >  static const struct mtk_mmc_compatible mt8516_compat = {
> >         .clk_div_bits = 12,
> > +       .recheck_sdio_irq = false,
> >         .hs400_tune = false,
> >         .pad_tune_reg = MSDC_PAD_TUNE0,
> >         .async_fifo = true,
> > @@ -518,6 +527,7 @@ struct msdc_host {
> >
> >  static const struct mtk_mmc_compatible mt7620_compat = {
> >         .clk_div_bits = 8,
> > +       .recheck_sdio_irq = false,
> >         .hs400_tune = false,
> >         .pad_tune_reg = MSDC_PAD_TUNE,
> >         .async_fifo = false,
> > @@ -1007,6 +1017,30 @@ static int msdc_auto_cmd_done(struct msdc_host *host, int events,
> >         return cmd->error;
> >  }
> >
> > +/**
> > + * msdc_recheck_sdio_irq - recheck whether the SDIO irq is lost
> > + *
> > + * Host controller may lost interrupt in some special case.
> > + * Add SDIO irq recheck mechanism to make sure all interrupts
> > + * can be processed immediately
> > + *
> > + */
> > +static void msdc_recheck_sdio_irq(struct msdc_host *host)
> > +{
> > +       u32 reg_int, reg_inten, reg_ps;
> > +
> > +       if ((host->mmc->caps & MMC_CAP_SDIO_IRQ)) {
> > +               reg_inten = readl(host->base + MSDC_INTEN);
> > +               if (reg_inten & MSDC_INTEN_SDIOIRQ) {
> > +                       reg_int = readl(host->base + MSDC_INT);
> > +                       reg_ps = readl(host->base + MSDC_PS);
> > +                       if (!((reg_int & MSDC_INT_SDIOIRQ) ||
> > +                             (reg_ps & MSDC_PS_DATA1)))
> 
> This looks a bit unnecessary complicated and there are more
> parentheses than needed.
  Thanks. We will remove unnecessary parentheses in the next version.

> 
> I am also wondering about the logic. This looks like you want to
> signal an SDIO IRQ when both MSDC_INT_SDIOIRQ and MSDC_PS_DATA1 are
> cleared. Is that really correct?
Yes. This can make sure every SW SDIO irq is really lost by HW.
And also make sure it is not fake irq.

> 
> Moreover, this means that you will be polling the registers for each
> every request you complete. This sounds quite inefficient and I wonder
> if it can be done more seldom, 
Yes. You are right. Re-check will be invoked often.
But registers access does not cost more time.

> perhaps via a timer event instead.
This timer will be alive until the SDIO card is removed.
It is very similar with polling mechanism in sdio_irq_thread.
Because this patch is only for previous IC(Our new IC does not have
this issue), we don't want make too many changes in mtk-sd.c.
If there is some other simple solution, we will update in the next version.


>  And,
> what if there is no request for a while, then this means the re-check
> doesn't gets to run. Could that be a problem?
The SDIO irq in this case can be catch by HW correctly.

> 
> > +                               sdio_signal_irq(host->mmc);
> 
> Before calling sdio_signal_irq(), the SDIO IRQ needs to be temporarily
> disabled. In other words, looks like you should be calling
> __msdc_enable_sdio_irq(0) from here as well.
Yes. You are right.
We will update it in next version.

> 
> > +               }
> > +       }
> > +}
> > +
> >  static void msdc_track_cmd_data(struct msdc_host *host,
> >                                 struct mmc_command *cmd, struct mmc_data *data)
> >  {
> > @@ -1035,6 +1069,8 @@ static void msdc_request_done(struct msdc_host *host, struct mmc_request *mrq)
> >         if (host->error)
> >                 msdc_reset_hw(host);
> >         mmc_request_done(host->mmc, mrq);
> > +       if (host->dev_comp->recheck_sdio_irq)
> > +               msdc_recheck_sdio_irq(host);
> >  }
> >
> >  /* returns true if command is fully handled; returns false otherwise */
> > @@ -1393,6 +1429,8 @@ static void __msdc_enable_sdio_irq(struct msdc_host *host, int enb)
> >         if (enb) {
> >                 sdr_set_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
> >                 sdr_set_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
> > +               if (host->dev_comp->recheck_sdio_irq)
> > +                       msdc_recheck_sdio_irq(host);
> >         } else {
> >                 sdr_clr_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
> >                 sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
> > --
> > 1.9.1
> 
> Kind regards
> Uffe


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
