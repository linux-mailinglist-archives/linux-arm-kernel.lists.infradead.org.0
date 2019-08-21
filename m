Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59864975E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 11:19:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FrNyPlvMqa0azfDYD7bM6fNuauqrfSB3bLEnCPt8gZo=; b=ogM3Y0cgLLTwBA
	L/oxUYPklZ4sFM2R9vPkYh8S/SWOzQazSOrdY5n2jJVrnrmNXz1ohAtlFjAYBddHsnJlG7KNKd/Uj
	7aLcIXNWDRTm541fEfgyrVwgwyXhqhgz8pabF6zVhfpT+aUKtFZJaEhgGtTs8peSMdMdrqGQSBK2H
	RX16UxmRiJFnYywSVjWLGTU+Mmg9K/E9aCLafpKj3swWvQIrlRYKk9lQoJGO2MjqVuBvffAYI90l1
	Ih9G8rbbossO33coIJPVZ4VENMzzBYUz++J8NlF48KcNEpp4uuBJAsBZuViG20Y3204+VbOfGnWGO
	j4aZ7HK5lkwd1m7a/CLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0MmS-0005ho-FU; Wed, 21 Aug 2019 09:19:48 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Mlz-0005hK-Qm
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 09:19:21 +0000
Received: by mail-lj1-x242.google.com with SMTP id h15so1427722ljg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 02:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7tEQ31WOSLuQ3JEBF9cV8gIJ36Fz5CZ1Zb7GBPfj32s=;
 b=NmFr7nxDxcBSv+uW4e7+vOU6sf2roLBf2V03NMTBhvA8HsbJuDjuF6SfhiqpB9nTHE
 fR+OaPMsCKLJ7NobySSrkj3ygxdF+UbQFTYp10jJwkYhe3u7d4VDj0SNJHOsgLX2bNKC
 UCj73zuWvfPcmvRIg1dGnFzky8Ud54Lzq3z0YH3+ZD4ZJgK6cC/hcUvBcrx3IpKzxFAW
 AKK+8ukGQkwMaiKxjiW91h3sMTIz5qNaUWdiQAU8rS+YGdVuRqv8VNXbaPlCyHFApjMG
 6rRc9FbKry+rKOrUZtXHAYBymjAL11ozmQrBmF9WdBY2Z3QOKqPBC40ikCNvC/qqv5Gf
 RU5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7tEQ31WOSLuQ3JEBF9cV8gIJ36Fz5CZ1Zb7GBPfj32s=;
 b=jOqXSwqO4Ay0BEkYHCTsctwLVioViUah5XBnlwGGUZtdRzwPLkqZDmw87v8t5pdWjt
 efN9mGQ+8UMQJfQzHMd4a+NZAVaYbr34RGCz2JTGAO+AhjCX+vW2R4X7Cww/MvZa8Xjb
 lYOtwvkXjP1uIfTBAFEBkJUiu827jneJrUxdwCEvZKjxA3f32eus1JQRMJ2UfunT71ho
 nJCI94afZ8WTR2mqaeo5n6RBCBhNHasADVX/WUQ72drVGCnca8eoQKwsneqrAt9rUWka
 LUE8NMkuTTSoXK6Ra6/tYaQsNK3zqEQ11TG4PnVyuP6qx4HBeqGqKFaY42KlLOPFoVAd
 7bSg==
X-Gm-Message-State: APjAAAVb+kZ7p5i/sZ+4YP+IqrUcSpDx/2m6FOcsNJhBWuUDc6/QvFdh
 Y6DjolU1HdYUNLN3k8MF9Y85UfdVrQQcDmiemgg=
X-Google-Smtp-Source: APXvYqyMvMP7WpKv2AQSCUyxhmpTSTKtEUxHamxuC1vWlEJy7y4MvakGKiV9JeryByhHBufUiM7n40VZzjuQKwrf178=
X-Received: by 2002:a2e:5bc6:: with SMTP id m67mr15204586lje.53.1566379158109; 
 Wed, 21 Aug 2019 02:19:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-10-codekipper@gmail.com>
In-Reply-To: <20190814060854.26345-10-codekipper@gmail.com>
From: Code Kipper <codekipper@gmail.com>
Date: Wed, 21 Aug 2019 11:19:05 +0200
Message-ID: <CAEKpxB=9NNoZgZoY_GpcEuDYoMUGzb+ATgZOSM64qy9tirC_MQ@mail.gmail.com>
Subject: Re: [PATCH v5 09/15] clk: sunxi-ng: h6: Allow I2S to change parent
 rate
To: Maxime Ripard <maxime.ripard@free-electrons.com>,
 Chen-Yu Tsai <wens@csie.org>, linux-sunxi <linux-sunxi@googlegroups.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_021919_875615_8C9B5AB6 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 14 Aug 2019 at 08:09, <codekipper@gmail.com> wrote:
>
> From: Jernej Skrabec <jernej.skrabec@siol.net>
>
> I2S doesn't work if parent rate couldn't be change. Difference between
> wanted and actual rate is too big.
>
> Fix this by adding CLK_SET_RATE_PARENT flag to I2S clocks.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Signed-off-by: Marcus Cooper <codekipper@gmail.com>

> ---
>  drivers/clk/sunxi-ng/ccu-sun50i-h6.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-h6.c b/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
> index aebef4af9861..d89353a3cdec 100644
> --- a/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
> +++ b/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
> @@ -505,7 +505,7 @@ static struct ccu_div i2s3_clk = {
>                 .hw.init        = CLK_HW_INIT_PARENTS("i2s3",
>                                                       audio_parents,
>                                                       &ccu_div_ops,
> -                                                     0),
> +                                                     CLK_SET_RATE_PARENT),
>         },
>  };
>
> @@ -518,7 +518,7 @@ static struct ccu_div i2s0_clk = {
>                 .hw.init        = CLK_HW_INIT_PARENTS("i2s0",
>                                                       audio_parents,
>                                                       &ccu_div_ops,
> -                                                     0),
> +                                                     CLK_SET_RATE_PARENT),
>         },
>  };
>
> @@ -531,7 +531,7 @@ static struct ccu_div i2s1_clk = {
>                 .hw.init        = CLK_HW_INIT_PARENTS("i2s1",
>                                                       audio_parents,
>                                                       &ccu_div_ops,
> -                                                     0),
> +                                                     CLK_SET_RATE_PARENT),
>         },
>  };
>
> @@ -544,7 +544,7 @@ static struct ccu_div i2s2_clk = {
>                 .hw.init        = CLK_HW_INIT_PARENTS("i2s2",
>                                                       audio_parents,
>                                                       &ccu_div_ops,
> -                                                     0),
> +                                                     CLK_SET_RATE_PARENT),
>         },
>  };
>
> --
> 2.22.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
