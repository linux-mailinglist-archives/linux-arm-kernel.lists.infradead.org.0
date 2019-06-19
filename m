Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 395F94B4F8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 11:31:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gyI+/XgQxEZFaLK5O5qnDCBx/UL4QAkvd5iJOBTMwFs=; b=ms32mE43piEUju
	pYs2pgQppgYxKQ5SKkxAL6nqbDBVChgqVsM2jbYUZaVPFFvuiL3vl12kMOwb2ktei75ZbmkgopK5f
	IMK72U+DwPpB4SL3xC+A2OkOfEYwfRz6qtVA/NBzs2PKFAbP+Uvj0so8s3pF3qrcMrX/uO+mDpgib
	mrr1SK9YHDup0poDaMBsFz4gDV9G1QicAKZAo3nc4DIIuKEnGyAoCSE1da0pm/gXqvMhHHX/2RcOd
	WgfOAY6ZSSM5CEfWyjFr8MLyqBZIhwIRJqErEFIBvwiIV4ShAfFrpdYP34mFoKQMxd9/D1F6QqhrD
	5Ghv3gTjW0V0hDveGiXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdWwa-0005Uz-OH; Wed, 19 Jun 2019 09:31:52 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdWwO-0005TG-BF; Wed, 19 Jun 2019 09:31:41 +0000
X-UUID: 8e571d61f82d4628ba282297427db49d-20190619
X-UUID: 8e571d61f82d4628ba282297427db49d-20190619
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 875463317; Wed, 19 Jun 2019 01:31:24 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 19 Jun 2019 02:31:22 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 19 Jun 2019 17:31:20 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 19 Jun 2019 17:31:21 +0800
Message-ID: <1560936681.2158.16.camel@mtksdaap41>
Subject: Re: [PATCH v5 08/14] soc: mediatek: Refactor bus protection control
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 19 Jun 2019 17:31:21 +0800
In-Reply-To: <CANMq1KDkzWk-CSib7NBtc-2zqmoW31vFrO5sOj1up-vFvnmhjQ@mail.gmail.com>
References: <20190319080140.24055-1-weiyi.lu@mediatek.com>
 <20190319080140.24055-9-weiyi.lu@mediatek.com>
 <CANMq1KDkzWk-CSib7NBtc-2zqmoW31vFrO5sOj1up-vFvnmhjQ@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_023140_398576_D3B461E5 
X-CRM114-Status: GOOD (  16.81  )
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
 Fan Chen <fan.chen@mediatek.com>, "moderated
 list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-03-19 at 20:09 +0800, Nicolas Boichat wrote:
> On Tue, Mar 19, 2019 at 4:02 PM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
> >
> > Put bus protection enable and disable control in separate functions.
> >
> > Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-scpsys.c | 48 ++++++++++++++++++++++---------
> >  1 file changed, 34 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> > index 65b734b40098..6bf846cb1893 100644
> > --- a/drivers/soc/mediatek/mtk-scpsys.c
> > +++ b/drivers/soc/mediatek/mtk-scpsys.c
> > @@ -279,6 +279,34 @@ static int scpsys_sram_disable(struct scp_domain *scpd, void __iomem *ctl_addr)
> >                         MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
> >  }
> >
> > +static int scpsys_bus_protect_enable(struct scp_domain *scpd)
> > +{
> > +       struct scp *scp = scpd->scp;
> > +       int ret = 0;
> > +
> > +       if (scpd->data->bus_prot_mask) {
> > +               ret = mtk_infracfg_set_bus_protection(scp->infracfg,
> > +                               scpd->data->bus_prot_mask,
> > +                               scp->bus_prot_reg_update);
> > +       }
> > +
> > +       return ret;
> 
> Maybe other people have different opinions, but I prefer:
> 
> if (!scpd->data->bus_prot_mask)
>     return 0;
> 
> return mtk_infracfg_set_bus_protection(...);
> 

ok, I'll update in next version.

> > +}
> > +
> > +static int scpsys_bus_protect_disable(struct scp_domain *scpd)
> > +{
> > +       struct scp *scp = scpd->scp;
> > +       int ret = 0;
> > +
> > +       if (scpd->data->bus_prot_mask) {
> > +               ret = mtk_infracfg_clear_bus_protection(scp->infracfg,
> > +                               scpd->data->bus_prot_mask,
> > +                               scp->bus_prot_reg_update);
> > +       }
> > +
> > +       return ret;
> > +}
> > +
> >  static int scpsys_power_on(struct generic_pm_domain *genpd)
> >  {
> >         struct scp_domain *scpd = container_of(genpd, struct scp_domain, genpd);
> > @@ -321,13 +349,9 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
> >         if (ret < 0)
> >                 goto err_pwr_ack;
> >
> > -       if (scpd->data->bus_prot_mask) {
> > -               ret = mtk_infracfg_clear_bus_protection(scp->infracfg,
> > -                               scpd->data->bus_prot_mask,
> > -                               scp->bus_prot_reg_update);
> > -               if (ret)
> > -                       goto err_pwr_ack;
> > -       }
> > +       ret = scpsys_bus_protect_disable(scpd);
> > +       if (ret < 0)
> > +               goto err_pwr_ack;
> >
> >         return 0;
> >
> > @@ -349,13 +373,9 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
> >         u32 val;
> >         int ret, tmp;
> >
> > -       if (scpd->data->bus_prot_mask) {
> > -               ret = mtk_infracfg_set_bus_protection(scp->infracfg,
> > -                               scpd->data->bus_prot_mask,
> > -                               scp->bus_prot_reg_update);
> > -               if (ret)
> > -                       goto out;
> > -       }
> > +       ret = scpsys_bus_protect_enable(scpd);
> > +       if (ret < 0)
> > +               goto out;
> >
> >         ret = scpsys_sram_disable(scpd, ctl_addr);
> >         if (ret < 0)
> > --
> > 2.18.0
> >
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
