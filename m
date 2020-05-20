Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D43B51DADCC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 10:44:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DtwMyU4kMjofO7E1ACgcZ9dklNtkuxJGCCwk6vINqUs=; b=NSbpTLoF3NKlGc
	PKFVPItYrUk3n99kmT78fe1cjf9TeUFBrNV/WKCnkxV42zpoZZYgV9qeAOlpNuOGkVg/PARPUASvp
	CMp6K0AS4ahOndASpeWFQdqq5Ifod0wdJY+76wUGSf8dKiCmk+q9scvJCNyxAjHFtJ7eVJUCT6o9K
	lkdu2/yS5EYO7NOmoLECne4RkMVL+EkNBotz6EyOW9K79sEwUDgDlt486fPi92Wh7Yy3zaPWNM8LD
	ZXPRn6G3XPRNHc7VBU7n61r5YzUC9UEJhasrzpaWwYFd1gzRvgAeqwlJNs1X9HicLqCvUoj0mnnOZ
	upchKSwg+TDMWEYydSSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbKKn-0004ZI-02; Wed, 20 May 2020 08:44:17 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbKKZ-0004XU-N9; Wed, 20 May 2020 08:44:05 +0000
X-UUID: d3f0d11871f44e949601b0de0728d015-20200520
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=u0K9CvT5HV61VJXYYwxkYfqIusTCbFNVtZQAS+tl34Q=; 
 b=luKthv+eR0xrTVxdbHlaDd4k9oQjtvxMr/QNDzQKGBVUKw9IbG4QylxeWXGAnoUEIq/uuYTOjxDKqm+S7hmCBRf1LP5w90XZzJ/qxaky9IISaUKd/S1BYII6L8HUemO/mjkt0y2GYvQKFekhcMC1h6UiyTaAxcoNwHWFRhpoCf4=;
X-UUID: d3f0d11871f44e949601b0de0728d015-20200520
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <qii.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 864790960; Wed, 20 May 2020 00:43:59 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 20 May 2020 01:43:54 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Wed, 20 May 2020 16:42:35 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 20 May 2020 16:42:34 +0800
Message-ID: <1589964062.25512.67.camel@mhfsdcap03>
Subject: Re: [PATCH v2 2/2] i2c: mediatek: Add i2c ac-timing adjust support
From: Qii Wang <qii.wang@mediatek.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 20 May 2020 16:41:02 +0800
In-Reply-To: <CAMuHMdXgp85PVteunxrHYcMTqFgQWHmXXCVJM_KX76xkCADMpw@mail.gmail.com>
References: <1589461844-15614-1-git-send-email-qii.wang@mediatek.com>
 <1589461844-15614-3-git-send-email-qii.wang@mediatek.com>
 <CAMuHMdXjLakWDDEy=02prC7XjAs_xBnt2mArPFNwyHgUoWw6-g@mail.gmail.com>
 <1589857073.25512.34.camel@mhfsdcap03>
 <CAMuHMdXgp85PVteunxrHYcMTqFgQWHmXXCVJM_KX76xkCADMpw@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 419D878692A456EACB25265C39EB5C4831837D6DCD95B04EF9B86113CAB6032B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_014403_762923_A44E607F 
X-CRM114-Status: GOOD (  27.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED
 DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, srv_heupstream@mediatek.com,
 Wolfram Sang <wsa@the-dreams.de>, leilk.liu@mediatek.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Linux
 I2C <linux-i2c@vger.kernel.org>, Joe Perches <joe@perches.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

On Tue, 2020-05-19 at 09:14 +0200, Geert Uytterhoeven wrote:
> Hi Qii,
> 
> On Tue, May 19, 2020 at 4:59 AM Qii Wang <qii.wang@mediatek.com> wrote:
> > On Mon, 2020-05-18 at 17:44 +0200, Geert Uytterhoeven wrote:
> > > On Thu, May 14, 2020 at 3:13 PM Qii Wang <qii.wang@mediatek.com> wrote:
> > > > This patch adds a algorithm to calculate some ac-timing parameters
> > > > which can fully meet I2C Spec.
> > > >
> > > > Signed-off-by: Qii Wang <qii.wang@mediatek.com>
> > > > ---
> > > >  drivers/i2c/busses/i2c-mt65xx.c | 328 +++++++++++++++++++++++++++++++++-------
> > > >  1 file changed, 277 insertions(+), 51 deletions(-)
> > > >
> > > > diff --git a/drivers/i2c/busses/i2c-mt65xx.c b/drivers/i2c/busses/i2c-mt65xx.c
> > > > index 0ca6c38a..7020618 100644
> > > > --- a/drivers/i2c/busses/i2c-mt65xx.c
> > > > +++ b/drivers/i2c/busses/i2c-mt65xx.c
> > >
> > > > +/*
> > > > + * Check and Calculate i2c ac-timing
> > > > + *
> > > > + * Hardware design:
> > > > + * sample_ns = (1000000000 * (sample_cnt + 1)) / clk_src
> > > > + * xxx_cnt_div =  spec->min_xxx_ns / sample_ns
> > > > + *
> > > > + * Sample_ns is rounded down for xxx_cnt_div would be greater
> > > > + * than the smallest spec.
> > > > + * The sda_timing is chosen as the middle value between
> > > > + * the largest and smallest.
> > > > + */
> > > > +static int mtk_i2c_check_ac_timing(struct mtk_i2c *i2c,
> > > > +                                  unsigned int clk_src,
> > > > +                                  unsigned int check_speed,
> > > > +                                  unsigned int step_cnt,
> > > > +                                  unsigned int sample_cnt)
> > > > +{
> > > > +       const struct i2c_spec_values *spec;
> > > > +       unsigned int su_sta_cnt, low_cnt, high_cnt, max_step_cnt;
> > > > +       unsigned int sda_max, sda_min, clk_ns, max_sta_cnt = 0x3f;
> > > > +       long long sample_ns = (1000000000 * (sample_cnt + 1)) / clk_src;
> > >
> > > So sample_ns is a 64-bit value. Is that really needed?
> > >
> >
> > (1000000000 * (sample_cnt + 1)) / clk_src value is a 32-bit, (1000000000
> > * (sample_cnt + 1)) will over 32-bit if sample_cnt is 7.
> 
> The intermediate value will indeed not fit in 32-bit.
> But that doesn't mean the end result won't fit in 32-bit.
> As you divide spec->min_low_ns and spec->min_su_dat_ns (which I assume
> are small numbers) by sample_ns below, sample_ns cannot be very large,
> or the quotient will be zero anyway.
> So just doing the multiplication in 64-bit, followed by a 64-by-32
> division is probably fine:
> 
>     unsigned int sample_ns = div_u64(1000000000ULL * (sample_cnt + 1), clk_src);
> 
> You may want to take precautions for the case where the passed value of
> clk_src is a small number (can that happen?).
> 
> BTW, clk_get_rate() returns "unsigned long", while mtk_i2c_set_speed()
> takes an "unsigned int" parent_clk, which may cause future issues.
> You may want to change that to "unsigned long", along the whole
> propagation path, and use div64_ul() instead of div_u64() above.
> 

The return type of div_u64 is u64(unsigned long long), there is a
compulsory type conversion operator. Do you think it is needed?
BTW, we just need to change the type of sample_ns to unsigned int, no
matter which method is used, what is your opinion?

> > I think 1000000000 and clk_src is too big, maybe I can reduce then with
> > be divided all by 1000.
> > example:
> >
> > unsigned int sample_ns;
> > unsigned int clk_src_khz = clk_src / 1000;
> 
> That may cause too much loss of precision.
> 

clk_src is more than MHz and less than GHZ for MTK i2c controller, so it
wouldn't cause too much loss of precision.

> >
> > if(clk_src_khz)
> >         sample_ns = (1000000 * (sample_cnt + 1)) / clk_src_khz;
> > else
> >         return -EINVAL;
> >
> > > > +       if (!i2c->dev_comp->timing_adjust)
> > > > +               return 0;
> > > > +
> > > > +       if (i2c->dev_comp->ltiming_adjust)
> > > > +               max_sta_cnt = 0x100;
> > > > +
> > > > +       spec = mtk_i2c_get_spec(check_speed);
> > > > +
> > > > +       if (i2c->dev_comp->ltiming_adjust)
> > > > +               clk_ns = 1000000000 / clk_src;
> > > > +       else
> > > > +               clk_ns = sample_ns / 2;
> > > > +
> > > > +       su_sta_cnt = DIV_ROUND_UP(spec->min_su_sta_ns, clk_ns);
> > > > +       if (su_sta_cnt > max_sta_cnt)
> > > > +               return -1;
> > > > +
> > > > +       low_cnt = DIV_ROUND_UP(spec->min_low_ns, sample_ns);
> > >
> > > So this is a 32-bit by 64-bit division (indeed, not 64-by-32!)
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
