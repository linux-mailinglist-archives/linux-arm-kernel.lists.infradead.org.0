Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6291D8DF1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 04:59:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DqZILLIFx3OK0igAqLHut4k0cjKKp+dhzKFxXAXaGqw=; b=DBgd+Ufal1lLOD
	YWMLFwWS9ZQg4pRMHzYXWK/3UlLDVaD+TTBNnT2DcXuvkDAqzBPNz30JFvmZwRTLRlG8D0B3bDsnF
	UCLobp9pl6NqMUt1jgb3nVFCKs/ST15QcoPI4HVYVAdM1v/t/54ztovHdDU4sYtplJADERJUeQZ7O
	2lXry8N5jLCTmHcwr1aqxtjrR9q6f/WUzU8ZxHsmQD8Dh5LhwAUHGCTBVZzqDLOEubC3okDIXk6nj
	QJ0Aj5vv0r5UkN/UsclTdO3NrP4hDrhfMzJ2WaDDCo9AEIUqd0WhfWYAD11/+Ha1EN1ChWlinNL8B
	JHljScWlp+lUtlru3uYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jasTn-0001gt-Ct; Tue, 19 May 2020 02:59:43 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jasTc-0001gQ-GQ; Tue, 19 May 2020 02:59:33 +0000
X-UUID: 252051eb575b46c18f0f01d725b0f314-20200518
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=M+o0Anz4/UQjLm5nYoVibliTyzmVqym+xJdpP5blyMg=; 
 b=Hfb1/kAcOMyc62ESYxEaNe9rl85iTGBbye1u2kksbh65RXJ/yGx23mtBAhLKezkSCdBF8Q3sh19OqhMixugH6/LkpgS4Y3+k+Nlp/GnY0FoSR4Y7kqF9mJDxD0EA4nBnOLW8vDTEyeIenlvNDv23Kp2epA7Xr+UARfVcANG+sOM=;
X-UUID: 252051eb575b46c18f0f01d725b0f314-20200518
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <qii.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 652344176; Mon, 18 May 2020 18:59:30 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 18 May 2020 19:59:26 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Tue, 19 May 2020 10:59:22 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 19 May 2020 10:59:21 +0800
Message-ID: <1589857073.25512.34.camel@mhfsdcap03>
Subject: Re: [PATCH v2 2/2] i2c: mediatek: Add i2c ac-timing adjust support
From: Qii Wang <qii.wang@mediatek.com>
To: Joe Perches <joe@perches.com>, Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 19 May 2020 10:57:53 +0800
In-Reply-To: <CAMuHMdXjLakWDDEy=02prC7XjAs_xBnt2mArPFNwyHgUoWw6-g@mail.gmail.com>
References: <1589461844-15614-1-git-send-email-qii.wang@mediatek.com>
 <1589461844-15614-3-git-send-email-qii.wang@mediatek.com>
 <CAMuHMdXjLakWDDEy=02prC7XjAs_xBnt2mArPFNwyHgUoWw6-g@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2E488EF03A7622D1ADEEB7C7CD1CCABA41B9EB17953038A2511499CEDEE1E7E62000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_195932_553660_66057EF0 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Wolfram Sang <wsa@the-dreams.de>, leilk.liu@mediatek.com, Linux Kernel
 Mailing List <linux-kernel@vger.kernel.org>, linux-mediatek@lists.infradead.org,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-05-18 at 17:44 +0200, Geert Uytterhoeven wrote:
> On Thu, May 14, 2020 at 3:13 PM Qii Wang <qii.wang@mediatek.com> wrote:
> > This patch adds a algorithm to calculate some ac-timing parameters
> > which can fully meet I2C Spec.
> >
> > Signed-off-by: Qii Wang <qii.wang@mediatek.com>
> > ---
> >  drivers/i2c/busses/i2c-mt65xx.c | 328 +++++++++++++++++++++++++++++++++-------
> >  1 file changed, 277 insertions(+), 51 deletions(-)
> >
> > diff --git a/drivers/i2c/busses/i2c-mt65xx.c b/drivers/i2c/busses/i2c-mt65xx.c
> > index 0ca6c38a..7020618 100644
> > --- a/drivers/i2c/busses/i2c-mt65xx.c
> > +++ b/drivers/i2c/busses/i2c-mt65xx.c
> 
> > +/*
> > + * Check and Calculate i2c ac-timing
> > + *
> > + * Hardware design:
> > + * sample_ns = (1000000000 * (sample_cnt + 1)) / clk_src
> > + * xxx_cnt_div =  spec->min_xxx_ns / sample_ns
> > + *
> > + * Sample_ns is rounded down for xxx_cnt_div would be greater
> > + * than the smallest spec.
> > + * The sda_timing is chosen as the middle value between
> > + * the largest and smallest.
> > + */
> > +static int mtk_i2c_check_ac_timing(struct mtk_i2c *i2c,
> > +                                  unsigned int clk_src,
> > +                                  unsigned int check_speed,
> > +                                  unsigned int step_cnt,
> > +                                  unsigned int sample_cnt)
> > +{
> > +       const struct i2c_spec_values *spec;
> > +       unsigned int su_sta_cnt, low_cnt, high_cnt, max_step_cnt;
> > +       unsigned int sda_max, sda_min, clk_ns, max_sta_cnt = 0x3f;
> > +       long long sample_ns = (1000000000 * (sample_cnt + 1)) / clk_src;
> 
> So sample_ns is a 64-bit value. Is that really needed?
> 

(1000000000 * (sample_cnt + 1)) / clk_src value is a 32-bit, (1000000000
* (sample_cnt + 1)) will over 32-bit if sample_cnt is 7.

I think 1000000000 and clk_src is too big, maybe I can reduce then with
be divided all by 1000.
example:

unsigned int sample_ns;
unsigned int clk_src_khz = clk_src / 1000;

if(clk_src_khz)
	sample_ns = (1000000 * (sample_cnt + 1)) / clk_src_khz;
else
	return -EINVAL;

> > +       if (!i2c->dev_comp->timing_adjust)
> > +               return 0;
> > +
> > +       if (i2c->dev_comp->ltiming_adjust)
> > +               max_sta_cnt = 0x100;
> > +
> > +       spec = mtk_i2c_get_spec(check_speed);
> > +
> > +       if (i2c->dev_comp->ltiming_adjust)
> > +               clk_ns = 1000000000 / clk_src;
> > +       else
> > +               clk_ns = sample_ns / 2;
> > +
> > +       su_sta_cnt = DIV_ROUND_UP(spec->min_su_sta_ns, clk_ns);
> > +       if (su_sta_cnt > max_sta_cnt)
> > +               return -1;
> > +
> > +       low_cnt = DIV_ROUND_UP(spec->min_low_ns, sample_ns);
> 
> So this is a 32-bit by 64-bit division (indeed, not 64-by-32!)
> 
> noreply@ellerman.id.au reports:
> 
>     ERROR: modpost: "__udivdi3" [drivers/i2c/busses/i2c-mt65xx.ko] undefined!
>     ERROR: modpost: "__divdi3" [drivers/i2c/busses/i2c-mt65xx.ko] undefined!
> 
> for 32-bit builds.
> 
> > +       max_step_cnt = mtk_i2c_max_step_cnt(check_speed);
> > +       if ((2 * step_cnt) > low_cnt && low_cnt < max_step_cnt) {
> > +               if (low_cnt > step_cnt) {
> > +                       high_cnt = 2 * step_cnt - low_cnt;
> > +               } else {
> > +                       high_cnt = step_cnt;
> > +                       low_cnt = step_cnt;
> > +               }
> > +       } else {
> > +               return -2;
> > +       }
> > +
> > +       sda_max = spec->max_hd_dat_ns / sample_ns;
> > +       if (sda_max > low_cnt)
> > +               sda_max = 0;
> > +
> > +       sda_min = DIV_ROUND_UP(spec->min_su_dat_ns, sample_ns);
> 
> One more.
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
