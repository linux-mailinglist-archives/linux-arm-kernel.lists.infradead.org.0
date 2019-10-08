Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4014CCFA23
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 14:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AzWpYPuYatK6aPJEeWNy4Qe3UTIOEZLjOF+pzMasWb0=; b=rzckmjs7OnE0BY
	A8RFbIzhKZ/wBH73jfyPJzeC4Z+epod9urAJ8oAT2TSmY3K4g9NhEbwpryUedOezNHUAeKqU60+19
	nD+Gvl07bP/bUktmVD3zm4iFrruyrT4XCzSOBsqMaF6LQwb4j+CQrmJ2ziLMQ2sk+0JZ45iK4IyK4
	+4wOPfDZfiY1BCjOqOalZ8tq35Whc0M6OWOwY8OMUjBtDpWBjWkSNO69znhG6bJyQZPswTy8eRWcl
	pG/upT8pJbfjhNkuIG6zgaqk4xlT5Ed2AIMuwXgtUCPSsmXHxE7NdQv+Tc3ecKpOc0MXCQMwLCUB3
	zyw0MB832SdkbXT9jpPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHomu-00062m-BI; Tue, 08 Oct 2019 12:40:24 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHomY-0004uW-Er
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 12:40:04 +0000
Received: by mail-qt1-x843.google.com with SMTP id c4so12308146qtn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 05:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0jJTLY2axsts6GZT3PA6D788BPaMX3GUaWV0Vzd1RXM=;
 b=fydorapLglYueHDm9H8p4AT688wrHVmN/5BLYTckwzJV/hAERlr6H3K4qoiKBtFGyo
 Qqsz931IkrwgOJzNNIHLJ4B3AVscmOsqqQrfmBYgtSP2tKBChMznGpsmEugFmEbcT5KX
 SkpxY/1+OmNS7lpVyQHn1fjYhxCoKBBR8JLvo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0jJTLY2axsts6GZT3PA6D788BPaMX3GUaWV0Vzd1RXM=;
 b=X+Un7AdDGH/eqhvelq6s2DRIf4XF3SuMh/J5yAvCMHnjaQH8r9pq7TsKQBlI8eb6fO
 CnlSdkrMEkA1DmzZtUwxobc0sFq4+wuOqGBMaeMfQlNVO/H7hj8HKBQnnemzO8mtNY4l
 xGo4AKxytspwmugxaoxBJiNVmw88QEsSGLw4L5/yLvp+5ebCE3bkYVfSXel74SO+SWpU
 AZLUvVb8yK0Q7jDmTXygiBgXInBamzJWlY3AjM6VUFiqsUKzhQrheaYb4NjbaWsGu0Jg
 IuFX54LL7KlB6fzzVN5eOSYkP6v/qvbX+F5G5UoSV4qqvfmg9ZYrTbTioyO+DHz9+aff
 6nTQ==
X-Gm-Message-State: APjAAAUO/HWKCP11dIcyShTqa3/IeHXx54SW5v/OGsSu1Y1KEpYegQLO
 b4GeVQz3ss11MbpXk0iIJijZsDWFr2Q+DVazVtI=
X-Google-Smtp-Source: APXvYqyIRMp1F0ik7vkJep0KVirm5HNPl0oLZUOXJNQc+afvhAryjXpJ1n7wrnxW5Q1z+DRlElhn/MKulVSC3i9vSX0=
X-Received: by 2002:ac8:2e94:: with SMTP id h20mr36037220qta.234.1570538400593; 
 Tue, 08 Oct 2019 05:40:00 -0700 (PDT)
MIME-Version: 1.0
References: <20191008113553.13662-1-andrew@aj.id.au>
 <20191008113553.13662-3-andrew@aj.id.au>
In-Reply-To: <20191008113553.13662-3-andrew@aj.id.au>
From: Joel Stanley <joel@jms.id.au>
Date: Tue, 8 Oct 2019 12:39:49 +0000
Message-ID: <CACPK8XfSrKym55eQ91Lhf3wXtzCD5AH7P8t19jow2K-5JRb0ZA@mail.gmail.com>
Subject: Re: [PATCH 2/2] clk: ast2600: Add RMII RCLK gates for all four MACs
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_054002_547547_5F91B653 
X-CRM114-Status: GOOD (  17.93  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 8 Oct 2019 at 11:35, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> RCLK is a fixed 50MHz clock derived from HPLL/HCLK that is described by a
> single gate for each MAC.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

We could have mac12rclk and mac34rclk described in the device tree, as
was mentioned in previous reviews of the aspeed driver, but I think we
can defer that
rework until we rework the rest of the driver. Importantly, that won't
change the MAC bindings or the code that the drivers need to use.

Reviewed-by: Joel Stanley <joel@jms.id.au>


> ---
>  drivers/clk/clk-ast2600.c | 47 ++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 46 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/clk/clk-ast2600.c b/drivers/clk/clk-ast2600.c
> index 1c1bb39bb04e..3d6fc781fee0 100644
> --- a/drivers/clk/clk-ast2600.c
> +++ b/drivers/clk/clk-ast2600.c
> @@ -15,7 +15,7 @@
>
>  #include "clk-aspeed.h"
>
> -#define ASPEED_G6_NUM_CLKS             67
> +#define ASPEED_G6_NUM_CLKS             71
>
>  #define ASPEED_G6_SILICON_REV          0x004
>
> @@ -40,6 +40,9 @@
>
>  #define ASPEED_G6_STRAP1               0x500
>
> +#define ASPEED_MAC12_CLK_DLY           0x340
> +#define ASPEED_MAC34_CLK_DLY           0x350
> +
>  /* Globally visible clocks */
>  static DEFINE_SPINLOCK(aspeed_g6_clk_lock);
>
> @@ -485,6 +488,11 @@ static int aspeed_g6_clk_probe(struct platform_device *pdev)
>                 return PTR_ERR(hw);
>         aspeed_g6_clk_data->hws[ASPEED_CLK_SDIO] = hw;
>
> +       /* MAC1/2 RMII 50MHz RCLK */
> +       hw = clk_hw_register_fixed_rate(dev, "mac12rclk", "hpll", 0, 50000000);
> +       if (IS_ERR(hw))
> +               return PTR_ERR(hw);
> +
>         /* MAC1/2 AHB bus clock divider */
>         hw = clk_hw_register_divider_table(dev, "mac12", "hpll", 0,
>                         scu_g6_base + ASPEED_G6_CLK_SELECTION1, 16, 3, 0,
> @@ -494,6 +502,27 @@ static int aspeed_g6_clk_probe(struct platform_device *pdev)
>                 return PTR_ERR(hw);
>         aspeed_g6_clk_data->hws[ASPEED_CLK_MAC12] = hw;
>
> +       /* RMII1 50MHz (RCLK) output enable */
> +       hw = clk_hw_register_gate(dev, "mac1rclk-gate", "mac12rclk", 0,
> +                       scu_g6_base + ASPEED_MAC12_CLK_DLY, 29, 0,
> +                       &aspeed_g6_clk_lock);
> +       if (IS_ERR(hw))
> +               return PTR_ERR(hw);
> +       aspeed_g6_clk_data->hws[ASPEED_CLK_GATE_MAC1RCLK] = hw;
> +
> +       /* RMII2 50MHz (RCLK) output enable */
> +       hw = clk_hw_register_gate(dev, "mac2rclk-gate", "mac12rclk", 0,
> +                       scu_g6_base + ASPEED_MAC12_CLK_DLY, 30, 0,
> +                       &aspeed_g6_clk_lock);
> +       if (IS_ERR(hw))
> +               return PTR_ERR(hw);
> +       aspeed_g6_clk_data->hws[ASPEED_CLK_GATE_MAC2RCLK] = hw;
> +
> +       /* MAC1/2 RMII 50MHz RCLK */
> +       hw = clk_hw_register_fixed_rate(dev, "mac34rclk", "hclk", 0, 50000000);
> +       if (IS_ERR(hw))
> +               return PTR_ERR(hw);
> +
>         /* MAC3/4 AHB bus clock divider */
>         hw = clk_hw_register_divider_table(dev, "mac34", "hpll", 0,
>                         scu_g6_base + 0x310, 24, 3, 0,
> @@ -503,6 +532,22 @@ static int aspeed_g6_clk_probe(struct platform_device *pdev)
>                 return PTR_ERR(hw);
>         aspeed_g6_clk_data->hws[ASPEED_CLK_MAC34] = hw;
>
> +       /* RMII3 50MHz (RCLK) output enable */
> +       hw = clk_hw_register_gate(dev, "mac3rclk-gate", "mac34rclk", 0,
> +                       scu_g6_base + ASPEED_MAC34_CLK_DLY, 29, 0,
> +                       &aspeed_g6_clk_lock);
> +       if (IS_ERR(hw))
> +               return PTR_ERR(hw);
> +       aspeed_g6_clk_data->hws[ASPEED_CLK_GATE_MAC3RCLK] = hw;
> +
> +       /* RMII4 50MHz (RCLK) output enable */
> +       hw = clk_hw_register_gate(dev, "mac4rclk-gate", "mac34rclk", 0,
> +                       scu_g6_base + ASPEED_MAC34_CLK_DLY, 30, 0,
> +                       &aspeed_g6_clk_lock);
> +       if (IS_ERR(hw))
> +               return PTR_ERR(hw);
> +       aspeed_g6_clk_data->hws[ASPEED_CLK_GATE_MAC4RCLK] = hw;
> +
>         /* LPC Host (LHCLK) clock divider */
>         hw = clk_hw_register_divider_table(dev, "lhclk", "hpll", 0,
>                         scu_g6_base + ASPEED_G6_CLK_SELECTION1, 20, 3, 0,
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
