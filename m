Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C114C13013F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 07:43:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KwhhOuQ51IFmgDYbXcEPbjCR1enaSifpCeDH8kgaf4Y=; b=WwktUwovkNKqnS
	BF92TZghpzogA+AkyLvz50F8EyKPdPx2lIP5sSWQYGbX36u0ZDCEtdSAo+KCx4Fx+n4tjc63+nhpv
	k5sU+Do1vubKsBF2y2FNAjGCpSSDa9n9m1fl2APb6s+cRQC9ljV4T1TkWcCzjvOcG/NWCwJhCZCNS
	PuP1kVJG6jqq809RYxqfJZrR+jQQaAWuziBgbxeNFqv3qpSrgrK4yYpis+e7570m5RaTsOYv69uDS
	w3UPX2HniGmWpeAliSi4vdfzIOF1fhAqebMcBOYqEhbdWvysuo6vtZTyVP9YEbaKRYsKeos7jOFsq
	WiLBSU8QxWyk+RufcKcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ind9U-0004Ac-OP; Sat, 04 Jan 2020 06:43:12 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ind9O-0004A9-2R
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 06:43:07 +0000
Received: by mail-qk1-x744.google.com with SMTP id d71so27657736qkc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 22:43:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OKCx0KH4tkG9yRQceXGspszu095frq8n0bovCZ7QnE0=;
 b=QJCkdJGoeZr96+O1sG4Np/5ofJx9aIivdIeabs/KfkbZdSShLJh3lvQ5cr7I3enNBQ
 Ti8ZboAq8parJlayYLuZO9xuo6iSrqQFDQw5hDj6vVPW3pmBytv8DP0cSYjIRvGjJ0jH
 6AOa91OxSVLE/+MWsUtt7HFwQm5r9hk7I+kNhGvIaO/5zJGcvd/c6RSVgQqbsCLmijYp
 0JFSZE9Fx+9Pm99c7UDR/2hkMqy1MkVRzut9bB71lTjIYVTGACed1SHV5oUXwJqc3XOy
 ECD41HBNim5eReL+xKExV4vYLsOD58on2rOW7fT3LaVz2vGcQNEW7qc5F0eqQ74M+YWY
 Oulw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OKCx0KH4tkG9yRQceXGspszu095frq8n0bovCZ7QnE0=;
 b=Xr6CCJrOByr0L+2ky1tQTPOHED3ArnnzAadK9JWBzSseId9lHWZlabt/GKMwXIOjOO
 mMXdFg+ifD9FG6gZiKdnAKl8tKtmaJKw6FVKHkfyB7hpNkDwwHLItmAOEr5MTlpFp8tb
 am2541wIzT4wSaZqUQtbd9uWqe9/mSJqfeKOlkiAVANtRBGExaEZgOze1y5A91iMRABH
 5+7z3S6fwjlwcNPo+hgvebljAos8/WQ/rEFRMx/Nn4R2cT6bJnE7c5uMlKESiWgmq6uA
 f+EqTAE9esnxhvXC9QklHGSu0HhSZvkZZugpxgI4ELuvu+vaay7xgdXAV9/cG+wMvqW8
 Yzeg==
X-Gm-Message-State: APjAAAVQY/WENEgQMn9P8UlNYkVZdttZ4U473J2oOEbNUVSgk1jafrrd
 cUVo2eJ8M3ds8b46va36LwL2NMiPbucXC6EJ+Lg=
X-Google-Smtp-Source: APXvYqzwJefkYr9GuFlkgk26uyY/jBUug2RhUE0HRAgdSsQhTaflvyrdnyLbh7KJRtUGub5s1F2SnaegFHI54btl3BQ=
X-Received: by 2002:a37:5d0:: with SMTP id 199mr72447394qkf.131.1578120181759; 
 Fri, 03 Jan 2020 22:43:01 -0800 (PST)
MIME-Version: 1.0
References: <20200104063505.219030-1-anarsoul@gmail.com>
 <20200104063505.219030-2-anarsoul@gmail.com>
In-Reply-To: <20200104063505.219030-2-anarsoul@gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Fri, 3 Jan 2020 22:42:35 -0800
Message-ID: <CA+E=qVcS+bWNx6Sneg-JG4-NHQZ8e-ztszsPu8N2d8HawyDYqg@mail.gmail.com>
Subject: Re: [PATCH 1/3] clk: sunxi-ng: add mux and pll notifiers for A64 CPU
 clock
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>,
 arm-linux <linux-arm-kernel@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>, linux-clk <linux-clk@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_224306_136644_0E0E6B30 
X-CRM114-Status: GOOD (  19.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vasily Khoruzhick <vasilykh@arista.com>, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 3, 2020 at 10:35 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
>
> From: Icenowy Zheng <icenowy@aosc.io>
>
> The A64 PLL_CPU clock has the same instability if some factor changed
> without the PLL gated like other SoCs with sun6i-style CCU, e.g. A33,
> H3.
>
> Add the mux and pll notifiers for A64 CPU clock to workaround the
> problem.
>
> Fixes: c6a0637460c2 ("clk: sunxi-ng: Add A64 clocks")
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Vasily Khoruzhick <vasilykh@arista.com>

Ugh, didn't notice that email is wrong here, this patch is not related
to my daytime job. Maxime, if patchset is OK please fix it up to be
"Vasily Khoruzhick <anarsoul@gmail.com>", otherwise I'll resend v2
with correct sign off.


> ---
>  drivers/clk/sunxi-ng/ccu-sun50i-a64.c | 28 ++++++++++++++++++++++++++-
>  1 file changed, 27 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-a64.c b/drivers/clk/sunxi-ng/ccu-sun50i-a64.c
> index 49bd7a4c015c..5f66bf879772 100644
> --- a/drivers/clk/sunxi-ng/ccu-sun50i-a64.c
> +++ b/drivers/clk/sunxi-ng/ccu-sun50i-a64.c
> @@ -921,11 +921,26 @@ static const struct sunxi_ccu_desc sun50i_a64_ccu_desc = {
>         .num_resets     = ARRAY_SIZE(sun50i_a64_ccu_resets),
>  };
>
> +static struct ccu_pll_nb sun50i_a64_pll_cpu_nb = {
> +       .common = &pll_cpux_clk.common,
> +       /* copy from pll_cpux_clk */
> +       .enable = BIT(31),
> +       .lock   = BIT(28),
> +};
> +
> +static struct ccu_mux_nb sun50i_a64_cpu_nb = {
> +       .common         = &cpux_clk.common,
> +       .cm             = &cpux_clk.mux,
> +       .delay_us       = 1, /* > 8 clock cycles at 24 MHz */
> +       .bypass_index   = 1, /* index of 24 MHz oscillator */
> +};
> +
>  static int sun50i_a64_ccu_probe(struct platform_device *pdev)
>  {
>         struct resource *res;
>         void __iomem *reg;
>         u32 val;
> +       int ret;
>
>         res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>         reg = devm_ioremap_resource(&pdev->dev, res);
> @@ -939,7 +954,18 @@ static int sun50i_a64_ccu_probe(struct platform_device *pdev)
>
>         writel(0x515, reg + SUN50I_A64_PLL_MIPI_REG);
>
> -       return sunxi_ccu_probe(pdev->dev.of_node, reg, &sun50i_a64_ccu_desc);
> +       ret = sunxi_ccu_probe(pdev->dev.of_node, reg, &sun50i_a64_ccu_desc);
> +       if (ret)
> +               return ret;
> +
> +       /* Gate then ungate PLL CPU after any rate changes */
> +       ccu_pll_notifier_register(&sun50i_a64_pll_cpu_nb);
> +
> +       /* Reparent CPU during PLL CPU rate changes */
> +       ccu_mux_notifier_register(pll_cpux_clk.common.hw.clk,
> +                                 &sun50i_a64_cpu_nb);
> +
> +       return 0;
>  }
>
>  static const struct of_device_id sun50i_a64_ccu_ids[] = {
> --
> 2.24.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
