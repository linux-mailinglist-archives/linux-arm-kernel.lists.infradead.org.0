Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D08047353
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 07:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TnPbWKwibvtH3hjjIsUqjf9vzq4Q1PC/9uV6+wiTswQ=; b=gfGASKzcMTnyvf
	mqMwshQTvHXKX4smgTGP6i6wb+siayX8G1QeynsVLKcBGMcXI5EnlpjZs2MOHWEVut1TQThWfcngw
	qUCtSVSQ5GP6Q+QYxVBn+ONPR3hYzT8d9M5EOV68/y4KqcG401FTxQxJsowZ712Lq2N/eo5dLsn2z
	8/8vQ+nGvxGsbLm+7P4wENGvNCvpM8+BuCBp0OlUcSQQgQGjIHy2JLbJyfdRAd9X9wheA4cXNF28e
	eD540ArDGl30D6XE4ah6fmvtRl8+s/SVAy7TiHChADKd4mP1xHYxWgym6Trv444Meeo0CVzJLn0VD
	BW2Q+ThU4mzu1KXee0lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcNln-0001aI-NE; Sun, 16 Jun 2019 05:31:59 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcNlP-0001Zr-OL
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 05:31:37 +0000
Received: by mail-ed1-f66.google.com with SMTP id k8so10311437edr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Jun 2019 22:31:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nVwk/ziTyLZE6Zw80YoRGbaeC4ieFbAxfmOC6bCL8pk=;
 b=P1ZeAOpIguz8yQK1vRoIiCc8m5keF8Vl1Zfg25pv5VGGLFu1vVci+0OwMnR6RDcBgx
 oxPI/XDC5z2idaC3lpCjt4RIasbQiIDF1M75vvf6NTZwFGBrgtoSdyQdLWb9OyDLqCLT
 hAvFhXrW5a6uvZ6OFOClgHPrvma0pGOjCtW//AnkahuOxCWMn9tKL3jD22+gJIgqyAtM
 5RE7mx5Jq0GMloUCH7Y4gbFC3GnPN0jxXlQxcP/i4J+rcWNdpZRZLObMuBzpQVHUj7kR
 S5CWxf5Mt3hBPVUswAP+RJ531XZdbB7Az1T9I/04FsrkkEh0E+S3m3o5ELWHlUUESvGK
 TnTw==
X-Gm-Message-State: APjAAAX/oAm5enJMtg+Ni+Eem/P3G6mD/BTfuR8XipCs1yilJjN+pceq
 na8GlVOq8PAoa924ArmZa7Kw/2H53PY=
X-Google-Smtp-Source: APXvYqx25qJX8yhgEWef9Tn6cO7BElKjxvw8AlSy1s0wb6maDBDw1SlwZTLR0XEdTBvFaHNTruGEzQ==
X-Received: by 2002:aa7:d909:: with SMTP id a9mr57889423edr.261.1560663093054; 
 Sat, 15 Jun 2019 22:31:33 -0700 (PDT)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com.
 [209.85.221.41])
 by smtp.gmail.com with ESMTPSA id d4sm2521181edb.4.2019.06.15.22.31.32
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sat, 15 Jun 2019 22:31:32 -0700 (PDT)
Received: by mail-wr1-f41.google.com with SMTP id x17so6408309wrl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Jun 2019 22:31:32 -0700 (PDT)
X-Received: by 2002:adf:f946:: with SMTP id q6mr18780972wrr.109.1560663091964; 
 Sat, 15 Jun 2019 22:31:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
 <20190614164324.9427-6-jagan@amarulasolutions.com>
In-Reply-To: <20190614164324.9427-6-jagan@amarulasolutions.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Sun, 16 Jun 2019 13:31:19 +0800
X-Gmail-Original-Message-ID: <CAGb2v669MprYgy2wc_a7Kz8VpzzNGZxDxsj0z_Ujx5bV25+AWQ@mail.gmail.com>
Message-ID: <CAGb2v669MprYgy2wc_a7Kz8VpzzNGZxDxsj0z_Ujx5bV25+AWQ@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2 5/9] drm/sun4i: tcon_top: Register clock
 gates in probe
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_223135_796872_EDAD14E9 
X-CRM114-Status: GOOD (  27.62  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 15, 2019 at 12:44 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> TCON TOP have clock gates for TV0, TV1, dsi and right
> now these are register during bind call.
>
> Of which, dsi clock gate would required during DPHY probe
> but same can miss to get since tcon top is not bound at
> that time.
>
> To solve, this circular dependency move the clock gate
> registration from bind to probe so-that DPHY can get the
> dsi gate clock on time.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  drivers/gpu/drm/sun4i/sun8i_tcon_top.c | 94 ++++++++++++++------------
>  1 file changed, 49 insertions(+), 45 deletions(-)
>
> diff --git a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
> index 465e9b0cdfee..a8978b3fe851 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
> @@ -124,7 +124,53 @@ static struct clk_hw *sun8i_tcon_top_register_gate(struct device *dev,
>  static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
>                                void *data)
>  {
> -       struct platform_device *pdev = to_platform_device(dev);
> +       struct sun8i_tcon_top *tcon_top = dev_get_drvdata(dev);
> +       int ret;
> +
> +       ret = reset_control_deassert(tcon_top->rst);
> +       if (ret) {
> +               dev_err(dev, "Could not deassert ctrl reset control\n");
> +               return ret;
> +       }
> +
> +       ret = clk_prepare_enable(tcon_top->bus);
> +       if (ret) {
> +               dev_err(dev, "Could not enable bus clock\n");
> +               goto err_assert_reset;
> +       }

You have to de-assert the reset control and enable the clock before the
clocks it provides are registered. Otherwise a consumer may come in and
ask for the provided clock to be enabled, but since the TCON TOP's own
reset and clock are still disabled, you can't actually access the registers
that controls the provided clock.

> +
> +       return 0;
> +
> +err_assert_reset:
> +       reset_control_assert(tcon_top->rst);
> +
> +       return ret;
> +}
> +
> +static void sun8i_tcon_top_unbind(struct device *dev, struct device *master,
> +                                 void *data)
> +{
> +       struct sun8i_tcon_top *tcon_top = dev_get_drvdata(dev);
> +       struct clk_hw_onecell_data *clk_data = tcon_top->clk_data;
> +       int i;
> +
> +       of_clk_del_provider(dev->of_node);
> +       for (i = 0; i < CLK_NUM; i++)
> +               if (clk_data->hws[i])
> +                       clk_hw_unregister_gate(clk_data->hws[i]);

And this should be in the remove function.

So instead, just move _everything_ to the probe and remove functions,
and provide empty bind/unbind functions so the component system still
works.

ChenYu

> +
> +       clk_disable_unprepare(tcon_top->bus);
> +       reset_control_assert(tcon_top->rst);
> +}
> +
> +static const struct component_ops sun8i_tcon_top_ops = {
> +       .bind   = sun8i_tcon_top_bind,
> +       .unbind = sun8i_tcon_top_unbind,
> +};
> +
> +static int sun8i_tcon_top_probe(struct platform_device *pdev)
> +{
> +       struct device *dev = &pdev->dev;
>         struct clk_hw_onecell_data *clk_data;
>         struct sun8i_tcon_top *tcon_top;
>         const struct sun8i_tcon_top_quirks *quirks;
> @@ -132,7 +178,7 @@ static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
>         void __iomem *regs;
>         int ret, i;
>
> -       quirks = of_device_get_match_data(&pdev->dev);
> +       quirks = of_device_get_match_data(dev);
>
>         tcon_top = devm_kzalloc(dev, sizeof(*tcon_top), GFP_KERNEL);
>         if (!tcon_top)
> @@ -164,18 +210,6 @@ static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
>         if (IS_ERR(regs))
>                 return PTR_ERR(regs);
>
> -       ret = reset_control_deassert(tcon_top->rst);
> -       if (ret) {
> -               dev_err(dev, "Could not deassert ctrl reset control\n");
> -               return ret;
> -       }
> -
> -       ret = clk_prepare_enable(tcon_top->bus);
> -       if (ret) {
> -               dev_err(dev, "Could not enable bus clock\n");
> -               goto err_assert_reset;
> -       }
> -
>         /*
>          * At least on H6, some registers have some bits set by default
>          * which may cause issues. Clear them here.
> @@ -226,45 +260,15 @@ static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
>
>         dev_set_drvdata(dev, tcon_top);
>
> -       return 0;
> +       return component_add(dev, &sun8i_tcon_top_ops);
>
>  err_unregister_gates:
>         for (i = 0; i < CLK_NUM; i++)
>                 if (!IS_ERR_OR_NULL(clk_data->hws[i]))
>                         clk_hw_unregister_gate(clk_data->hws[i]);
> -       clk_disable_unprepare(tcon_top->bus);
> -err_assert_reset:
> -       reset_control_assert(tcon_top->rst);
> -
>         return ret;
>  }
>
> -static void sun8i_tcon_top_unbind(struct device *dev, struct device *master,
> -                                 void *data)
> -{
> -       struct sun8i_tcon_top *tcon_top = dev_get_drvdata(dev);
> -       struct clk_hw_onecell_data *clk_data = tcon_top->clk_data;
> -       int i;
> -
> -       of_clk_del_provider(dev->of_node);
> -       for (i = 0; i < CLK_NUM; i++)
> -               if (clk_data->hws[i])
> -                       clk_hw_unregister_gate(clk_data->hws[i]);
> -
> -       clk_disable_unprepare(tcon_top->bus);
> -       reset_control_assert(tcon_top->rst);
> -}
> -
> -static const struct component_ops sun8i_tcon_top_ops = {
> -       .bind   = sun8i_tcon_top_bind,
> -       .unbind = sun8i_tcon_top_unbind,
> -};
> -
> -static int sun8i_tcon_top_probe(struct platform_device *pdev)
> -{
> -       return component_add(&pdev->dev, &sun8i_tcon_top_ops);
> -}
> -
>  static int sun8i_tcon_top_remove(struct platform_device *pdev)
>  {
>         component_del(&pdev->dev, &sun8i_tcon_top_ops);
> --
> 2.18.0.321.gffc6fa0e3
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20190614164324.9427-6-jagan%40amarulasolutions.com.
> For more options, visit https://groups.google.com/d/optout.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
