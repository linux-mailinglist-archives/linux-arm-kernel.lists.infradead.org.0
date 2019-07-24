Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 511CF72CF9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 13:11:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zwsHhuREKAeNL5vfhIT4LrQakK3qzxovhD1CJP5x/X8=; b=mIiub+OzEwtDql
	2c4JC6Byg9pD6imqjRnTcsaLTZdsI50Ue2AM5kEGyMshCOAbAEUQyU0/JXcQxflMNxxugp+oi+IGU
	QwMN21utShYmU+Fe3M37qF7jH1GGpFqorDt+g0lUNb308qCPBK8gehK6I+FhWdc1gRgxHB+/calJu
	TIUfjlwM7IWLjDOEsIMDv0UIxkofYnAStCxqR2JLjgfdDRKbFYGfS5+BaroNvIiDIEft9UqjIXrJG
	gEz5w446jf1j5M9UyLh6bc3Mai6/nXa+Z5pB5ks7yWzZ3st08gv6QS5nyOHxOyDfM49F9oJaKu/Go
	+cjzJ7TiCD+KSWbLqT9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqFB6-000113-VF; Wed, 24 Jul 2019 11:11:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqFAf-0000k0-MO
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 11:10:59 +0000
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
 [209.85.167.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EEB5E22ADB
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 11:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563966657;
 bh=43ImpNHkkgXC2ZTY8sp81GulxHTTCw7a4isDFujFl1o=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=V1yaQo+bbXYWPn4Ax4A73Nr2pQsDa3iLl/cW1bxNLchkNkdO306FibgqU+erTmvgK
 EQWEBbekVuJHjxyLZofTRa1+SRu0hr7Wfi72SOTVr/r91zJKuT5kKY3LTbjBflB2LK
 GoLIdBx9pJvxMoMy6c4tPRFHW+mwj92/xdLU5MQw=
Received: by mail-lf1-f54.google.com with SMTP id b17so31686358lff.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 04:10:56 -0700 (PDT)
X-Gm-Message-State: APjAAAXGBnaFApdf7UAboWXjL0MGd77fUtPYYJ42Q6Ozhg2P8MQJM3iu
 2HRocfC1iBbI/BCpZJ/KGz1hFHvVe6Kn5HQXRdg=
X-Google-Smtp-Source: APXvYqzc4CJMWeH1KfUWwesVwU9M4BdPF96ukfcyOKlGBt8F3mjV1zNEx5786UwPBcNQlTDPzzmpiDAt9db/wwLUDnA=
X-Received: by 2002:ac2:4d1c:: with SMTP id r28mr36759778lfi.159.1563966655182; 
 Wed, 24 Jul 2019 04:10:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190722185938.9043-1-linux.amoon@gmail.com>
 <20190722185938.9043-4-linux.amoon@gmail.com>
In-Reply-To: <20190722185938.9043-4-linux.amoon@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 24 Jul 2019 13:10:43 +0200
X-Gmail-Original-Message-ID: <CAJKOXPcc_tvKnMEqmEozcEn64EPBmeC6gGOp4XMQqTTmHcXwUA@mail.gmail.com>
Message-ID: <CAJKOXPcc_tvKnMEqmEozcEn64EPBmeC6gGOp4XMQqTTmHcXwUA@mail.gmail.com>
Subject: Re: [RFC/RFT 3/5] phy: exynos5-usbdrd: UTMI tune signal
To: Anand Moon <linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_041057_764781_E29D92E9 
X-CRM114-Status: GOOD (  16.99  )
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
> Tune USB2.0 (UTMI+) TX signal for high speed data transfer.

What is the visible effect? What does this tuning bring?

>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
>  drivers/phy/samsung/phy-exynos5-usbdrd.c | 42 +++++++++++++++++++++---
>  1 file changed, 37 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
> index 135114d51bc1..54a513ca15e4 100644
> --- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
> +++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
> @@ -33,6 +33,8 @@
>  #define EXYNOS5_FSEL_24MHZ             0x5
>  #define EXYNOS5_FSEL_50MHZ             0x7
>
> +#define __set(v, a, b)  (((v) << (b)) & GENMASK(a, b))
> +
>  /* EXYNOS5: USB 3.0 DRD PHY registers */
>  #define EXYNOS5_DRD_LINKSYSTEM                 0x04
>
> @@ -108,8 +110,17 @@
>  #define EXYNOS5_DRD_PHYPARAM0                  0x1c
>
>  #define PHYPARAM0_REF_USE_PAD                  BIT(31)
> -#define PHYPARAM0_REF_LOSLEVEL_MASK            (0x1f << 26)
> -#define PHYPARAM0_REF_LOSLEVEL                 (0x9 << 26)
> +#define PHYPARAM0_REF_LOSLEVEL(x)              __set(x, 30, 26)
> +#define PHYPARAM0_TXVREFTUNE(x)                        __set(x, 25, 22)
> +#define PHYPARAM0_TXISETUNE(x)                 __set(x, 21, 20)
> +#define PHYPARAM0_TXRESTUNE(x)                 __set(x, 19, 18)
> +#define PHYPARAM0_TXPREEMPPULSETUNE            BIT(17)
> +#define PHYPARAM0_TXPREEMPAMPTUNE(x)           __set(x, 16, 15)
> +#define PHYPARAM0_TXHSXVTUNE(x)                        __set(x, 14, 13)
> +#define PHYPARAM0_TXFSLSTUNE(x)                        __set(x, 12, 9)
> +#define PHYPARAM0_SQRXTUNE(x)                  __set(x, 8, 6)
> +#define PHYPARAM0_OTGTUNE(x)                   __set(x, 5, 3)
> +#define PHYPARAM0_COMPDISTUNE(x)               __set(x, 2, 0)
>
>  #define EXYNOS5_DRD_PHYPARAM1                  0x20
>
> @@ -365,9 +376,30 @@ static void exynos5_usbdrd_utmi_init(struct exynos5_usbdrd_phy *phy_drd)
>         u32 reg;
>
>         reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM0);
> -       /* Set Loss-of-Signal Detector sensitivity */
> -       reg &= ~PHYPARAM0_REF_LOSLEVEL_MASK;
> -       reg |=  PHYPARAM0_REF_LOSLEVEL;
> +               /* Set Loss-of-Signal Detector sensitivity */
> +       reg |= (PHYPARAM0_REF_USE_PAD |
> +               /* Sets the sensitivity level for the Loss-of-Signal detector */
> +               PHYPARAM0_REF_LOSLEVEL(0x9) |
> +               /* Adjusts the high-speed DC level voltage */
> +               PHYPARAM0_TXVREFTUNE(0x3) |
> +               /* Adjust the rise/fal timie of the high-speed waveform */
> +               PHYPARAM0_TXISETUNE(0x1) |
> +               /* Adjusts the driver source impedance */
> +               PHYPARAM0_TXRESTUNE(0x1) |
> +               /* HS Transmitter Pre-Emphasis Duration Control */
> +               PHYPARAM0_TXPREEMPPULSETUNE |
> +               /* HS Transmitter Pre-Emphasis Current Control */
> +               PHYPARAM0_TXPREEMPAMPTUNE(0x0) |
> +               /* Transmitter High-Speed Crossover Adjustment */
> +               PHYPARAM0_TXHSXVTUNE(0x3) |
> +               /* FS/LS Source Impedance Adjustment */
> +               PHYPARAM0_TXFSLSTUNE(0x3) |
> +               /* Squelch Threshold Adjustment */
> +               PHYPARAM0_SQRXTUNE(0x3) |
> +               /* VBUS Valid Threshold Adjustment */
> +               PHYPARAM0_OTGTUNE(0x6) |
> +               /* Disconnect Threshold Adjustment */
> +               PHYPARAM0_COMPDISTUNE(0x6));

You set a bunch of parameters but I am not sure how did you get the values...

Best regards,
Krzysztof

>         writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM0);
>
>         reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM1);
> --
> 2.22.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
