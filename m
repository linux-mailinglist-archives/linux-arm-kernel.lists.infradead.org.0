Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF61E480E1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 13:36:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kDdyKf7MANhtFgXLIrU8NIv8hrH89VtkpEfJpCfLu94=; b=ljJqpvi77FFy9p
	2DVRnXTA/ji6Z0TxbWnUOuhiklib7Finq6P33FiRaYWMErGgD/mB7bm6UGlatRHyWjaTU0CcFpMlX
	ehEbPCTSlOhIDSFB4erxLVgwOXBtdSx/VqoPZWcB8pAMfa1Oq+7Wt+V2dyG4G5zsWj7lB5uRSAwb1
	teSFliIw2zh8XHgqAD+SG4AHRYDTBG3MwMXWmo2RE8Q9UudCWfOe7Qz7sk0qTOV7E8K2tjB8ihuTC
	SjzyLpNRYow8Q3g5ag51Uhmeosg7onJ/jbr50vUC/BaTihHSDMWBskZ5MDXcWLOMJBEj+QXRrR1lX
	ZxLL6Yz9LsPpgtmdosAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcpvq-0007js-W5; Mon, 17 Jun 2019 11:36:15 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcpvQ-0007ZL-7n
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 11:35:49 +0000
Received: by mail-vs1-xe43.google.com with SMTP id j26so5853361vsn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 04:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Rdj5y7WUhCyxuRRSk61DK/G2r8mbCnRcx9QGkbHiSrE=;
 b=ahERndKw2GY6JLEmRsjtiw3oDqIj+mYbgL6lSV96YnKupRUkausE5qwiHJqwzfXqWL
 v8zneB63ByCBnkQMtgj9MX/cVJ2Ta1DLnfwalFQbkq7fNAWQX2RWu17yMWsbI7u00bmI
 FgLTp2YvgADDyXx/WXcH96Ux4+qlE1/Kzl4Ckt96KdZ/Nhtm6zpTCbqbiuQYtslkfgQX
 G1HN8/KI8qxPB7aNZ9FhbpRkO+7vv1f48hCSkyTFAUfz/hUI70RfXJWI7aWkgiCrUg16
 e2vvJ2hSh9nDfyS4CZA0XmB3CH3x8cpWGUqB32GFVxNJcF5WQZ0bDvgvl7SCqRiUQa6j
 bBdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Rdj5y7WUhCyxuRRSk61DK/G2r8mbCnRcx9QGkbHiSrE=;
 b=EnDuO8HWB0x/x/j+0d/jxhVNqlFdlHfgoZOPCJ9OPyAPoVIOD7teU6ncs7YZIFDO1X
 ARSCNdIhKjeIfswGzm2KCwToOLfUcvZnqyJzzh+9+pMyMtYrI6QZJBOvhZc413rC1hHd
 aeQPO0FaetpSl89jC7dMijlx5B6wiH1ZWVBlx0D3QzQ/MaGOEM+y4FVeDW7TbrNnWdfi
 2mNL8iUAuRESpFvfUXGRIKuKHPhshHelhc4ojpYmRRo0ejGsRmsxLzPY8vSYwMHCdlZk
 sIst+yMlZwl/5T6LzICXUDczwJTgB0H8H5AI6994fVtbFgkZVoArdkfcfCsnA8Dl/19a
 QvqA==
X-Gm-Message-State: APjAAAWKENmVqAcCxQZ9gYFDmf3Hce+SqgfCfpYPrLwYsagyuGvG4axF
 pZ1GzhlITjpEwDYb13IBFMRzY3uIlSxQ9iIzefHXRA==
X-Google-Smtp-Source: APXvYqzzGaGuVCedyz80q6rNgp0f0P5Uq2ofFroB+k9lv/ume7i4twtBuzApD3RlCd+N9qQ92YfAsRGk0Fjz+dYV07U=
X-Received: by 2002:a67:ee16:: with SMTP id f22mr10488350vsp.191.1560771347027; 
 Mon, 17 Jun 2019 04:35:47 -0700 (PDT)
MIME-Version: 1.0
References: <1560769448-23070-1-git-send-email-jjian.zhou@mediatek.com>
In-Reply-To: <1560769448-23070-1-git-send-email-jjian.zhou@mediatek.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 17 Jun 2019 13:35:10 +0200
Message-ID: <CAPDyKFo5zpoRFMG6U_Y2uMk0qCyypW-Ui1Kha5t9_Rher4CDkw@mail.gmail.com>
Subject: Re: [PATCH V2 1/2] mmc: mediatek: fix SDIO IRQ interrupt handle flow
To: Jjian Zhou <jjian.zhou@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_043548_295992_744B4D24 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Yong Mao <yong.mao@mediatek.com>, linux-mediatek@lists.infradead.org,
 Chaotian Jing <chaotian.jing@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 17 Jun 2019 at 13:04, Jjian Zhou <jjian.zhou@mediatek.com> wrote:
>
> From: jjian zhou <jjian.zhou@mediatek.com>
>
> SDIO IRQ is triggered by low level. It need disable SDIO IRQ
> detected function. Otherwise the interrupt register can't be cleared.
> It will process the interrupt more.
>
> Signed-off-by: Jjian Zhou <jjian.zhou@mediatek.com>
> Signed-off-by: Chaotian Jing <chaotian.jing@mediatek.com>
> Signed-off-by: Yong Mao <yong.mao@mediatek.com>

Applied for fixes and by adding a fixes/stable tag, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/mtk-sd.c | 37 ++++++++++++++++++++-----------------
>  1 file changed, 20 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
> index c518cc2..fa7d420 100644
> --- a/drivers/mmc/host/mtk-sd.c
> +++ b/drivers/mmc/host/mtk-sd.c
> @@ -1383,24 +1383,25 @@ static void msdc_request_timeout(struct work_struct *work)
>         }
>  }
>
> -static void __msdc_enable_sdio_irq(struct mmc_host *mmc, int enb)
> +static void __msdc_enable_sdio_irq(struct msdc_host *host, int enb)
>  {
> -       unsigned long flags;
> -       struct msdc_host *host = mmc_priv(mmc);
> -
> -       spin_lock_irqsave(&host->lock, flags);
> -       if (enb)
> +       if (enb) {
>                 sdr_set_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
> -       else
> +               sdr_set_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
> +       } else {
>                 sdr_clr_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
> -       spin_unlock_irqrestore(&host->lock, flags);
> +               sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
> +       }
>  }
>
>  static void msdc_enable_sdio_irq(struct mmc_host *mmc, int enb)
>  {
> +       unsigned long flags;
>         struct msdc_host *host = mmc_priv(mmc);
>
> -       __msdc_enable_sdio_irq(mmc, enb);
> +       spin_lock_irqsave(&host->lock, flags);
> +       __msdc_enable_sdio_irq(host, enb);
> +       spin_unlock_irqrestore(&host->lock, flags);
>
>         if (enb)
>                 pm_runtime_get_noresume(host->dev);
> @@ -1422,6 +1423,8 @@ static irqreturn_t msdc_irq(int irq, void *dev_id)
>                 spin_lock_irqsave(&host->lock, flags);
>                 events = readl(host->base + MSDC_INT);
>                 event_mask = readl(host->base + MSDC_INTEN);
> +               if ((events & event_mask) & MSDC_INT_SDIOIRQ)
> +                       __msdc_enable_sdio_irq(host, 0);
>                 /* clear interrupts */
>                 writel(events & event_mask, host->base + MSDC_INT);
>
> @@ -1430,10 +1433,8 @@ static irqreturn_t msdc_irq(int irq, void *dev_id)
>                 data = host->data;
>                 spin_unlock_irqrestore(&host->lock, flags);
>
> -               if ((events & event_mask) & MSDC_INT_SDIOIRQ) {
> -                       __msdc_enable_sdio_irq(host->mmc, 0);
> +               if ((events & event_mask) & MSDC_INT_SDIOIRQ)
>                         sdio_signal_irq(host->mmc);
> -               }
>
>                 if ((events & event_mask) & MSDC_INT_CDSC) {
>                         if (host->internal_cd)
> @@ -1572,10 +1573,7 @@ static void msdc_init_hw(struct msdc_host *host)
>         sdr_set_bits(host->base + SDC_CFG, SDC_CFG_SDIO);
>
>         /* Config SDIO device detect interrupt function */
> -       if (host->mmc->caps & MMC_CAP_SDIO_IRQ)
> -               sdr_set_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
> -       else
> -               sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
> +       sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
>
>         /* Configure to default data timeout */
>         sdr_set_field(host->base + SDC_CFG, SDC_CFG_DTOC, 3);
> @@ -2103,7 +2101,12 @@ static void msdc_hw_reset(struct mmc_host *mmc)
>
>  static void msdc_ack_sdio_irq(struct mmc_host *mmc)
>  {
> -       __msdc_enable_sdio_irq(mmc, 1);
> +       unsigned long flags;
> +       struct msdc_host *host = mmc_priv(mmc);
> +
> +       spin_lock_irqsave(&host->lock, flags);
> +       __msdc_enable_sdio_irq(host, 1);
> +       spin_unlock_irqrestore(&host->lock, flags);
>  }
>
>  static int msdc_get_cd(struct mmc_host *mmc)
> --
> 1.9.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
