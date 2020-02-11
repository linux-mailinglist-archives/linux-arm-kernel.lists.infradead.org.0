Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C136D158A09
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 07:40:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rfHPnqrQxUODCGsHhPV9zjbjlQnwiSOuD2si2xKVCbk=; b=ljdBRuKMl7+Uh6
	HSs9QnRMLE2VpQGZpoc1oBq9wzFoBWBDlAeBc9c9HAaFDRb6QpY4+JdmFjcIaU4+SOdogsDuuPFJU
	iY+HClcbTVlxx5tpXxt4Y4mioIcnCSv1Z64AQhLS9TUA+cYkTjanaC6dhQUELFBE9ScYaLb2NRa4y
	OqTOj9xNRmDEFQY15fddEUA0K8YlVBO31l2U5URZ9z9z3B850Xx0Uopnk3mlT6OnA9QjX5UNIJTgL
	FyzaieWqea593wxFVWCvxfC7Le8IoiEwobuVcdDZY4EJmZGdvY6X101Yha/oRCR5agEjIcxm2a7G3
	6ufu7vZfrlxXWZ4ly1Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1PDx-0001Vx-Ii; Tue, 11 Feb 2020 06:40:45 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1PDp-0001Uu-5M
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 06:40:39 +0000
Received: by mail-ed1-f67.google.com with SMTP id v28so3349746edw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 22:40:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fv/t2lPvzd/c6evGoFWSGvw45Jr9b11uQzUTPkD838A=;
 b=hy+uwQ15u/zBao6nQ2cSTGHjRT9Sahh3X3URtxKcugRqYTkx1X9jcC02F3TXvWFG0u
 qzCFr6h/FIPVZnTC1u8wW0b2pFazndMQd0WoQvGB4ujXQz/poP3dS8SsLNJ4zlpZYj9D
 8l9D8NReiPSkyTNCFzEeT8MDMDVtRbMoH8V+9qkBDKhkQ0PHPLPErNakTqxSPWeGDI2Z
 oYZ+vKpKKEkadptg9yanLTnzyH10PtC/69x64k7ddZt2vlAEbujofrjSn+Ff1Ei2DGJ1
 Eet3wm8sqYeo+JV67VqLUOeyth0eSb9PBPwB9dHl3cAW7p4BGK1IGxt6Ezu4+yRqUIRE
 6ttw==
X-Gm-Message-State: APjAAAUL/uosv2PBkj+fIcqatt0xJDB1RiLPMCeG2Wd6aKQkHQHtL+lO
 cE8fdt4H0yVYE8EA+hLd1DOkC6LE7J8=
X-Google-Smtp-Source: APXvYqxicTo7caxyLrrL0SKD/3Z3s6bnJRy6aZ7xXNgi6qyt4dxX9//VWo9qD/7ZNRNNCnvMG6FRWg==
X-Received: by 2002:a17:906:e083:: with SMTP id
 gh3mr4463612ejb.231.1581403233772; 
 Mon, 10 Feb 2020 22:40:33 -0800 (PST)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com.
 [209.85.221.51])
 by smtp.gmail.com with ESMTPSA id w12sm165685edq.94.2020.02.10.22.40.33
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 10 Feb 2020 22:40:33 -0800 (PST)
Received: by mail-wr1-f51.google.com with SMTP id m16so10720847wrx.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 22:40:33 -0800 (PST)
X-Received: by 2002:a5d:6805:: with SMTP id w5mr6896277wru.64.1581403233013;
 Mon, 10 Feb 2020 22:40:33 -0800 (PST)
MIME-Version: 1.0
References: <20200210222807.206426-1-jernej.skrabec@siol.net>
 <20200210222807.206426-2-jernej.skrabec@siol.net>
In-Reply-To: <20200210222807.206426-2-jernej.skrabec@siol.net>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 11 Feb 2020 14:40:22 +0800
X-Gmail-Original-Message-ID: <CAGb2v659Znu1E74Ph8w4Un_cC8qovWmmLfOEDW0ax4jrLVs7GQ@mail.gmail.com>
Message-ID: <CAGb2v659Znu1E74Ph8w4Un_cC8qovWmmLfOEDW0ax4jrLVs7GQ@mail.gmail.com>
Subject: Re: [PATCH 1/7] clk: sunxi-ng: sun8i-de2: Sort structures
To: Jernej Skrabec <jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_224037_206225_261AF096 
X-CRM114-Status: GOOD (  19.29  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 6:28 AM Jernej Skrabec <jernej.skrabec@siol.net> wrote:
>
> Current structures are not sorted by family first and then
> alphabetically. Let's do that now.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

I would do this at the end of the patch series for a couple of reasons.
First of all, moving code around before the fixes make the fixes less
likely to directly apply to stable kernels, and second, the H6 clks
and resets lists disappear after all the changes.

ChenYu

> ---
>  drivers/clk/sunxi-ng/ccu-sun8i-de2.c | 56 ++++++++++++++--------------
>  1 file changed, 28 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
> index d9668493c3f9..a928e0c32222 100644
> --- a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
> +++ b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
> @@ -51,24 +51,6 @@ static SUNXI_CCU_M(mixer1_div_a83_clk, "mixer1-div", "pll-de", 0x0c, 4, 4,
>  static SUNXI_CCU_M(wb_div_a83_clk, "wb-div", "pll-de", 0x0c, 8, 4,
>                    CLK_SET_RATE_PARENT);
>
> -static struct ccu_common *sun50i_h6_de3_clks[] = {
> -       &mixer0_clk.common,
> -       &mixer1_clk.common,
> -       &wb_clk.common,
> -
> -       &bus_mixer0_clk.common,
> -       &bus_mixer1_clk.common,
> -       &bus_wb_clk.common,
> -
> -       &mixer0_div_clk.common,
> -       &mixer1_div_clk.common,
> -       &wb_div_clk.common,
> -
> -       &bus_rot_clk.common,
> -       &rot_clk.common,
> -       &rot_div_clk.common,
> -};
> -
>  static struct ccu_common *sun8i_a83t_de2_clks[] = {
>         &mixer0_clk.common,
>         &mixer1_clk.common,
> @@ -108,6 +90,24 @@ static struct ccu_common *sun8i_v3s_de2_clks[] = {
>         &wb_div_clk.common,
>  };
>
> +static struct ccu_common *sun50i_h6_de3_clks[] = {
> +       &mixer0_clk.common,
> +       &mixer1_clk.common,
> +       &wb_clk.common,
> +
> +       &bus_mixer0_clk.common,
> +       &bus_mixer1_clk.common,
> +       &bus_wb_clk.common,
> +
> +       &mixer0_div_clk.common,
> +       &mixer1_div_clk.common,
> +       &wb_div_clk.common,
> +
> +       &bus_rot_clk.common,
> +       &rot_clk.common,
> +       &rot_div_clk.common,
> +};
> +
>  static struct clk_hw_onecell_data sun8i_a83t_de2_hw_clks = {
>         .hws    = {
>                 [CLK_MIXER0]            = &mixer0_clk.common.hw,
> @@ -219,6 +219,16 @@ static const struct sunxi_ccu_desc sun8i_h3_de2_clk_desc = {
>         .num_resets     = ARRAY_SIZE(sun8i_a83t_de2_resets),
>  };
>
> +static const struct sunxi_ccu_desc sun8i_v3s_de2_clk_desc = {
> +       .ccu_clks       = sun8i_v3s_de2_clks,
> +       .num_ccu_clks   = ARRAY_SIZE(sun8i_v3s_de2_clks),
> +
> +       .hw_clks        = &sun8i_v3s_de2_hw_clks,
> +
> +       .resets         = sun8i_a83t_de2_resets,
> +       .num_resets     = ARRAY_SIZE(sun8i_a83t_de2_resets),
> +};
> +
>  static const struct sunxi_ccu_desc sun50i_a64_de2_clk_desc = {
>         .ccu_clks       = sun8i_h3_de2_clks,
>         .num_ccu_clks   = ARRAY_SIZE(sun8i_h3_de2_clks),
> @@ -239,16 +249,6 @@ static const struct sunxi_ccu_desc sun50i_h6_de3_clk_desc = {
>         .num_resets     = ARRAY_SIZE(sun50i_h6_de3_resets),
>  };
>
> -static const struct sunxi_ccu_desc sun8i_v3s_de2_clk_desc = {
> -       .ccu_clks       = sun8i_v3s_de2_clks,
> -       .num_ccu_clks   = ARRAY_SIZE(sun8i_v3s_de2_clks),
> -
> -       .hw_clks        = &sun8i_v3s_de2_hw_clks,
> -
> -       .resets         = sun8i_a83t_de2_resets,
> -       .num_resets     = ARRAY_SIZE(sun8i_a83t_de2_resets),
> -};
> -
>  static int sunxi_de2_clk_probe(struct platform_device *pdev)
>  {
>         struct resource *res;
> --
> 2.25.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
