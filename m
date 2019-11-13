Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BA9FAF0D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 11:55:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L8tMjk42vAB2hexuKAx29eIS54VO9ek8QXAXF9ao8R0=; b=lTIG0jcUizYnM6
	FmO4XNG/qnpnrwL63311g55OQlv6LeWhcoxrT94u+M5l5q1zgPNTj2FZNq4RUjree35dqyDKoWQuN
	CAqLIvr3MPRzVQGf0POw35zDD1yNy4kgxLrZbcj61/VevQZR1njK/aUtCUMIslD8AbdqMP0ZE67eg
	PL0wuv6zvF4w5+AdHAtIuUIrRehm73bPS83YLxfL6Qa4RktRqOdVllTxAJ4u2XVD+kqkquXAx0HQ9
	G5ZrJFzbclbIVp275A82tiJz9B9z4uw8yPTNbE3wuK/ryCSwnV4FDj13CTjTJe8RRsbAmZQKzUEx9
	7g5BEbxQukrPGG1HLLsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUqJM-0002wR-Mf; Wed, 13 Nov 2019 10:55:44 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUqJF-0002vu-7Z
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 10:55:38 +0000
Received: by mail-vs1-xe42.google.com with SMTP id b16so1032010vso.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 02:55:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G40XQcNmziLTSN7ULevk0N08ose+NHbscuxrg7NiGAM=;
 b=LWW6NXan1N9dv0lsYUxku/AwipOKrRyViHUDnMfibtH0HBGG0+LLyfur8WlYiBaikS
 y5lzhPURVoVUokxQMZTxnEqD5pjRFpi7+fxWdA1Eczo4PPT7o6VCCiMHuUZ1mJmnfcFl
 GuSBmUS6XTPs83baFIBbW1/xQjlxw9MoXW/MKCImAsbOVh7Xj801N68J0JzQI2+BfCNK
 wxXfHwnYSiTcj63f15GeRnz0hkXYm5dvdGQnkyRv4XPjbdrEN5kXd4OtUSgc/71vxnZ5
 Dw4ZcqTo3xVGDZ69Ngg9sVHYEb7B6T5PkywG+XfG5IDnTFxKryE0scmfdgbV4h6CtGdn
 siqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G40XQcNmziLTSN7ULevk0N08ose+NHbscuxrg7NiGAM=;
 b=KJ4FBdiT9SoiiQdMu3TONpUuDQ/me6mluaqJWWB0XRlK+M3lXq1Z1ADS6hDmlna52q
 YsUlsfuLD1Hq/5/mrBqGVprD2eRujCboXVVvGbKEOe/6n7wFmbxwy6r/3yoegwAVYGDO
 pYEhPMnqGuj5YxA8M8P20S2deLRMsG6E2XhK1+x2GHYLdsxEF9pRPavT8p/KpvSovw+1
 cdH1/CpJ/6U7VSAW+iAIbmvcWxkwB09PXHxp94PfwTH9+QbXtjq4czO7tOk+pfWnX6uh
 /+vuofqDFeRlRMqh4J5tpMmqzh+vxZ2xHQ9mjAtP+ZXM4g9zOpE1wSOKsHHKtU7kwdXV
 mGNA==
X-Gm-Message-State: APjAAAX/yLLRa71YgGhYVbTUJunynof/ZsgePac/OfiMv0SJ01A37DZd
 oyujVm0DWJ9dwXGmaU9cgVPnNWnJYAL/Weny0UDlXQ==
X-Google-Smtp-Source: APXvYqwKhEL4oGI7K3qhlwwAkqdf25AwoPaAqgp9g27rrzTDM7niE1/AuNjfq9Ti9gnV/xpLSg1Cn8USXBYR+j343yQ=
X-Received: by 2002:a67:ef4e:: with SMTP id k14mr1453449vsr.165.1573642534997; 
 Wed, 13 Nov 2019 02:55:34 -0800 (PST)
MIME-Version: 1.0
References: <20191113075335.31775-1-linus.walleij@linaro.org>
 <20191113075335.31775-3-linus.walleij@linaro.org>
In-Reply-To: <20191113075335.31775-3-linus.walleij@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 13 Nov 2019 11:54:59 +0100
Message-ID: <CAPDyKFrU4DBS9v1T1EsTFENMAzqH0J9iP=6RbYqHOUOtZYtQKA@mail.gmail.com>
Subject: Re: [PATCH 2/3] mmc: mmci: Bail out from odd DMA on Ux500
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_025537_401002_EF524878 
X-CRM114-Status: GOOD (  27.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Russell King <linux@arm.linux.org.uk>,
 Stephan Gerhold <stephan@gerhold.net>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Niklas Cassel <niklas.cassel@linaro.org>, Ludovic Barre <ludovic.barre@st.com>,
 Brian Masney <masneyb@onstation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 Nov 2019 at 08:53, Linus Walleij <linus.walleij@linaro.org> wrote:
>
> The Ux500 (at least) can only deal with DMA transactions
> starting and ending on an even 4-byte aligned address.
>
> The problem isn't in the DMA engine of the system as such:
> the problem is in the state machine of the MMCI block that
> has some features to handle single bytes but it seems like
> it doesn't quite work.
>
> This problem is probably caused by most of the testing
> being done on mass storage, which will be 512-bytes aligned
> blocks placed neatly in pages and practically never run into
> this situation.
>
> On SDIO (for example in WiFi adapters) this situation is
> common.
>
> By avoiding any such transfers with a special vendor flag,
> we can bail out to PIO when an odd transfer is detected
> while keeping DMA for large transfers of evenly aligned
> packages also for SDIO.
>
> Cc: Ludovic Barre <ludovic.barre@st.com>
> Cc: Brian Masney <masneyb@onstation.org>
> Cc: Stephan Gerhold <stephan@gerhold.net>
> Cc: Niklas Cassel <niklas.cassel@linaro.org>
> Cc: Russell King <rmk+kernel@armlinux.org.uk>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v1->v3:
> - New patch in v3 after discussion with Ulf
> ---
>  drivers/mmc/host/mmci.c | 21 +++++++++++++++++++++
>  drivers/mmc/host/mmci.h | 10 ++++++++++
>  2 files changed, 31 insertions(+)
>
> diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
> index 3ffcdf78a428..a08cd845dddc 100644
> --- a/drivers/mmc/host/mmci.c
> +++ b/drivers/mmc/host/mmci.c
> @@ -185,6 +185,7 @@ static struct variant_data variant_ux500 = {
>         .irq_pio_mask           = MCI_IRQ_PIO_MASK,
>         .start_err              = MCI_STARTBITERR,
>         .opendrain              = MCI_OD,
> +       .only_long_aligned_dma  = true,
>         .init                   = mmci_variant_init,
>  };
>
> @@ -219,6 +220,7 @@ static struct variant_data variant_ux500v2 = {
>         .irq_pio_mask           = MCI_IRQ_PIO_MASK,
>         .start_err              = MCI_STARTBITERR,
>         .opendrain              = MCI_OD,
> +       .only_long_aligned_dma  = true,
>         .init                   = ux500v2_variant_init,
>  };
>
> @@ -829,6 +831,25 @@ static int _mmci_dmae_prep_data(struct mmci_host *host, struct mmc_data *data,
>         if (data->blksz * data->blocks <= variant->fifosize)
>                 return -EINVAL;
>
> +       /*
> +        * Handle the variants with DMA that is broken such that start and
> +        * end address must be aligned on a long (32bit) boundary for the DMA
> +        * to work. If this occurs, fall back to PIO.
> +        */
> +       if (host->variant->only_long_aligned_dma) {
> +               struct scatterlist *sg;
> +               int tmp;
> +
> +               for_each_sg(data->sg, sg, data->sg_len, tmp) {
> +                       /* We start in some odd place, that doesn't work */
> +                       if (sg->offset & 3)
> +                               return -EINVAL;
> +                       /* We end in some odd place, that doesn't work */
> +                       if (sg->length & 3)
> +                               return -EINVAL;
> +               }

Assuming the data i allocated consecutive (is that a wrong assumption?)...

...then it should be sufficient to check only the first sg-element in
the list having a divisible address offset by 4 (sg->offset & 0x3) and
then check that the total request size is also divisible by 4
((data->blksz * data->blocks) & 0x3). That should give the same
result.

 In this way you don't need to iterate through the sg-list.

> +       }
> +
>         device = chan->device;
>         nr_sg = dma_map_sg(device->dev, data->sg, data->sg_len,
>                            mmc_get_dma_dir(data));
> diff --git a/drivers/mmc/host/mmci.h b/drivers/mmc/host/mmci.h
> index c7f94726eaa1..e20af17bb313 100644
> --- a/drivers/mmc/host/mmci.h
> +++ b/drivers/mmc/host/mmci.h
> @@ -307,6 +307,15 @@ struct mmci_host;
>   *            register.
>   * @opendrain: bitmask identifying the OPENDRAIN bit inside MMCIPOWER register
>   * @dma_lli: true if variant has dma link list feature.
> + * @only_long_aligned_dma: it appears that the Ux500 has a broken DMA logic for
> + *            single bytes when either the transfer starts at an odd offset or
> + *            the final DMA burst is an odd (not divisible by 4) address.
> + *            Reading must start and end on an even 4-byte boundary, i.e. an
> + *            even 32bit word in memory. If this is not the case, we need to
> + *            fall back to PIO for that request. For bulk transfers to mass
> + *            storage we are almost exclusively dealing with 512-byte chunks
> + *            allocated at an even address so this is usually only manifesting
> + *            in SDIO.
>   * @stm32_idmabsize_mask: stm32 sdmmc idma buffer size.
>   */
>  struct variant_data {
> @@ -350,6 +359,7 @@ struct variant_data {
>         u32                     start_err;
>         u32                     opendrain;
>         u8                      dma_lli:1;
> +       u8                      only_long_aligned_dma:1;
>         u32                     stm32_idmabsize_mask;
>         void (*init)(struct mmci_host *host);
>  };
> --
> 2.21.0
>

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
