Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DC1160F30
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:49:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7DzW9hdsI3Y+/bHh1Cr5GrF0rJxTXDeT3DAxNGi46k4=; b=Sd6dlsFP0NpCOe
	UTaR+AVSQ8j+7wc9NVz5k34qzQfkSrvFDbYMErxfq4Vslvgno5dL1MrAO9lQWudNmIBUlRCPcsmU6
	Po9j+b/9BqLg4me8583AHj/GNIYw6az3MuzsufnjbZ+Uk6121x/aGAwVASy5ZLt4ttrzHZahq+cn6
	7XgwQ2uaLzhccyLm4HwjIN5rr3UAuqOettUZhVEttSzNsWZs18vlHrmmJ3JNLXpfNsTvI1JGfC3ze
	dIjPDfD2xJaEdidDATRFqUE6gxaWiKtAV22Knlio/1R6k4PVb43R628uIMk6IupvQ9IhSkLDwdcJA
	5X2ruXYZUTgWehLEFsAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3d25-0004i3-IG; Mon, 17 Feb 2020 09:49:41 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3d1v-0004ha-1K
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 09:49:32 +0000
Received: by mail-ed1-f65.google.com with SMTP id j17so19946629edp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 01:49:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hYpNZkgMugd7lxhUSqCjHE99UAOTKhfYi8V45j1F/S4=;
 b=J6Ly3sk4jY5J613EUXGy6GPHB990JcHVwbOMcEkSPJ6NTWqGGk8G3dKY8AgS0FCcii
 Cc6pw4OilVTpFyyc234jARcez0wvapXeAxSDGAtv8sRIlJWXCO0I6riQi1x1CQcBbTlt
 yysCjaoaw7WtdBilaz1W9JzQvvVhBwJwOfQNYPWVQ7QZs5Q4jjzgQjmKg5G89NmDbd8P
 UDw+6QgeEfXotBU7I0lV4hkAgTtnZgyBsBOyU1lXG9mExR2BD7p3XFi93t+cWT3z4qPy
 6U4X0ckkctk53Gjlgkb2dF5FdPL7i4ZmSHLhMVNb9T/JADTR0YnBr+yrRj8mGiQ/rQ0v
 mhIQ==
X-Gm-Message-State: APjAAAVvagQJuTQtNQxwWeuhOSAf+tE4JTsDiGjpsTN72hFO9Lj+I7mM
 ht0p8GM8+vjPfNez18ggifL7klIlckc=
X-Google-Smtp-Source: APXvYqxDpxzmjwtOsaJODA5XWLUsoC+EvPGi4v+HVesXdhWGOCtmN9mmQYQVjYbRC/NZRaIoe1S6yg==
X-Received: by 2002:a17:906:648d:: with SMTP id
 e13mr14287036ejm.73.1581932968977; 
 Mon, 17 Feb 2020 01:49:28 -0800 (PST)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com.
 [209.85.128.48])
 by smtp.gmail.com with ESMTPSA id x15sm456705edl.48.2020.02.17.01.49.28
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Feb 2020 01:49:28 -0800 (PST)
Received: by mail-wm1-f48.google.com with SMTP id a5so16420776wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 01:49:28 -0800 (PST)
X-Received: by 2002:a1c:dc85:: with SMTP id t127mr22802965wmg.16.1581932968319; 
 Mon, 17 Feb 2020 01:49:28 -0800 (PST)
MIME-Version: 1.0
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-2-samuel@sholland.org>
In-Reply-To: <20200217064250.15516-2-samuel@sholland.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Feb 2020 17:49:17 +0800
X-Gmail-Original-Message-ID: <CAGb2v670SH1Ra26eKgOhLYAeRTV719a3TDAfCyMr49bKU8Z=PA@mail.gmail.com>
Message-ID: <CAGb2v670SH1Ra26eKgOhLYAeRTV719a3TDAfCyMr49bKU8Z=PA@mail.gmail.com>
Subject: Re: [RFC PATCH 01/34] ASoC: dt-bindings: Add a separate compatible
 for the A64 codec
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_014931_076868_C5C4CD51 
X-CRM114-Status: GOOD (  19.78  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 =?UTF-8?Q?Myl=C3=A8ne_Josserand?= <mylene.josserand@free-electrons.com>,
 stable@kernel.org, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 2:42 PM Samuel Holland <samuel@sholland.org> wrote:
>
> The digital codec in the A64 is largely compatible with the one in the
> A33, with two changes:
>  - It is missing some muxing options for AIF1/2/3 (not currently
>    supported by the driver)

Is this at the pinctrl level or mixer level? If it's at the pinctrl level
then it's out of the scope of this driver/binding. It could very well have
those signals, just that they aren't routed outside the SoC.


ChenYu

>  - It does not have the LRCK inversion issue that A33 has
>
> To fix the Left/Right channel inversion on the A64 caused by the A33
> LRCK fix, we need to introduce a new compatible for the codec in the
> A64.
>
> Cc: stable@kernel.org
> Fixes: ec4a95409d5c ("arm64: dts: allwinner: a64: add nodes necessary for analog sound support")
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
>  .../devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml  | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
> index 55d28268d2f4..7c66409f13ea 100644
> --- a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
> +++ b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
> @@ -15,7 +15,9 @@ properties:
>      const: 0
>
>    compatible:
> -    const: allwinner,sun8i-a33-codec
> +    enum:
> +      - allwinner,sun8i-a33-codec
> +      - allwinner,sun50i-a64-codec
>
>    reg:
>      maxItems: 1
> --
> 2.24.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
