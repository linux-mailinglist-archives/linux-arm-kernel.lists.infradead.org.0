Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D89C04B4D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 11:20:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+64jA6dLJ/imNSzFA2QD0qdmphEXK4Dlm1RxxWo55Uw=; b=tfz6041WxH3jks
	NWI8ujfwaebZjGuZIu8tQ9Xqtq3gKs1CXfeCDuV88E3ETLyaRs5ukX5OgJYqeJlOzOrTJSzRHkqBe
	jKrZ585JPaJs5kGWti8fq/p/6A2qQNkimwBK9/Ks5qy7dRKVfMBXZfpIzNlUor1lAN8W2buM6ChPQ
	V9gkLAEliD9gjyJmO5mOXRANHSPCeQIw6NYkd4SdTH6fKHab8ZBq2izFfXuEtE/ogfAx+d4eHEBma
	GUiQd96IiUTfGPUEwFRrPPhETkVhBBpd1gCL+sBgmGKKy9VflGbCJ9dDrBCaV9XMoq0SW1nK16x4b
	rZZr10mAerMs8BkwbxIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdWlR-0001pN-Ra; Wed, 19 Jun 2019 09:20:21 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdWlG-0001nl-1d; Wed, 19 Jun 2019 09:20:11 +0000
X-UUID: db19d800f7d5414981d56231040ca53b-20190619
X-UUID: db19d800f7d5414981d56231040ca53b-20190619
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1871408692; Wed, 19 Jun 2019 01:19:50 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 19 Jun 2019 02:19:49 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 19 Jun 2019 17:19:47 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 19 Jun 2019 17:19:47 +0800
Message-ID: <1560935987.2158.8.camel@mtksdaap41>
Subject: Re: [PATCH v5 06/14] soc: mediatek: Refactor clock control
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 19 Jun 2019 17:19:47 +0800
In-Reply-To: <CANMq1KCxhnn+fKaxS1RbpYYJ7pcXzD8XkqTBJHiauHbfrYVTGA@mail.gmail.com>
References: <20190319080140.24055-1-weiyi.lu@mediatek.com>
 <20190319080140.24055-7-weiyi.lu@mediatek.com>
 <CANMq1KCxhnn+fKaxS1RbpYYJ7pcXzD8XkqTBJHiauHbfrYVTGA@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_022010_099647_DF4B8407 
X-CRM114-Status: GOOD (  19.32  )
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

On Tue, 2019-03-19 at 20:02 +0800, Nicolas Boichat wrote:
> On Tue, Mar 19, 2019 at 4:02 PM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
> >
> > Put clock enable and disable control in separate function.
> >
> > Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-scpsys.c | 49 ++++++++++++++++++++-----------
> >  1 file changed, 32 insertions(+), 17 deletions(-)
> >
> > diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> > index 765ad4a5e5df..3e9be07a2627 100644
> > --- a/drivers/soc/mediatek/mtk-scpsys.c
> > +++ b/drivers/soc/mediatek/mtk-scpsys.c
> > @@ -208,6 +208,33 @@ static int scpsys_regulator_disable(struct scp_domain *scpd)
> >         return regulator_disable(scpd->supply);
> >  }
> >
> > +static int scpsys_clk_enable(struct clk *clk[], int max_num)
> > +{
> > +       int i, ret = 0;
> > +
> > +       for (i = 0; i < max_num && clk[i]; i++) {
> > +               ret = clk_prepare_enable(clk[i]);
> > +               if (ret) {
> > +                       for (--i; i >= 0; i--)
> > +                               clk_disable_unprepare(clk[i]);
> 
> Would it be simpler to just call scpsys_clk_disable(clk, i) ?
> 

OK, I'll try.

> > +
> > +                       break;
> > +               }
> > +       }
> > +
> > +       return ret;
> > +}
> 
> Maybe not for this series, but could you use clk_bulk_prepare_enable
> instead? The only issue is that it'd still call clk_prepare_enable on
> NULL clocks, but that does nothing, so it's just a little less
> efficient...
> 

OK, I'll try after this series.

> > +
> > +static void scpsys_clk_disable(struct clk *clk[], int max_num)
> > +{
> > +       int i;
> > +
> > +       for (i = max_num - 1; i >= 0; i--) {
> > +               if (clk[i])
> 
> if test not needed, clk_disable_unprepare ignores NULL parameters.
> 

You're right. Supposed it's not needed, I'll test.

> > +                       clk_disable_unprepare(clk[i]);
> > +       }
> > +}
> 
> ditto: clk_bulk_disable_unprepare
> 
> > +
> >  static int scpsys_power_on(struct generic_pm_domain *genpd)
> >  {
> >         struct scp_domain *scpd = container_of(genpd, struct scp_domain, genpd);
> > @@ -216,21 +243,14 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
> >         u32 pdn_ack = scpd->data->sram_pdn_ack_bits;
> >         u32 val;
> >         int ret, tmp;
> > -       int i;
> >
> >         ret = scpsys_regulator_enable(scpd);
> >         if (ret < 0)
> >                 return ret;
> >
> > -       for (i = 0; i < MAX_CLKS && scpd->clk[i]; i++) {
> > -               ret = clk_prepare_enable(scpd->clk[i]);
> > -               if (ret) {
> > -                       for (--i; i >= 0; i--)
> > -                               clk_disable_unprepare(scpd->clk[i]);
> > -
> > -                       goto err_clk;
> > -               }
> > -       }
> > +       ret = scpsys_clk_enable(scpd->clk, MAX_CLKS);
> > +       if (ret)
> > +               goto err_clk;
> >
> >         val = readl(ctl_addr);
> >         val |= PWR_ON_BIT;
> > @@ -283,10 +303,7 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
> >         return 0;
> >
> >  err_pwr_ack:
> > -       for (i = MAX_CLKS - 1; i >= 0; i--) {
> > -               if (scpd->clk[i])
> > -                       clk_disable_unprepare(scpd->clk[i]);
> > -       }
> > +       scpsys_clk_disable(scpd->clk, MAX_CLKS);
> >  err_clk:
> >         scpsys_regulator_disable(scpd);
> >
> > @@ -303,7 +320,6 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
> >         u32 pdn_ack = scpd->data->sram_pdn_ack_bits;
> >         u32 val;
> >         int ret, tmp;
> > -       int i;
> >
> >         if (scpd->data->bus_prot_mask) {
> >                 ret = mtk_infracfg_set_bus_protection(scp->infracfg,
> > @@ -344,8 +360,7 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
> >         if (ret < 0)
> >                 goto out;
> >
> > -       for (i = 0; i < MAX_CLKS && scpd->clk[i]; i++)
> > -               clk_disable_unprepare(scpd->clk[i]);
> > +       scpsys_clk_disable(scpd->clk, MAX_CLKS);
> >
> >         ret = scpsys_regulator_disable(scpd);
> >         if (ret < 0)
> > --
> > 2.18.0
> >



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
