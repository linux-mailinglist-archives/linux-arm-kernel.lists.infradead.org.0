Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A1F895EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 06:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nHk0mIOERCx+QiC0FkagvyOxBvmKXM1wiPWiiQ42iY0=; b=eK5klBzc9GHkZs
	xmQL8vml/h2Pi8qrKavzjbqr6Ac/FwnU8OKNADwRO5/4kKnSdt7nYab+MG9vnGXLjPKcWeJMKyErp
	1U25tk3EHVwflf/UliNAK0+fq8L70QJDC7gRKEPuvioNfhBZxfeUDcdMwWpNUE7CqGAQNZ6tWX502
	XDead/9xK2TInJdimxTFXA2fgo81qgkjsnfLj6Or/w6xgXl579mAWlMj3S+TrhJ00NITFJAXFPiXI
	c9SBfmLsL6Drz+y9EoPsyf+c+jlHcrbzwMiwy8tIYkMqOHF6J5nX+ylghdgaoLjz9isF0qNZxCydh
	oT0h3E3xtEvQkfCPSEWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx1hp-0001jz-OU; Mon, 12 Aug 2019 04:13:13 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx1hV-0001jF-6G
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 04:12:54 +0000
Received: by mail-ed1-f66.google.com with SMTP id w5so13954040edl.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 11 Aug 2019 21:12:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oAP6t0pKBozy4Ru4dNG6hCmwdati3Pg/29On1WvuiE8=;
 b=uEGQaUfAA5fRlGSHVjJwyc9ekcJjz3FzK+p+j4JxVIXFNsUcAXr0A2TCC0JhH0aa0P
 bxWlAMUp7nlMw7qd5ixTx+1B7q8ABtScmG32b2uGW8PMdkHpRVD1cTrEJ3Vl/zKZHscn
 BNv2B+tVupUW18bRTt1EAcB5g57h2rOPz2NssR24lwYm5C07O67fx4EzS7a6V9r7iD5U
 3tS0ryz8uWHBec6r0bZ/e3hL7NsRhYzmALp1VJHJkrFOXAjHlRIJC3dms+dx7s5ErpVv
 h0Ntjfm92KvQWLn4UG2Rfdm9ct6UeEkaFbY+xLIlPSXAG33tLHgwSHoyJrcNwYj0hzM1
 m42A==
X-Gm-Message-State: APjAAAUZvxFIkIjvuy3ezb/hVwf7PryA9G5VyFaaALzHmT0U48g+6joc
 RMqmFH8JPYNLejr59/USDIXfBYSQ5lw=
X-Google-Smtp-Source: APXvYqwAiBbee00DpaiYvEZzliF5iNVcPlJgSEcq+Z9LJ6s8hoH9Vjsz4SZb8xqU3UqoXX4G2pED5w==
X-Received: by 2002:a50:9fca:: with SMTP id c68mr22980041edf.246.1565583170654; 
 Sun, 11 Aug 2019 21:12:50 -0700 (PDT)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com.
 [209.85.221.49])
 by smtp.gmail.com with ESMTPSA id fk15sm17457144ejb.42.2019.08.11.21.12.49
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Aug 2019 21:12:49 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id r3so9621649wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 11 Aug 2019 21:12:49 -0700 (PDT)
X-Received: by 2002:a5d:568e:: with SMTP id f14mr37314937wrv.167.1565583169399; 
 Sun, 11 Aug 2019 21:12:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190811090503.32396-1-bshah@kde.org>
 <20190811090503.32396-2-bshah@kde.org>
In-Reply-To: <20190811090503.32396-2-bshah@kde.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 12 Aug 2019 12:12:38 +0800
X-Gmail-Original-Message-ID: <CAGb2v67_GjWFOEiThMp5o8m+nqYrrTCrNdSkscRfe5vmoJM47Q@mail.gmail.com>
Message-ID: <CAGb2v67_GjWFOEiThMp5o8m+nqYrrTCrNdSkscRfe5vmoJM47Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: allwinner: h6: add I2C nodes
To: Bhushan Shah <bshah@kde.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_211253_227856_8DEC6EAB 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
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
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 11, 2019 at 5:05 PM Bhushan Shah <bshah@kde.org> wrote:
>
> Add device-tree nodes for i2c0 to i2c2, and also add relevant pinctrl
> nodes.
>
> Suggested-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Bhushan Shah <bshah@kde.org>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 54 ++++++++++++++++++++
>  1 file changed, 54 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> index bcecca17d61d..1d9ad3ec0b65 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> @@ -329,6 +329,21 @@
>                                 function = "hdmi";
>                         };
>
> +                       i2c0_pins: i2c0-pins {
> +                               pins = "PD25", "PD26";
> +                               function = "i2c0";
> +                       };
> +
> +                       i2c1_pins: i2c1-pins {
> +                               pins = "PH5", "PH6";
> +                               function = "i2c1";
> +                       };
> +
> +                       i2c2_pins: i2c2-pins {
> +                               pins = "PD23", "PD24";
> +                               function = "i2c2";
> +                       };
> +
>                         mmc0_pins: mmc0-pins {
>                                 pins = "PF0", "PF1", "PF2", "PF3",
>                                        "PF4", "PF5";
> @@ -464,6 +479,45 @@
>                         status = "disabled";
>                 };
>
> +               i2c0: i2c@5002000 {
> +                       compatible = "allwinner,sun6i-a31-i2c";

Please add an soc-specific compatible string, like "allwinner,sun50i-h6-i2c".
This is a last-resort way out in case the hardware isn't so compatible with
the A31.

You'll also need to update the bindings in

    Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml

The file also shows that we do this for other chips, such as the A23,
A64 and A83T.

ChenYu

> +                       reg = <0x05002000 0x400>;
> +                       interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
> +                       clocks = <&ccu CLK_BUS_I2C0>;
> +                       resets = <&ccu RST_BUS_I2C0>;
> +                       pinctrl-names = "default";
> +                       pinctrl-0 = <&i2c0_pins>;
> +                       status = "disabled";
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +               };
> +
> +               i2c1: i2c@5002400 {
> +                       compatible = "allwinner,sun6i-a31-i2c";
> +                       reg = <0x05002400 0x400>;
> +                       interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
> +                       clocks = <&ccu CLK_BUS_I2C1>;
> +                       resets = <&ccu RST_BUS_I2C1>;
> +                       pinctrl-names = "default";
> +                       pinctrl-0 = <&i2c1_pins>;
> +                       status = "disabled";
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +               };
> +
> +               i2c2: i2c@5002800 {
> +                       compatible = "allwinner,sun6i-a31-i2c";
> +                       reg = <0x05002800 0x400>;
> +                       interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
> +                       clocks = <&ccu CLK_BUS_I2C2>;
> +                       resets = <&ccu RST_BUS_I2C2>;
> +                       pinctrl-names = "default";
> +                       pinctrl-0 = <&i2c2_pins>;
> +                       status = "disabled";
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +               };
> +
>                 emac: ethernet@5020000 {
>                         compatible = "allwinner,sun50i-h6-emac",
>                                      "allwinner,sun50i-a64-emac";
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
