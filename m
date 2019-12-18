Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F32A3123D61
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 03:46:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iaYAyFSjnnX6NQhBl7GzaFCtspWnzgNBCuuA6cGtH1s=; b=CzsJdMNU7XEl05
	OOultakHSqRctUaewq2A1p2YY7dI7iZRMtXYyq3pJShxdclgsOJRRiQg/YNN3Os57Vr3Yv7yB8bWM
	4sGufRgJ5SLVFlmuj/UXKKfaQRcS+GsnHWHiLEGP5Pkgyk34/z8df1YAuERfgvovDbGKEBsNmkVN0
	id+2K4fg8mMl+lDVgBcpMRem5y8KRNsLLGmc2niLxDNa0xEtw+yImyuDy/0H0kC/0aH7+dw0iv0xh
	zY3buPKENnNB9jcaUAF3ynJ+J5Cx9Ny57F1g1HGXsesAuImxIfAQuUTgpaiUSxC+6vOxpBnUs6MQ9
	QtQhsAF+TkyRu4GxY4AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihPLt-0001x4-UX; Wed, 18 Dec 2019 02:46:17 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihPLk-0001wB-2A; Wed, 18 Dec 2019 02:46:09 +0000
Received: by mail-ed1-f68.google.com with SMTP id c26so372312eds.8;
 Tue, 17 Dec 2019 18:46:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vxwj4gd/9Empd7D3FvHODrnvOnRhpeyanogRcG726ys=;
 b=N9w2qj4FVyUPDpeE0hfN5gphda3dQ0fYT8kK2GT+xiFtyqC0DoJbkd3/MMIw0YiNdD
 zr50D9/VgDE0zJo1hbj4XjcSNgGUzpMp4+c0ytF/Hmx/d7AyTAxFlK6LQ58V/K0h3CaP
 aDE8vH0vceZrcMOLK90V1JTVQLzzlghRRzyco7WogvST1qsz7LFUNywAcaG4L/OCeqpX
 N1GTk6oYG23DXI3RTWkO7wSzgxlsn6eWWwmMDfk8AifP+Oq07khMids8tyik4PTUUkLv
 ALhCZxU2nDNInW0lL5+Fa3EOT+sVUMaAacVDvUTwEvJQJK293UsEnCaPtaenLTfNxbPt
 /1xw==
X-Gm-Message-State: APjAAAUppxtEwIrmoj3iX4LW8LXbvDf5uccB5B0nxP6eeO8wjVZnZ1go
 1CZq0QiRCv7IDYUjzLMt2POOpLwlv7w=
X-Google-Smtp-Source: APXvYqwJSuCj7yXW5zQ1fzUvytfkh6teQkiqVhGTdxYgtt7zdbGI3edhTDLrLn4/mjn+5YS1SE1Edw==
X-Received: by 2002:a50:9e01:: with SMTP id z1mr1037183ede.232.1576637165200; 
 Tue, 17 Dec 2019 18:46:05 -0800 (PST)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com.
 [209.85.221.49])
 by smtp.gmail.com with ESMTPSA id s12sm36898eja.79.2019.12.17.18.46.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Dec 2019 18:46:04 -0800 (PST)
Received: by mail-wr1-f49.google.com with SMTP id g17so615959wro.2;
 Tue, 17 Dec 2019 18:46:04 -0800 (PST)
X-Received: by 2002:adf:81e3:: with SMTP id 90mr1136437wra.23.1576637164034;
 Tue, 17 Dec 2019 18:46:04 -0800 (PST)
MIME-Version: 1.0
References: <20191214175447.25482-1-tiny.windzz@gmail.com>
In-Reply-To: <20191214175447.25482-1-tiny.windzz@gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 18 Dec 2019 10:45:52 +0800
X-Gmail-Original-Message-ID: <CAGb2v67kgMcV5hhURYzMCggeTSnOoupmYKDPViS0tiYFSxOfjA@mail.gmail.com>
Message-ID: <CAGb2v67kgMcV5hhURYzMCggeTSnOoupmYKDPViS0tiYFSxOfjA@mail.gmail.com>
Subject: Re: [PATCH 01/10] soc: sunxi: convert to
 devm_platform_ioremap_resource
To: Yangtao Li <tiny.windzz@gmail.com>, Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_184608_108660_5A3AFED4 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-mips@vger.kernel.org,
 Kevin Hilman <khilman@baylibre.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, leoyang.li@nxp.com,
 "moderated list:ARM/SAMSUNG EXYNO..." <linux-samsung-soc@vger.kernel.org>,
 Andy Gross <agross@kernel.org>, khalasa@piap.pl, Kukjin Kim <kgene@kernel.org>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Jun Nie <jun.nie@linaro.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Dec 15, 2019 at 1:54 AM Yangtao Li <tiny.windzz@gmail.com> wrote:
>
> Use devm_platform_ioremap_resource() to simplify code.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>

Acked-by: Chen-Yu Tsai <wens@csie.org>

> ---
>  drivers/soc/sunxi/sunxi_sram.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/soc/sunxi/sunxi_sram.c b/drivers/soc/sunxi/sunxi_sram.c
> index 1b0d50f36349..f73fbcc73f51 100644
> --- a/drivers/soc/sunxi/sunxi_sram.c
> +++ b/drivers/soc/sunxi/sunxi_sram.c
> @@ -320,7 +320,6 @@ static struct regmap_config sunxi_sram_emac_clock_regmap = {
>
>  static int sunxi_sram_probe(struct platform_device *pdev)
>  {
> -       struct resource *res;
>         struct dentry *d;
>         struct regmap *emac_clock;
>         const struct sunxi_sramc_variant *variant;
> @@ -331,8 +330,7 @@ static int sunxi_sram_probe(struct platform_device *pdev)
>         if (!variant)
>                 return -EINVAL;
>
> -       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -       base = devm_ioremap_resource(&pdev->dev, res);
> +       base = devm_platform_ioremap_resource(pdev, 0);
>         if (IS_ERR(base))
>                 return PTR_ERR(base);
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
