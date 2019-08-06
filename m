Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AADC839DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 21:53:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aSkqjYp6v+wkF+ibMpOOJPzgLwTCa5SHd0a1RrM1rCU=; b=GebpAps6wSyoIf
	TK9oftGNnGQt+Dt8HLqqwOkW0snVrhLk5q3Z4mmbYhuUK0uT6JTYWuFuhXcJg5CqycyDcXlb5ZQHc
	rr7ewuOWIYWFUQC1WPseQswe4grjuxeHRwVLsePowULstwp3/aAWtWVJ7HXt4/HCIpLLOAQ9iaGjN
	IykqK+DnEXDsmjTwz8lOv7GdKxWdAj5Rjyc0j7udPCL6xsZL6oy0+Ja4COGjzUETZuJDYqGWxoB9H
	A9E9BJ+KcYtVP4Wm2guQARQAdioDmmFtVcnYCtYf3yIXUnMD5oAhCb60XGKH2J/Esgip5Oe6NE2FG
	eFzay7XxUyXHQ4Y8siEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv5Vy-0001d1-3k; Tue, 06 Aug 2019 19:52:58 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv5Vl-0001bb-6M; Tue, 06 Aug 2019 19:52:46 +0000
Received: by mail-oi1-x242.google.com with SMTP id c15so13007690oic.3;
 Tue, 06 Aug 2019 12:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4E/kye31gm/TUQMINOCXfCGV9Lfx0lm6nnvhyTx90lw=;
 b=Yzk47bOJktflINEYudmIXcRskp+l8U5BovlNaqWp2akIE2xwTuHvoX3zT22MAUDuJ3
 XO8JCNSJ39+r3FvB83PSqvCOdBb6dA453gqBq5UjxYm/x939xxHrUQzGEjpWMeDkbg7C
 PU9R1vq6BARJBbD+Qx8FegPLsD/BA+rrPXewHWSRN9ukZN2EId0grtB068+Xr6vbxVvs
 fJ9+rJiecg5Jn3pzoqdn4FJOtqfEIua19AftTYsNEwolx2VFWVCN7f0cwiIYqdjfj2ew
 nwgw6Avn3h9aL2w/i5R+J0oEt6Ie4TjULWWKGT8FbgpuY1Nd4cVcGk7HfaKsTVYhV7NB
 aslA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4E/kye31gm/TUQMINOCXfCGV9Lfx0lm6nnvhyTx90lw=;
 b=OJdgfweOZbCKFyYuecfp9BcHYOGqq0l24Ig2G3+xVMP1JNRwFyN64OXstc3YBuzppx
 HvCNWMteU7yjF8Ww4eZP2VV708MUG6BFudRJYegzJ/ZcrsUfScj/FX6+sXawOWlKSaT1
 3GjX7C6oKqlA5+kADF8saay0jzmWApWaeDD8iM56t5A7yG1bMmFs2mG4TdjWQq4X6mDS
 LLJWBBq+iSHzxk15rNIoRw7EkOGvj6SFAiv5ww/ZmGMfsjoGg0n9boj5anDBKiiU8BSt
 kWaW9xT5vub7inI6Ho+fEqjHSt2vrFejHfIeXvOx1KKahK2U29iAPJoVS4iHRuQu3tnI
 uc5Q==
X-Gm-Message-State: APjAAAWYyZqwS+52YDVcJIInpw9JCoBnlu8g2C7lqvhz9wyHSPNgHgek
 yajK0iRwQObKFD0kSYO5Upri5zTopikXYICNqByn3obh
X-Google-Smtp-Source: APXvYqw1ATDKzq4Ht5dmq0BSO1jAsgEOQjI9m/cdHrI7S9kc9h6PS8yJ28neuhhhpzIY2bUqGqV7RB4pF2K8DWgt1V0=
X-Received: by 2002:a05:6808:3d6:: with SMTP id
 o22mr3801512oie.140.1565121163808; 
 Tue, 06 Aug 2019 12:52:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190731153529.30159-1-glaroque@baylibre.com>
 <20190731153529.30159-3-glaroque@baylibre.com>
 <CAFBinCDGSJABnS1L1ULueyeXZaV38qrxEA0a12gB-uyRC_TvPQ@mail.gmail.com>
 <14e14cd9-46bd-0d43-654c-6db64397f5c7@baylibre.com>
In-Reply-To: <14e14cd9-46bd-0d43-654c-6db64397f5c7@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 6 Aug 2019 21:52:32 +0200
Message-ID: <CAFBinCB3ZBPVEJKV2Rfh_w-zWrhoToYdoYE6Wox+JeB-YH+Khw@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] thermal: amlogic: Add thermal driver to support
 G12 SoCs
To: guillaume La Roque <glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_125245_268932_E9231334 
X-CRM114-Status: GOOD (  22.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, khilman@baylibre.com,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Guillaume,

On Mon, Aug 5, 2019 at 2:48 PM guillaume La Roque <glaroque@baylibre.com> wrote:
>
> Hi Martin,
>
> again thanks for your review.
you're welcome - thank you for working on the driver :-)

[...]
> > The IP block has more functionality, which may be added to this driver
> > in the future:
> > - reading up to 16 stored temperature samples
>
> it's not working, you can verify it if you check the regmap define in the driver. in fact temp is only write in one register, it's confirmed by amlogic.
I missed that - so please skip this part

[...]
> >> +config AMLOGIC_THERMAL
> > we typically use "MESON" in the Kconfig symbols:
> > $ grep -c AMLOGIC .config
> > 1
> > $ grep -c MESON .config
> > 33
> >
> > I also wonder if we should add G12 or G12A so we don't conflict with
> > upcoming thermal sensors with a different design (assuming that this
> > will be a thing).
> > for example we already have three different USB2 PHY drivers
> >
> > [...]
>
> i check with Neil and for new family it's better to use Amlogic instead of meson.
can you please share the considerations behind this decision?
if new drivers should use AMLOGIC_* Kconfig symbols instead of MESON_*
then we all should know about it

> i don't add G12 because we already know it's same sensors for SM1 SoC family [0].
my idea behind this was to avoid conflicts in the future
in case of the thermal driver we may be fine with using a generic name
assuming that Amlogic will not switch to a new IP block in the next
years
I'm not saying you have to change the name - I'm bringing this up so
you can decide for yourself based on examples from the past

here are a few examples:
- when Kevin upstreamed the MMC driver for GX he decided to use
MMC_MESON_GX for the Kconfig symbol name. it turns out that this is
smart because there are at least two other MMC controller IPs on the
32-bit SoCs. due to him including GX in the name the drivers are easy
to differentiate (MMC_MESON_MX_SDIO and MMC_MESON_MX_SDHC being the
other ones, while the latter is not upstream yet)
- when Carlo upstreamed the eFuse driver he decided to use MESON_EFUSE
for the Kconfig symbol name. I found out much later that the 32-bit
SoCs use a different IP (or at least direct register access instead of
going through Secure Monitor). the driver for the 32-bit SoCs now uses
MESON_MX_EFUSE. if you don't know which driver applies where then it's
easy to mix up MESON_EFUSE and MESON_MX_EFUSE
- when Jerome upstreamed the ALSA driver for AXG (which is also used
on G12A and G12B) he decided to use the SND_MESON_AXG_* prefix for the
Kconfig symbol names. in my opinion this was a good choice because GXM
and everything earlier (including the 32-bit SoCs) use a different
audio IP block. we won't have a Kconfig symbol name clash when a
driver for the "older" SoCs is upstreamed
- (there are more examples, Meson8b USB PHY driver, Meson8b DWMAC
glue, ... - just like there's many examples where the IP block is
mostly compatible with older generations: SAR ADC, RNG, SPI, ...)

I'm not sure what driver naming rules other mainline SoC teams use
to me it seems that the rule for Allwinner driver names is to use the
"code-name of the first SoC the IP block appeared in"

[...]
> >> +static int amlogic_thermal_get_temp(void *data, int *temp)
> >> +{
> >> +       unsigned int tvalue;
> >> +       struct amlogic_thermal *pdata = data;
> >> +
> >> +       if (!data)
> >> +               return -EINVAL;
> >> +
> >> +       regmap_read(pdata->regmap, TSENSOR_STAT0, &tvalue);
> >> +       *temp = code_to_temp(pdata,
> >> +                            tvalue & TSENSOR_READ_TEMP_MASK);
> > maybe simply move the implementation from code_to_temp here?
>
> for the optional function it could be a problem if i move all in code_to_temp.
>
> i prefer to have a function which are just do the conversion.
I didn't consider this before but you are right
if the other temperature registers (like IRQ thresholds) also use a
"temperature code" then it should be a dedicated function (so it'll be
easier to add more functionality to the driver)


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
