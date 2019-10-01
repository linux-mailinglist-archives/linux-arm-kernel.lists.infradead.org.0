Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F9AC406F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 20:54:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A4WjY7E0xhDFzIlJKjdYYsHGuHXL5MifuTOtk6UbNrc=; b=a9/eBUlWtArrnm
	yGtTDL9F5lOEH5Jp31GY3glRPjHK9ZxOu5LyAh8KMn/SvI3iPevf752Iqb/Mc7sldaPfF1oK4T6ZU
	bHZnwSL/pnrRPiYVxVfjlWYertfeyUIy4ejQbriB62ibeBkScm0Pq12kl6azbPSOpZ5owGAjjoNNi
	XcTaaWSQ45hsO7/fT4Vk0SvtIjSRyzkfwCv4AiQGV6kVSVRfHoP0B8dge0l73zjTpg9cgPAniIywM
	gBOdKCDiQDRmVosqwm1LT20Wp1TWFV8FXzu0wMwPL/Gf7QD412NyLzIDRGZFo2XfI7LOY8Ta68nka
	1T8JNlKJ79Q18Adngc4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFNHz-0004Yo-H3; Tue, 01 Oct 2019 18:54:23 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFNHq-0004WT-Fz; Tue, 01 Oct 2019 18:54:15 +0000
Received: by mail-ot1-x343.google.com with SMTP id o44so12503668ota.10;
 Tue, 01 Oct 2019 11:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=57yXlV8OeF+0A0WSjdRw1RAKAtRQrYraqmnbKpxC2+Y=;
 b=IVRg4ziD4+m3AGA84oC1PB6cVSjQE841td4dJj4H4TiI3uRrXjHOY9tPNPttnsefSC
 O/wQGnPrIVk5CYD/e2mKINg3Q9+Yy0hbKRD0kBjE/FWb0Js9aQWEhYi8cLeZE+aj7NQl
 POude1xddiy+mipI/Z8vyxQ2Ci0pft9aGW0k8y+xS9rO7CiKlVYoHiVaVYvpjUkT1EFr
 sjZzKdCsSP34UG2KoUoAMGSvdzPdAY8JNUJKcWxRaeW1HICJNne7GtoR0XM0XGTuBYc5
 RXprE73Olm5ge/vMWloiBAjGfX8Yqgz/h6BiG3uuZQDIP202qRtjoFHMRgtBQPYPRMgw
 0FRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=57yXlV8OeF+0A0WSjdRw1RAKAtRQrYraqmnbKpxC2+Y=;
 b=XKH8E6QeUyJSALmrilA80fT1X9NbzsN3NwzYOeVbmKRXUnNR1I+B8JmoEBK2R+wwf+
 JJafVBMPJEkDL4lFHI9PSQ8wxkixT1nkH5hUKxyiGb0bI11LE826cRRdu0nWsbbOwvrr
 n9PlYdriAMRicTCiqh3exGz7kFB80w/dnZYoq5JvKw7OB6o2wiiM8UMrIw1TiK/jXWro
 OlzJC5H8RqmMe/Vi/K+2beWgKnV0WZUPuI2XA9gY1B8RaOBBfqn/D4hZVWo45th0B/az
 ROhSwLBEmrdEQhdRp1YTt2XG4IVwptRN0VwzQs4+HtLPU4IQfuf5jnTS8LvPzPXnorhV
 TEYQ==
X-Gm-Message-State: APjAAAVdHsQobNKX7Sv2HVLAoQ6FZHVARwvJWqYwmzOvMkpVbmhbglI/
 67o0MfmQ2p3/4ZsN+2Hv/9yoedCGmaOhUjvkz1Y=
X-Google-Smtp-Source: APXvYqxLEQLgzH4uct9tKZ1G7O2LATrGxjQXO5VcuOdLMA8/sRylhq0Z66fDA037/nvoHjZZHwt1o+5IEgjEjGZQuWM=
X-Received: by 2002:a05:6830:150d:: with SMTP id
 k13mr11986095otp.98.1569956050467; 
 Tue, 01 Oct 2019 11:54:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190921151835.770263-1-martin.blumenstingl@googlemail.com>
 <20190921151835.770263-3-martin.blumenstingl@googlemail.com>
 <1jftkcr3uy.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1jftkcr3uy.fsf@starbuckisacylon.baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 1 Oct 2019 20:53:59 +0200
Message-ID: <CAFBinCCED4YWYkdtrfrC80C8WLE=fyMJdjTa3wFNMJgC1OsoOA@mail.gmail.com>
Subject: Re: [PATCH 2/6] clk: meson: add a driver for the Meson8/8b/8m2 DDR
 clock controller
To: Jerome Brunet <jbrunet@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_115414_557067_4988C9B2 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jerome,

thank you for taking the time to go through this!

On Tue, Oct 1, 2019 at 3:29 PM Jerome Brunet <jbrunet@baylibre.com> wrote:
[...]
> > +#include <linux/platform_device.h>
> > +#include <linux/mfd/syscon.h>
>
> syscon is not used in the driver
oops, good catch - thank you

[...]
> > +static struct clk_hw_onecell_data meson8_ddr_clk_hw_onecell_data = {
> > +     .hws = {
> > +             [DDR_CLKID_DDR_PLL_DCO]         = &meson8_ddr_pll_dco.hw,
> > +             [DDR_CLKID_DDR_PLL]             = &meson8_ddr_pll.hw,
>
> I wonder if onecell is not overkill for this driver. We won't expose the
> DCO, so only the post divider remains
>
> Do you expect this provider to have more than one leaf clock ?
> If not, maybe you could use of_clk_hw_simple_get() instead ?
there's some more clock bits in DDR_CLK_CNTL - the public A311D
datasheet has a description for these bits but I'm not sure they do
the same on Meson8/Meson8b/Meson8m2
all I know is that some magic bytes are written to DDR_CLK_CNTL in the
old u-boot code

that's why I don't want to make any assumptions and play safe here (by
using a onecell clock provider)

> > +     },
> > +     .num = 2,
> > +};
> > +
> > +static struct clk_regmap *const meson8_ddr_clk_regmaps[] = {
> > +     &meson8_ddr_pll_dco,
> > +     &meson8_ddr_pll,
> > +};
> > +
> > +static const struct regmap_config meson8_ddr_clkc_regmap_config = {
> > +     .reg_bits = 8,
> > +     .val_bits = 32,
> > +     .reg_stride = 4,
> > +     .fast_io = true,
>
> I think fast_io will default to true with memory based register.
> Setting the max_register would be nice
good point - I'll take care of this when sending v2


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
