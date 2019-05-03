Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9584012D09
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 13:59:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U43Mk7+E7mPEIO5LYDYHmp1OZMJlNeXTAg6iycNpXBI=; b=hZOllt7lq0ezPO
	ClEBGnVmOVgOIRB3KD1iskcFF2B8mCtkgSWtfbuuTeFPO4EhGIJN1nflYWAa4eW5zCWLP084nI3C2
	Xcmjxw3ehDyrhSmFBz1a+TMl6izwuwfLB6evnexuU+ikxqOkbAxiibD0uND7SmIHc2gwMg+glc/uW
	w8ODXRYT/WJstWqKRKGbkv87SaeU98msb9b/NmAQu+ouTYPqnOaDLpeBXvLAG0Ld5yIzwB92bqcmg
	+8Ce9dQEANM9A2Vd0ekLHiWuCH+FzHZwcglvlGPsbRVAonrH3XQTKtMWiXJc30FwqLX8CYX7QF9bp
	UXN95DgPVxt3aycZptaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWqQ-0007Sl-D2; Fri, 03 May 2019 11:59:14 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWqI-0007Rt-2Q
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 11:59:08 +0000
Received: by mail-it1-x143.google.com with SMTP id a190so8623560ite.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 04:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vDgYOPNAs5a7jn6rrh+mqlUAcW/QL6gqLTt3pqvnNY8=;
 b=Y6srGshKU+8ofVAzr5oXPRlANIBEkdOrCHKBPiE3tUswNgNowbNADcWMckRUE5gkSL
 9ukukehth9mBJJ/QJCpdkUMMW2+iAg10JbBAKpi7BjWy2OQ+HfalsNh4xdNDSsHWnKVY
 6bANvGQZzE11Hw3Y7RiWx/Sk3RaGiUf3o+mJs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vDgYOPNAs5a7jn6rrh+mqlUAcW/QL6gqLTt3pqvnNY8=;
 b=e8V3VLfq0WcbdSvVq4KDxQJWKXhjN6fldQFVknwi9JM5A0Od7dc5Ssx7Q7Na5LHVUy
 y/TCdtqKadY3y0rtRramOrrPrxFan02FOmC7QDU4Ja/80QVFtstGbHK3J47ox9e0Y+nP
 gpyVkS4Gg+xQzGXjoC4hIL77M+wjBe2v6R+TRdHq3AlIwU2z3m/cycVvpEa5dI1cse7P
 ytSiTZ42tEZ4b9vfzWdMNjl12FBOgqMmnQF6iq+EQ+cUdqXDaZD8yQAGmp/orccoUiGY
 lP5MLpcrBdG+yjpU38/Gf/vOapckyImHVEB3vfhV8wXEBHMvLbS0Rc/eMZ0gDl5uraQt
 ljFQ==
X-Gm-Message-State: APjAAAWvp0DyFmyakFBH+3qTrN7Ta8Ahp8pUZEY0vfQNNpxR6Yng8dtj
 GxYUYTJpatHtXfOX1PcA2Qr0EpJJOIl7zaR1/vM9rg==
X-Google-Smtp-Source: APXvYqxogbylovsed3LC9Wji6QY3Bj1N0GsCs2SPDNY1RvVGOuqXHQj+rfQkbvVmWscSed3alM3kokBhRmxHN3Y8JlY=
X-Received: by 2002:a24:70d5:: with SMTP id f204mr6307014itc.32.1556884744596; 
 Fri, 03 May 2019 04:59:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190413165418.27880-1-megous@megous.com>
 <20190413165418.27880-6-megous@megous.com>
In-Reply-To: <20190413165418.27880-6-megous@megous.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 3 May 2019 17:28:53 +0530
Message-ID: <CAMty3ZDx6NXyYhQehYT9geeGwAk2PZidiVMwVw1nnZJa3zwyOg@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v4 5/9] arm64: dts: allwinner: orange-pi-3:
 Enable ethernet
To: megous@megous.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_045906_583025_82462F9C 
X-CRM114-Status: GOOD (  20.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jose Abreu <joabreu@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, Chen-Yu Tsai <wens@csie.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-gpio@vger.kernel.org,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 13, 2019 at 10:24 PM megous via linux-sunxi
<linux-sunxi@googlegroups.com> wrote:
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
> index 17d496990108..6d6b1f66796d 100644
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
> +        * the phy is to enable GMAC-2V5 and GMAC-3V3 (aldo2) power rails
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
> +               vin-supply = <&reg_aldo2>; /* GMAC-3V3 */

The actual output supply pin name is GMAC-3V which has an input of
VCC3V3-MAC (ie aldo2), if we compatible to schematics better to use
the same, IMHO.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
