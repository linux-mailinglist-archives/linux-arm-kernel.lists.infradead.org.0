Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67847170ECF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 04:03:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HGBkbwJDUKAGPZvh1wNAhjpGXcXGRZjQg7n7P3zl52A=; b=pt5kgBf9l+6o8a
	pp5JqUvXpd44oZEaPYCugLOuyRtCjN3mOiM9rwMf3QXaD3Pkq5Ao6iA3ILSYRQoVMsPVm7GecuFms
	N8iFzG2bTXswHqy2ppRGAW9zN0OzbAjjK6nBGNm0h3926EGDnxGcHftEuiRXU9D2DfVd4PEYonT9b
	zSmQCxowOMMeN3fEgPppbUlM01A7/E0+q2ruSLVd3YqyVJRyleg9whRlKsDWWNZqSW+iz5/reLHjT
	0b0Tf5wKoQ3c8UfgP3/paMHD608/cdsOoXUBC7lbm7PP8k0lBm5XzJj9zZCqLwXFALGNE34ipHPgV
	Jy76W2JRvZSQ2s3UJsJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j79SS-0006i8-95; Thu, 27 Feb 2020 03:03:28 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j79SI-0006hT-0T
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 03:03:19 +0000
Received: by mail-ed1-f66.google.com with SMTP id dm3so1472519edb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 19:03:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gtHlgLRX0Ly1dpjJoNOMTYupoReKd7p9hU8mplQI2J0=;
 b=iOkBcgWzgAoprgyUPxb3Xw4dG04BEY/GafsMOuWRo3wS7xvqQXO8Ed4u8eHELb+lmx
 0chSyIsGCB3HMm3zaWxGCJXMpu1bvf8jFddUI2eRJ6WHsenC8b4n78sutEm1N1PzRUva
 k5UOJRCKV/crQ30Xnh6/AtT4kRy3oTeall03IF3rrbhQcJ2L7xEObRHyeKNvejK8Z7rt
 KIoJaGJBDCcLUyzG0SX47nCZhngyoYuO6VmQG4OOc/KA7PLK0yKHtjG0XDVoXFqxr09O
 num0b1APsbbokuYhfBUgPeUCypj1xuH+MIQ3nq1W2mTDZP3wfq4RhX+TWMTgineEBmVF
 94tg==
X-Gm-Message-State: APjAAAUOKzKbao6xiZyfpG1C0Tb0zHg8xSNCXn6WjKC5r+a3YmlbkAOi
 et8Bg6yQONjZxXT21Yil9rsEXQvQXTU=
X-Google-Smtp-Source: APXvYqyL483om2CYlReRUXRjxrtqLpanhgA2FYTD1VZMZXh7GF0GnolxWnURBbpu+X3luE4PZITWcA==
X-Received: by 2002:a17:906:7690:: with SMTP id
 o16mr1701480ejm.43.1582772595432; 
 Wed, 26 Feb 2020 19:03:15 -0800 (PST)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com.
 [209.85.221.45])
 by smtp.gmail.com with ESMTPSA id e21sm264610eds.36.2020.02.26.19.03.14
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 Feb 2020 19:03:15 -0800 (PST)
Received: by mail-wr1-f45.google.com with SMTP id z15so1506533wrl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 19:03:14 -0800 (PST)
X-Received: by 2002:a5d:4a04:: with SMTP id m4mr2035871wrq.104.1582772594580; 
 Wed, 26 Feb 2020 19:03:14 -0800 (PST)
MIME-Version: 1.0
References: <20200226183316.26159-1-mans@mansr.com>
In-Reply-To: <20200226183316.26159-1-mans@mansr.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 27 Feb 2020 11:03:02 +0800
X-Gmail-Original-Message-ID: <CAGb2v67ka=7n0BHw_UDY4AH+PmvEJDTrr8JZUB2e5jCXdgSq3Q@mail.gmail.com>
Message-ID: <CAGb2v67ka=7n0BHw_UDY4AH+PmvEJDTrr8JZUB2e5jCXdgSq3Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: sunxi: h3/h5: add r_pwm node
To: Mans Rullgard <mans@mansr.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_190318_053839_F353E74D 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
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
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 2:33 AM Mans Rullgard <mans@mansr.com> wrote:
>
> There is a second PWM unit available in the PL I/O block.
> Add a node and pinmux definition for it.
>
> Signed-off-by: Mans Rullgard <mans@mansr.com>
> ---
>  arch/arm/boot/dts/sunxi-h3-h5.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/arch/arm/boot/dts/sunxi-h3-h5.dtsi b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
> index 107eeafad20a..1842c9f12c36 100644
> --- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
> +++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
> @@ -871,6 +871,19 @@
>                                 pins = "PL0", "PL1";
>                                 function = "s_i2c";
>                         };
> +
> +                       r_pwm_pins: r-pwm-pins {

Since it's just one pin, you could use the singular form instead.
And also set it as the default.

With that,

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

> +                               pins = "PL10";
> +                               function = "s_pwm";
> +                       };
> +               };
> +
> +               r_pwm: pwm@1f03800 {
> +                       compatible = "allwinner,sun8i-h3-pwm";
> +                       reg = <0x01f03800 0x8>;
> +                       clocks = <&osc24M>;
> +                       #pwm-cells = <3>;
> +                       status = "disabled";
>                 };
>         };
>  };
> --
> 2.25.0
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
