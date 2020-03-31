Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C52C199B30
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:17:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IK0ERJHmmAETI1jSxQX7oD4G+4blx/ozydSs3c5tHes=; b=OPT5jsQciBA9u4
	Ptcbo9wQJipayrasFg1/wirk5ZrF5MsKg6gAB5tzWVDCwtHhYI9zWOvDZXEh9p3E3G74pmC3N2n9p
	ntJC8mLbWNMWmlxaVbeJ+e9gHu+7CM1BEaO5xmTrH+54pYRUvaSUdfP4Cq+eUrDofymlfL/D3tz3j
	C0Lz785czZTYp7RU9+AzkT5wZdiB5iDH6OsnYpVZK0E7bfNIYDBjpO88mVOzYKv0sHj6vVBdowX6W
	TfPVi7adiiGB5PL6FSK8iylCEuOhu3L20kEE3C0vC2vX6YDXTwn/efyt4Gkr24YXuRqFxVLy4fy1M
	pwGsSNOXOLXnoFjtwfYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJZq-00043k-Fc; Tue, 31 Mar 2020 16:17:22 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJZF-0003en-Kz; Tue, 31 Mar 2020 16:16:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=IK9k6BsytbnW1EXy7FI1eJsDUE+tu84D7QZT4uS5ZlU=; b=qexlpxKBLryiGBX+iCkyUSOeTz
 5JQ6Br7SWcZmqQv5hE3fT0P4eW4wtZWGuDas8jasGbqTAAvj+y+7eaCi+hapSePOquQ1HQQl8Gls/
 G5aIE+GVHy0L8CwcXlx4VLBoZeag++QtxcgQH6H8IbMEoUHN6WAayUf+91dhFuuulif6gBS7ZZcEc
 7Mcp1dOuOaNoyQyythrowVTGR53opccKTgQForYVkgQWEI+aw1D03V6ZWxRtI/l5fuqfu2hizna4y
 3XtRqtcEWEKhqLncBRRbYA6jlXZ4vtT6LInIqkQH6V9O+roqqQ1p2VKTdANMMXlehBltLdKvNtGuV
 b3/ZWLbA==;
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJI2s-0004FN-Le; Tue, 31 Mar 2020 14:39:15 +0000
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
 [209.85.222.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AA89E2145D;
 Tue, 31 Mar 2020 14:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585665552;
 bh=VQTYjDLJpBPL64v+KHcwfSavLEUmQ5VPbYuKeDQvfh4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=w9kKXD8z4sqI86PU33XbHmfq5R7o1rl1Yc6oUOAz42cwHppv6UAYyiBVNzHr/8rGq
 fiuijzJ4syHgX49+YFivKcsWhdJV6fv/bOG69I3vdo0Lq1npTDVuNQt+ItarZp4b9G
 a/bP28cpaoxY9yg7N1tSpyTZfOjD00o0nNDF4FO0=
Received: by mail-qk1-f178.google.com with SMTP id j4so23141537qkc.11;
 Tue, 31 Mar 2020 07:39:12 -0700 (PDT)
X-Gm-Message-State: ANhLgQ1LnmuRsJnnhlBo2Ivk2BrFcJvuVj30abEykvUd6WYzUXI01EM9
 Aq/2I/R+jgiiyfruAU4QAsJG8of+ukWxSFKoSg==
X-Google-Smtp-Source: ADFU+vs96kIPVk/bUhQUvXuwHTzxBhEjf4smiGd+iZOn7jyc5rfIytLi140jinW+le6E+iSeEnGKe3qbfJEIB3it89g=
X-Received: by 2002:a37:aa92:: with SMTP id t140mr4802134qke.119.1585665551704; 
 Tue, 31 Mar 2020 07:39:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200325220542.19189-1-robh@kernel.org>
 <20200325220542.19189-5-robh@kernel.org>
 <CAK7LNARJn4uugHxcjK+WOWBs0gPVZQsCu4y6M8hkNK1U5FehRA@mail.gmail.com>
 <CAK7LNARXj3=1VPWL4kFmGkZuvV=yKb7gVaX2nbeiO54f-zWeHQ@mail.gmail.com>
In-Reply-To: <CAK7LNARXj3=1VPWL4kFmGkZuvV=yKb7gVaX2nbeiO54f-zWeHQ@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 31 Mar 2020 08:39:00 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLDL6mVZ3Bb3f6eObF9SNwy6WK_srX5=m=NCN8Jq+-R+g@mail.gmail.com>
Message-ID: <CAL_JsqLDL6mVZ3Bb3f6eObF9SNwy6WK_srX5=m=NCN8Jq+-R+g@mail.gmail.com>
Subject: Re: [PATCH 4/4] dt-bindings: Add missing 'additionalProperties: false'
To: Masahiro Yamada <masahiroy@kernel.org>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 "open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Guillaume La Roque <glaroque@baylibre.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Lee Jones <lee.jones@linaro.org>,
 linux-clk <linux-clk@vger.kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Kevin Hilman <khilman@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Zhang Rui <rui.zhang@intel.com>, Brian Masney <masneyb@onstation.org>,
 DTML <devicetree@vger.kernel.org>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Linux PM mailing list <linux-pm@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Stephen Boyd <sboyd@kernel.org>, Networking <netdev@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Hartmut Knaack <knaack.h@gmx.de>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 30, 2020 at 2:38 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Hi Rob,
>
> On Mon, Mar 30, 2020 at 4:09 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Thu, Mar 26, 2020 at 7:06 AM Rob Herring <robh@kernel.org> wrote:
> > >
> > > Setting 'additionalProperties: false' is frequently omitted, but is
> > > important in order to check that there aren't extra undocumented
> > > properties in a binding.
> > >
> > > Ideally, we'd just add this automatically and make this the default, but
> > > there's some cases where it doesn't work. For example, if a common
> > > schema is referenced, then properties in the common schema aren't part
> > > of what's considered for 'additionalProperties'. Also, sometimes there
> > > are bus specific properties such as 'spi-max-frequency' that go into
> > > bus child nodes, but aren't defined in the child node's schema.
> > >
> > > So let's stick with the json-schema defined default and add
> > > 'additionalProperties: false' where needed. This will be a continual
> > > review comment and game of wack-a-mole.
> > >
> > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > ---
> >
> >
> > >  .../devicetree/bindings/gpio/socionext,uniphier-gpio.yaml      | 2 ++
> >
> >
> > You may have already queue this up, but just in case.
> >
> > Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>
>
>
>
> I take back Ack for socionext,uniphier-gpio.yaml
>
>
>
> Now "make dt_binding_check" produces a new warning.
>
> gpio@55000000: 'interrupt-parent' does not match any of the regexes:
> 'pinctrl-[0-9]+'
>
>
> This binding uses 'interrupt-parent'
> without 'interrupts'.
>
> Instead, the mapping of the interrupt numbers
> is specified by the vendor-specific property
> socionext,interrupt-ranges
>
>
>
> I cannot add   "interrupt-parent: true" because
> dt-schema/meta-schemas/interrupts.yaml
> has "interrupt-parent: false".
>
>
> Is there any solution?

I'd meant to just drop socionext,uniphier-gpio.yaml.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
