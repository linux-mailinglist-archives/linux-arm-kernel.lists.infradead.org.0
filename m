Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D48E586ABE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 21:48:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9VpRaXwCzkgzGybubK8KLciCGmEdxLL3EOJvhkNkBsg=; b=pdWaVRur4+K5gN
	/UHjE9pV+MMeGC7eFBTQz+jnJjy7OBbJbJCIKc7opGzYEuIa8ByFZVW2TcxsDrRdHRD6C48wEf8ou
	UuIYlUM/z81pGMOHjcbSQzTPMCpUKwSF9DoouOMAAksFaXCb5KzFFUrSiYw+3fsdUpURadGNYUOaK
	7w5rb71GouftiXtWoCfeJTHsrWiYxUWtED/34ATg+XcMViCpmacWw6yai6c+91KxDkBIRN0E4OxS5
	i+N4PHxN8QxpZm2ckQWb7t4moD7VYmT3iO08HobIBSy7v9s7lk/a5CiaWTiLz0HGkE+aeXN/ZjYDj
	f7BSHA7RNgKpmUbHQQUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvoOH-0002yh-4C; Thu, 08 Aug 2019 19:48:01 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvoO4-0002x5-7m; Thu, 08 Aug 2019 19:47:49 +0000
Received: by mail-ot1-x342.google.com with SMTP id j11so23020538otp.10;
 Thu, 08 Aug 2019 12:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fVsgaqUQ+TY2x5x7j3h0EJIjp1dyKYtAS/dTFHwFE4Q=;
 b=OpC2gncSoouwEVr7BnFdYNGd+LTHxiJVVLiZJqUASJhCoGnH7dth65A7q3cNhqzbaR
 pFGqq1Rvb1KcpsNFycH3tgSzHrHKMhleLnfVvqcyAQEKvIXtUPBMw2RLnJ7wsYwEaJ5E
 yFi56IdDPTVsWQpc/jaUbb2QY+sA0j32RCCUgsvHocyOyswM51qD1lPxs8a15pOav2Vg
 Uuk6GL3du0HTsrRV9oaaDjUPtyNNRKIYLoSLXls/+1ZSRgtGHWJLqnap/u5EQfPfsA8z
 ml9FIlnAiDzEokQGAeydeUOI8nz4l8lKhbmdO4H4lzO5iDYpQzzc8wh3lHuKDySsu+fO
 ZFYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fVsgaqUQ+TY2x5x7j3h0EJIjp1dyKYtAS/dTFHwFE4Q=;
 b=eS6GaT3Bf8HNP6eCkjv6MaJsqeAyG//iWU2c8/YeH/EVmBtZmGALfvK5eaSeYbYfcc
 VnNssSfjSEjwITai3Vn+KfAcSxbSSFXxRnBwrEJY/GMXvrwY+2gLWvTCfirGO7hhqQEK
 nMAjgCZFSHnycS6dpSVK24jgaihppgC4uCyh7mjaEXx5up4oye02XjQhwpok7346shF6
 AozoQ3t9oMtTYvin+6g2qqgkKwGAuzQMfCSIlD62S0L2V37kYVTtWd5SMLqAhMkytp3l
 fKCaXhvEe8AauVYDMfckoy1YgrvpoweK5GFYq91taI+4UQFMojtzP8pFk/vc+Ky93+M8
 9MPg==
X-Gm-Message-State: APjAAAWLZD791+pq/v749LKTGmHd6vPfCieLibHAjSlb8B4XkIwYWMKp
 krR4E9oeIhiNjVllAtsSRcrw1M3oWV6aDDjeMSU=
X-Google-Smtp-Source: APXvYqwB+udbmGy6ZFtRl3z5o6an+2PDm6oq7fHTtN2/gSnu1r5f4Cu204e9wczn6Do0L2d8lFmaDEqcIHEGVEjwifU=
X-Received: by 2002:aca:d415:: with SMTP id l21mr3860865oig.96.1565293666522; 
 Thu, 08 Aug 2019 12:47:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190731153529.30159-1-glaroque@baylibre.com>
 <20190731153529.30159-3-glaroque@baylibre.com>
 <CAFBinCDGSJABnS1L1ULueyeXZaV38qrxEA0a12gB-uyRC_TvPQ@mail.gmail.com>
 <14e14cd9-46bd-0d43-654c-6db64397f5c7@baylibre.com>
 <CAFBinCB3ZBPVEJKV2Rfh_w-zWrhoToYdoYE6Wox+JeB-YH+Khw@mail.gmail.com>
 <7hblx0fjkw.fsf@baylibre.com>
In-Reply-To: <7hblx0fjkw.fsf@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 8 Aug 2019 21:47:35 +0200
Message-ID: <CAFBinCBzDM7dpAKwf29UENvHgCEscyUCHdjQwb6Wkz4i2ShJbQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] thermal: amlogic: Add thermal driver to support
 G12 SoCs
To: Kevin Hilman <khilman@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_124748_303962_595D23F0 
X-CRM114-Status: GOOD (  27.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 guillaume La Roque <glaroque@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kevin,

On Thu, Aug 8, 2019 at 4:59 AM Kevin Hilman <khilman@baylibre.com> wrote:
>
> Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:
>
> > Hi Guillaume,
> >
> > On Mon, Aug 5, 2019 at 2:48 PM guillaume La Roque <glaroque@baylibre.com> wrote:
> >>
> >> Hi Martin,
> >>
> >> again thanks for your review.
> > you're welcome - thank you for working on the driver :-)
> >
> > [...]
> >> > The IP block has more functionality, which may be added to this driver
> >> > in the future:
> >> > - reading up to 16 stored temperature samples
> >>
> >> it's not working, you can verify it if you check the regmap define in the driver. in fact temp is only write in one register, it's confirmed by amlogic.
> > I missed that - so please skip this part
> >
> > [...]
> >> >> +config AMLOGIC_THERMAL
> >> > we typically use "MESON" in the Kconfig symbols:
> >> > $ grep -c AMLOGIC .config
> >> > 1
> >> > $ grep -c MESON .config
> >> > 33
> >> >
> >> > I also wonder if we should add G12 or G12A so we don't conflict with
> >> > upcoming thermal sensors with a different design (assuming that this
> >> > will be a thing).
> >> > for example we already have three different USB2 PHY drivers
> >> >
> >> > [...]
> >>
> >> i check with Neil and for new family it's better to use Amlogic instead of meson.
> > can you please share the considerations behind this decision?
> > if new drivers should use AMLOGIC_* Kconfig symbols instead of MESON_*
> > then we all should know about it
> >
> >> i don't add G12 because we already know it's same sensors for SM1 SoC family [0].
> > my idea behind this was to avoid conflicts in the future
> > in case of the thermal driver we may be fine with using a generic name
> > assuming that Amlogic will not switch to a new IP block in the next
> > years
> > I'm not saying you have to change the name - I'm bringing this up so
> > you can decide for yourself based on examples from the past
> >
> > here are a few examples:
> > - when Kevin upstreamed the MMC driver for GX he decided to use
> > MMC_MESON_GX for the Kconfig symbol name. it turns out that this is
> > smart because there are at least two other MMC controller IPs on the
> > 32-bit SoCs. due to him including GX in the name the drivers are easy
> > to differentiate (MMC_MESON_MX_SDIO and MMC_MESON_MX_SDHC being the
> > other ones, while the latter is not upstream yet)
> > - when Carlo upstreamed the eFuse driver he decided to use MESON_EFUSE
> > for the Kconfig symbol name. I found out much later that the 32-bit
> > SoCs use a different IP (or at least direct register access instead of
> > going through Secure Monitor). the driver for the 32-bit SoCs now uses
> > MESON_MX_EFUSE. if you don't know which driver applies where then it's
> > easy to mix up MESON_EFUSE and MESON_MX_EFUSE
> > - when Jerome upstreamed the ALSA driver for AXG (which is also used
> > on G12A and G12B) he decided to use the SND_MESON_AXG_* prefix for the
> > Kconfig symbol names. in my opinion this was a good choice because GXM
> > and everything earlier (including the 32-bit SoCs) use a different
> > audio IP block. we won't have a Kconfig symbol name clash when a
> > driver for the "older" SoCs is upstreamed
> > - (there are more examples, Meson8b USB PHY driver, Meson8b DWMAC
> > glue, ... - just like there's many examples where the IP block is
> > mostly compatible with older generations: SAR ADC, RNG, SPI, ...)
>
> While these are all good examples, you can see it can go both ways, so
> there's really no way know up front what is the "right" way.  We only
> know after the fact.  Unfortunately, we simply have no visibility into
> future chips and where IP blocks may be shared or not (there are other
> examples where vendors add a new version of an IP *and* keep the old
> version. ;)
>
> Even having worked inside a (different) SoC vendor and having some
> knowledge about what IPs are shared, it's difficult to get this right.
right. The fact that it'll be the IP block in SM1 will be backwards
compatible (or even the same) means that it has a longer life-span
than some of the USB PHY IP.
so I'm fine either way


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
