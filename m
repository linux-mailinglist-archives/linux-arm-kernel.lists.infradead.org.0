Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 956A49AC9C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 12:11:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6nVSMf5BXpRdmpsJejJABaw/9z7JFx/dGA6RA5w0IZw=; b=KAdLOVYGKH7nKN
	WZEObh6nJ0jGSOHmBH0Wfyf1AF6Qo60DNoWR7c6IbEvDNTF+Jo3iK+tj3ubMSxbgRKBFb0hvPZ9uG
	ajU9JfNAS8Zn3LkCdMpopyR2bPrfT9UbKNgzmwNp2pZtGZbVxbCSRnAFBs5UhXD4tFrL/ExwGXwsj
	1sUkX4PiTeXQDj+xK2E0VdM0o/zoKhYG2TTRreo8u2lpQM+rJGe5FishR7sLaaonKUDB1kPxGm7yP
	0dlnAvi4fLI9tuzHivDwTNqkWan3alCBP29zMVm/G/fXUSThInwKbdreSCHC+GDI2DvmjQHLoyzMm
	d/l8rKNIKw10Pub5PJYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i16X7-0002MO-Vb; Fri, 23 Aug 2019 10:11:02 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i16Wu-0002Ld-4k
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 10:10:50 +0000
Received: by mail-ed1-f66.google.com with SMTP id w5so12632460edl.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 03:10:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xKS1KyGtoYN5+tkn28jHjU+gIFqU2WJasV1MLrqgjLs=;
 b=d/LP+LM/ql6CaQaPi2e8b1cAEeRsOo4r5H4w+YYRPu47Ep79bjtT3DTp7q76hjXo40
 d2UrEx+eUzVzr3XVRlfBtJ7EV3XJ3tJ5qJulUvhMQuO6iE4Uasn+JL9IXLcKyd9HNc5C
 qmEFKgFrsZ6Mfzaa2rA1/y1kkjBLk6A6+s4qRHAAvK+5eDaPhol/GvN38vZzwufDt2Y0
 NFyQypG5NgVz4EXuyGWuFqaIFY4SlCOWtjgBzrE5W9M9PvlHdGiMsyVZUdWZVVugaIE/
 0SavqNsyWZUpMlCIKjZTuT0UE5Q0Bla7BoDvSn2gy+l2sEtdG7AIE5On/2a6aJXAzkko
 qolw==
X-Gm-Message-State: APjAAAXLehdjdMrqK7ZLAQzyRskl4gnRBtPHmoSLy7Pl2c/7OsHLtyaX
 0LtKHbmdvjUf0AwHBtyZustIqV55lPw=
X-Google-Smtp-Source: APXvYqxJ1hOnP+awieHYSBtDlHatg8rOwlF67XaOj6FL172122yS8yFhp+BSIu1kl1Ezm7BpKmHAmA==
X-Received: by 2002:a17:906:aeca:: with SMTP id
 me10mr3446335ejb.255.1566555045305; 
 Fri, 23 Aug 2019 03:10:45 -0700 (PDT)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com.
 [209.85.128.41])
 by smtp.gmail.com with ESMTPSA id sa25sm339834ejb.37.2019.08.23.03.10.44
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 23 Aug 2019 03:10:44 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id p74so8375806wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 03:10:44 -0700 (PDT)
X-Received: by 2002:a7b:c8c5:: with SMTP id f5mr4120674wml.25.1566555044102;
 Fri, 23 Aug 2019 03:10:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190823094228.6540-1-megous@megous.com>
 <20190823100807.22heh2gahi7owo4e@flea>
In-Reply-To: <20190823100807.22heh2gahi7owo4e@flea>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 23 Aug 2019 18:10:30 +0800
X-Gmail-Original-Message-ID: <CAGb2v65mDt8t2sceTzKvYP6XVHJgikXyYMc+xWxZFkTJ+LZ1fg@mail.gmail.com>
Message-ID: <CAGb2v65mDt8t2sceTzKvYP6XVHJgikXyYMc+xWxZFkTJ+LZ1fg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: orange-pi-3: Enable WiFi
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_031048_189143_D3FE4FE7 
X-CRM114-Status: GOOD (  28.72  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>,
 Mark Rutland <mark.rutland@arm.com>, devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 6:08 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> Hi,
>
> On Fri, Aug 23, 2019 at 11:42:28AM +0200, megous@megous.com wrote:
> > From: Ondrej Jirman <megous@megous.com>
> >
> > Orange Pi 3 has AP6256 WiFi/BT module. WiFi part of the module is called
> > bcm43356 and can be used with the brcmfmac driver. The module is powered by
> > the two always on regulators (not AXP805).
> >
> > WiFi uses a PG port with 1.8V voltage level signals. SoC needs to be
> > configured so that it sets up an 1.8V input bias on this port. This is done
> > by the pio driver by reading the vcc-pg-supply voltage.
> >
> > You'll need a fw_bcm43456c5_ag.bin firmware file and nvram.txt
> > configuration that can be found in the Xulongs's repository for H6:
> >
> > https://github.com/orangepi-xunlong/OrangePiH6_external/tree/master/ap6256
> >
> > Mainline brcmfmac driver expects the firmware and nvram at the following
> > paths relative to the firmware directory:
> >
> >   brcm/brcmfmac43456-sdio.bin
> >   brcm/brcmfmac43456-sdio.txt
> >
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > ---
> >
> > Since RTC patches for H6 were merged, this can now go in too, if it looks ok.
> >
> > Other patches for this WiFi chip support were merged in previous cycles,
> > so this just needs enabling in DTS now.
> >
> > Sorry for the links in the commit log, but this information is useful,
> > even if the link itself goes bad. Any pointer what to google for
> > (file names, tree name) is great for anyone searching in the future.
>
> I understand, but this should (also?) be in the wiki. Please add it
> there too.
>
> > Please take a look.
> >
> > Thank you,
> >       Ondrej
> >
> >  .../dts/allwinner/sun50i-h6-orangepi-3.dts    | 48 +++++++++++++++++++
> >  1 file changed, 48 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> > index eda9d5f640b9..49d954369087 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> > @@ -56,6 +56,34 @@
> >               regulator-max-microvolt = <5000000>;
> >               regulator-always-on;
> >       };
> > +
> > +     reg_vcc33_wifi: vcc33-wifi {
> > +             /* Always on 3.3V regulator for WiFi and BT */
> > +             compatible = "regulator-fixed";
> > +             regulator-name = "vcc33-wifi";
> > +             regulator-min-microvolt = <3300000>;
> > +             regulator-max-microvolt = <3300000>;
> > +             regulator-always-on;
> > +             vin-supply = <&reg_vcc5v>;
> > +     };
> > +
> > +     reg_vcc_wifi_io: vcc-wifi-io {
> > +             /* Always on 1.8V/300mA regulator for WiFi and BT IO */
> > +             compatible = "regulator-fixed";
> > +             regulator-name = "vcc-wifi-io";
> > +             regulator-min-microvolt = <1800000>;
> > +             regulator-max-microvolt = <1800000>;
> > +             regulator-always-on;
> > +             vin-supply = <&reg_vcc33_wifi>;
> > +     };
> > +
> > +     wifi_pwrseq: wifi_pwrseq {

IIRC we shouldn't use underscores in node names. Maxime can you fix that up?

ChenYu

> > +             compatible = "mmc-pwrseq-simple";
> > +             clocks = <&rtc 1>;
> > +             clock-names = "ext_clock";
> > +             reset-gpios = <&r_pio 1 3 GPIO_ACTIVE_LOW>; /* PM3 */
> > +             post-power-on-delay-ms = <200>;
> > +     };
> >  };
> >
> >  &cpu0 {
> > @@ -91,6 +119,25 @@
> >       status = "okay";
> >  };
> >
> > +&mmc1 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&mmc1_pins>;
>
> This is the default already. I've removed it and applied.
>
> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
