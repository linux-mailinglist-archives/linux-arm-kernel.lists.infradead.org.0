Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 940FA15AD5B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 17:25:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cy6i3qzWwcBQCJQBKp/xp1rhylvD0RA0YUXzUL4zQ58=; b=L25sb2W6K5j4+/
	xMa/xqSBl3C3Hgaw5ai1nWh1qL0M6wZFfErQWI36gmfpu6L2yg44AnPMXBsy3u+N/4yMVaeiyE08H
	LPXZ5GCQf+R/xC7OB38ThnonH8neEFbWF8viZPkgKxG4pRj2tlGN95xBxB1ylxnTXuQpivq9/IDds
	UU1hMHI2XI4FYh7JT+ffvXvAUp5BSXqfxHG93FWPLKt55PSzYSSXpqucSjrr+wrFAzifwnOt1GD6f
	6vrskVtsKDwGuEkansIL0dQd0APolh9+sbvhMiW6JGyNLcrGEBfnXPE1DPlypkByAR58WoYiJvYGH
	WyeihNA+arqPLeZA/O4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1upG-0007GQ-9H; Wed, 12 Feb 2020 16:25:22 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1uox-0006Ly-MF
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 16:25:05 +0000
Received: by mail-pf1-x443.google.com with SMTP id 2so1464572pfg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 08:25:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zweDaFEU0USsV+JX/LUuDeDmSUEHYWtL+9GANBjwgS4=;
 b=cP7Dc2VtOxGDgxZ6JHdE2q9Lyhmqv0k2cCO7w6iMWAwBuUc4X1hTFNxnXVCptDXT5x
 NkTwJ4HwJDTYlXQ/5Q7HYPa3LjvpoW91An4WuKSfHiHl1cCp/idPPX1hDnIWFfwgILph
 QW9+RaPIhjuK1G7zJ38FF3O6vqRsLjyTFD1u6DPY3hwHwnUAu83W+GE02P7wMvEy32l3
 eXIX+9iUpxb5H7wLek1JA/nyj2rTQruJVFD7L9dgv3URdIlaLvOkvra0G4uAdd98IqUt
 FLJTU0BiinQI0yNZwHtYRV5wtxUSO5kAqzg2SG6UUvGIfNaKdm2lxG4iEEO/0uByivN6
 2ENg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zweDaFEU0USsV+JX/LUuDeDmSUEHYWtL+9GANBjwgS4=;
 b=rR5L42I52YGyfz1Fl3tI4sjKNLQdpDAkIB9Ef/viYYTFZw2RPtgtdLiOAWixQw+Nsi
 cEIDInMY1R2Y6bYZpcZvkqX5onk5KalvgnpvFJUkXin7EA2FhLLadwunoK1v2Q6pJVZM
 1ujY2AMQNOUTT01chqbCzYkG80N0osTKqyK+oDrnC/vctH5XLJ6Oi4WqLtAuCuzl3OaY
 vBnJ1JkiyqJvW981zMBXE6DhjNIxowoHz1+txdJpygvnEQnjOsOrXwaTHy1v6i7Evbc5
 IytFHKfN0SZSZFO2W3AaFvViYd9TbZo05/EW8836MIB6fukj0IteRPQcnFGRVaCh7Qrs
 XVoA==
X-Gm-Message-State: APjAAAUd5v/IU5ynrRM65M/h/iHxoFcnikU1RWipZkdVR+VjvUk4I/Bt
 QzExaJA9zlVLsbCGpaw9vL9fA1fl0ZsNPLx2mA0OnIEs
X-Google-Smtp-Source: APXvYqxdvvvgkWHaTR3wCKLim8YYFZ3Gilg23ZQv1CNAsUnE4dlwsUOhdWPRIYUJ8aFymPSp2AKT9wOK4ZMF4Mx3X+0=
X-Received: by 2002:a63:306:: with SMTP id 6mr9363242pgd.337.1581524702320;
 Wed, 12 Feb 2020 08:25:02 -0800 (PST)
MIME-Version: 1.0
References: <20200128110102.11522-1-martin@kaiser.cx>
 <20200128110102.11522-3-martin@kaiser.cx>
In-Reply-To: <20200128110102.11522-3-martin@kaiser.cx>
From: PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>
Date: Wed, 12 Feb 2020 21:54:51 +0530
Message-ID: <CANc+2y60cCtDwBi1jaV=eMtTwoihRf2WiKW7Zo3iC9ALv2OVSw@mail.gmail.com>
Subject: Re: [PATCH 2/6] hwrng: imx-rngc - use automatic seeding
To: Martin Kaiser <martin@kaiser.cx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_082503_784642_939C5833 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prasannatsmkumar[at]gmail.com]
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
Cc: "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 Jan 2020 at 16:31, Martin Kaiser <martin@kaiser.cx> wrote:
>
> The rngc requires a new seed for its prng after generating 2^20 160-bit
> words of random data. At the moment, we seed the prng only once during
> initalisation.
>
> Set the rngc to auto seed mode so that it kicks off the internal
> reseeding operation when a new seed is required.
>
> Keep the manual calculation of the initial seed when the device is
> probed and switch to automatic seeding afterwards.
>
> Signed-off-by: Martin Kaiser <martin@kaiser.cx>
> ---
>  drivers/char/hw_random/imx-rngc.c | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/char/hw_random/imx-rngc.c b/drivers/char/hw_random/imx-rngc.c
> index 0576801944fd..903894518c8d 100644
> --- a/drivers/char/hw_random/imx-rngc.c
> +++ b/drivers/char/hw_random/imx-rngc.c
> @@ -31,6 +31,7 @@
>
>  #define RNGC_CTRL_MASK_ERROR           0x00000040
>  #define RNGC_CTRL_MASK_DONE            0x00000020
> +#define RNGC_CTRL_AUTO_SEED            0x00000010
>
>  #define RNGC_STATUS_ERROR              0x00010000
>  #define RNGC_STATUS_FIFO_LEVEL_MASK    0x00000f00
> @@ -167,7 +168,7 @@ static irqreturn_t imx_rngc_irq(int irq, void *priv)
>  static int imx_rngc_init(struct hwrng *rng)
>  {
>         struct imx_rngc *rngc = container_of(rng, struct imx_rngc, rng);
> -       u32 cmd;
> +       u32 cmd, ctrl;
>         int ret;
>
>         /* clear error */
> @@ -192,7 +193,18 @@ static int imx_rngc_init(struct hwrng *rng)
>
>         } while (rngc->err_reg == RNGC_ERROR_STATUS_STAT_ERR);
>
> -       return rngc->err_reg ? -EIO : 0;
> +       if (rngc->err_reg)
> +               return -EIO;
> +
> +       /*
> +        * enable automatic seeding, the rngc creates a new seed automatically
> +        * after serving 2^20 random 160-bit words
> +        */
> +       ctrl = readl(rngc->base + RNGC_CONTROL);
> +       ctrl |= RNGC_CTRL_AUTO_SEED;
> +       writel(ctrl, rngc->base + RNGC_CONTROL);
> +
> +       return 0;
>  }
>
>  static int imx_rngc_probe(struct platform_device *pdev)
> --
> 2.20.1
>

Reviewed-by: PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
