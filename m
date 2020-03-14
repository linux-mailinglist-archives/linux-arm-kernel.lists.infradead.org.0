Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B09151855CB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 14:33:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gOWbeGeakybzpky+o7AUXqt/Mj1CKjFCRbe7NZswDAk=; b=L7/WwclbIiT89t
	/wS97AAO/nPPw2tHYQ0HfcurHDgqRR+961I/VOc2tIbySVtV+tiOKC4Pd80MAQczPytVvTR09iFbr
	i9/5mcglCkimI3bnlr+Isbe6868G7m2cy/bUL40Da4LmvIl4Nf5tmWyYIqc/PH/UcRQroDWimJoKo
	a5tHPx2Gd0KeSR9qXjlOOyu0qq4pT6jHBb7y+esp4qWt72Lya6eZguAlbcPSXjawjTrQk+bWAnMZ5
	26cqzILcFr584jH32ahpqEC5r0aeryUAKCRnBjJl7YlGw0QpAVwhtGPO1ihSjwh46Qup1UtQETiFH
	p+YgiMZXjIV/NjbNd7Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD6uN-0006ts-Gw; Sat, 14 Mar 2020 13:32:55 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD6uE-0006tW-S1
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 13:32:48 +0000
Received: by mail-io1-xd43.google.com with SMTP id m25so12424018ioo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 14 Mar 2020 06:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Vc8LwrIaU40nI0L9rZtv7zvcU+o5GuwsQBOLTCK4qFI=;
 b=OWQQM+EsX/WIldwdhGjM06LV5RrRYgpfmsg0veXZ5b1TbRwxXPK0G+WQbH1j1/L2e3
 WVMPJDIpZH/IDd7nWjzggg03LB0+pgKuXyrM4YWKU83RqpkFLv4osM0SP36Yd9ttHUXY
 Dveio6C8RFtOJ0nK3G1m6dGNn+ENhlyrEANU4viuG3hPzXpHAHcCOLm7mvyfoatCpxg5
 Sp1pJoOdqMCYSFFy6f4AjVPkEtY933eukKKpmug2SRaZqoGbIF0WvkHyIMMzyrgMaYIh
 ZzJxraxHiqWPV0u9qPQFucNts0nSW6OxBu8CGX6h4lxaE/5KvpRH2JAvjnHXM8nCLg1s
 MXpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vc8LwrIaU40nI0L9rZtv7zvcU+o5GuwsQBOLTCK4qFI=;
 b=iOXaF1zhUZjkMftsZiOctbMpjhvpn/jOWSqz4gT4q0J4dMIgbLjvg7sVaCyT2uiOwh
 OjaVQCEaxwhFuogrsa2KRYEcelgGNtBT9njIHuBFu8BlmpCLZPeR3Ol4VbWWpWac5B9t
 ErSjpSxAwqlkLRt8uBp7w6QIpP/U/H1zsjMxunYCq7cSx7uIjgvgQEnJ2FX+dqPBYKux
 a2syGCq1fEVlI3LyvYO/kIv5LUsW9JTN6+bPdaTVmVHe/iIk1kL3iVZXYJY7X0WrfVhc
 +cY/eVXeSxCx8GgMOIWTfT3s+tJvnlJgzEsDEU1BJv2EhxPcgXtjVjnSIn/4wXremn95
 H36A==
X-Gm-Message-State: ANhLgQ22MfOIRcgYhjkT5ahPt1opzxAXrJ7r3/UO/N3qweDfSF7QcLRp
 k+3jFK8b2GrhvRfOjhUB8nvgWlPutdfnzhghTX8=
X-Google-Smtp-Source: ADFU+vvqbJcRXoy8MLoV6dVlKl4R88lrkt8lrWmZMrkz8gdnvH1wWUt998hcX+ARQdd6OcDsbFBEZdJVYtnNc81xZ1Q=
X-Received: by 2002:a02:8795:: with SMTP id t21mr13779924jai.126.1584192765365; 
 Sat, 14 Mar 2020 06:32:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200310194854.831-1-linux.amoon@gmail.com>
 <20200310194854.831-3-linux.amoon@gmail.com>
In-Reply-To: <20200310194854.831-3-linux.amoon@gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 14 Mar 2020 19:02:33 +0530
Message-ID: <CANAwSgR4fJK0uVANv-x-=iSL_hAKD8kvazACUsY9Meu5xonuqQ@mail.gmail.com>
Subject: Re: [PATCHv3 2/5] ARM: dts: exynos: Add missing usbdrd3 suspend clk
To: Linux USB Mailing List <linux-usb@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-samsung-soc@vger.kernel.org, 
 Linux Kernel <linux-kernel@vger.kernel.org>, 
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_063246_935425_90572436 
X-CRM114-Status: GOOD (  19.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Felipe Balbi <balbi@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On Wed, 11 Mar 2020 at 01:19, Anand Moon <linux.amoon@gmail.com> wrote:
>
> Add new compatible strings for USBDRD3 for adding missing
> suspend clk, exynos5422 usbdrd3 support two clk USBD300 and
> SCLK_USBD300, so add missing suspemd_clk for Exynos542x DWC3 nodes.
>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>

My assumption based on the FSYS clock source diagram below was bit wrong.
[0] https://imgur.com/gallery/zAiBoyh

And again re-looking into the driver source code, it turn out their
are *6 clock*
Here is the correct mapping as per the Exynos5420 clock driver.

USB-(phy@12100000)
|___________________CLK_SCLK_USBD300
|___________________CLK_SCLK_USBPHY300

USB-(phy@12500000)
|___________________CLK_SCLK_USBD301
|___________________CLK_SCLK_USBPHY301

USB-(dwc3@12000000)
|___________________CLK_USBD300
USB-(dwc3@12400000)
|___________________CLK_USBD301

Note: As per Exynos 5422 user manual, There are some more USB CLK
configuration missing in GATE_IP_FSYS. So we could enable another dwc3 clk,
If needed I would like too add this missing clk code and enable this
clk for dwc3 driver.

For some reason we already use CLK_USBD300 and CLK_USBD301
for PHY nodes, which lead to this confusion. So we need to update PHY clock
CLK_USBD300 with CLK_SCLK_USBD300 and clock CLK_USBD301 with CLK_SCLK_USBD301.

Please share your thought on linking PHY nodes above and add new DWC3 clock
and enable this clock.

-Anand

> ---
> fix the commit message
> ---
>  arch/arm/boot/dts/exynos5410.dtsi | 8 ++++----
>  arch/arm/boot/dts/exynos5420.dtsi | 8 ++++----
>  arch/arm/boot/dts/exynos54xx.dtsi | 4 ++--
>  3 files changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/arch/arm/boot/dts/exynos5410.dtsi b/arch/arm/boot/dts/exynos5410.dtsi
> index 2eab80bf5f3a..19845dcd528f 100644
> --- a/arch/arm/boot/dts/exynos5410.dtsi
> +++ b/arch/arm/boot/dts/exynos5410.dtsi
> @@ -396,8 +396,8 @@ &trng {
>  };
>
>  &usbdrd3_0 {
> -       clocks = <&clock CLK_USBD300>;
> -       clock-names = "usbdrd30";
> +       clocks = <&clock CLK_USBD300>, <&clock CLK_SCLK_USBD300>;
> +       clock-names = "usbdrd30", "usbdrd30_susp_clk";
>  };
>
>  &usbdrd_phy0 {
> @@ -407,8 +407,8 @@ &usbdrd_phy0 {
>  };
>
>  &usbdrd3_1 {
> -       clocks = <&clock CLK_USBD301>;
> -       clock-names = "usbdrd30";
> +       clocks = <&clock CLK_USBD301>, <&clock CLK_SCLK_USBD301>;
> +       clock-names = "usbdrd30", "usbdrd30_susp_clk";
>  };
>
>  &usbdrd_dwc3_1 {
> diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
> index b672080e7469..bd505256a223 100644
> --- a/arch/arm/boot/dts/exynos5420.dtsi
> +++ b/arch/arm/boot/dts/exynos5420.dtsi
> @@ -1372,8 +1372,8 @@ &trng {
>  };
>
>  &usbdrd3_0 {
> -       clocks = <&clock CLK_USBD300>;
> -       clock-names = "usbdrd30";
> +       clocks = <&clock CLK_USBD300>, <&clock CLK_SCLK_USBD300>;
> +       clock-names = "usbdrd30", "usbdrd30_susp_clk";
>  };
>
>  &usbdrd_phy0 {
> @@ -1383,8 +1383,8 @@ &usbdrd_phy0 {
>  };
>
>  &usbdrd3_1 {
> -       clocks = <&clock CLK_USBD301>;
> -       clock-names = "usbdrd30";
> +       clocks = <&clock CLK_USBD301>, <&clock CLK_SCLK_USBD301>;
> +       clock-names = "usbdrd30", "usbdrd30_susp_clk";
>  };
>
>  &usbdrd_dwc3_1 {
> diff --git a/arch/arm/boot/dts/exynos54xx.dtsi b/arch/arm/boot/dts/exynos54xx.dtsi
> index 8aa5117e58ce..0aac6255de5d 100644
> --- a/arch/arm/boot/dts/exynos54xx.dtsi
> +++ b/arch/arm/boot/dts/exynos54xx.dtsi
> @@ -143,7 +143,7 @@ hsi2c_7: i2c@12cd0000 {
>                 };
>
>                 usbdrd3_0: usb3-0 {
> -                       compatible = "samsung,exynos5250-dwusb3";
> +                       compatible = "samsung,exynos5420-dwusb3";
>                         #address-cells = <1>;
>                         #size-cells = <1>;
>                         ranges;
> @@ -165,7 +165,7 @@ usbdrd_phy0: phy@12100000 {
>                 };
>
>                 usbdrd3_1: usb3-1 {
> -                       compatible = "samsung,exynos5250-dwusb3";
> +                       compatible = "samsung,exynos5420-dwusb3";
>                         #address-cells = <1>;
>                         #size-cells = <1>;
>                         ranges;
> --
> 2.25.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
