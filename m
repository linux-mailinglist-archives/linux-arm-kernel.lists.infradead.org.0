Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2360DCE863
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 17:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rknl112zZzIly1HzmU8NmJ/vLMuky63PVD2R5BTUJjg=; b=UyjbYA/wStuIXS
	Dy5iHhzoSD6NjjyGr6zs3H37t+s0hWPZpfblUIxofJlPxHMfsX9bHlIOQaSh164qJ3V8u0yVLdO3T
	SiFLWIMftUFAOAKzQUaHxMha/XyGoyO2K1DC5QnonRLPZoQF3YZuDv6+peNQps87ts/VfcEh/nmTu
	sCee26bgqfzzmqG+c2c8smJ+MRPy+NceYI54Dd177plk9nMFJ/EYXbicGvr0aGq2lsS+eCHhhDtlk
	wQ8RRmpCpANj1tzpbBRqC1b+E1Bqk5MpoYuiv1HK95BPQF2oftxsV4CSrvdXBBQaNRB0qWjQeuahV
	qb7OY8ocLGlqrpkVCNNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHVLt-0008KR-P6; Mon, 07 Oct 2019 15:55:13 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHVLZ-0008Jy-Q4; Mon, 07 Oct 2019 15:54:55 +0000
Received: by mail-io1-xd41.google.com with SMTP id n26so29615384ioj.8;
 Mon, 07 Oct 2019 08:54:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lvpOYPT25Dz/vPtn4WUNNAsTQj8w9iYHYk37s9wmbRA=;
 b=Ckvqu/VoFwKFHldPlCQQ7rGN0El4oSw62jZdcCzu59LwyF2msfcDQM63j0TmFd2YxT
 WAe3o/ieROixTeOWj5cRNIdhGzfdb3SSQ3c2/0hAmI4vacwT/AjZ4HdH47oBJz13v1Xr
 Zu8ism2Y1fiki6FPQl3fWyevesoLjP1eV251spvajxesKUS2hbYoN6+cWKrr9CAo71KK
 tRL3LBH1bAqTsv2FhLoatmnhFgfI8Mfg4LHc7RACVt965MBiLo30hVr5jrP8l7NJI/kw
 p3e7Ti728xG16cOQ5s+unqsH4DBrAZ3fE9TTt05hfU0+FOECcfP4b/OA8wKIHm+CJuwV
 9tVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lvpOYPT25Dz/vPtn4WUNNAsTQj8w9iYHYk37s9wmbRA=;
 b=fQZD1nS//aqYq2sROjHvRwxgyyvMWmwKuUuuCsAcTH08K1UuVfVNFnsVtZMzn5+Agi
 neIK8c0ADlSTUl88kTybhVb6yYQpdXphmvHZ9oJn9U9ZQv7dq2bkUx0yWed/73meImZI
 WA4FMm1+pDl7HLWUPZZ6XrhYGdCM3NeQj6M9Hxcv8ZlHmtmCIsg/e8ec8QI2tfdN5Twz
 eiq+wRFfo0xdjE635+lzWdjlknypI5vEl6TeJnOjL/Z7Y9wdiZE7d4bDXUTgDE8DEUAC
 TDQApLixEKnodcE7lHwqnx/PLXOtdqTLlKKkPOuGq8fpIpenIlXO5j9N2fpnX79zyLzV
 3aMg==
X-Gm-Message-State: APjAAAUCcF9crTMZ9nZlLRbKVGt9WUBJb3652lpcvnYWwWe298PVuIA5
 9rvO3hMNX/kwgGiPj1NXtwMXlOMuHck803Mgwbk=
X-Google-Smtp-Source: APXvYqxi4nNcdgpdM7NsVyNP5M/JKLLRb6BMM4Kll8kUSaYi7x+Qj5bGG21aaEgdWhPttIekzf3iOaMHq7JDv5ThOfI=
X-Received: by 2002:a02:2b2e:: with SMTP id h46mr27703157jaa.141.1570463693043; 
 Mon, 07 Oct 2019 08:54:53 -0700 (PDT)
MIME-Version: 1.0
References: <20191007131649.1768-1-linux.amoon@gmail.com>
 <20191007131649.1768-5-linux.amoon@gmail.com>
 <a6daf5e5-fadf-ca72-fc7b-1789abaab605@baylibre.com>
In-Reply-To: <a6daf5e5-fadf-ca72-fc7b-1789abaab605@baylibre.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 7 Oct 2019 21:24:41 +0530
Message-ID: <CANAwSgQBMzkdnuHc8_hFx0+Es2PWmCwgeqykCTieZ3BtTK1W7A@mail.gmail.com>
Subject: Re: [RFCv1 4/5] arm64: dts: meson: Add missing regulator linked to
 VCCV5 regulator to VDDIO_C/TF_IO
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_085453_848705_AF2D323A 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-amlogic@lists.infradead.org,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Mon, 7 Oct 2019 at 19:51, Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> On 07/10/2019 15:16, Anand Moon wrote:
> > As per schematics add missing VCCV5 power supply to VDDIO_C/TF_IO
> > regulator. Also add TF_3V3N_1V8_EN signal name to gpio pin.
> >
> > Fixes: c35f6dc5c377 (arm64: dts: meson: Add minimal support for Odroid-N2)
> > Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> > Cc: Jerome Brunet <jbrunet@baylibre.com>
> > Cc: Neil Armstrong <narmstrong@baylibre.com>
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> >  arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> > index 6bd23a1e7e1d..5daf176452f7 100644
> > --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> > +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> > @@ -66,11 +66,14 @@
> >               regulator-min-microvolt = <1800000>;
> >               regulator-max-microvolt = <3300000>;
> >
> > +             /* TF_3V3N_1V8_EN */
> >               gpios = <&gpio_ao GPIOAO_9 GPIO_ACTIVE_HIGH>;
> >               gpios-states = <0>;
> >
> >               states = <3300000 0>,
> >                        <1800000 1>;
> > +             /* U16 RT9179GB */
> > +             vin-supply = <&vcc_5v>;
> >       };
> >
> >       flash_1v8: regulator-flash_1v8 {
> >
>
> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

Thanks,

Best Regards
-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
