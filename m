Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FE84B504
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 11:36:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lcwWVZxMA10POmNMZEfancyYCUufkUJhDKNIQwuW+/I=; b=bKvm93zgJ+7EKY
	SwojhqxqimRJxx2jz7NFu95pTUU5n39wvUmL/aeCzN4+YwPuIkOmTqogul19PJWzOQvia/XxjKXcu
	jzeDwQp6T8FXL+QUA0VRnq1AmgeVbNKIlIZtMbtaeAPdjBsA9R/e6atpyT5/7pjIKRMOcDzCAIyyA
	geJg7jVRNtDj7kh5b1pFtg8hv4rIIRQyOcbRMzfGmffayT5s1OeFFR4IJI9Q1iSOFAcJuBAEItRKb
	qEeu1qk3A/sce+csUbPfCs6LFqukj84/cweOnL+r979Myx4rmYM2oGQKO9Mn2qhKtQyfRY0Mo0ckp
	88jg/V5Mi6iwx85vhMQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdX11-0007RF-SE; Wed, 19 Jun 2019 09:36:27 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdX0q-0007Q7-Hf; Wed, 19 Jun 2019 09:36:17 +0000
X-UUID: 6d9a461497e04942a692690eb94c9841-20190619
X-UUID: 6d9a461497e04942a692690eb94c9841-20190619
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 395303929; Wed, 19 Jun 2019 01:36:14 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 19 Jun 2019 02:36:13 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 19 Jun 2019 17:36:11 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 19 Jun 2019 17:36:11 +0800
Message-ID: <1560936971.2158.17.camel@mtksdaap41>
Subject: Re: [PATCH v5 09/14] soc: mediatek: Add basic_clk_name to
 scp_power_data
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 19 Jun 2019 17:36:11 +0800
In-Reply-To: <CANMq1KDf6aCK4+VX070f1pB6knPT5M0kxbW_RJ0K7PtAvKWkLQ@mail.gmail.com>
References: <20190319080140.24055-1-weiyi.lu@mediatek.com>
 <20190319080140.24055-10-weiyi.lu@mediatek.com>
 <CANMq1KDf6aCK4+VX070f1pB6knPT5M0kxbW_RJ0K7PtAvKWkLQ@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_023616_591851_EBC6C2FC 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-03-21 at 14:02 +0800, Nicolas Boichat wrote:
> On Tue, Mar 19, 2019 at 4:02 PM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
> >
> > Try to stop extending the clk_id or clk_names if there are
> > more and more new BASIC clocks. To get its own clocks by the
> > basic_clk_name of each power domain.
> >
> > Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-scpsys.c | 27 +++++++++++++++++++--------
> >  1 file changed, 19 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> > index 6bf846cb1893..c6360de4e41e 100644
> > --- a/drivers/soc/mediatek/mtk-scpsys.c
> > +++ b/drivers/soc/mediatek/mtk-scpsys.c
> > @@ -118,6 +118,8 @@ static const char * const clk_names[] = {
> >   * @bus_prot_mask: The mask for single step bus protection.
> >   * @clk_id: The basic clock needs to be enabled before enabling certain
> >   *          power domains.
> > + * @basic_clk_name: provide the same purpose with field "clk_id"
> > + *                  by declaring basic clock prefix name rather than clk_id.
> >   * @caps: The flag for active wake-up action.
> >   */
> >  struct scp_domain_data {
> > @@ -128,6 +130,7 @@ struct scp_domain_data {
> >         u32 sram_pdn_ack_bits;
> >         u32 bus_prot_mask;
> >         enum clk_id clk_id[MAX_CLKS];
> > +       const char *basic_clk_name[MAX_CLKS];
> 
> Either call them basic_clk_id/basic_clk_name, or clk_id/clk_name.
> 

OK.

> >         u8 caps;
> >  };
> >
> > @@ -499,16 +502,24 @@ static struct scp *init_scp(struct platform_device *pdev,
> >
> >                 scpd->data = data;
> >
> > -               for (j = 0; j < MAX_CLKS && data->clk_id[j]; j++) {
> > -                       struct clk *c = clk[data->clk_id[j]];
> > +               if (data->clk_id[0]) {
> 
> Since it's either clk_id or basic_clk_name, I wonder if it'd be good
> to add a WARN_ON here, e.g.
> 
> WARN_ON(data->basic_clk_name[0]);
> 

Thanks for the advise. I'll add it.

> > +                       for (j = 0; j < MAX_CLKS && data->clk_id[j]; j++) {
> > +                               struct clk *c = clk[data->clk_id[j]];
> >
> > -                       if (IS_ERR(c)) {
> > -                               dev_err(&pdev->dev, "%s: clk unavailable\n",
> > -                                       data->name);
> > -                               return ERR_CAST(c);
> > -                       }
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
> > +               } else if (data->basic_clk_name[0]) {
> > +                       for (j = 0; j < MAX_CLKS &&
> > +                                       data->basic_clk_name[j]; j++)
> > +                               scpd->clk[j] = devm_clk_get(&pdev->dev,
> > +                                               data->basic_clk_name[j]);
> >                 }
> >
> >                 genpd->name = data->name;
> > --
> > 2.18.0
> >



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
