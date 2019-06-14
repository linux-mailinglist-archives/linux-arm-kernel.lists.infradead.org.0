Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD4B45B00
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 12:56:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kD/SvOksdWHCn/7//B5LmATkqGoOsHxUhwtgPCUcPi0=; b=r1XooEQyLgpgco
	RVplWhY3a6ZXkDHe4FdIaHgGcTBaV/+kThk1294vnFOazKEkjBM7J8jCxEImW2rRErr6kRR+qsJW8
	zRXkvJr3qWgsKCrZVnpBfN3vEOyM0iwqv1VCZcCDqAYb73Q42/jZPk3tpv+QwAnYi550bQ6YlFrRo
	RhN9/pZEj90TUhkaCSZhYHDTJAKl0lW+urSTmvKIf7FrGkDxMUxvOskp9WYNm3PvHAU0d93W2fWGA
	ozOBiv/d29wDr1cldSTKemJFi3aCn9Q/cciU2RDq0jYtMDeTJfjl2+C2oJtEsPy5PlB2KEo9sue/Y
	t+lPAHYwNg61tBFZvpBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbjt7-00019c-80; Fri, 14 Jun 2019 10:56:53 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbjsw-000178-O1
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 10:56:44 +0000
Received: by mail-io1-xd44.google.com with SMTP id w25so4717886ioc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 03:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=06iI6z4cthU4ce66OeHWQkRCnmuFyEIHHZ9Es1yn3sc=;
 b=ooZzfFJD2u9j2LussEGHFOPOfLBkJ+BU0GJHPBhgAJ/vkF6JbiQbi3Z9LCSduATYrm
 pmqk7dvkdE04MoEJvLFEsmWLKI31BrB0lbpcgBa7PmY2Pqee615LcMhMjtdzFAWkeAol
 te7vdgYxjdEddafQhiDTatljo0z/1a5LRul94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=06iI6z4cthU4ce66OeHWQkRCnmuFyEIHHZ9Es1yn3sc=;
 b=Xlk57PgKYhzS2g55ppuIsBcZD/rFVteMcaSd9mtsHbaezbWi8TJQZuQbn0vBAJQcYc
 wxFwZm1b2XfiPdsjBlUAeZWVEXEm/srcVaY6NBPfrgH/N6N10ZarKvtJXlnfPxxyXAm6
 gV1yvRwViG2GGTYtJSLzA80MNBfL3QcH2ZKsLv2lOXpTcv8rRxIV2dtt79vDDKu7VdhB
 NIWfwgCSLmPMCfWHJsR5U5iUy2rtxeFDnO/DEmZR79fsUtj7svfNIx5/DF1+qtKtCs8u
 y9MOJZm7ZltBpir61rxfqKVEiiCBcFZIOrGk4OW7u3Y79JJtMwJmbA7PiZsNhN7fFvuK
 QCyQ==
X-Gm-Message-State: APjAAAX4hK29ZrnIfaL9UamODupy4A90Xn1PXNnXFenfNMvTDmFXNpoI
 OVyT0Ml0hpxzTywsT4YqaP4k45x+LcsQ73n/hsbGjA==
X-Google-Smtp-Source: APXvYqwkcIwVPtfblhejh6xHVBtwFYzc9v3JjBjZavec/51f+nlxxqOghRWbuFOJBMDNowUmrcO58Fw+cwukMr5fTSU=
X-Received: by 2002:a05:6602:2253:: with SMTP id
 o19mr14463706ioo.297.1560509801785; 
 Fri, 14 Jun 2019 03:56:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
 <20190613185241.22800-3-jagan@amarulasolutions.com>
 <CAGb2v65xuXc4C1jOyM1GbEFVDam5P-6NN0ZhtzwzA7qU5F3nJQ@mail.gmail.com>
 <CAGb2v67DY534hXrx2H4jnZXA7jJS7sq2UwYCqw1iAgyLKdNzgA@mail.gmail.com>
In-Reply-To: <CAGb2v67DY534hXrx2H4jnZXA7jJS7sq2UwYCqw1iAgyLKdNzgA@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 14 Jun 2019 16:26:30 +0530
Message-ID: <CAMty3ZBc-AqbNGZCxRhOPw46iMvEZxoq1oATA46=K29gRYi4Sg@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 2/9] drm/sun4i: tcon: Add TCON LCD support
 for R40
To: Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_035643_255545_3FDA67D5 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 9:05 AM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Fri, Jun 14, 2019 at 11:19 AM Chen-Yu Tsai <wens@csie.org> wrote:
> >
> > On Fri, Jun 14, 2019 at 2:53 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
> > >
> > > TCON LCD0, LCD1 in allwinner R40, are used for managing
> > > LCD interfaces like RGB, LVDS and DSI.
> > >
> > > Like TCON TV0, TV1 these LCD0, LCD1 are also managed via
> > > tcon top.
> > >
> > > Add support for it, in tcon driver.
> > >
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> >
> > Reviewed-by: Chen-Yu Tsai <wens@csie.org>
>
> I take that back.
>
> The TCON output muxing (which selects whether TCON LCD or TCON TV
> outputs to the GPIO pins)
> is not supported yet. Please at least add TODO notes, or ideally,

Are you referring about port selection? it is support in
sun8i_tcon_top_de_config.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
