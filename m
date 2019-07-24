Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFFD72D27
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 13:13:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QcVn6SBRAQxmN7vlMo+k+FEHM1dIkQC/25FDtD6HJXA=; b=elLYedxg5UboWd
	Dq6OywUyKiyw+GBwPgkMRq04N6tHvPtACWuCdz1XkcQA9mJu7JWQpQ/2FuUQNQvgUcVOg0XTfv9tp
	ivvNQ9qaOGr09NJCAYOs31PcJxiuD6Z5DNlcXNH4Y++tt5s5w4zBFbayv0NzPCwDduPD6Gxd5To7y
	NsB+IrlXqekFs1E6N3hLgZCg4n4A5N3IIOib2IP/JXlhXlzFCZTBEGOzIKwew+HWhqljti0KNRzSR
	a+TbA8uETzOsABxogSCs1OqO3mUp989u07PDoIuuY5bfHyqBbPMbjty10i0YymaCWZvWRDS9yZsMZ
	5ub7cqtnrZBQkZqAp80g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqFDO-0001k6-51; Wed, 24 Jul 2019 11:13:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqFDD-0001jK-2u
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 11:13:36 +0000
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 74E15229F4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 11:13:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563966814;
 bh=5/y1hhDYq8XOZKIhQOx1PKrERYltNYVDKnL3158aB6M=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=o63dKY7gmPoLMlPwWmTjsaF0E6vvrfbRChrcIfn1uENGMU4qIVFHms765aBdgaQoN
 Ek64RM9AUVkKpj1sLpM7xJktKOfK63n46leGLUb2uG2q+mXl4LONpPlesGFf+eu9Dp
 u85dtwUxPiOiwToAk+we+sdyVkh81jiD17xSiaRo=
Received: by mail-lf1-f42.google.com with SMTP id x3so31763600lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 04:13:34 -0700 (PDT)
X-Gm-Message-State: APjAAAW4IdkUIZRcYr1YdQmLmDLbkvcSmTKViJDf4Hqv07BQKMflJM2s
 YcgLodG0ivKYCYX/QFeGIPchW/rPC7Y/RYOtieM=
X-Google-Smtp-Source: APXvYqwESEIOvcf70daSpwIqf11GEHlkm1uvDfKQSkJrORyYpKpAECse1JBT3/KtsMH1xOMwAc/+BWP0Hnw8jR6wBh8=
X-Received: by 2002:a19:48c5:: with SMTP id v188mr37332583lfa.69.1563966812710; 
 Wed, 24 Jul 2019 04:13:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190722185938.9043-1-linux.amoon@gmail.com>
 <20190722185938.9043-5-linux.amoon@gmail.com>
In-Reply-To: <20190722185938.9043-5-linux.amoon@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 24 Jul 2019 13:13:21 +0200
X-Gmail-Original-Message-ID: <CAJKOXPeiKP-MfaO4LpQ=iXZn14gM3vwR8U18yLGfhHt6pjvvCA@mail.gmail.com>
Message-ID: <CAJKOXPeiKP-MfaO4LpQ=iXZn14gM3vwR8U18yLGfhHt6pjvvCA@mail.gmail.com>
Subject: Re: [RFC/RFT 4/5] phy: exynos5-usbdrd: PIPE3 tune signal
To: Anand Moon <linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_041335_163371_0DCD7765 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 22 Jul 2019 at 20:59, Anand Moon <linux.amoon@gmail.com> wrote:
>
> Tune USB3.0 (PIPE3) PHY TX signal for high and supper
> speed data transfer.
>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
>  drivers/phy/samsung/phy-exynos5-usbdrd.c | 18 +++++++++++++-----
>  1 file changed, 13 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
> index 54a513ca15e4..4f16c4f82ae5 100644
> --- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
> +++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
> @@ -124,8 +124,10 @@
>
>  #define EXYNOS5_DRD_PHYPARAM1                  0x20
>
> -#define PHYPARAM1_PCS_TXDEEMPH_MASK            (0x1f << 0)
> -#define PHYPARAM1_PCS_TXDEEMPH                 (0x1c)
> +#define PHYPARAM1_TX0_TERM_OFFSET(x)           __set(x, 30, 26)
> +#define PHYPARAM1_TX_SWING_FULL(x)             __set(x, 18, 12)
> +#define PHYPRAAM1_PCS_TX_DEEMPH_6DB(x)         __set(x, 11, 6)
> +#define PHYPRAAM1_PCS_TX_DEEMPH_3P5DB(x)       __set(x, 5, 0)
>
>  #define EXYNOS5_DRD_PHYTERM                    0x24
>
> @@ -360,10 +362,16 @@ static void exynos5_usbdrd_pipe3_init(struct exynos5_usbdrd_phy *phy_drd)
>  {
>         u32 reg;
>
> -       reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM1);
>         /* Set Tx De-Emphasis level */
> -       reg &= ~PHYPARAM1_PCS_TXDEEMPH_MASK;
> -       reg |=  PHYPARAM1_PCS_TXDEEMPH;
> +       reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM1);
> +               /* Transmitter Termination Offset */
> +       reg |=  PHYPARAM1_TX0_TERM_OFFSET(0x5) |
> +               /* Tx Amplitude (Full Swing mode) */
> +               PHYPARAM1_TX_SWING_FULL(0x3F) |
> +               /* Tx De-Emphasis at 6 dB */
> +               PHYPRAAM1_PCS_TX_DEEMPH_6DB(0x20) |
> +               /* Tx De-Emphasis at 3.5 dB */
> +               PHYPRAAM1_PCS_TX_DEEMPH_3P5DB(0x15);

How did you get the value? Why you are changing existing values to default ones?

Best regards,
Krzysztof

>         writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM1);
>
>         reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYTEST);
> --
> 2.22.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
