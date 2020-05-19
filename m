Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DA21D90C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 09:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bBjnKNf6d77rYlvMIu1UbABiQlb3dZvEVIbdLh80dLk=; b=Lo9WYDLng0Uzrs
	KLpyyo6KmU3O85oArOQBlUPK3xGJ0cCYFyj4DfALMjBpTaaWQjTGQfIOrGcu2jd35SL4/RHu2m0zC
	Hn3Es4iXnSd11/ZXoKVLHVax0K4gk8x3WW9iQSmLmjCRlUzTdnv4BcZS39Xu2fWRmhE5NA6st7WIk
	22fKft9aVQiENEzPDlUqg9fonYmWi85fZfK620idDQFByT6Ucn/hqDsuTwe2wtipL4WMt6NoL+Oh5
	pMui7HPrtkOd5H0flUAYZE5N7EoRzk9jECz95KqEuHfvBkcDZLvXGl0CrxfG1OT6up1OdsktKcKpy
	coqAQdmN2iw8QtN2LF0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jawT1-0000Gw-1T; Tue, 19 May 2020 07:15:11 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jawSU-0008Ou-Rx; Tue, 19 May 2020 07:14:40 +0000
Received: by mail-oi1-f194.google.com with SMTP id s198so11477945oie.6;
 Tue, 19 May 2020 00:14:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TwCQPIVjOeXgiPme8eAiiVzkt9402jNeI90NBkXCFv8=;
 b=mbZXYXtybH6dVVgjVCX3mJxgIO156zRXOJCTdpa2eI9xy4juwXPJlQ33VtwHxkiUBQ
 vWckW8kk4l8nPFQb7T4GS8mtQt6WPbkkeZ8auxY7Jy2NLZtSy0SB8qyWJVfoVf8QB4R7
 xzYeGnMrQ7XgoFHCLGuBpI9uF/ceLve2c4deK/1zLWgvc1cc1mI28QV7qPLdAbhW1bl5
 PUcqcgMN4be9F3j6/alIUrMb1U69tfcOolLFYU9ZHFLgTYud7n0zqArTVkoecx/qmNRP
 np8lFIL1Hx5i+tnFi094PawmmSsjSe8S057D+wd2veroJQyN1he7dfSOxevu1fXufvP4
 3rJQ==
X-Gm-Message-State: AOAM530H0xBZajwJ43yiUKnmabbw06e6WGiYmOQY6H83c0CYrtqQ4iZo
 RxTr8WLcVGm+SMsqJ+in6s6zPdyDY8mR9QWv/iop+sqH
X-Google-Smtp-Source: ABdhPJzEx85PiYVtErTopPhUEJtAuIq0qK2XpMHBFrrin1JGOJsWb/O3ZzhWo+FahHzulYroimH7reXMovFJNlrID2Q=
X-Received: by 2002:aca:895:: with SMTP id 143mr2104387oii.153.1589872477377; 
 Tue, 19 May 2020 00:14:37 -0700 (PDT)
MIME-Version: 1.0
References: <1589461844-15614-1-git-send-email-qii.wang@mediatek.com>
 <1589461844-15614-3-git-send-email-qii.wang@mediatek.com>
 <CAMuHMdXjLakWDDEy=02prC7XjAs_xBnt2mArPFNwyHgUoWw6-g@mail.gmail.com>
 <1589857073.25512.34.camel@mhfsdcap03>
In-Reply-To: <1589857073.25512.34.camel@mhfsdcap03>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 19 May 2020 09:14:25 +0200
Message-ID: <CAMuHMdXgp85PVteunxrHYcMTqFgQWHmXXCVJM_KX76xkCADMpw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] i2c: mediatek: Add i2c ac-timing adjust support
To: Qii Wang <qii.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_001438_913378_665230D5 
X-CRM114-Status: GOOD (  22.30  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, srv_heupstream@mediatek.com,
 Wolfram Sang <wsa@the-dreams.de>, leilk.liu@mediatek.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Linux I2C <linux-i2c@vger.kernel.org>,
 Joe Perches <joe@perches.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Qii,

On Tue, May 19, 2020 at 4:59 AM Qii Wang <qii.wang@mediatek.com> wrote:
> On Mon, 2020-05-18 at 17:44 +0200, Geert Uytterhoeven wrote:
> > On Thu, May 14, 2020 at 3:13 PM Qii Wang <qii.wang@mediatek.com> wrote:
> > > This patch adds a algorithm to calculate some ac-timing parameters
> > > which can fully meet I2C Spec.
> > >
> > > Signed-off-by: Qii Wang <qii.wang@mediatek.com>
> > > ---
> > >  drivers/i2c/busses/i2c-mt65xx.c | 328 +++++++++++++++++++++++++++++++++-------
> > >  1 file changed, 277 insertions(+), 51 deletions(-)
> > >
> > > diff --git a/drivers/i2c/busses/i2c-mt65xx.c b/drivers/i2c/busses/i2c-mt65xx.c
> > > index 0ca6c38a..7020618 100644
> > > --- a/drivers/i2c/busses/i2c-mt65xx.c
> > > +++ b/drivers/i2c/busses/i2c-mt65xx.c
> >
> > > +/*
> > > + * Check and Calculate i2c ac-timing
> > > + *
> > > + * Hardware design:
> > > + * sample_ns = (1000000000 * (sample_cnt + 1)) / clk_src
> > > + * xxx_cnt_div =  spec->min_xxx_ns / sample_ns
> > > + *
> > > + * Sample_ns is rounded down for xxx_cnt_div would be greater
> > > + * than the smallest spec.
> > > + * The sda_timing is chosen as the middle value between
> > > + * the largest and smallest.
> > > + */
> > > +static int mtk_i2c_check_ac_timing(struct mtk_i2c *i2c,
> > > +                                  unsigned int clk_src,
> > > +                                  unsigned int check_speed,
> > > +                                  unsigned int step_cnt,
> > > +                                  unsigned int sample_cnt)
> > > +{
> > > +       const struct i2c_spec_values *spec;
> > > +       unsigned int su_sta_cnt, low_cnt, high_cnt, max_step_cnt;
> > > +       unsigned int sda_max, sda_min, clk_ns, max_sta_cnt = 0x3f;
> > > +       long long sample_ns = (1000000000 * (sample_cnt + 1)) / clk_src;
> >
> > So sample_ns is a 64-bit value. Is that really needed?
> >
>
> (1000000000 * (sample_cnt + 1)) / clk_src value is a 32-bit, (1000000000
> * (sample_cnt + 1)) will over 32-bit if sample_cnt is 7.

The intermediate value will indeed not fit in 32-bit.
But that doesn't mean the end result won't fit in 32-bit.
As you divide spec->min_low_ns and spec->min_su_dat_ns (which I assume
are small numbers) by sample_ns below, sample_ns cannot be very large,
or the quotient will be zero anyway.
So just doing the multiplication in 64-bit, followed by a 64-by-32
division is probably fine:

    unsigned int sample_ns = div_u64(1000000000ULL * (sample_cnt + 1), clk_src);

You may want to take precautions for the case where the passed value of
clk_src is a small number (can that happen?).

BTW, clk_get_rate() returns "unsigned long", while mtk_i2c_set_speed()
takes an "unsigned int" parent_clk, which may cause future issues.
You may want to change that to "unsigned long", along the whole
propagation path, and use div64_ul() instead of div_u64() above.

> I think 1000000000 and clk_src is too big, maybe I can reduce then with
> be divided all by 1000.
> example:
>
> unsigned int sample_ns;
> unsigned int clk_src_khz = clk_src / 1000;

That may cause too much loss of precision.

>
> if(clk_src_khz)
>         sample_ns = (1000000 * (sample_cnt + 1)) / clk_src_khz;
> else
>         return -EINVAL;
>
> > > +       if (!i2c->dev_comp->timing_adjust)
> > > +               return 0;
> > > +
> > > +       if (i2c->dev_comp->ltiming_adjust)
> > > +               max_sta_cnt = 0x100;
> > > +
> > > +       spec = mtk_i2c_get_spec(check_speed);
> > > +
> > > +       if (i2c->dev_comp->ltiming_adjust)
> > > +               clk_ns = 1000000000 / clk_src;
> > > +       else
> > > +               clk_ns = sample_ns / 2;
> > > +
> > > +       su_sta_cnt = DIV_ROUND_UP(spec->min_su_sta_ns, clk_ns);
> > > +       if (su_sta_cnt > max_sta_cnt)
> > > +               return -1;
> > > +
> > > +       low_cnt = DIV_ROUND_UP(spec->min_low_ns, sample_ns);
> >
> > So this is a 32-bit by 64-bit division (indeed, not 64-by-32!)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
