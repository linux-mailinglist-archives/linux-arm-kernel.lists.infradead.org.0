Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8297416C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 00:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O02yFkk0asoGnbgAPtyTgScpzFtb02RPBKsRbNPgocY=; b=hYc1mCOaAKqd2h
	acl7k+lVDYl8oyU3+MyQ57Px8tsdi0JFQXTVIZNutvigbZJlIDpsSKt2U76edKd1f/RqyD45/0oLz
	TOxt0iz5xDeq3ieFPOMB9hniwKbiKKYl8qcuZ4BB7r96r7BQ7OwjgDKQAm2UHKB/vMkt+Rj1G08Mv
	i5NDElnZDB/wc1lwuH0DvycauE2yNBRSTlO/vL1D97wrcKMUjvqqfaBPUp4hhFGztFqcsAisYACKy
	dmhtpCeVWNuDc4ekT8WYtB/q2fcqme7KrjCi+6Gb4DUi1BSBZI2JmDAsNRMSj4GdCtRy2kUPAUbEn
	eVOKOthm4ZUy3pZ6wP9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqPl8-0003Er-Qz; Wed, 24 Jul 2019 22:29:19 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqPks-0003Dy-OX
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 22:29:04 +0000
Received: by mail-pf1-x441.google.com with SMTP id c73so21622010pfb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 15:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Fn+jt6MVuRg1+Q1VoeC7kF7YB1DWtgkKK5poDsavIDw=;
 b=fvrhMepM3MI9TPoODmOW5LyNT+V+Zv6zKDACGbQdZMFfJMEBeN532dTMY29v2KYnvK
 gv3SVwK1HLq9kXurmmQp5hZod9hm+25kRxxWLYwj5JHpfgjVhnJHigshI0hHcip0+RB3
 lwlIhZtlmEPh8a42feTA1c0HjjPpF6gs9us4A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Fn+jt6MVuRg1+Q1VoeC7kF7YB1DWtgkKK5poDsavIDw=;
 b=BsNIsBEX0KiFrqpADtnp46E076045ffTNI4SfKeFi3YY63XHdRMJ6RJ2POhSaT8faK
 EjYbteVDAvWUv/kt+CdLZKS2CKnRuNJf7W3OVexAswjAspucHxIZawq/TsbcYghD2czI
 M8Su4Jfqrn7Ke5KopLbyB9Nd/34B3r3/7qzIeYqfRLtrOJBImpzNXpwB0evA3HrkrdsT
 NQZShsteQ+QtPBgdGJ5GOAsPGaAmL6a3NFuP5ggYGNWZF+KvLwo+mn5xcSR7CWagLw/Z
 PEqqlS8tok0rh6v6Zo58klGzK8Z+5hIjjhwEsUlaPoYBYixBdtRO9GGE1xYqR0K3ruEW
 RH9w==
X-Gm-Message-State: APjAAAWhLcEmnI2mxGxC0FDy3K85BcFy8rD5Fyz2JAItfliV4KRzygpA
 x/MmO8vC8H0ilohawjVd7GJINA==
X-Google-Smtp-Source: APXvYqzJBNwoxjGzEN0XCKA/1hPnVeLk77TVQGr5Y2y9U+x1Ijy7VePf7vVAxC1GAayFqg6x2k1L5A==
X-Received: by 2002:aa7:8383:: with SMTP id u3mr13506735pfm.175.1564007340007; 
 Wed, 24 Jul 2019 15:29:00 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id z24sm83683358pfr.51.2019.07.24.15.28.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 15:28:57 -0700 (PDT)
Date: Wed, 24 Jul 2019 15:28:53 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 1/2] ARM: dts: rockchip: move rk3288-veryon display
 settings into a separate file
Message-ID: <20190724222853.GB250418@google.com>
References: <20190711223455.12210-1-mka@chromium.org>
 <CAD=FV=U5Z4QqyjzJpERwhvJFPATS+khVWBCStnaJKZR0hHBWNQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=U5Z4QqyjzJpERwhvJFPATS+khVWBCStnaJKZR0hHBWNQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_152902_833682_D04F1850 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 02:19:35PM -0700, Doug Anderson wrote:
> Hi,
> 
> On Thu, Jul 11, 2019 at 3:35 PM Matthias Kaehlcke <mka@chromium.org> wrote:
> >
> > diff --git a/arch/arm/boot/dts/rk3288-veyron-edp.dtsi b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
> > new file mode 100644
> > index 000000000000..5d812e9e78aa
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
> > @@ -0,0 +1,124 @@
> > +// SPDX-License-Identifier: GPL-2.0
> 
> Please allow MIT license:
> 
> // SPDX-License-Identifier: (GPL-2.0+ OR MIT)

ok

> > +&pinctrl {
> > +       backlight {
> > +               bl_en: bl-en {
> > +                       rockchip,pins = <7 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> > +               };
> > +       };
> > +};
> 
> nit: convention on Rockchip device tree files is that all pinctrl
> stuff is at the bottom.  Downstream I think I added comments about
> this but those didn't make it upstream.

I'll move it to the bottom

> Also: why did you move "bl_en" here but not "edp_hpd"?

'bl_en' is defined in rk3288-veyron-chromebook.dtsi, 'edp_hdp' in
rk3288.dtsi of the SoC.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
