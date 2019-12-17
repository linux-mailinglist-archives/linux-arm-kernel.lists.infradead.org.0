Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F8312221A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 03:51:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xD53xGI+b4+ZQEETaHC89/VO37s2Ko25/vN4q5vRNrM=; b=KHaD//C8/MRvf0
	NLUk8ffgjg1FKa/MnbRGlQtPpAX989OgYDVIIIq1Zw23UBHIrjwSJeqvEQIVazzlMesQd1Qpfh/TS
	B24rvm4x1a4TwSzY7LCKobFa8Z4iJJhNwhvuxqKafU2F3hhbsHXFM4Ioy+WwlVLfGxCkVoUxALrMw
	YCHW/gUwOyT0A2PYA1jTLge9TwEbQo9VriHF5kJuLmrG+iXedqGs8AFs1OtcpaSTaXllEQq3kAdag
	lVJljBUupCpQ33rK0Fvy4hfSn0F0Ae3Csv0K7/76xY02fVVjv3D/KkaDLoH0I0YvDjmggLVy7sg46
	/OxC6dRbJGxASUtdRmjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih2xG-00036r-Qz; Tue, 17 Dec 2019 02:51:22 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih2ww-000359-74; Tue, 17 Dec 2019 02:51:03 +0000
X-UUID: 281cfac2fb784c84a880b023454453ff-20191216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=LX30lj8mLQVTtpAKiV/zXtanwXXaFbc1xBxLxcZmnMQ=; 
 b=nrIaNHV2yuAOhrQ9+Ghww+UVVXb5yvtWfuGMafMjUxEYhNf/Vb+/ZPwIF7LvutddoqIHvD66wo3YAWEVxBEP2Tj7AxyOvaTrTKRp6YUJyKEj421IwFXFTIHn4NNQ7yFZ7H1hlCzjNENgMHxu+RNApAy2HOdRADS2Q1nxa82GjTc=;
X-UUID: 281cfac2fb784c84a880b023454453ff-20191216
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2128832383; Mon, 16 Dec 2019 18:50:59 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Dec 2019 18:51:16 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 17 Dec 2019 10:50:13 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 17 Dec 2019 10:49:57 +0800
Message-ID: <1576551044.14035.18.camel@mtksdaap41>
Subject: Re: [PATCH v9 3/9] soc: mediatek: Add basic_clk_id to scp_power_data
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Date: Tue, 17 Dec 2019 10:50:44 +0800
In-Reply-To: <CANMq1KC4Qz8yKNTqfjYb335RCY8t5pdRa09Bvroo_BNXv19hWQ@mail.gmail.com>
References: <1575960413-6900-1-git-send-email-weiyi.lu@mediatek.com>
 <1575960413-6900-4-git-send-email-weiyi.lu@mediatek.com>
 <CANMq1KC4Qz8yKNTqfjYb335RCY8t5pdRa09Bvroo_BNXv19hWQ@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 642B78DF808E55FC0C5C4E033F841D60DDCD4CB0A219E378767E8FE960F53DE02000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_185102_264623_F50EC31C 
X-CRM114-Status: GOOD (  21.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, srv_heupstream <srv_heupstream@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>, lkml <linux-kernel@vger.kernel.org>,
 Fan Chen <fan.chen@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Yong Wu <yong.wu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-12-16 at 15:01 +0800, Nicolas Boichat wrote:
> On Tue, Dec 10, 2019 at 2:47 PM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
> >
> > Try to stop extending the clk_id or clk_names if there are
> > more and more new BASIC clocks. To get its own clocks by the
> > basic_clk_id of each power domain.
> 
> Looking at this a bit more, I'm not sure why we make this an option...
> 
> The easiest way to make this consistent with non-MT8183 scpsys drivers
> is to add your missing clocks to "enum clk_id" and clk_names, but I
> understand it's not desired (number of clocks would blow up).
> 
> Can we, instead, convert all existing scpsys drivers to use "char *"
> clock names instead?
> I made an attempt here and it seems simple enough:
> https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1969103
> 

That's what we'd like to do in the future. But you're right! I should
complete it at one go.

> >
> > Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-scpsys.c | 29 +++++++++++++++++++++--------
> >  1 file changed, 21 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> > index f669d37..915d635 100644
> > --- a/drivers/soc/mediatek/mtk-scpsys.c
> > +++ b/drivers/soc/mediatek/mtk-scpsys.c
> > @@ -117,6 +117,8 @@ enum clk_id {
> >   * @sram_pdn_ack_bits: The mask for sram power control acked bits.
> >   * @bus_prot_mask: The mask for single step bus protection.
> >   * @clk_id: The basic clocks required by this power domain.
> > + * @basic_clk_id: provide the same purpose with field "clk_id"
> > + *                by declaring basic clock prefix name rather than clk_id.
> 
> Actually, I prefer the name clk_name, not sure why I pushed you in
> that direction...
> 

OK, I'll fix it in next version. But I'd like to use "basic_clk_name"
because we will add "subsys_clk_prefix" in following patch.

> >   * @caps: The flag for active wake-up action.
> >   */
> >  struct scp_domain_data {
> > @@ -127,6 +129,7 @@ struct scp_domain_data {
> >         u32 sram_pdn_ack_bits;
> >         u32 bus_prot_mask;
> >         enum clk_id clk_id[MAX_CLKS];
> > +       const char *basic_clk_id[MAX_CLKS];
> >         u8 caps;
> >  };
> >
> > @@ -493,16 +496,26 @@ static struct scp *init_scp(struct platform_device *pdev,
> >
> >                 scpd->data = data;
> >
> > -               for (j = 0; j < MAX_CLKS && data->clk_id[j]; j++) {
> > -                       struct clk *c = clk[data->clk_id[j]];
> > +               if (data->clk_id[0]) {
> > +                       WARN_ON(data->basic_clk_id[0]);
> >
> > -                       if (IS_ERR(c)) {
> > -                               dev_err(&pdev->dev, "%s: clk unavailable\n",
> > -                                       data->name);
> > -                               return ERR_CAST(c);
> > -                       }
> > +                       for (j = 0; j < MAX_CLKS && data->clk_id[j]; j++) {
> > +                               struct clk *c = clk[data->clk_id[j]];
> > +
> > +                               if (IS_ERR(c)) {
> > +                                       dev_err(&pdev->dev,
> > +                                               "%s: clk unavailable\n",
> > +                                               data->name);
> > +                                       return ERR_CAST(c);
> > +                               }
> >
> > -                       scpd->clk[j] = c;
> > +                               scpd->clk[j] = c;
> > +                       }
> > +               } else if (data->basic_clk_id[0]) {
> > +                       for (j = 0; j < MAX_CLKS &&
> > +                                       data->basic_clk_id[j]; j++)
> > +                               scpd->clk[j] = devm_clk_get(&pdev->dev,
> > +                                               data->basic_clk_id[j]);
> >                 }
> >
> >                 genpd->name = data->name;
> > --
> > 1.8.1.1.dirty

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
