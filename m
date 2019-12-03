Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAD810F7F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 07:42:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/8PiV3DghBN8tOQOTlkacnP3+656shS//kXFtRpiDVY=; b=jWCrWebB2gSSCy
	JEQp1F6Q+jEdOR3OlO7rWPoUcokMc9+2C2i0NibeqmB2e5rEVjqzZgVitVvRtEw2zWPijo3Qq3XrL
	01rriteu0vHi8wzpmwYdaqAx3DbwrnGZggq5puy37yevc4N7QaPOCmcK5SEu5qrWXiLeKwPVq1nlA
	/7Tr5PElXmX1aN2O5sSzGoNVKy0vcqjw/iIixnPGuVwo3n43zdiEPSDgpWNTB4ej5XsWeDLN52p+1
	NIS7zlL581iCO17mEgigvkWPspEkgS+SGQsJGwaCs/iEXe1FL9LrjrOqp4AJw4ozVqCRvOAAx1Q+T
	asM4nnxXnYV2SggkIMGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic1tE-0001LF-07; Tue, 03 Dec 2019 06:42:28 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic1t6-0001KJ-9B
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 06:42:21 +0000
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com
 [209.85.217.43]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id xB36fxQ3031739
 for <linux-arm-kernel@lists.infradead.org>; Tue, 3 Dec 2019 15:41:59 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com xB36fxQ3031739
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1575355319;
 bh=d1TaPWKkweQ1rY/9jQKGxR8RbctwUl4ZdBH262gE6Ek=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=SwoYHX5ogHo9RL8Nc+N0vXtoMdM8NTbmdzHaNGMQ8mkQAHOL/krz6QWLr4Vn72MfY
 OSPm4OaSQgfPeghIdjSFPVKurVV4Xy94Oj7MQBwgH6ptJ3vMjxhRLLFZXS4PWfmiUA
 H+3M1wPKDdPRfYCJbv7nrR6FEeXsW80r09rOsxFGVYzix4//vA5PBuTlv4w82VJSwZ
 M5twJrrM7vL8yd/iXmHzDlkHiEL/XxvPOAOlfcQLae//PzwCdFxrjI3Ydqbt6OlzOj
 iOEKDYVL4rR3wZYDxQ1Q7KHFhcrD7JIXTDhePJ04lvB2YzzFcbU8l0X3mVkYKj0Htg
 ARgPMppx73Zbg==
X-Nifty-SrcIP: [209.85.217.43]
Received: by mail-vs1-f43.google.com with SMTP id l24so1626989vsr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 22:41:59 -0800 (PST)
X-Gm-Message-State: APjAAAWVD4/W8aS6v4Ay+/xLXgTyj22VkgwKiC2CwfyK5f0PxGt7O6gA
 Yu5bcOrkBAu91BGfIuOhJRtntwFynVTF0EbMztc=
X-Google-Smtp-Source: APXvYqzLsiH4HRQY9QqmGR/SA97yO7NrrmjdmBWFjksc9y+rkTjK3+4kSlw3fdNk79ycV87KfqHrKT+gli71BIb+qN8=
X-Received: by 2002:a67:f6c2:: with SMTP id v2mr1763077vso.54.1575355318341;
 Mon, 02 Dec 2019 22:41:58 -0800 (PST)
MIME-Version: 1.0
References: <1575000968-19434-1-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1575000968-19434-1-git-send-email-hayashi.kunihiko@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 3 Dec 2019 15:41:22 +0900
X-Gmail-Original-Message-ID: <CAK7LNARjGtt-Ee_seet=nB7K0AVA8x4Q+bFRm=1A_aLn7Qancg@mail.gmail.com>
Message-ID: <CAK7LNARjGtt-Ee_seet=nB7K0AVA8x4Q+bFRm=1A_aLn7Qancg@mail.gmail.com>
Subject: Re: [PATCH] clk: uniphier: Add SCSSI clock gate for each channel
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_224220_541666_0C413548 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 29, 2019 at 1:16 PM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:
>
> SCSSI has clock gates for each channel in the SoCs newer than Pro4,
> so this adds missing clock gates for channel 1, 2 and 3. And more, this
> moves MCSSI clock ID after SCSSI.
>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---


Fixes: ff388ee36516 ("clk: uniphier: add clock frequency support for SPI")

Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>




>  drivers/clk/uniphier/clk-uniphier-peri.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/clk/uniphier/clk-uniphier-peri.c b/drivers/clk/uniphier/clk-uniphier-peri.c
> index 9caa529..3e32db9 100644
> --- a/drivers/clk/uniphier/clk-uniphier-peri.c
> +++ b/drivers/clk/uniphier/clk-uniphier-peri.c
> @@ -18,8 +18,8 @@
>  #define UNIPHIER_PERI_CLK_FI2C(idx, ch)                                        \
>         UNIPHIER_CLK_GATE("i2c" #ch, (idx), "i2c", 0x24, 24 + (ch))
>
> -#define UNIPHIER_PERI_CLK_SCSSI(idx)                                   \
> -       UNIPHIER_CLK_GATE("scssi", (idx), "spi", 0x20, 17)
> +#define UNIPHIER_PERI_CLK_SCSSI(idx, ch)                               \
> +       UNIPHIER_CLK_GATE("scssi" #ch, (idx), "spi", 0x20, 17 + (ch))
>
>  #define UNIPHIER_PERI_CLK_MCSSI(idx)                                   \
>         UNIPHIER_CLK_GATE("mcssi", (idx), "spi", 0x24, 14)
> @@ -35,7 +35,7 @@ const struct uniphier_clk_data uniphier_ld4_peri_clk_data[] = {
>         UNIPHIER_PERI_CLK_I2C(6, 2),
>         UNIPHIER_PERI_CLK_I2C(7, 3),
>         UNIPHIER_PERI_CLK_I2C(8, 4),
> -       UNIPHIER_PERI_CLK_SCSSI(11),
> +       UNIPHIER_PERI_CLK_SCSSI(11, 0),
>         { /* sentinel */ }
>  };
>
> @@ -51,7 +51,10 @@ const struct uniphier_clk_data uniphier_pro4_peri_clk_data[] = {
>         UNIPHIER_PERI_CLK_FI2C(8, 4),
>         UNIPHIER_PERI_CLK_FI2C(9, 5),
>         UNIPHIER_PERI_CLK_FI2C(10, 6),
> -       UNIPHIER_PERI_CLK_SCSSI(11),
> -       UNIPHIER_PERI_CLK_MCSSI(12),
> +       UNIPHIER_PERI_CLK_SCSSI(11, 0),
> +       UNIPHIER_PERI_CLK_SCSSI(12, 1),
> +       UNIPHIER_PERI_CLK_SCSSI(13, 2),
> +       UNIPHIER_PERI_CLK_SCSSI(14, 3),
> +       UNIPHIER_PERI_CLK_MCSSI(15),
>         { /* sentinel */ }
>  };
> --
> 2.7.4
>

-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
