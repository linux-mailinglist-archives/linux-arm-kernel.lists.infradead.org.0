Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4160675524
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 19:09:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+kj/DqscgTMhJ90VFYWauryu0qQXs0K574f/YQ76Zw=; b=fgbQuyYLK6faU9
	q4Yx/WnAokAkqWmbUkUuoTVbZ/EjYGRyyMBlQPzJb76640KJBYCS9D7hesH/jSglM03d3scDc9Oqj
	2GK1y/4emUKarbLeFluBw++GVkDMAAHVHAu2v2gZyYOAoGiYuSO80K4ZSpyNQxYM1RQec+nHzrmFg
	Z/7SCXCUaOO9/c/jS/TjDSi3YvIF5PT5kqUkHzy7wJlc4THTpotoRG09gLA+cIDC/au/UvCn8xblq
	RYwt8tPfgb/iL1bAOrUaVHxKeq/WCoyF4SOuGM5+nURAh3VjWc4aqEW9a5qxCPfgcWjUi36zJXtaC
	Ei/Btp/4fJW2YgV8280Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqhFY-0000pW-Dm; Thu, 25 Jul 2019 17:09:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqhFG-0000oE-93; Thu, 25 Jul 2019 17:09:35 +0000
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6733E22C7C;
 Thu, 25 Jul 2019 17:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564074573;
 bh=rkdM8CWr1A1LMWe/EH04Dnfcj0n7tqCfgrgm7BTi5jQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=V2kS5kGzF++a03Gk5zIP6RZHen6WFgWlfieoKDlrHqhEHPec5TNp/uyFIM1M9uehw
 LnN/eGuu4aLZCbQHXlzK4cEM25XKPTnaNYChzXcEWdoNw9zQyjL+vFPdlyy6PV4aH5
 wyN/g5oynAZo0AxPt7Dvwsws0Sm+M9vkaj0veq4o=
Received: by mail-wr1-f52.google.com with SMTP id p13so51544001wru.10;
 Thu, 25 Jul 2019 10:09:33 -0700 (PDT)
X-Gm-Message-State: APjAAAUyapbx3QmtplWVk2r8DJPtzsb1qh2JowR/7/emSHemOR/wVbCV
 a+/AxS1+7Ia7bIj2mpjryM6oeU6g2Eu5xCcFOXI=
X-Google-Smtp-Source: APXvYqyhMUD0VRm57goMo+umKK9xrgzMe/ILEaoUR4e6spWK6lgrnxam7yAoo2qceAKGdHiCpgWiUDRXhXO1xXYbZ1k=
X-Received: by 2002:adf:c613:: with SMTP id n19mr39171710wrg.109.1564074571943; 
 Thu, 25 Jul 2019 10:09:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190722095425.14193-1-amergnat@baylibre.com>
 <20190722095425.14193-4-amergnat@baylibre.com>
 <1j5znqxj74.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1j5znqxj74.fsf@starbuckisacylon.baylibre.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 26 Jul 2019 01:09:20 +0800
X-Gmail-Original-Message-ID: <CAGb2v64AJFMkZQaytYMN+EsLT0sS-3VwzWUfb3g7SdL7kCfu+g@mail.gmail.com>
Message-ID: <CAGb2v64AJFMkZQaytYMN+EsLT0sS-3VwzWUfb3g7SdL7kCfu+g@mail.gmail.com>
Subject: Re: [PATCH 3/8] clk: meson: gxbb: migrate to the new parent
 description method
To: Jerome Brunet <jbrunet@baylibre.com>,
 Alexandre Mergnat <amergnat@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_100934_353411_E1A5A68F 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, baylibre-upstreaming@groups.io,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 10:50 PM Jerome Brunet <jbrunet@baylibre.com> wrote:
>
> On Mon 22 Jul 2019 at 11:54, Alexandre Mergnat <amergnat@baylibre.com> wrote:
>
>
> > @@ -1592,13 +1737,29 @@ static struct clk_regmap gxbb_vid_pll_div = {
> >       .hw.init = &(struct clk_init_data) {
> >               .name = "vid_pll_div",
> >               .ops = &meson_vid_pll_div_ro_ops,
> > -             .parent_names = (const char *[]){ "hdmi_pll" },
> > +             .parent_data = &(const struct clk_parent_data) {
> > +                     /*
> > +                      * This clock is declared here for GXL and GXBB SoC, so
> > +                      * we must use string name to set this parent to avoid
> > +                      * pointer issue.
> > +                      */
>
> I don't really get the issue with this comment.
>
> How about:
>
> /*
>  * Note:
>  * gxl and gxbb have different hdmi_plls (with different struct clk_hw).
>  * We fallback to the global naming string mechanism so vid_pll_div picks
>  * up the appropriate one.
>  */

If you're sticking to global names for now, you could just skip converting
this clock altogether. I suspect .parent_names will be around for some time.

On the other hand, if you really want to get rid of global clock name based
parenting, you could use clk_hw pointers, and have the probe function fix
up this one based on the compatible string. That's what I did.

Just my two cents.

ChenYu

> > +                     .name = "hdmi_pll",
> > +                     .index = -1,
> > +             },
> >               .num_parents = 1,
> >               .flags = CLK_SET_RATE_PARENT | CLK_GET_RATE_NOCACHE,
> >       },
> >  };
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
