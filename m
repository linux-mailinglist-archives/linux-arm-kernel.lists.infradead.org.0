Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA66899A4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 11:18:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TOrlCPTroC0BFTBXLsJWxsJ/apyB3LuPfV5X2pnlY04=; b=tw/fSqUwEKabuc
	wTD7PoDe5tPYGvdG4xY0cVwpYw82WNDyUisBC3okjYYlm/fyiZy6MS82r0+HtX+ef+Ca+WulOJdrV
	RCeVYcRnCs5ZOB0NylnAOXJEwMkOkM7ja0gTDTWiWQdzg0y7q2fPoQLIgx3bja7ME456oLof5Di64
	8SqofkDHLD4KsYMGOK7T+T7VJl6s5xRwxwBH0ubEi7hz85KftArOWeJ8hy/SXgijhQ4rTUi9zFO8t
	pY9PtBISYWFYM/IKzAmHv8guvvOeKj8xQFVg1T7wPfzwmm0zC3vl8XDWYTjxAeKLwwDsCmvq4PDfx
	JWfh+OwFTsQVx82MjkVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx6T6-0000QJ-N1; Mon, 12 Aug 2019 09:18:20 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx6Sp-0000Pt-7y
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 09:18:04 +0000
Received: by mail-ed1-f68.google.com with SMTP id f22so234205edt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 02:18:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qYfm+HhxiVLxwMRZpF6kOW9iq3of0f5g9KF9ckov0fc=;
 b=YPQQH+nTT+dpf8kKPlqv39kdT4YMekbKYq5yzIdVxS1JYcAIUTbt0Evp46LXme39Hw
 myYwmN2rJJlZIQxhRWwBxNPMsplE3ih49hA7VOlTpFdiP4Wi+qQloUvQY6MshLzvSSJ8
 s1u+qPtog2lgJqiKqQ9+IEMQDQF5IUfLyD63McmKlcWIaa67OPohINanTP3Q2ortof2G
 fga/9fIJdUBBPRqEsIAtfxtTqFvVBhZ1I60em8mZQy9Pwu73b2okavV6DxY4zNy8F+22
 YgeQ0Nu9AQaQar8OziV76uARpZFz2Fs8p06tQNDKDVZpDSsh22GFXOPqVg5UEKkquexS
 kbOQ==
X-Gm-Message-State: APjAAAVC00AXvPjp32Jq/kAmLINTeV0nn20clFgCpMwcTTm9r24t9NSr
 bJLXoZdK0MH9DaRjlHsCzFs51eU42w4=
X-Google-Smtp-Source: APXvYqyGBmDqjDBnoNs4GOZh7t5L4PCuYMA0LtaVqXeVsL4ew8ZdBRocCCZQbpd7nSV4B0UO2z12/g==
X-Received: by 2002:a17:906:cecb:: with SMTP id
 si11mr6735090ejb.178.1565601481230; 
 Mon, 12 Aug 2019 02:18:01 -0700 (PDT)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com.
 [209.85.221.45])
 by smtp.gmail.com with ESMTPSA id r11sm2803805edq.10.2019.08.12.02.18.00
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Aug 2019 02:18:01 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id r3so10181287wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 02:18:00 -0700 (PDT)
X-Received: by 2002:adf:dbce:: with SMTP id e14mr30773546wrj.9.1565601480549; 
 Mon, 12 Aug 2019 02:18:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190806155744.10263-1-megous@megous.com>
 <20190806155744.10263-2-megous@megous.com>
In-Reply-To: <20190806155744.10263-2-megous@megous.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 12 Aug 2019 17:17:48 +0800
X-Gmail-Original-Message-ID: <CAGb2v66+L6_QrL-05fLHQxqavBAmP-pEFp9RWT5XeTQ2rpGa3w@mail.gmail.com>
Message-ID: <CAGb2v66+L6_QrL-05fLHQxqavBAmP-pEFp9RWT5XeTQ2rpGa3w@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v8 1/4] arm64: dts: allwinner: orange-pi-3:
 Enable ethernet
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_021803_286849_95D1E9DB 
X-CRM114-Status: GOOD (  28.31  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>,
 David Airlie <airlied@linux.ie>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 11:57 PM <megous@megous.com> wrote:
>
> From: Ondrej Jirman <megous@megous.com>
>
> Orange Pi 3 has two regulators that power the Realtek RTL8211E. According
> to the phy datasheet, both regulators need to be enabled at the same time,
> but we can only specify a single phy-supply in the DT.
>
> This can be achieved by making one regulator depedning on the other via
> vin-supply. While it's not a technically correct description of the
> hardware, it achieves the purpose.
>
> All values of RX/TX delay were tested exhaustively and a middle one of the
> working values was chosen.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  .../dts/allwinner/sun50i-h6-orangepi-3.dts    | 44 +++++++++++++++++++
>  1 file changed, 44 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> index 17d496990108..2c6807b74ff6 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> @@ -15,6 +15,7 @@
>
>         aliases {
>                 serial0 = &uart0;
> +               ethernet0 = &emac;
>         };
>
>         chosen {
> @@ -44,6 +45,27 @@
>                 regulator-max-microvolt = <5000000>;
>                 regulator-always-on;
>         };
> +
> +       /*
> +        * The board uses 2.5V RGMII signalling. Power sequence to enable
> +        * the phy is to enable GMAC-2V5 and GMAC-3V (aldo2) power rails
> +        * at the same time and to wait 100ms.
> +        */
> +       reg_gmac_2v5: gmac-2v5 {
> +               compatible = "regulator-fixed";
> +               regulator-name = "gmac-2v5";
> +               regulator-min-microvolt = <2500000>;
> +               regulator-max-microvolt = <2500000>;
> +               startup-delay-us = <100000>;
> +               enable-active-high;
> +               gpio = <&pio 3 6 GPIO_ACTIVE_HIGH>; /* PD6 */
> +
> +               /* The real parent of gmac-2v5 is reg_vcc5v, but we need to
> +                * enable two regulators to power the phy. This is one way
> +                * to achieve that.
> +                */
> +               vin-supply = <&reg_aldo2>; /* GMAC-3V */
> +       };

The RTL8211E datasheet I have says:

    2.5V (or 1.8/1.5V) RGMII power should be risen simultaneously or slightly
    earlier than 3.3V power. Rising 2.5V (or 1.8/1.5V) power later than 3.3V
    power may lead to errors.

Since you can't reverse the parent relationship in your patch, maybe it's
time to add a phy-io-supply property?

It also says the rise time for 3.3V must be between 1ms and 100ms. However
the PMIC doesn't support voltage ramp control for the LDOs, nor does it list
the ramp rate.

ChenYu

>  };
>
>  &cpu0 {
> @@ -58,6 +80,28 @@
>         status = "okay";
>  };
>
> +&emac {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&ext_rgmii_pins>;
> +       phy-mode = "rgmii";
> +       phy-handle = <&ext_rgmii_phy>;
> +       phy-supply = <&reg_gmac_2v5>;
> +       allwinner,rx-delay-ps = <1500>;
> +       allwinner,tx-delay-ps = <700>;
> +       status = "okay";
> +};
> +
> +&mdio {
> +       ext_rgmii_phy: ethernet-phy@1 {
> +               compatible = "ethernet-phy-ieee802.3-c22";
> +               reg = <1>;
> +
> +               reset-gpios = <&pio 3 14 GPIO_ACTIVE_LOW>; /* PD14 */
> +               reset-assert-us = <15000>;
> +               reset-deassert-us = <40000>;
> +       };
> +};
> +
>  &mmc0 {
>         vmmc-supply = <&reg_cldo1>;
>         cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 */
> --
> 2.22.0
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20190806155744.10263-2-megous%40megous.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
