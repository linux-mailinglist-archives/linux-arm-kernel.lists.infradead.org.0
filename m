Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7B6183E5C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 02:09:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RgMZpYr1wx/zIJ5Oi2JLfkJran2cQkr8zYZlXdNgaCs=; b=i0LWYXDBTwULQ7
	2ElZUDf8UdGBEjTZqUBYqA5TmBC55JRY2cp3UVYz2jgn7ctVnT+AFoSlk3COXOk/rkslrFxJPS2I5
	n277tTQBu/XO61fIR/XbyqkjDnmNxbHDqAE+QH3tOplRKM1n3bhpByqo+6eh+X4HTaitfJ9sa3rbO
	knr8rQ39v6FDVWsjhfnyv+JFgQ9VCu5jDyYysj6RyETFZknXW2eetg5DHGk3tRMEa+XZkHyFze37m
	9TzhBo3Xbw6h4GJFbWs1juHM5U1IM5h1N9M9su8BnYJHEV3Iwfik4nv6BcW/pchTitzo8l6nCehk6
	9FiMGh7V1W8SU0rOe/YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCYpg-0004HL-OI; Fri, 13 Mar 2020 01:09:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCYpW-0004Gz-Qk; Fri, 13 Mar 2020 01:09:40 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 641AA20637;
 Fri, 13 Mar 2020 01:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584061778;
 bh=UYPz1qlE+Zrh/CUYv1EYC2BXtJL9mTAshrMUYOFb/20=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=cchNDvcp5xxo+4kktYIBl1aqjS0gJMnOJdEn09uE/82+DBNyz/X+RrSZl8jq0lPZP
 r9l0+uvv43KujDYCuDIIy/Gj9Kal/SYN6PFHv2j+siPAqv4/S3bn01YeBUYwCBH5aL
 XtueSHO0lPPwNI7yQWREmyFbDeAqdarMEvLibcKE=
MIME-Version: 1.0
In-Reply-To: <5a02a46e899abfca7257a725678f1131490e6b11.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <5a02a46e899abfca7257a725678f1131490e6b11.1582533919.git-series.maxime@cerno.tech>
Subject: Re: [PATCH 17/89] clk: bcm: rpi: Pass the clocks data to the firmware
 function
From: Stephen Boyd <sboyd@kernel.org>
To: Eric Anholt <eric@anholt.net>, Maxime Ripard <maxime@cerno.tech>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Date: Thu, 12 Mar 2020 18:09:37 -0700
Message-ID: <158406177763.149997.8595594316904810473@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_180938_888184_CCE5D662 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Maxime Ripard (2020-02-24 01:06:19)
> The raspberry_clock_property only takes the clock ID as an argument, but
> now that we have a clock data structure it makes more sense to just pass
> that structure instead.
> 
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/clk/bcm/clk-raspberrypi.c | 29 ++++++++++++++---------------
>  1 file changed, 14 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
> index e796dabbc641..3b2da62a72f5 100644
> --- a/drivers/clk/bcm/clk-raspberrypi.c
> +++ b/drivers/clk/bcm/clk-raspberrypi.c
> @@ -67,11 +67,12 @@ struct raspberrypi_firmware_prop {
>         __le32 disable_turbo;
>  } __packed;
>  
> -static int raspberrypi_clock_property(struct rpi_firmware *firmware, u32 tag,
> -                                     u32 clk, u32 *val)
> +static int raspberrypi_clock_property(struct rpi_firmware *firmware,
> +                                     struct raspberrypi_clk_data *data,

Can data be const?

> +                                     u32 tag, u32 *val)
>  {
>         struct raspberrypi_firmware_prop msg = {
> -               .id = cpu_to_le32(clk),
> +               .id = cpu_to_le32(data->id),
>                 .val = cpu_to_le32(*val),
>                 .disable_turbo = cpu_to_le32(1),
>         };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
