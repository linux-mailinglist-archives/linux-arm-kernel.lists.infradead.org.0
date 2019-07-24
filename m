Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AB172CDC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 13:08:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x54oonYSBCsapsDNImdud5rsyABKasUlnkflKCUeObA=; b=oFZQ+uygRAuwrG
	lNQ8FUea+rrMV+1Kvp414I0OUi5lg020tyBPSOdKmqSibZ3vNrbau9Gf0hyg6ve0Fl3LXj3ZVvB1f
	TTup3hwo6VpLN214JXXuhycFMEkOz2tmx7KR11GDfPKiqKFn223S9gxN/FfG5HELDute5aV/J/scJ
	BPFg7Nf901eiFDezP0SwbwLH75mPqfNFX1segKBW+R3/g4jFiQiFHe2+29jPETSznfv3auP1zKwgH
	EFwfvw1c1XMDz2NSoV2P0o2J5JPF88PphYwuw1iDLTVbkSQewUgJC9Rl5ZNmcJHXU8OVJ334CE+Ee
	rDIo+4EA1cSobRoUMxKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqF7w-0006b9-6m; Wed, 24 Jul 2019 11:08:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqF7n-0006am-JR
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 11:08:00 +0000
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
 [209.85.208.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F3C7F229F4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 11:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563966479;
 bh=NMg0QCsJC3/2f/uN8qBfJZP1rBSoVJP+rvK+9apy9F8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=kuv7CzoWZ2PUkv0kq5ib89n+yneoQtuEPd9KcNzeSJDPuA8SbBOrCpp/FySGOiRGy
 BWgqJo61ANj5vZtRa70lEASikhL2l2mStCYG3hchr7Hxm4dd0GA1gvthYuuAhmP3rW
 9eCoYKqkYo9bK5HD7XiQZiYxHH6tjsKuJPu7Myl4=
Received: by mail-lj1-f180.google.com with SMTP id d24so44074243ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 04:07:58 -0700 (PDT)
X-Gm-Message-State: APjAAAU/6aBN10MqErfNTQzFkmusH6SbTKE7wo0PNbP87/BSFp3NzRc5
 aLvm0ngRvumFNOcLs9xaLOF6HJOnPcLvpdEERac=
X-Google-Smtp-Source: APXvYqzUq7GrisNxdgqufanV1x9vUxFnKwDNQX0DwX6U6exWVoC39l63jdg66SzoGOFToYFLWYrTDGvoVo150eCwKr8=
X-Received: by 2002:a2e:124b:: with SMTP id t72mr43134559lje.143.1563966477162; 
 Wed, 24 Jul 2019 04:07:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190722185938.9043-1-linux.amoon@gmail.com>
 <20190722185938.9043-3-linux.amoon@gmail.com>
In-Reply-To: <20190722185938.9043-3-linux.amoon@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 24 Jul 2019 13:07:46 +0200
X-Gmail-Original-Message-ID: <CAJKOXPc_3ZPB5F9gvnLTZOkry=acyo9_TBq62D6rjk=gYDZaNw@mail.gmail.com>
Message-ID: <CAJKOXPc_3ZPB5F9gvnLTZOkry=acyo9_TBq62D6rjk=gYDZaNw@mail.gmail.com>
Subject: Re: [RFC/RFT 2/5] phy: exynos5-usbdrd: add missing tuning of the
 phyutmi signal
To: Anand Moon <linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_040759_670658_B2453FFF 
X-CRM114-Status: GOOD (  18.78  )
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
> Add missing tuning of phyutmi controls to enter suspend and
> resume state.
>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
>  drivers/phy/samsung/phy-exynos5-usbdrd.c | 32 ++++++++++++++++++++++--
>  1 file changed, 30 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
> index 3c14bf7718c1..135114d51bc1 100644
> --- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
> +++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
> @@ -42,7 +42,13 @@
>
>  #define EXYNOS5_DRD_PHYUTMI                    0x08
>
> +#define PHYUTMI_TXBITSTUFFENH                  BIT(8)
> +#define PHYUTMI_TXBITSTUFFEN                   BIT(7)
>  #define PHYUTMI_OTGDISABLE                     BIT(6)
> +#define PHYUTMI_IDPULLUP                       BIT(5)
> +#define PHYUTMI_DRVVBUS                                BIT(4)
> +#define PHYUTMI_DPPULLDOWN                      BIT(3)
> +#define PHYUTMI_DMPULLDOWN                      BIT(2)
>  #define PHYUTMI_FORCESUSPEND                   BIT(1)
>  #define PHYUTMI_FORCESLEEP                     BIT(0)
>
> @@ -402,6 +408,23 @@ static int exynos5_usbdrd_phy_init(struct phy *phy)
>                 LINKSYSTEM_FLADJ(0x20);
>         writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_LINKSYSTEM);
>
> +       reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYUTMI);
> +       /* High-Byte Transmit Bit-Stuffing Enable */
> +       reg |= PHYUTMI_TXBITSTUFFENH;

How this is related with suspend and resume?

> +       /* Low-Byte Transmit Bit-Stuffing Enable */
> +       reg |= PHYUTMI_TXBITSTUFFEN;

The same.

> +       /* release force_sleep & force_suspend */
> +       reg &= ~(PHYUTMI_FORCESLEEP | PHYUTMI_FORCESUSPEND);

Really, why?

> +       /* DP/DM Pull Down Disable */
> +       reg &= ~(PHYUTMI_DMPULLDOWN | PHYUTMI_DPPULLDOWN);

Care to explain why?

> +       /* drvvbus controller signal controls the VBUS valid comparator */
> +       reg &= ~PHYUTMI_OTGDISABLE;

Makes sense, but how is it connected with suspend and resume? It's the
default, BTW...

> +       /* controller signal controls the VBUS Valid comparator */
> +       reg |= PHYUTMI_DRVVBUS;

Again, you are setting the defaults...

> +       /* Enable ID Sampling */
> +       reg |= PHYUTMI_IDPULLUP;

The same...

> +       writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYUTMI);

Does not look good. For UTMI Phy, this will be overwritten few lines
later with exynos5_usbdrd_utmi_init().

> +
>         reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM0);
>         /* Select PHY CLK source */
>         reg &= ~PHYPARAM0_REF_USE_PAD;
> @@ -452,9 +475,14 @@ static int exynos5_usbdrd_phy_exit(struct phy *phy)
>         if (ret)
>                 return ret;
>
> -       reg =   PHYUTMI_OTGDISABLE |
> +       reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYUTMI);
> +       reg |=  PHYUTMI_OTGDISABLE |
>                 PHYUTMI_FORCESUSPEND |
> -               PHYUTMI_FORCESLEEP;
> +               PHYUTMI_FORCESLEEP |
> +               PHYUTMI_DMPULLDOWN |
> +               PHYUTMI_DPPULLDOWN;
> +       reg &= ~(PHYUTMI_DRVVBUS | PHYUTMI_IDPULLUP |
> +               PHYUTMI_TXBITSTUFFENH | PHYUTMI_TXBITSTUFFEN);

No, it looks like random code... why you want to update the register
instead of overwrite it?

Best regards,
Krzysztof

>         writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYUTMI);
>
>         /* Resetting the PHYCLKRST enable bits to reduce leakage current */
> --
> 2.22.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
