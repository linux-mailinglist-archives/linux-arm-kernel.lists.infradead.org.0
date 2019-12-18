Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8676E123D13
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 03:27:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=diw+IUS+W7XS7RKPMUDh4d2JzpIXEUq8TtU1hErr+9k=; b=fpMBSEq2qG0B1B
	mM7bkbBt5mfAxRzIA7bjxRHKsslj9PsyaXtg5MU/238MhaI5bMMbX74nXabfcuNzFqzB8YLvCd1eQ
	aoeKV9A5zmf3jF++qbOzYm2iU+lrzb0ZLtm7xN1vxd4XxxRQrGOT6Y+TWpjNxcJaG0z91MIAMxPlY
	lfr83c0/zXI846vGtW0aWtBmj3r4057PCr9f0as4yGFrgqVExB6maaPcQJMECB93CFN33Uq29ndjj
	qaOcksr2AW6PzaVFKSZVjbfzDHqxSNO2RejpYIM3hbNsDXW5JZ48cvJixK2HxBikpzH8NnsZ8fhmg
	GmkVZHvkpoev9KtgrPsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihP3q-00011f-P9; Wed, 18 Dec 2019 02:27:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihP3a-00010B-7r; Wed, 18 Dec 2019 02:27:23 +0000
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8795824679;
 Wed, 18 Dec 2019 02:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576636041;
 bh=XXM1qIhv6mp83mUAwPbmy0ZfgUh12/5MVM64g+j5teY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=hCi55Za6H6EHQPAD6URE8PGJGj3b8jufgHzcpYxUrTf1oOUk0J+qMQUm0sPJCtc7r
 6hqTkdqqH/VSIYUPWgFk0SWRXd5zDliUXY7JRQjWGD8UVI/Jkk3JvuQlCMV4fucBh3
 b39jAE0qN9Y0vhBvTYjp72lV3E2ydN0Rtg9KqVu8=
Received: by mail-wr1-f50.google.com with SMTP id c14so561837wrn.7;
 Tue, 17 Dec 2019 18:27:21 -0800 (PST)
X-Gm-Message-State: APjAAAUdafRhupAvPkorn9W6inWc5ipH7bgjxmcaAbo/lkAhEL+KwgI0
 i4eY0O7Ghj8y65TxtobuP9g8jOoEwbS38Br8IO4=
X-Google-Smtp-Source: APXvYqx5UqcfQ1FFJHQCZKd5vBjgfL46TLBnUHJQVj6I1P5C7P5qttyGdV5lMniGCCRpoGO06aEnPCSAImq8qwlk310=
X-Received: by 2002:adf:81e3:: with SMTP id 90mr1054120wra.23.1576636040002;
 Tue, 17 Dec 2019 18:27:20 -0800 (PST)
MIME-Version: 1.0
References: <20191215175120.3290-1-tiny.windzz@gmail.com>
In-Reply-To: <20191215175120.3290-1-tiny.windzz@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 18 Dec 2019 10:27:08 +0800
X-Gmail-Original-Message-ID: <CAGb2v64uQr6JKCbhY+iMd___bLedvSOMTffg=JDX-pOZHY+sbw@mail.gmail.com>
Message-ID: <CAGb2v64uQr6JKCbhY+iMd___bLedvSOMTffg=JDX-pOZHY+sbw@mail.gmail.com>
Subject: Re: [PATCH 01/13] mmc: sunxi-mmc: convert to
 devm_platform_ioremap_resource
To: Yangtao Li <tiny.windzz@gmail.com>, Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_182722_306554_5AC1BE76 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, geert+renesas@glider.be,
 Linus Walleij <linus.walleij@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Kevin Hilman <khilman@baylibre.com>, Jaehoon Chung <jh80.chung@samsung.com>,
 Andy Gross <agross@kernel.org>, chaotian.jing@mediatek.com,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 wsa+renesas@sang-engineering.com, Maxime Ripard <mripard@kernel.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 ben-linux@fluff.org, Matthias Brugger <matthias.bgg@gmail.com>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, allison@lohutok.net,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, nico@fluxnic.net,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 yoshihiro.shimoda.uh@renesas.com, linux-mmc <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 manuel.lauss@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 1:51 AM Yangtao Li <tiny.windzz@gmail.com> wrote:
>
> Use devm_platform_ioremap_resource() to simplify code.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---

Acked-by: Chen-Yu Tsai <wens@csie.org>

>  drivers/mmc/host/sunxi-mmc.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/mmc/host/sunxi-mmc.c b/drivers/mmc/host/sunxi-mmc.c
> index d577a6b0ceae..f87d7967457f 100644
> --- a/drivers/mmc/host/sunxi-mmc.c
> +++ b/drivers/mmc/host/sunxi-mmc.c
> @@ -1273,8 +1273,7 @@ static int sunxi_mmc_resource_request(struct sunxi_mmc_host *host,
>         if (ret)
>                 return ret;
>
> -       host->reg_base = devm_ioremap_resource(&pdev->dev,
> -                             platform_get_resource(pdev, IORESOURCE_MEM, 0));
> +       host->reg_base = devm_platform_ioremap_resource(pdev, 0);
>         if (IS_ERR(host->reg_base))
>                 return PTR_ERR(host->reg_base);
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
