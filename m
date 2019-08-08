Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 918728585B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 05:00:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6WTJplxCjI3R4Y5QCth0PqNzkSqlWlJuF/BO8vnIVAQ=; b=WizPr5aSn4q4ZI
	QiCegmzvoWEbHp+sQg2QNjWG0B63M8J+NbEYveyNMVE42sFfZitn7hUjiiemWmBP+/SZnGZIOhbf4
	4/f3utHmPQI1s3jqtdHIP3KQJ0s6h4C8C1ueOrUfKvhidIdeaf7o+R9weEiEQwDePIY+dkK1OuY0e
	a9aAZ2mYAu6AQMvy/HZFoWi1K8Byb/VCNHx1XR1iDv0GSZk0aatRDSwIDalmg6RdvarYWXrq5pg87
	qPm+Nl1AP9MJggURtC4S2h0EMBo5ePs/ENUnS1d8t3Jy3xgCkzrlHsTdZzHUdsnWRqgc4E8DHrM8t
	nxDemqpmGNZqJnd1HEHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvYfG-0004Fy-Qa; Thu, 08 Aug 2019 03:00:31 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvYeY-0004Eu-L4
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 02:59:49 +0000
Received: by mail-pl1-x643.google.com with SMTP id y8so763367plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 19:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=M46+rRD9490JDPK9ddkL3Wmb4Wh5zKQCmCDCkR+q5kg=;
 b=wO9Xh2PXrpg9lU0IsFaORz0XFZmPbM1HXodeJlUo0SCuE2yy7Fj3+g4OIoXK82mHy+
 +ArgkMosO7hF6RtLc2jyV+Cr6Tofxyig1mge9yOHd4ZmHmSIWyKwUYvrOjphOfaBVkDQ
 ipcx6WXAHaLsSjeOYnpBqtwfWDHIa+oJkCKMnTy68/gMwLB0i49RwxdXcEjI7ylsvXbE
 wkpmdCR37V3yqabyJT0Qq1g4kiEX4ehM5uArO4F8lh3Fh2BWxA61kuVyLzyJ3fg7fc2Z
 3NAYzY8Li9PFoC7jsf3b1GAhDygCDA6COvp++KwnIjMdcT5YpWzt3KZjt6foFcDHqu5B
 BDRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=M46+rRD9490JDPK9ddkL3Wmb4Wh5zKQCmCDCkR+q5kg=;
 b=bVJkecU8hJz3rb7VEX2M2VchvDlikanwUwsj901watTieRv2jlOL2OWwTCvCLWviaZ
 vhWZwBLcoRksf2KNEkbDIz86UMCVsqrV3YWHNGcKymeomP6NlA+BeMyQb6aQaOhB4Up9
 LmAXvYChbJiKhXsV/G/a09uLnBih9JVIG9PhplJ259GU8BD3hUeadWc2/uQK4h62e20T
 HG9ZkmELxTy3NGxzjzo4QrZuoH7pGRrPh/JiGkGtvI1r+SZJ1Wo0MXy+a0/+hUUSqeg0
 2km9SD2PdYOJfaaybOYOZvjlk/CAHPcioWN0UVEjL81OGHh12N9USqkMWwE1Xoi2W2mS
 rK0Q==
X-Gm-Message-State: APjAAAWWu1n6VpTprfeFNuMCr4jj64RmNEUMVnclTY4wQRWrdvRWF+6j
 xpC1wg4YG8qeGnAB2IwNYmZjxQ==
X-Google-Smtp-Source: APXvYqydfCMfjzlAEJHfPHmY2ccUh+xmD8VV6YjY9PVxun1Oekki1EK+6Uzfy4f1k1yFW/OMQeiMjw==
X-Received: by 2002:a17:902:f089:: with SMTP id
 go9mr11197346plb.81.1565233185039; 
 Wed, 07 Aug 2019 19:59:45 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152]) by smtp.googlemail.com with ESMTPSA id
 j20sm88282137pfr.113.2019.08.07.19.59.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 07 Aug 2019 19:59:44 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 guillaume La Roque <glaroque@baylibre.com>
Subject: Re: [PATCH v2 2/6] thermal: amlogic: Add thermal driver to support
 G12 SoCs
In-Reply-To: <CAFBinCB3ZBPVEJKV2Rfh_w-zWrhoToYdoYE6Wox+JeB-YH+Khw@mail.gmail.com>
References: <20190731153529.30159-1-glaroque@baylibre.com>
 <20190731153529.30159-3-glaroque@baylibre.com>
 <CAFBinCDGSJABnS1L1ULueyeXZaV38qrxEA0a12gB-uyRC_TvPQ@mail.gmail.com>
 <14e14cd9-46bd-0d43-654c-6db64397f5c7@baylibre.com>
 <CAFBinCB3ZBPVEJKV2Rfh_w-zWrhoToYdoYE6Wox+JeB-YH+Khw@mail.gmail.com>
Date: Wed, 07 Aug 2019 19:59:43 -0700
Message-ID: <7hblx0fjkw.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_195946_986579_D95D2142 
X-CRM114-Status: GOOD (  25.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> Hi Guillaume,
>
> On Mon, Aug 5, 2019 at 2:48 PM guillaume La Roque <glaroque@baylibre.com> wrote:
>>
>> Hi Martin,
>>
>> again thanks for your review.
> you're welcome - thank you for working on the driver :-)
>
> [...]
>> > The IP block has more functionality, which may be added to this driver
>> > in the future:
>> > - reading up to 16 stored temperature samples
>>
>> it's not working, you can verify it if you check the regmap define in the driver. in fact temp is only write in one register, it's confirmed by amlogic.
> I missed that - so please skip this part
>
> [...]
>> >> +config AMLOGIC_THERMAL
>> > we typically use "MESON" in the Kconfig symbols:
>> > $ grep -c AMLOGIC .config
>> > 1
>> > $ grep -c MESON .config
>> > 33
>> >
>> > I also wonder if we should add G12 or G12A so we don't conflict with
>> > upcoming thermal sensors with a different design (assuming that this
>> > will be a thing).
>> > for example we already have three different USB2 PHY drivers
>> >
>> > [...]
>>
>> i check with Neil and for new family it's better to use Amlogic instead of meson.
> can you please share the considerations behind this decision?
> if new drivers should use AMLOGIC_* Kconfig symbols instead of MESON_*
> then we all should know about it
>
>> i don't add G12 because we already know it's same sensors for SM1 SoC family [0].
> my idea behind this was to avoid conflicts in the future
> in case of the thermal driver we may be fine with using a generic name
> assuming that Amlogic will not switch to a new IP block in the next
> years
> I'm not saying you have to change the name - I'm bringing this up so
> you can decide for yourself based on examples from the past
>
> here are a few examples:
> - when Kevin upstreamed the MMC driver for GX he decided to use
> MMC_MESON_GX for the Kconfig symbol name. it turns out that this is
> smart because there are at least two other MMC controller IPs on the
> 32-bit SoCs. due to him including GX in the name the drivers are easy
> to differentiate (MMC_MESON_MX_SDIO and MMC_MESON_MX_SDHC being the
> other ones, while the latter is not upstream yet)
> - when Carlo upstreamed the eFuse driver he decided to use MESON_EFUSE
> for the Kconfig symbol name. I found out much later that the 32-bit
> SoCs use a different IP (or at least direct register access instead of
> going through Secure Monitor). the driver for the 32-bit SoCs now uses
> MESON_MX_EFUSE. if you don't know which driver applies where then it's
> easy to mix up MESON_EFUSE and MESON_MX_EFUSE
> - when Jerome upstreamed the ALSA driver for AXG (which is also used
> on G12A and G12B) he decided to use the SND_MESON_AXG_* prefix for the
> Kconfig symbol names. in my opinion this was a good choice because GXM
> and everything earlier (including the 32-bit SoCs) use a different
> audio IP block. we won't have a Kconfig symbol name clash when a
> driver for the "older" SoCs is upstreamed
> - (there are more examples, Meson8b USB PHY driver, Meson8b DWMAC
> glue, ... - just like there's many examples where the IP block is
> mostly compatible with older generations: SAR ADC, RNG, SPI, ...)

While these are all good examples, you can see it can go both ways, so
there's really no way know up front what is the "right" way.  We only
know after the fact.  Unfortunately, we simply have no visibility into
future chips and where IP blocks may be shared or not (there are other
examples where vendors add a new version of an IP *and* keep the old
version. ;)

Even having worked inside a (different) SoC vendor and having some
knowledge about what IPs are shared, it's difficult to get this right.

> I'm not sure what driver naming rules other mainline SoC teams use
> to me it seems that the rule for Allwinner driver names is to use the
> "code-name of the first SoC the IP block appeared in"

That's a good rule of thumb (and one we generally follow) but I don't
feel it's important enough to enforce strictly either.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
