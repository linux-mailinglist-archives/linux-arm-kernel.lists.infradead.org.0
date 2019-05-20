Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E32A823F58
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 19:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=69KlAnl7f76JNZAxEfIkLWmqLysKHaRJ582d783qUL8=; b=TwZbGMP5l+1H8z
	Om0a0BcK4ZMKpPvQ4CiT1oDSToH98sSIOE0Q0OdSuURBaN5zQHBlYi/HFJCUZhRH8FVbJq7pHjiGL
	yEO7ZczbNlw0+5S86xNj1qn6g/I+5gk+5ks+Jqov9QiaQJUTeKigYa9GdB33ycEjpDEsIpgUlpwdR
	7bxXXtszFMpWPLWF76RPHCUwjpO0KW6SR4NJCWgNOI4cS9MmCMCqYgWLr7xiJFGcIzdSv0KjPZReS
	fFEtKDDyWOyD1Mcop696Do/BdarA0/PlyI/ceu6qMq8V+2jJzeHidJddZMspbjHziL1hqE2eORgSY
	TGwQbhYHmK5+SsnR5Qrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmMc-0002cq-CI; Mon, 20 May 2019 17:46:18 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmMU-0002bc-Ee; Mon, 20 May 2019 17:46:11 +0000
Received: by mail-oi1-x241.google.com with SMTP id z65so10625232oia.11;
 Mon, 20 May 2019 10:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=38zPeA6Fhr1ZBy+vMwAUUe+FH+u6lYEDinxTgKe8jfU=;
 b=mBg+n9lZrifWmIchIxvK5kTN9EZwTSDxUFaFtnFoZKXnMyAV+Iq8IUegSYcgBtLm/g
 xsXFcWOfOKQs2+ypiQpWppY/vAu2CV2U8owXBxTsSqWamFX/2gJAVMz7wWntmFQwQYpA
 jUX8MzYzGkiUPjn9u2OpVvRLaX736sRYEsvN9bTdvQ+VMb1+7KhLPGrL+faMgFtw8YhP
 5ml/388lR3IYyl00/xxscQXfHOMKX0tYZ0gkjA90hVIKiUDy7JkEyJDUzas6QF1lvuGU
 9fAfkaD42hXRWZZNCoFNp2hqGegrwjzSjOp4KKFhfVajaPIGnsGrYehV7UQxIY2wjr6T
 chgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=38zPeA6Fhr1ZBy+vMwAUUe+FH+u6lYEDinxTgKe8jfU=;
 b=rhpfEgIsNGYrRL2PfrOhTYz6pPcqjwCjxzDDHLIY3QUNenCGm65EZ/wTzEQHfFyI3p
 v8BfkqrWRYOGrCQ4Z7Lim720kUKslazKMu0Fw3rBHJHcT5UmYsieeaAtBkG1m25Y7jB7
 4sfLnc3a7ia/3KcLGRHCXDNH8y7fHiSafBcP6S09Dn6ZRmvJpkP91Bi3SYysGbP+jA5a
 RYmYQpX1hTfHt2DIiSyend2kuK8w2kUeTWYDXtCtTBoCcSx0WyulNsb/AvnoaCyzr2R/
 X07eBjHEnylh7SCAxZ9NVS1sVd5tj8jZtK1UHLwhxiryKF3SonJJhBRe3IH658P8i68t
 0d+A==
X-Gm-Message-State: APjAAAX9UMg9cb3Ua9Y3LK2EFSvZ9rpDv/fyRmWTYEhBK3h8XTj5k8n+
 qqTq3Y0NLCGLMRzFj8NAtewBokP6tgLUFPWwuLT2BjYFTAk=
X-Google-Smtp-Source: APXvYqyuYlVtOuX+Lww9+dN0Mn8HNZ5jS8KNZEF3euwLnF9UrxtHXooz3S4Rbr6amOdAIBoCw8MEvTyFaXOkBBVDrsE=
X-Received: by 2002:aca:5b06:: with SMTP id p6mr248920oib.129.1558374369565;
 Mon, 20 May 2019 10:46:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190520134817.25435-1-narmstrong@baylibre.com>
 <20190520134817.25435-4-narmstrong@baylibre.com>
In-Reply-To: <20190520134817.25435-4-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 20 May 2019 19:45:58 +0200
Message-ID: <CAFBinCD6wJnYd3-E=kS6WCZLFebV9JYk-GybBxoMA8qQqGfSHw@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: meson: g12a: Add hwrng node
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_104610_509273_3EB886A8 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Mon, May 20, 2019 at 3:49 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> The Amlogic G12A has the hwrng module in an unknown "EFUSE" bus.
>
> The hwrng is not enabled on the vendor G12A DTs, but is enabled on
> next generation SM1 SoC family sharing the exact same memory mapping.
>
> Let's add the "EFUSE" bus and the hwrng node.
>
> This hwrng has been checked with the rng-tools rngtest FIPS tool :
> rngtest: starting FIPS tests...
> rngtest: bits received from input: 1630240032
> rngtest: FIPS 140-2 successes: 81436
> rngtest: FIPS 140-2 failures: 76
> rngtest: FIPS 140-2(2001-10-10) Monobit: 10
> rngtest: FIPS 140-2(2001-10-10) Poker: 6
> rngtest: FIPS 140-2(2001-10-10) Runs: 26
> rngtest: FIPS 140-2(2001-10-10) Long run: 34
> rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
> rngtest: input channel speed: (min=3.784; avg=5687.521; max=19073.486)Mibits/s
> rngtest: FIPS tests speed: (min=47.684; avg=52.348; max=52.835)Mibits/s
> rngtest: Program run time: 30000987 microseconds
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
> index 8fcdd12f684a..19ef6a467d63 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
> @@ -197,6 +197,19 @@
>                                 };
>                         };
>
> +                       apb_efuse: bus@30000 {
> +                               compatible = "simple-bus";
> +                               reg = <0x0 0x30000 0x0 0x1000>;
the public S922X datasheet lists the range as FF630000 - FF631FFF
that translates to a size of 0x2000, which the vendor kernel
(kernel/aml-4.9/arch/arm64/boot/dts/amlogic/mesong12a.dtsi from
buildroot-openlinux-A113-201901) seems to use as well:
  io_efuse_base{
    reg = <0x0 0xff630000 0x0 0x2000>;
  };

where did you take the size from?

> +                               #address-cells = <2>;
> +                               #size-cells = <2>;
> +                               ranges = <0x0 0x0 0x0 0x30000 0x0 0x1000>;
(see reg property above)

> +
> +                               hwrng: rng {
this should be rng@218


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
