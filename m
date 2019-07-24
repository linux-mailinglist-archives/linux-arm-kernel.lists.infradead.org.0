Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CEC72CBC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 12:59:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/7htyXbpwmg5RcVZS4zaYayOp4X6cU6GnIidGxKHRCA=; b=Cv48qOb7496cIT
	aq3UoPuXoERMb4CkkWvgz/dSjGYQsB0nERxSzXM28YAv/mC5b8UhuA/csKhJDuvyCaO7Bjn9SbZgw
	IaZuZHoNJWnCL0bgVSUnKGZjlqUnKeU64jj59rkfIgMHpfX/Y7SRFx7xnNTu3zZZOAB3vyZrHznWz
	DXKoiMR/ZZItxo9aib3m60KSwhPjxgdZmb3LHeNxGGNjdSdqJ3wF0qc4cVz3iR8DIVr4p1xwYyTFc
	iQl2w5cth+JQDoXgecLZvSOrZh2Y4+PXMKFBNGTxquBplF6y662RWQkJP/e7KCXisY1teKoWCsIk9
	pL6ALK8d5VibGKzTtbOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqEzx-0002fS-QT; Wed, 24 Jul 2019 10:59:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqEzn-0002ey-Oz
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 10:59:44 +0000
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 17C9222387
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 10:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563965983;
 bh=+SLeYzBrFqrvQlKq8tfptWG7tfjTeB0dYCaKxtC/F1U=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HAv7AF0ukKxL6GYXk1xun6fguFyzJ7NapvsVooizJX9ii0nisFl4Rz0JDEw9Ab3b2
 gjhffA7s31ujpM4iPuY1BfjQqGmT7Si1Mt7OOeRQKdz6lfzkth32MAzg0mglg73Xf/
 Eg1AX/SsYMKjTrWI+PEW4oeXPwa7OZ0/SydEoASs=
Received: by mail-lj1-f179.google.com with SMTP id t28so44067505lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 03:59:43 -0700 (PDT)
X-Gm-Message-State: APjAAAUJNNhyh0GMbkQJs1G0GxJNZvvFqWZgKqAnup1a+ZB/ILlxHSkm
 Dtv3ZdqAvvf2/9Lk4KHfG5DWnyx9nhqobKciAFU=
X-Google-Smtp-Source: APXvYqwezSx0YMy1Onv2nAziBZ5h3uvoLRSWEZ6B72J6vovOVKzX95DIdnPlSg9aaez+CQYQ18XozsjqXWS11kg092g=
X-Received: by 2002:a2e:124b:: with SMTP id t72mr43113386lje.143.1563965981368; 
 Wed, 24 Jul 2019 03:59:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190722185938.9043-1-linux.amoon@gmail.com>
 <20190722185938.9043-2-linux.amoon@gmail.com>
In-Reply-To: <20190722185938.9043-2-linux.amoon@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 24 Jul 2019 12:59:30 +0200
X-Gmail-Original-Message-ID: <CAJKOXPch9i0GBLLTQFNF=jPSJ++ZUJeE+Y5MCA7zFLFYO79R4Q@mail.gmail.com>
Message-ID: <CAJKOXPch9i0GBLLTQFNF=jPSJ++ZUJeE+Y5MCA7zFLFYO79R4Q@mail.gmail.com>
Subject: Re: [RFC/RFT 1/5] phy: exynos5-usbdrd: read from correct offset of
 xhci linksystem
To: Anand Moon <linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_035943_822645_1FA71A9B 
X-CRM114-Status: GOOD (  15.15  )
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
> Read from linksystem offset to update the xhci version.

But why? As many times before, you do not specify why you are doing
things. What problem are you solving? What feature are you adding?

Best regards,
Krzysztof

>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
>  drivers/phy/samsung/phy-exynos5-usbdrd.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
> index 646259bee909..3c14bf7718c1 100644
> --- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
> +++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
> @@ -397,7 +397,8 @@ static int exynos5_usbdrd_phy_init(struct phy *phy)
>          * Setting the Frame length Adj value[6:1] to default 0x20
>          * See xHCI 1.0 spec, 5.2.4
>          */
> -       reg =   LINKSYSTEM_XHCI_VERSION_CONTROL |
> +       reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_LINKSYSTEM);
> +       reg |=  LINKSYSTEM_XHCI_VERSION_CONTROL |
>                 LINKSYSTEM_FLADJ(0x20);
>         writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_LINKSYSTEM);
>
> --
> 2.22.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
