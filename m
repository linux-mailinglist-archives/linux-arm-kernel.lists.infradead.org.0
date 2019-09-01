Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B13A48EC
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 13:38:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZM8zjPTeSRwdX+trLt1u2zyD+J45R6KJCjbxuI7H50=; b=AF9nBDLhuK2+fF
	88hJ5qBJc/bQ7H4OHsfslVO5tiG8Cdrb+jHyBu3sITCVtcQp88xPUzDyJx6wImB9b/rsh7GkK7Lrf
	gcsMOo+Cym8QGWS4zGTfyjZLkkqiILlqQgpwCSId1iQn7O6X1zyefmZc37Kcl84c82IwufCbWedeT
	tzy067mXscmeBVs0fF4+VL65zSog8s/2buSQqVUBPupHzd4NHeh5WiW2X7lDqHstd6UPRE2EhVux5
	NI0XA/jiuI7Wm7RWJDuOhM8XYLkA0oXzMMpkWLOH94b+E6QjBDrFQiYnb+Us1Iww1xuFV0kktVYs3
	DAUhBB1mgoI0BK3XfcAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4OB5-0003vk-3h; Sun, 01 Sep 2019 11:37:51 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4OAs-0003vD-4s; Sun, 01 Sep 2019 11:37:39 +0000
Received: by mail-oi1-x241.google.com with SMTP id k20so2141461oih.3;
 Sun, 01 Sep 2019 04:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F4ea0X195pjBksmLH4Jb5O+7IQFkWIEKe4KvUWbpWKw=;
 b=S/f4+9NJpYgjaAYohWElo6Lxu8W10QGg8WQpz2TSmYq6WVpnoMZ5X5mD4FD2Qm/+aT
 h6k30488weYD+GtpbU1X+etsHEo3iek41SBijV4qSTEHt2Tws6OHYsjtY9WjaLh6/EBR
 M9ZFYDsoqasPfy8ltkslhDV8TDNXC6OIyo+EZhDrhfodnlAT9tliaU/i0AVE3Gwmyc+L
 /kCNZ6SkV3A+pJFHBwpu1qX64zPcMUpLXLQhy4iazKhKc2cZnOtA7c56aIjbtj7ENxOa
 UKFmfudh4s6GVBAfHoUYAvgaNq3HNxbUXWrKBdndKCtzq5JrHaRjUC1l5hN+fAkjg1V6
 ZYGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F4ea0X195pjBksmLH4Jb5O+7IQFkWIEKe4KvUWbpWKw=;
 b=qqqoRilBo8qLkYvqFPNxx16UiuDmcZZVV3aeW3y9LPr1ORXrcDEqEt6DHpNqR3rc9I
 +pckkaENmShSAe1hV9Q4k3LhKzRwElv5NFkcYdS+WDlBS9TkXwdNAHDnb7uc7Y9eqT6f
 aVHfvW+yQHzaoa+pW/R8FNEU2G6vY29MnUMFNmhuydUeu5IVHEWSgkUjGCylJD2xIIVW
 i2SD84LFeRSbRUgje+YPHC1zucGm3oh16dsHOlB0Pz1ogJHNec4jDN8JwwmVAUOeVZAp
 crJSaKWvIZNJmy1aHZOlEUWdfmMRbvU1mTIDkwl1JcpsQTEh94boGpSLfLWk6GcKh2z/
 Rzew==
X-Gm-Message-State: APjAAAWdBu6JOYPNLY+dW8aeTy82Tqcw2Q73OjAn014tFZ0zf+ljzJ44
 nTzBxNifppa6giZ4CWUjAsNycsbcZ3EshEyJZDE=
X-Google-Smtp-Source: APXvYqwvsFh4/YUE47XtDvJtwbjcL/6stJq0LFpkSlQboo8+bTGRT0ChsLaFBnwCmNrxYIhmz28KlbhlSVsH+kzP2pA=
X-Received: by 2002:a05:6808:b14:: with SMTP id
 s20mr15797899oij.15.1567337856627; 
 Sun, 01 Sep 2019 04:37:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190828202723.1145-1-linux.amoon@gmail.com>
 <20190828202723.1145-2-linux.amoon@gmail.com>
In-Reply-To: <20190828202723.1145-2-linux.amoon@gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 1 Sep 2019 13:37:25 +0200
Message-ID: <CAFBinCBWq0LcdA1-a5W06zKp0RzGs5_=Mph6StGKXJ7npCgbfg@mail.gmail.com>
Subject: Re: [PATCHv1 1/3] arm64: dts: meson: odroid-c2: Add missing regulator
 linked to P5V0 regulator
To: Anand Moon <linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_043738_215732_F54176F2 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 10:27 PM Anand Moon <linux.amoon@gmail.com> wrote:
>
> As per shematics VDDIO_AO18, VDDIO_AO3V3/VDD3V3 DDR3_1V5/DDR_VDDC:
typo: "schematics"

> fixed regulator output which is supplied by P5V0.
>
> Rename vcc3v3 regulator node to vddio_ao3v3 as per shematics.
typo: "schematics"

according to the schematics there's both:
- VDDIO_AO3V3
- VCC3V3 (which is turned on by VDDIO_AO3V3, see [0])

> Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Cc: Jerome Brunet <jbrunet@baylibre.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
>  .../boot/dts/amlogic/meson-gxbb-odroidc2.dts  | 29 +++++++++++++++++--
>  1 file changed, 26 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
> index 792698a60a12..98e742bf44c1 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
> @@ -104,11 +104,34 @@
>                 regulator-max-microvolt = <1800000>;
>         };
>
> -       vcc3v3: regulator-vcc3v3 {
> +       vddio_ao1v8: regulator-vddio-ao1v8 {
>                 compatible = "regulator-fixed";
> -               regulator-name = "VCC3V3";
> +               regulator-name = "VDDIO_AO1V8";
> +               regulator-min-microvolt = <1800000>;
> +               regulator-max-microvolt = <1800000>;
> +               regulator-always-on;
> +               /* U17 RT9179GB */
> +               vin-supply = <&p5v0>;
> +       };
> +
> +       vddio_ao3v3: regulator-vddio-ao3v3 {
> +               compatible = "regulator-fixed";
> +               regulator-name = "VDDIO_AO3V3";
>                 regulator-min-microvolt = <3300000>;
>                 regulator-max-microvolt = <3300000>;
> +               regulator-always-on;
> +               /* U11 MP2161GJ-C499 */
> +               vin-supply = <&p5v0>;
> +       };
> +
> +       vddc_ddr: regulator-vddc-ddr {
> +               compatible = "regulator-fixed";
> +               regulator-name = "DDR_VDDC";
personally I would call this (along with the node name and alias) DDR3_1V5
odroid-c2_rev0.1_20150930.pdf shows that DDR3_1V5 and DDR_VDDC are
both the same. however, the DDR_VDDC signal name is not used by any
component in the datasheet

> +               regulator-min-microvolt = <1500000>;
> +               regulator-max-microvolt = <1500000>;
> +               regulator-always-on;
> +               /* U15 MP2161GJ-C499 */
> +               vin-supply = <&p5v0>;
>         };
>
>         emmc_pwrseq: emmc-pwrseq {
> @@ -301,7 +324,7 @@
>         mmc-hs200-1_8v;
>
>         mmc-pwrseq = <&emmc_pwrseq>;
> -       vmmc-supply = <&vcc3v3>;
> +       vmmc-supply = <&vddio_ao3v3>;
odroid-c2_rev0.1_20150930.pdf uses VCC3V3 as supply


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
