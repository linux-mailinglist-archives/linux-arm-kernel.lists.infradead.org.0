Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 903A8FAE88
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 11:29:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDaHiRm4a9xrOIm0vf5qCpUenNGXrg4x3H96rKIWXq0=; b=B8BwHSD3Fniffh
	i2ni/ojuhWOwxcVaNOwk3I6kV2ElVw0f4txH/GqnVefR9OfdHf0qHfonSbdr9+g8xfFtgN9jUdHDs
	Aje+p9txKcCvgh/dp2fpzpmJPVxqK9iyTzOIwikX6CGLiDe+W8v3A97Na4NQNpiK8USU3Yw+06/FK
	xrEEOZ7BMMpDjUTtybH2lO5hZgWM0er1CUiUdsOIFVKDr+JXC6eld5gNVltDN62O5YDnf/ep6JFlA
	J+51PQ4HI+WZLadpDlCHDGaPbU9IecjhYYFvllyqnIvY59IVG0hybzuMZCHwfiJleFp3rCIfnyX23
	NUZn8fDk4Enp3rNgmi4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUpu2-00076w-Fl; Wed, 13 Nov 2019 10:29:34 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUpts-00075j-PC
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 10:29:26 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 70581201BC;
 Wed, 13 Nov 2019 11:29:23 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 4F96C20116;
 Wed, 13 Nov 2019 11:29:23 +0100 (CET)
Subject: Re: [PATCH 2/3] mmc: mmci: Bail out from odd DMA on Ux500
To: Linus Walleij <linus.walleij@linaro.org>,
 Ulf Hansson <ulf.hansson@linaro.org>
References: <20191113075335.31775-1-linus.walleij@linaro.org>
 <20191113075335.31775-3-linus.walleij@linaro.org>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <1f500a2b-5c81-5423-4e56-61566919cbb9@free.fr>
Date: Wed, 13 Nov 2019 11:29:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191113075335.31775-3-linus.walleij@linaro.org>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Wed Nov 13 11:29:23 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_022925_113574_8EFAD595 
X-CRM114-Status: GOOD (  20.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stephan Gerhold <stephan@gerhold.net>, MMC <linux-mmc@vger.kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Niklas Cassel <niklas.cassel@linaro.org>, Ludovic Barre <ludovic.barre@st.com>,
 Brian Masney <masneyb@onstation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/11/2019 08:53, Linus Walleij wrote:

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
>  	.irq_pio_mask		= MCI_IRQ_PIO_MASK,
>  	.start_err		= MCI_STARTBITERR,
>  	.opendrain		= MCI_OD,
> +	.only_long_aligned_dma	= true,
>  	.init			= mmci_variant_init,
>  };
>  
> @@ -219,6 +220,7 @@ static struct variant_data variant_ux500v2 = {
>  	.irq_pio_mask		= MCI_IRQ_PIO_MASK,
>  	.start_err		= MCI_STARTBITERR,
>  	.opendrain		= MCI_OD,
> +	.only_long_aligned_dma	= true,
>  	.init			= ux500v2_variant_init,
>  };
>  
> @@ -829,6 +831,25 @@ static int _mmci_dmae_prep_data(struct mmci_host *host, struct mmc_data *data,
>  	if (data->blksz * data->blocks <= variant->fifosize)
>  		return -EINVAL;
>  
> +	/*
> +	 * Handle the variants with DMA that is broken such that start and
> +	 * end address must be aligned on a long (32bit) boundary for the DMA
> +	 * to work. If this occurs, fall back to PIO.
> +	 */

Nit: why use 'long' as a synonym for "32 bits" ?

Why not name the field "only_32b_aligned_dma" ?

(The size of C's long int is implementation-defined; most 64-bit platforms
have a 64-bit long int.)

Perhaps the ship has already sailed -- what with readl/writel...

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
