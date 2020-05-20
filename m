Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CBC1DAE27
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 10:59:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=958EpJiIo+1THctQLYzC6+UWpFbZN1Vh/Km1TFuAmPo=; b=Ao+9i6KS8yyO8S
	0xeAOzfZ9tG94Ad9qA9Fg+slZGlh+FN/SIIphjkTqcZp1YSbm5I5Yu3XhAX1rrg/EmieqtbxUPhso
	0WPwmf5VuqV+yV3pTleaYiwWn9lTq20WHUWH+iBOHhaZyoYQeCxi7SYVSXHjSdDooKtR9xfn8Me/L
	6OhGc1QgPezU4vK355UXwywUwBOwcTZIJGYoqp8UsMwRvpmUPZjCC/sIVfe0G5voikX7a7VAot7A5
	B2B+Ocv8J6X7cr3B3C4tu3o8JwNi/ej9BXOeFpdisoDhg+uVPQy3oJUdTZTNFPHV88gRA1n0PsmsY
	RoUsdwZYRVx0zYvbgN+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbKZ2-0000Aa-2v; Wed, 20 May 2020 08:59:00 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbKYp-00009D-MK; Wed, 20 May 2020 08:58:49 +0000
Received: by mail-oi1-f193.google.com with SMTP id d191so2253214oib.12;
 Wed, 20 May 2020 01:58:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rVN0l6dkyp8QjxTSfWQNJ42yzsbv3rlL++sZ/Fmr/EQ=;
 b=s9rkyyP6PkORgRErVdgMmfoF/HXP5BAEBBxx0GuEkRt8+3Tf8vVl/hzg1Dwgb1X7n0
 AhtvagSsRrw8LIJePBm5ShAAi6dM2yTuJ8H6qjPTDiJeZ4YVQFn630HaE+WjMescj9va
 fgDIQIsnIyjio2S85ymFD3E1hedeBL5X97P6EF4o0q6So+uLW4cqO6ar0VfjQQ7q53tY
 1C48uUU7zjT8PS23QGfCOTZNlpDdlgPx3PGJiLoq+RGrzvYnb0rJopKiYeYueAeP+sQR
 k3Q2zjrWtDAwi2mcZq2AmApWQLCrzHF2i4bkMV/2ObiDOkH9GznYWYurhynRUq1n8yfg
 6d0g==
X-Gm-Message-State: AOAM532MplxwOxFHpbfbZ0TeokMNoas1DQ3lYKBnQ68/Ez/jORX0Jw6A
 kvwaRFf8TFlw/VA8MB2EKBQSJ8i3GwfoUmkV8y0=
X-Google-Smtp-Source: ABdhPJzsp1KkludV5paXyJn6bhpNw9pEmNANefZA2kLe4n+VS3fWRm3omJ908y2AEgg+QDYjQSTdABC5K6IYoIwFj84=
X-Received: by 2002:aca:cd93:: with SMTP id d141mr2338860oig.148.1589965125631; 
 Wed, 20 May 2020 01:58:45 -0700 (PDT)
MIME-Version: 1.0
References: <1589461844-15614-1-git-send-email-qii.wang@mediatek.com>
 <1589461844-15614-3-git-send-email-qii.wang@mediatek.com>
 <CAMuHMdXjLakWDDEy=02prC7XjAs_xBnt2mArPFNwyHgUoWw6-g@mail.gmail.com>
 <1589857073.25512.34.camel@mhfsdcap03>
 <CAMuHMdXgp85PVteunxrHYcMTqFgQWHmXXCVJM_KX76xkCADMpw@mail.gmail.com>
 <1589964062.25512.67.camel@mhfsdcap03>
In-Reply-To: <1589964062.25512.67.camel@mhfsdcap03>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 20 May 2020 10:58:34 +0200
Message-ID: <CAMuHMdXZTU+4-WyVjvv=i28x+MRVrAdRPM0_ybvkkFuh-ps+eg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] i2c: mediatek: Add i2c ac-timing adjust support
To: Qii Wang <qii.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_015847_729705_CB76692A 
X-CRM114-Status: GOOD (  31.32  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Wed, May 20, 2020 at 10:44 AM Qii Wang <qii.wang@mediatek.com> wrote:
> On Tue, 2020-05-19 at 09:14 +0200, Geert Uytterhoeven wrote:
> > On Tue, May 19, 2020 at 4:59 AM Qii Wang <qii.wang@mediatek.com> wrote:
> > > On Mon, 2020-05-18 at 17:44 +0200, Geert Uytterhoeven wrote:
> > > > On Thu, May 14, 2020 at 3:13 PM Qii Wang <qii.wang@mediatek.com> wrote:
> > > > > This patch adds a algorithm to calculate some ac-timing parameters
> > > > > which can fully meet I2C Spec.
> > > > >
> > > > > Signed-off-by: Qii Wang <qii.wang@mediatek.com>
> > > > > ---
> > > > >  drivers/i2c/busses/i2c-mt65xx.c | 328 +++++++++++++++++++++++++++++++++-------
> > > > >  1 file changed, 277 insertions(+), 51 deletions(-)
> > > > >
> > > > > diff --git a/drivers/i2c/busses/i2c-mt65xx.c b/drivers/i2c/busses/i2c-mt65xx.c
> > > > > index 0ca6c38a..7020618 100644
> > > > > --- a/drivers/i2c/busses/i2c-mt65xx.c
> > > > > +++ b/drivers/i2c/busses/i2c-mt65xx.c
> > > >
> > > > > +/*
> > > > > + * Check and Calculate i2c ac-timing
> > > > > + *
> > > > > + * Hardware design:
> > > > > + * sample_ns = (1000000000 * (sample_cnt + 1)) / clk_src
> > > > > + * xxx_cnt_div =  spec->min_xxx_ns / sample_ns
> > > > > + *
> > > > > + * Sample_ns is rounded down for xxx_cnt_div would be greater
> > > > > + * than the smallest spec.
> > > > > + * The sda_timing is chosen as the middle value between
> > > > > + * the largest and smallest.
> > > > > + */
> > > > > +static int mtk_i2c_check_ac_timing(struct mtk_i2c *i2c,
> > > > > +                                  unsigned int clk_src,
> > > > > +                                  unsigned int check_speed,
> > > > > +                                  unsigned int step_cnt,
> > > > > +                                  unsigned int sample_cnt)
> > > > > +{
> > > > > +       const struct i2c_spec_values *spec;
> > > > > +       unsigned int su_sta_cnt, low_cnt, high_cnt, max_step_cnt;
> > > > > +       unsigned int sda_max, sda_min, clk_ns, max_sta_cnt = 0x3f;
> > > > > +       long long sample_ns = (1000000000 * (sample_cnt + 1)) / clk_src;
> > > >
> > > > So sample_ns is a 64-bit value. Is that really needed?
> > > >
> > >
> > > (1000000000 * (sample_cnt + 1)) / clk_src value is a 32-bit, (1000000000
> > > * (sample_cnt + 1)) will over 32-bit if sample_cnt is 7.
> >
> > The intermediate value will indeed not fit in 32-bit.
> > But that doesn't mean the end result won't fit in 32-bit.
> > As you divide spec->min_low_ns and spec->min_su_dat_ns (which I assume
> > are small numbers) by sample_ns below, sample_ns cannot be very large,
> > or the quotient will be zero anyway.
> > So just doing the multiplication in 64-bit, followed by a 64-by-32
> > division is probably fine:
> >
> >     unsigned int sample_ns = div_u64(1000000000ULL * (sample_cnt + 1), clk_src);
> >
> > You may want to take precautions for the case where the passed value of
> > clk_src is a small number (can that happen?).
> >
> > BTW, clk_get_rate() returns "unsigned long", while mtk_i2c_set_speed()
> > takes an "unsigned int" parent_clk, which may cause future issues.
> > You may want to change that to "unsigned long", along the whole
> > propagation path, and use div64_ul() instead of div_u64() above.
> >
>
> The return type of div_u64 is u64(unsigned long long), there is a
> compulsory type conversion operator. Do you think it is needed?

The result of a 64-by-32 bit division may indeed not fit in 32-bit, so that's
why it returns u64.
If you know the quotient will always fit, it's fine.

> BTW, we just need to change the type of sample_ns to unsigned int, no
> matter which method is used, what is your opinion?

Indeed.

BTW, I just realize

    long long sample_ns = (1000000000 * (sample_cnt + 1)) / clk_src;

wasn't doing what you wanted anyway, as 1000000000 is (implicit) int,
and sample_cnt is unsigned int, so the multiplication was done in 32-bit,
possible leading to a truncation.  Hence that division was done in 32-bit, too,
that's why I didn't notice a call to __udivdi3() in the assembler output here.

So you have to force the multiplication to be done in 64-bit, e.g.
by changing the constant to 1000000000ULL, and use div_u64() for
the division.

>
> > > I think 1000000000 and clk_src is too big, maybe I can reduce then with
> > > be divided all by 1000.
> > > example:
> > >
> > > unsigned int sample_ns;
> > > unsigned int clk_src_khz = clk_src / 1000;
> >
> > That may cause too much loss of precision.
> >
>
> clk_src is more than MHz and less than GHZ for MTK i2c controller, so it
> wouldn't cause too much loss of precision.

OK, so that would work, too.

> > >
> > > if(clk_src_khz)
> > >         sample_ns = (1000000 * (sample_cnt + 1)) / clk_src_khz;
> > > else
> > >         return -EINVAL;
> > >
> > > > > +       if (!i2c->dev_comp->timing_adjust)
> > > > > +               return 0;
> > > > > +
> > > > > +       if (i2c->dev_comp->ltiming_adjust)
> > > > > +               max_sta_cnt = 0x100;
> > > > > +
> > > > > +       spec = mtk_i2c_get_spec(check_speed);
> > > > > +
> > > > > +       if (i2c->dev_comp->ltiming_adjust)
> > > > > +               clk_ns = 1000000000 / clk_src;
> > > > > +       else
> > > > > +               clk_ns = sample_ns / 2;
> > > > > +
> > > > > +       su_sta_cnt = DIV_ROUND_UP(spec->min_su_sta_ns, clk_ns);
> > > > > +       if (su_sta_cnt > max_sta_cnt)
> > > > > +               return -1;
> > > > > +
> > > > > +       low_cnt = DIV_ROUND_UP(spec->min_low_ns, sample_ns);
> > > >
> > > > So this is a 32-bit by 64-bit division (indeed, not 64-by-32!)

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
