Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F41A1D76DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 13:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RjaO+V6KP4M+sxJUcrG1LMJ94pW4TASC9A95i+qv7k8=; b=E8pweD5bW6INth
	oJzMVKhjAHCIEARsCnLJ+3EGomzuFpMeh1RICO8+h8zmGyEiGpHaec6hOhsdsveYOw72h9UH7wZlX
	8U9GZ6JAHzjm6TXMrwggHCXuFUy4wDq9wZEqO50F1A+Nu7vLEmLiyzaKaASCRQ0Oq0tI3Havr5LLr
	TLLUCsN2P/8HUzKjAALhvCUEO8so0W8fRRjyCo7obQDwFTdeV9YOYopw7Qh7UeqipzL81GWTIiO3s
	Ye295uW0YTd9nf3FI1v7qys2UlboSOpEJe2Uc37+hNDbhcLbUqf8i4SVvD2bxlxEc/lBvp6k+mvS5
	ZoknJGr5ixUhusFcAVOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jadt4-0002iS-Kd; Mon, 18 May 2020 11:24:50 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jadsM-0001jt-01
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 11:24:07 +0000
Received: by mail-ua1-x942.google.com with SMTP id s5so3313402uad.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 04:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ihMF09VKlBBB7iEtXLgDNsN0VO2GK4psKZHbEHcxX9g=;
 b=Eh9JoMBpJXKyoYlldxMoq+oa5N0QUU44CzjatEv5ykrL04Hx5F3KLswZvR+mwI6tGn
 sqW0qwPrUIjW/XDQALITZaezfbEaf5jzx+IPgpbaresFLqcZqLa2/ppIs7evyGAbpAbS
 +4f8/kZY0fOaZcqMeuxtkxaiJ/GSDTzAhRdcWQlAXsRf7JPWWGZVDn02l+hgdc+eLYwS
 +y1p5y+Lkn5J4RSvu1fx+o4dhhehOOU8fDFZdriugaS3b7IPihJ+PRdYw9P2xACcj/a3
 JcUQN7TfaPAs3sD6rvI9bRopSXsMIBYEnV9fC9CBDXK6mSNKZDeyqc9+8wbYMhGjALfT
 wi4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ihMF09VKlBBB7iEtXLgDNsN0VO2GK4psKZHbEHcxX9g=;
 b=NX/8YysAQn7PoNKmDIy5W6+nWy6FTa9OcTrTzAMQNwWFBZTsLQVWyVTLbK1S2o4AYr
 cbxdTx71OEPfCa9o0qz0B41SAMuegYQs5EWPRlZZ6Tgb9YO3/n6D+5ngGjRUqKCt2+MS
 L8iuQCjZnydysD7kiDwABhLxHOPi14FSD0brNPavuWCAN9D0ENTS6LwsdqGXG4ROLTJZ
 I795qcn/6c8EO3kX/WX2JFb5B0h945NNPZ7FQlWeuqS/L7jRah8pX30hq/H1hK0JLhWT
 komL0Rql5gvyT2xB4o6fCK8su0RO8ybcB11tqu4oM6ozkTl9I+hlvQdLI2GjvYo5NwKs
 kPkQ==
X-Gm-Message-State: AOAM5330yHTpFiAVLsgl99xr0ESauSSg9+f4xEKr9OV7bhm3NZcLWmpj
 ZlGfDbct+1f9SB8xyepKaYy/OKssDlk0j90XDV36kg==
X-Google-Smtp-Source: ABdhPJwfQemLZ5bSu1/RpXBNHLL2sZZwNovu7aJRq0AKFUvPo6qhbafYRw9Ww3WxjuGOapLj5C0yWDsAsoMK4LMdr7Q=
X-Received: by 2002:ab0:7293:: with SMTP id w19mr10613493uao.129.1589801044397; 
 Mon, 18 May 2020 04:24:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200517222907.1277787-1-martin.blumenstingl@googlemail.com>
In-Reply-To: <20200517222907.1277787-1-martin.blumenstingl@googlemail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 18 May 2020 13:23:27 +0200
Message-ID: <CAPDyKFqmc53WLdsy2Wi4WYvVSNn6u=WXfN+guW8nrynqQa8PVA@mail.gmail.com>
Subject: Re: [PATCH 1/2] mmc: host: meson-mx-sdhc: fix manual RX FIFO flushing
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_042406_090990_6E4F8DA2 
X-CRM114-Status: GOOD (  21.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Thomas Graichen <thomas.graichen@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 18 May 2020 at 00:29, Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> For Meson8 and Meson8b SoCs the vendor driver follows the following
> pattern:
> - for eMMC and SD cards in .set_pdma it sets:
>   pdma->rxfifo_manual_flush = 1;
> - for SDIO cards in .set_pdma it sets:
>   pdma->rxfifo_manual_flush = 0;
> - before syncing the DMA read buffer is sets:
>   pdma->rxfifo_manual_flush |= 0x02;
>
> Set the second bit of MESON_SDHC_PDMA_RXFIFO_MANUAL_FLUSH without
> clearing the first bit before syncing the DMA read buffer. This fixes a
> problem where Meson8 and Meson8b SoCs would read random garbage from SD
> cards. It is not clear why it worked for eMMC cards. This manifested in
> the following errors when plugging in an SD card:
>   unrecognised SCR structure version <random number>
>
> Fixes: 53ded1b676d199 ("mmc: host: meson-mx-sdhc: new driver for the Amlogic Meson SDHC host")
> Cc: Thomas Graichen <thomas.graichen@gmail.com>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/meson-mx-sdhc.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/mmc/host/meson-mx-sdhc.c b/drivers/mmc/host/meson-mx-sdhc.c
> index 5c00958d7754..53e3f6a4245a 100644
> --- a/drivers/mmc/host/meson-mx-sdhc.c
> +++ b/drivers/mmc/host/meson-mx-sdhc.c
> @@ -586,10 +586,17 @@ static irqreturn_t meson_mx_sdhc_irq_thread(int irq, void *irq_data)
>                     cmd->data->flags & MMC_DATA_READ) {
>                         meson_mx_sdhc_wait_cmd_ready(host->mmc);
>
> +                       /*
> +                        * If MESON_SDHC_PDMA_RXFIFO_MANUAL_FLUSH was
> +                        * previously 0x1 then it has to be set to 0x3. If it
> +                        * was 0x0 before then it has to be set to 0x2. Without
> +                        * this reading SD cards sometimes transfers garbage,
> +                        * which results in cards not being detected due to:
> +                        *   unrecognised SCR structure version <random number>
> +                        */
>                         val = FIELD_PREP(MESON_SDHC_PDMA_RXFIFO_MANUAL_FLUSH,
>                                          2);
> -                       regmap_update_bits(host->regmap, MESON_SDHC_PDMA,
> -                                          MESON_SDHC_PDMA_RXFIFO_MANUAL_FLUSH,
> +                       regmap_update_bits(host->regmap, MESON_SDHC_PDMA, val,
>                                            val);
>                 }
>
> --
> 2.26.2
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
