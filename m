Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F982E440
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 20:13:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ctKlUZjkTjRD2G5piCHDHkqZ4rUDy9k0gRZRepttB/M=; b=Autq6QSdh3KVfr
	eM9PmGZsykAlwiandexxYgZad7We2c57aquN9bbP+UEtR5qE1brY7FVTg0lbBDAgmPPx3tNgnur/q
	tCxBDrYxkl/VyDEwO5igIwp4fbTaTr5fYA8kT60nHHW92bnCEpEMnen30GDWZihZb3xTeKUO5c4KE
	9WTMlunlB1l5jmPn374Ld9atI9iIdvL6aPaB3tSBaEdEvwBqy8oHvz9IG/MwcsusxA1Vl/w5UtxGl
	RGAVTyH37xjO+iK5Df0c6NuaNNe+TAksE1ABfv2r8t1HC+VKk+rdOIwJbUrerfoIpWZSzHYZtVt1c
	P8qVRw79VtgYW1HhxOWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW356-0007xu-4Z; Wed, 29 May 2019 18:13:44 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW34x-0007wl-8D; Wed, 29 May 2019 18:13:36 +0000
Received: by mail-oi1-x241.google.com with SMTP id w144so2823793oie.12;
 Wed, 29 May 2019 11:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gX2RMb1pokbu+YgF41RSMApGRERhvXQGphpzSmZubpo=;
 b=f4xdf+vPCxyZu4Hqkw+FoQgiJySxwGcEI4TfGDrIYVFodGV46rc5Ap4KbB5Qm3Ko4S
 iNKdL8CwC3UGq9rHNxO+RWQMu9DA5FmjngW4D78kOltgnY6rSAHQJK6T1uU+l1Oyqinx
 FHfPK9yXwdJcdTgrsB2fMNkPltmpVtsX48dSRBsqUjmwmgmLwBAjL2JlJvt/x7CvLjQ6
 LYcQxVHjUnRrc5e0zj/slp1tZHk9noniO0iI3rCtJRMvshYNiAFInO1mffaKEf858QEK
 gcGMHUS5h1rRLqagpIRF7fsyWt0xPA1twLUfvdqyHvDGjhXtun4P2Aw42nMwynZ+p3jg
 jaVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gX2RMb1pokbu+YgF41RSMApGRERhvXQGphpzSmZubpo=;
 b=uRtKudGxka8uxWeI3OQYCq+cCRC3WhLE7dPrlg1hI0A1k20/xzoShVmtxnmQNic5xT
 uB8YmLEZ00dUJ8EMWUFlZGdZbSR7UUOawk9K+Xa+YeLASdgaUv0kw9PHbCu4LbKQXJg2
 ZDd0dvsMcO19nhEfCUu9u60HihFOLy3Xy3kye8msgy7MUhQDxKp8t5mmAPS3mqOlWj4w
 hf8yWa1y+lURkVAKaSnjtP1k+Bz9Jeskudw29FZFpbOMVyd+TC3J4MGG8stMRcFB5aSE
 NyQs09wDFEzaTIdlV2ZvjOEePRYOwKmVnvNO/PAfxQvXtH8lqnwNzT/O4CkyBamqgAo2
 8X+g==
X-Gm-Message-State: APjAAAVP5R2WNtzxk3ySUv4/NjAm8jbNHKveK8+FBPI02n8is4rQVwkZ
 OZk/fv7w9PcdLvSNYGHWfRILeG8j8ohhaGwFc1nTZbas
X-Google-Smtp-Source: APXvYqzjHZuuzE1Z4EhDnM0uKUidjspHW8yzeJYt383majPlmdFfHlRYLp+trb+xQVa1+dgkePYC6IMA7/C8FtzIWkA=
X-Received: by 2002:aca:f144:: with SMTP id p65mr7253057oih.47.1559153613854; 
 Wed, 29 May 2019 11:13:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190527140206.30392-1-narmstrong@baylibre.com>
 <20190527140206.30392-4-narmstrong@baylibre.com>
 <7da1c182-db68-c813-1f3c-b936137deeb2@baylibre.com>
In-Reply-To: <7da1c182-db68-c813-1f3c-b936137deeb2@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 29 May 2019 20:13:22 +0200
Message-ID: <CAFBinCBjBRXMsvwiN0Hi4RHZ1VpU=2T3KnoN800N7FSy3_uBNQ@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] arm64: dts: meson: Add minimal support for
 Odroid-N2
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_111335_298503_7BACF738 
X-CRM114-Status: GOOD (  26.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Wed, May 29, 2019 at 12:09 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> On 27/05/2019 16:02, Neil Armstrong wrote:
> > This patch adds basic support for :
> > - Amlogic G12B, which is very similar to G12A
> > - The HardKernel Odroid-N2 based on the S922X SoC
> >
> > The Amlogic G12B SoC is very similar with the G12A SoC, sharing
> > most of the features and architecture, but with these differences :
> > - The first CPU cluster only has 2xCortex-A53 instead of 4
> > - G12B has a second cluster of 4xCortex-A73
> > - Both cluster can achieve 2GHz instead of 1,8GHz for G12A
> > - CPU Clock architecture is difference, thus needing a different
> >   compatible to handle this slight difference
> > - Supports a MIPI CSI input
> > - Embeds a Mali-G52 instead of a Mali-G31, but integration is the same
> >
> > Actual support is done in the same way as for the GXM support, including
> > the G12A dtsi and redefining the CPU clusters.
> > Unlike GXM, the first cluster is different, thus needing to remove
> > the last 2 cpu nodes of the first cluster.
> >
> > Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> > ---
> >  arch/arm64/boot/dts/amlogic/Makefile          |   1 +
> >  .../boot/dts/amlogic/meson-g12b-odroid-n2.dts | 288 ++++++++++++++++++
> >  arch/arm64/boot/dts/amlogic/meson-g12b.dtsi   |  82 +++++
> >  3 files changed, 371 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> >  create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
> >
> > diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
> > index e129c03ced14..07b861fe5fa5 100644
> > --- a/arch/arm64/boot/dts/amlogic/Makefile
> > +++ b/arch/arm64/boot/dts/amlogic/Makefile
> > @@ -3,6 +3,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-axg-s400.dtb
> >  dtb-$(CONFIG_ARCH_MESON) += meson-g12a-sei510.dtb
> >  dtb-$(CONFIG_ARCH_MESON) += meson-g12a-u200.dtb
> >  dtb-$(CONFIG_ARCH_MESON) += meson-g12a-x96-max.dtb
> > +dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2.dtb
> >  dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-nanopi-k2.dtb
> >  dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-nexbox-a95x.dtb
> >  dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-odroidc2.dtb
> > diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> > new file mode 100644
> > index 000000000000..48783ead8dfb
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> > @@ -0,0 +1,288 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright (c) 2019 BayLibre, SAS
> > + * Author: Neil Armstrong <narmstrong@baylibre.com>
> > + */
> > +
> > +/dts-v1/;
> > +
>
> [...]
>
> > +
> > +     hub_5v: regulator-hub_5v {
> > +             compatible = "regulator-fixed";
> > +             regulator-name = "HUB_5V";
> > +             regulator-min-microvolt = <5000000>;
> > +             regulator-max-microvolt = <5000000>;
> > +             vin-supply = <&vcc_5v>;
> > +
> > +             /* Connected to the Hub CHIPENABLE, LOW sets low power state */
> > +             gpio = <&gpio GPIOH_5 GPIO_ACTIVE_HIGH>;
> > +             enable-active-high;
> > +     };
> > +
> > +     usb_pwr_en: regulator-usb_pwr_en {
> > +             compatible = "regulator-fixed";
> > +             regulator-name = "USB_PWR_EN";
> > +             regulator-min-microvolt = <5000000>;
> > +             regulator-max-microvolt = <5000000>;
> > +             vin-supply = <&hub_5v>;
> > +
> > +             /* Connected to the microUSB port power enable */
> > +             gpio = <&gpio GPIOH_6 GPIO_ACTIVE_HIGH>;
> > +             enable-active-high;
> > +     };
> > +
>
> [...]
>
> > +
> > +&usb {
> > +     status = "okay";
> > +     vbus-supply = <&usb_pwr_en>;
> > +};
> > +
> > +&usb2_phy0 {
> > +     phy-supply = <&vcc_5v>;
> > +};
> > +
> > +&usb2_phy1 {
> > +     phy-supply = <&vcc_5v>;
> > +};
>
> In fact, I need to fixup here :
>
> usb2_phy1 needs &hub_5v and regulator-usb_pwr_en depends on &vcc_5v instead...
sounds fine for me because I don't see a better way for now

> @Martin, can I still keep your reviewed-by for v5 ?
yes, you can keep it

when you re-send it: can you please add a comment to the phy-supply in
usb2_phy1?
I have this in mind: "enable the hub which is connected to this port"
(imho this is a valuable hint together with the "CHIPENABLE" comment
that you already have inside &hub_5v and it helps to make it easier to
understand without having to test it on physical hardware)


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
