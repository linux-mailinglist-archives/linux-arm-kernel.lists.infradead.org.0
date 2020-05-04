Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E39C1C3D0F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 16:31:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tvjtuad46Nih0Rz1379wXBG5mfmmoU2RopIcGxjKeo8=; b=sCD73AAq8k7PEY
	jmfs3ofw7KHh6Sf5qiRC8sckk4c1ry2jN5wpkpuxBpl5chqsJy2CcprPagzualSjiwXiRPmKRFW59
	YMCP1m2Xh1baULKZRxlK9jVRAZ32y6gqyNQShCc5jux/aESzUS2AngjcZ7xLX6bjlWQtDseEgNMLg
	wUmOMKIj2KZv53vqrgepYkrVz+adyVIDIXkFPSCt2Bqsq5uIbj6a3DrfB9igjUdGbP1p7dqhwP19e
	f3oOkFbd1ggMazpMfAqLwEUAwlRwRQNE+R+rgkFgspbHP10gIyvLHu6+RGSlljK7T3UIFfs0rsU6o
	b7WA44U4Y0z53vdRc1+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVc7g-0007Qe-6K; Mon, 04 May 2020 14:31:08 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVc7T-0007PG-5L
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 14:30:57 +0000
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com
 [209.85.222.53]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id 044EUdoM011564
 for <linux-arm-kernel@lists.infradead.org>; Mon, 4 May 2020 23:30:40 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 044EUdoM011564
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1588602641;
 bh=0JMCbgyAmGlhpQ7hxiz18kOsUjzg30bD8HcBbpAb5x0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xnHCGavbwzTQU3nFBS+aEywmgpXVZHERVycqC2B75XLhFDFjtlCz4p0JW6snmrm43
 Q4GtxBpDzjPQFz4e1f885OVqX/nGVJs8Rbor/qdXPj6F0QG65DLJxmHNCsd3IMgMH4
 /HUn0WaucWZzTf1Upa4BCBjKteHulp8VYcH1M6jUth53WrqUD57JX92H/ykJ8PXhMt
 nPpgGNdZ7yDdD0VFXS4Bl8OVWy8ayz7eoy7UkBEFKNDhPv72uRGzHpw6kyjqobEezT
 XhThB/Mw/W8HU6CuT10sGkYibIyHQOGDuEierYcshXgS5apt4zOH6TgJh/zYyoUCbH
 7LnBx0w8XgRdA==
X-Nifty-SrcIP: [209.85.222.53]
Received: by mail-ua1-f53.google.com with SMTP id t8so6649172uap.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 07:30:40 -0700 (PDT)
X-Gm-Message-State: AGi0PubS9/8WDut8J+4VVlgfPlCaD/93sBcpWMIbNKS0dNNamP5C+OW4
 4CBAy2LJjWgdr+UqUCEbed9ZqY5ytZLcMaWUP58=
X-Google-Smtp-Source: APiQypKoRtxT5WUefMCSz+nDLJ7ma5aTrMA6HlGAiXM9vGi0yv8JY3GHqUc1DdU+MwHJn6k8kWjKX9XTaakvqPONu6Y=
X-Received: by 2002:a9f:28c5:: with SMTP id d63mr11730734uad.25.1588602638948; 
 Mon, 04 May 2020 07:30:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200503120847.13528-1-aishwaryarj100@gmail.com>
 <20200504114408.9128-1-aishwaryarj100@gmail.com>
In-Reply-To: <20200504114408.9128-1-aishwaryarj100@gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 4 May 2020 23:30:02 +0900
X-Gmail-Original-Message-ID: <CAK7LNASuDxyvfh+cw1TEq_tTpQmdx+d99yMfnQ34wRSiTmJeLA@mail.gmail.com>
Message-ID: <CAK7LNASuDxyvfh+cw1TEq_tTpQmdx+d99yMfnQ34wRSiTmJeLA@mail.gmail.com>
Subject: Re: [PATCH] i2c: drivers: Remove superfluous error message
To: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_073055_455443_A61EF68F 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Thor Thayer <thor.thayer@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Baruch Siach <baruch@tkos.co.il>,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>,
 Vladimir Zapolskiy <vz@mleia.com>, Hans de Goede <hdegoede@redhat.com>,
 linux-i2c@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 4, 2020 at 8:44 PM Aishwarya Ramakrishnan
<aishwaryarj100@gmail.com> wrote:
>
> The function platform_get_irq can log an error by itself.
> This omit a redundant message for exception handling in the
> calling function.
>
> Suggested by Coccinelle.
>
> Signed-off-by: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
> ---
>  drivers/i2c/busses/i2c-altera.c   | 4 +---
>  drivers/i2c/busses/i2c-cht-wc.c   | 4 +---
>  drivers/i2c/busses/i2c-img-scb.c  | 4 +---
>  drivers/i2c/busses/i2c-lpc2k.c    | 4 +---
>  drivers/i2c/busses/i2c-uniphier.c | 4 +---


Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>


I see more drivers with the similar pattern, though.






>  5 files changed, 5 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/i2c/busses/i2c-altera.c b/drivers/i2c/busses/i2c-altera.c
> index f5c00f903df3..af6985f0ae63 100644
> --- a/drivers/i2c/busses/i2c-altera.c
> +++ b/drivers/i2c/busses/i2c-altera.c
> @@ -395,10 +395,8 @@ static int altr_i2c_probe(struct platform_device *pdev)
>                 return PTR_ERR(idev->base);
>
>         irq = platform_get_irq(pdev, 0);
> -       if (irq < 0) {
> -               dev_err(&pdev->dev, "missing interrupt resource\n");
> +       if (irq < 0)
>                 return irq;
> -       }
>
>         idev->i2c_clk = devm_clk_get(&pdev->dev, NULL);
>         if (IS_ERR(idev->i2c_clk)) {
> diff --git a/drivers/i2c/busses/i2c-cht-wc.c b/drivers/i2c/busses/i2c-cht-wc.c
> index 35e55feda763..343ae5754e6e 100644
> --- a/drivers/i2c/busses/i2c-cht-wc.c
> +++ b/drivers/i2c/busses/i2c-cht-wc.c
> @@ -314,10 +314,8 @@ static int cht_wc_i2c_adap_i2c_probe(struct platform_device *pdev)
>         int ret, reg, irq;
>
>         irq = platform_get_irq(pdev, 0);
> -       if (irq < 0) {
> -               dev_err(&pdev->dev, "Error missing irq resource\n");
> +       if (irq < 0)
>                 return -EINVAL;
> -       }
>
>         adap = devm_kzalloc(&pdev->dev, sizeof(*adap), GFP_KERNEL);
>         if (!adap)
> diff --git a/drivers/i2c/busses/i2c-img-scb.c b/drivers/i2c/busses/i2c-img-scb.c
> index 422097a31c95..2f6de763816a 100644
> --- a/drivers/i2c/busses/i2c-img-scb.c
> +++ b/drivers/i2c/busses/i2c-img-scb.c
> @@ -1344,10 +1344,8 @@ static int img_i2c_probe(struct platform_device *pdev)
>                 return PTR_ERR(i2c->base);
>
>         irq = platform_get_irq(pdev, 0);
> -       if (irq < 0) {
> -               dev_err(&pdev->dev, "can't get irq number\n");
> +       if (irq < 0)
>                 return irq;
> -       }
>
>         i2c->sys_clk = devm_clk_get(&pdev->dev, "sys");
>         if (IS_ERR(i2c->sys_clk)) {
> diff --git a/drivers/i2c/busses/i2c-lpc2k.c b/drivers/i2c/busses/i2c-lpc2k.c
> index 13b0c12e2dba..43dc9b7043e4 100644
> --- a/drivers/i2c/busses/i2c-lpc2k.c
> +++ b/drivers/i2c/busses/i2c-lpc2k.c
> @@ -362,10 +362,8 @@ static int i2c_lpc2k_probe(struct platform_device *pdev)
>                 return PTR_ERR(i2c->base);
>
>         i2c->irq = platform_get_irq(pdev, 0);
> -       if (i2c->irq < 0) {
> -               dev_err(&pdev->dev, "can't get interrupt resource\n");
> +       if (i2c->irq < 0)
>                 return i2c->irq;
> -       }
>
>         init_waitqueue_head(&i2c->wait);
>
> diff --git a/drivers/i2c/busses/i2c-uniphier.c b/drivers/i2c/busses/i2c-uniphier.c
> index 668b1fa2b0ef..ee00a44bf4c7 100644
> --- a/drivers/i2c/busses/i2c-uniphier.c
> +++ b/drivers/i2c/busses/i2c-uniphier.c
> @@ -324,10 +324,8 @@ static int uniphier_i2c_probe(struct platform_device *pdev)
>                 return PTR_ERR(priv->membase);
>
>         irq = platform_get_irq(pdev, 0);
> -       if (irq < 0) {
> -               dev_err(dev, "failed to get IRQ number\n");
> +       if (irq < 0)
>                 return irq;
> -       }
>
>         if (of_property_read_u32(dev->of_node, "clock-frequency", &bus_speed))
>                 bus_speed = I2C_MAX_STANDARD_MODE_FREQ;
> --
> 2.17.1
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
