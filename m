Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 143661E06C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 08:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DivIIyYb6MwlG7F4AbQ6OlIWZJRbzl8109iR6A45L/s=; b=WbJGy4U543T/h/
	Jbouf7qItrdbqn2xUclEGgdkmfCICAr2+RdlUB9HYRXzmd3nWK61ceO6N15aNUp1J56HTP4Cnj+vB
	IAriUniO/NZF6sYF8MNsToSZ0ul+6R3U3fU+CmYHoQXFLOdZxgf0F9XiscaEKJ0gDsTEK4mvGawZL
	Ny+a+asybbyV5a4FjwYaqOiq/ZrQVnYuXzH9hvC/7tRRc6YgJkPNXOoB3jsplO6mLBUS7gOJhVIHK
	1NkCTHLRqtiIriuKbwJUsPUTWdaDfU6OhFeea06QfA9q3sczts9NvpEmL6yaupFGrc4AY4c/kU2aP
	7cl7FNaWGurzrPQcb4Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd6Nx-0001zt-QC; Mon, 25 May 2020 06:14:53 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd6Nk-0001y9-2h; Mon, 25 May 2020 06:14:41 +0000
Received: by mail-lj1-x242.google.com with SMTP id v16so19484402ljc.8;
 Sun, 24 May 2020 23:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xxPp1YhKBxMDmxPDlgA3r6L4BPVtYqrACCbiDdkf2HU=;
 b=oH0jGp/2CUEdGLq6EDmu5s+PiAb/IDEiXKtMl/yTpb3Y3fg51+Iq4kgQCw95Q9cV6e
 DTYwCy/OywCcfPMYn5cyMejV3EqYTyRuZhqXotrPwKh3AWq/xRhhzrrRgwdJBeITWTHp
 spvmnFufI/vuLUzULK9+q3fPphWeh6BPVRV0qBbZaUn1BZxFRO+aUi/Za0m/FqFKkQma
 v379pALdXZRKuwU3JFSw2RZVsKj0VyGXKElz5a+wMKXOfo1gARzxdVps067fQh/WdOhG
 WXSshs0r4TkX8K7MBUeYGLKpvju5PvJJmcIFKpd8DKvuZLs6dAsjuINXeFIyMnVM0Mfa
 5iYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xxPp1YhKBxMDmxPDlgA3r6L4BPVtYqrACCbiDdkf2HU=;
 b=o4hZhfjx0c3bEv3XMyHti2JolLDP4josoIj9LZqN5lr7QK0o7a48fAN0Mu3QUxU11y
 tP1gMuoClrDffDhDUQ3SmABWyOm8WXC3l1wwJLpBJRQREYaQ2iK6C7qtyNOra9wguRd0
 pdxQbM9cAbZE+qJmxPCOYmbDFGVmF4gCx7MP5YfHJub2ox9D+jL2opFlkJG8R+bVqY/i
 dxMDy6BA1BjYPwdYXy9wRUgTAC/xPUbS+nRFeNKKi/xBzkOBpSQn3fwsWyOUoZh7DJWD
 6t2qX+eezEE95VyVqw5II2e4Us4QXtufWRJR/fSW5vOutmoL0g3C/GhuWXjg4cjdNLM9
 1tMw==
X-Gm-Message-State: AOAM5324zCsgZEJbACcOHDeyAl+zpdO6GScDbTTvOK/4ycYPovLEG1EX
 MudyO64rq5YHKeb6NlppWJeHhcXjvfIhkE20GmE=
X-Google-Smtp-Source: ABdhPJzaVD3W8XB8LNxW925jXvFBvaW8onNuO96IUdcvivMzSYciGrsBcQqGjF7n+6WXCtsIuyKlXvmMkqyksGWw2uM=
X-Received: by 2002:a2e:d1a:: with SMTP id 26mr13109692ljn.160.1590387275853; 
 Sun, 24 May 2020 23:14:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200517222907.1277787-1-martin.blumenstingl@googlemail.com>
In-Reply-To: <20200517222907.1277787-1-martin.blumenstingl@googlemail.com>
From: Thomas Graichen <thomas.graichen@googlemail.com>
Date: Mon, 25 May 2020 08:14:24 +0200
Message-ID: <CAOUEw11pirqhOHTjO_xHnZpnSgKNuJk5ysh43B7jWJokuGPB2A@mail.gmail.com>
Subject: Re: [PATCH 1/2] mmc: host: meson-mx-sdhc: fix manual RX FIFO flushing
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_231440_124475_75A0266C 
X-CRM114-Status: GOOD (  21.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thomas.graichen[at]googlemail.com]
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
Cc: linux-amlogic@lists.infradead.org, ulf.hansson@linaro.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 12:29 AM Martin Blumenstingl
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

Tested-by: thomas graichen <thomas.graichen@gmail.com>

BEFORE: on my meson8 based mxiii i got the above error and the sd card
was not useable

AFTER: no more error and sd cards works fine

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
