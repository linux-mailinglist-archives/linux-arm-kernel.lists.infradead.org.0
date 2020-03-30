Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 904761976A1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 10:38:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TrwQo1jRX1Lbdv4im2THwInSr+HPvyYg0RfoSXvxk3Y=; b=VpGD7Z9eVUkU4+
	+A2jbWEt9sqfjHCBQ2vEvq/eLWjuB2D6mTmImkc7w4jVIWWOdevCONNtEwGuOXcmHTWgJpeuWobuY
	hhWegtHLqJaHfe4dFCQftellft9wRaO98ZLYzZuwy86MqCOBM4YngKc7eLiwE/6unQqE1O5/5nXeT
	RKtKEdpWI471Qyn7BoCeSiSh0Ff6LSp9xH5t2Pkezi40XnERdgHURpKgiCbl7uP2tFB/SJg7PLGA5
	0F2lD3iUPaa2EZKAgjdUNyBUEPHcdLSiEU0g8a+lrFEAYSWCuEgvqOq6apyhbi6a027yG4X75i4fL
	1Cn0j48om4incDHqrjYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIpwJ-0003g2-2o; Mon, 30 Mar 2020 08:38:35 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIpw4-0003dy-Gp; Mon, 30 Mar 2020 08:38:22 +0000
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com
 [209.85.222.41]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id 02U8bmpK026269;
 Mon, 30 Mar 2020 17:37:49 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 02U8bmpK026269
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1585557469;
 bh=PxRmu3HuDIYTqEJxiJ5PqE2LXmQuo3D9zlavzY5jVI4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0xApPfPkJT36UPQQQaEfop5fSpIUYhpTWJLaYsBRAX1aCRJBkhLj8njhainNsLg2u
 le1aIUtI2Hyttctt9YzGRcnqLNOc7g/Y9c4Na1L/JGvuFf2thLVQ741LWePwsQjQFd
 8ZPMSTOZdGlMn4VNmVA2KbfUyWO+Sz2pYJ/jBeCAm0GUi7NTGZLfhnftW1BFNtVxVs
 koEoJ5f0KbkTsXz16CnGyQ7ncViAdnNVl8jmKxuBbcamfQTsAxEds+KrVZt30geLOY
 kJsfcs9LYjm9GBSAnVzp9co+bbmEgFTt5nSsOoUvG3dZWolfVaPo5nOdMoVsTdOBGm
 6B1w6fQlsf19w==
X-Nifty-SrcIP: [209.85.222.41]
Received: by mail-ua1-f41.google.com with SMTP id l18so5973093uak.4;
 Mon, 30 Mar 2020 01:37:49 -0700 (PDT)
X-Gm-Message-State: AGi0Puaf2LMixBWnF6GgASzJvmeuguv7JZcPVOHaqEVZ0bdf5ydhZXg/
 IRtoE8Bn/ARG65+0330capZcnYNu30PmUYZ3aFA=
X-Google-Smtp-Source: APiQypJeTOypTow5s/orWLiqA+luxDBNhpwR1xE86uZ7tA8NnJnWdBsJgIswlbl89EaZoapGrF/J2WDHqcRU1fH6V1M=
X-Received: by 2002:a9f:28c5:: with SMTP id d63mr6911883uad.25.1585557468135; 
 Mon, 30 Mar 2020 01:37:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200325220542.19189-1-robh@kernel.org>
 <20200325220542.19189-5-robh@kernel.org>
 <CAK7LNARJn4uugHxcjK+WOWBs0gPVZQsCu4y6M8hkNK1U5FehRA@mail.gmail.com>
In-Reply-To: <CAK7LNARJn4uugHxcjK+WOWBs0gPVZQsCu4y6M8hkNK1U5FehRA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 30 Mar 2020 17:37:11 +0900
X-Gmail-Original-Message-ID: <CAK7LNARXj3=1VPWL4kFmGkZuvV=yKb7gVaX2nbeiO54f-zWeHQ@mail.gmail.com>
Message-ID: <CAK7LNARXj3=1VPWL4kFmGkZuvV=yKb7gVaX2nbeiO54f-zWeHQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] dt-bindings: Add missing 'additionalProperties: false'
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_013820_788000_9B9CFA07 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, linux-iio@vger.kernel.org,
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
 Mark Brown <broonie@kernel.org>, linux-amlogic@lists.infradead.org,
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

Hi Rob,

On Mon, Mar 30, 2020 at 4:09 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Thu, Mar 26, 2020 at 7:06 AM Rob Herring <robh@kernel.org> wrote:
> >
> > Setting 'additionalProperties: false' is frequently omitted, but is
> > important in order to check that there aren't extra undocumented
> > properties in a binding.
> >
> > Ideally, we'd just add this automatically and make this the default, but
> > there's some cases where it doesn't work. For example, if a common
> > schema is referenced, then properties in the common schema aren't part
> > of what's considered for 'additionalProperties'. Also, sometimes there
> > are bus specific properties such as 'spi-max-frequency' that go into
> > bus child nodes, but aren't defined in the child node's schema.
> >
> > So let's stick with the json-schema defined default and add
> > 'additionalProperties: false' where needed. This will be a continual
> > review comment and game of wack-a-mole.
> >
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
>
>
> >  .../devicetree/bindings/gpio/socionext,uniphier-gpio.yaml      | 2 ++
>
>
> You may have already queue this up, but just in case.
>
> Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>



I take back Ack for socionext,uniphier-gpio.yaml



Now "make dt_binding_check" produces a new warning.

gpio@55000000: 'interrupt-parent' does not match any of the regexes:
'pinctrl-[0-9]+'


This binding uses 'interrupt-parent'
without 'interrupts'.

Instead, the mapping of the interrupt numbers
is specified by the vendor-specific property
socionext,interrupt-ranges



I cannot add   "interrupt-parent: true" because
dt-schema/meta-schemas/interrupts.yaml
has "interrupt-parent: false".


Is there any solution?



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
