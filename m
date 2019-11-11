Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9847F6BEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 01:17:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k7sYvWkyX+qXVG5Bs67xuPUt8WUVFfQWBfvWDJKYRPg=; b=nln6SzLafYMu3N
	ldPzTfw/rCX5Nu4hjBv/hBYy+WeHabqXNt1iiI7/qFoc3C5vr+vBNBps5m9Nb9N1WIgj3Fph4YZ+N
	VJCqdbYyI2UEkCGXrvH19NIcc2LDjUQsIDh6yk63edm089sAltKWT/4ePbgpl6ApuQNFVlxJQr26J
	SzCGzZfBrYk7L1kWe+2REnIIltadYkYeWdeZyzC64jrUQlYuA0KwIs5kFM7BQ3chCwe8rr8Eua/EX
	4MsCHJpaVmZP/G7NKmxzQfbYtvRFRjls2ZdW2BgJ56/QxG+IC8VxMLD0W32py+YGwawq4ebIGk0ez
	2yiVjqLrDYHe8IFYZkzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTxOm-0007oK-Cw; Mon, 11 Nov 2019 00:17:40 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTxOd-0007nS-Ju; Mon, 11 Nov 2019 00:17:33 +0000
Received: by mail-ot1-x343.google.com with SMTP id r24so9828875otk.12;
 Sun, 10 Nov 2019 16:17:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OhsOaebOhYHxMqV94r7kcc7AguzKN+Auyp31Rb0JoVw=;
 b=VLqkOMy2tquWHF8n6MZVAyJAvFHR0phqMcphKQflrGGjpZIOOMR1yBz1OFjChXHI08
 LOOF0UBMVw5bh3yyxo1H0G6j0qq+FCiK+BHRqoFh0AVkGS4xuOUs9QvI+zhdvSSJFQU+
 sexHjtR9jcULiSuImK3zbEdSPqs0rWuHD4Af/CrAuevFmjuKp+8S2QV9rSt+mMUwyCuA
 YwC7xjT8znKBbbIVHWk5TFFDHvftedEqKxf3b5KumvKRwGiaQlNPdl4tA9UNVtOSnL2o
 OvzHWnjaVU7U3UEKq3OHVHyNbEFvo9PFDfwwR330hH1mKfxLMdED7OdK+CrDqM9LCFY4
 eiow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OhsOaebOhYHxMqV94r7kcc7AguzKN+Auyp31Rb0JoVw=;
 b=d7aHrGN94E8agbE/GcnY4/Qa+REcqWeuny4P/akAjKiLhTaoz+pX3uHJsFGLumGReT
 mgelvceYo5GzMqKTASyOY2TzkSyYPTrnwywJDJLX3Zhw9JzQJM/XWQxtZgawjAM/M8oe
 XLv4m8LHe8XvtvlmE3BO9rzlTD4kULKUQZzR2wDsuRCxsppNYDZ6q48q0RHSJmWGfY6h
 CifwNv707X+M4gx6WKWO8D3yu2XUGRc2Rxf7cquc9p4zw4WiWpxVhzRj2+3yzfcW4W8x
 NTkvy4m0J4bu70+MxYS+KVtjdR7epOOcb3QF7xx01nc7+NSrKG9hc/XX1QHn2A0cpV3u
 QV1Q==
X-Gm-Message-State: APjAAAX9IS7unVjOFbt8aQ8FD9LnOOZWLc3nNROYinY2kgmlnAwRp29q
 APM7gSMyY1pivZpGFsDOEaGkyFrSFfs03uOY96E=
X-Google-Smtp-Source: APXvYqxomRIDMbxqMNubEdeNxZm86L5SYvCuTsFQa329n7usrb8jndKJc4nwmJinhIsr7BKQK5hy3XbrWXUiVrMroM0=
X-Received: by 2002:a9d:4b86:: with SMTP id k6mr18409215otf.353.1573431448777; 
 Sun, 10 Nov 2019 16:17:28 -0800 (PST)
MIME-Version: 1.0
References: <20190907174833.19957-1-katsuhiro@katsuster.net>
In-Reply-To: <20190907174833.19957-1-katsuhiro@katsuster.net>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Sun, 10 Nov 2019 16:17:02 -0800
Message-ID: <CA+E=qVdvKxzFcU-09Ucn1Fr0FdkwSsPcLr8vPn2wsu6-DD1gqg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add analog audio nodes on
 rk3399-rockpro64
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_161731_679894_8ABA6928 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 7, 2019 at 10:48 AM Katsuhiro Suzuki
<katsuhiro@katsuster.net> wrote:
>
> This patch adds audio codec (Everest ES8316) and I2S audio nodes for
> RK3399 RockPro64.

Hi Katsuhiro,

I tested your patch with my rockpro64 on 5.4-rc6 which has your other
patches to es8316 driver, but apparently it doesn't work.

'alsamixer' complains 'cannot load mixer controls: No such device or
address' and if I try to play audio with mpg123 it pretends that it
plays something but there's no sound.

Any idea what can be wrong?

Regards,
Vasily

> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> ---
>  .../boot/dts/rockchip/rk3399-rockpro64.dts    | 28 +++++++++++++++++++
>  1 file changed, 28 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> index 0401d4ec1f45..8b1e6382b140 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> @@ -81,6 +81,12 @@
>                 reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
>         };
>
> +       sound {
> +               compatible = "audio-graph-card";
> +               label = "rockchip,rk3399";
> +               dais = <&i2s1_p0>;
> +       };
> +
>         vcc12v_dcin: vcc12v-dcin {
>                 compatible = "regulator-fixed";
>                 regulator-name = "vcc12v_dcin";
> @@ -470,6 +476,20 @@
>         i2c-scl-rising-time-ns = <300>;
>         i2c-scl-falling-time-ns = <15>;
>         status = "okay";
> +
> +       es8316: codec@11 {
> +               compatible = "everest,es8316";
> +               reg = <0x11>;
> +               clocks = <&cru SCLK_I2S_8CH_OUT>;
> +               clock-names = "mclk";
> +               #sound-dai-cells = <0>;
> +
> +               port {
> +                       es8316_p0_0: endpoint {
> +                               remote-endpoint = <&i2s1_p0_0>;
> +                       };
> +               };
> +       };
>  };
>
>  &i2c3 {
> @@ -505,6 +525,14 @@
>         rockchip,playback-channels = <2>;
>         rockchip,capture-channels = <2>;
>         status = "okay";
> +
> +       i2s1_p0: port {
> +               i2s1_p0_0: endpoint {
> +                       dai-format = "i2s";
> +                       mclk-fs = <256>;
> +                       remote-endpoint = <&es8316_p0_0>;
> +               };
> +       };
>  };
>
>  &i2s2 {
> --
> 2.23.0.rc1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
