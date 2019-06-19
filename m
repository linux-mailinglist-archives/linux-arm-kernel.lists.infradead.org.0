Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B7F4B4F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 11:31:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a2h0AJFJCHpmFWg0NAU5rSmSiNVYpL2S5BSg/gzqUmw=; b=FDISF2r9ok4cz1
	QGNi5DdzIChpe6qy4EWqHee9Lo20XX3UzLHwBH/nayPS3A2RHk5gX6Z82HKC4zH0pS78QRcBmB4qx
	+xVxK8rM8v6qyg5MN5k0nwdBkJGmiNspiX4BbJEBsnUxisA0YPNGnaZ3VRKx7M5RL9K7r6lkhL+VH
	bJ4dcUfM/lU/hW7la7KjnAkB/9am0Goy3UqDyd6pI1DzechK8f70OgExq0Gujb4jK6FcMRmvgFBGX
	tKFx6ZhXGK0cJb/3aNTJYqkJXB+sSMDC9zIS2wglnEqWBLYr5pbf2BAGMMlgEIPQxaI3nZRui6z6A
	+VRnL6dd7vEwnubS8Rzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdWvm-00059i-SV; Wed, 19 Jun 2019 09:31:02 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdWvc-00058X-4H; Wed, 19 Jun 2019 09:30:53 +0000
X-UUID: 33309109eb974cc88dd2d8e0660a6598-20190619
X-UUID: 33309109eb974cc88dd2d8e0660a6598-20190619
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 655401009; Wed, 19 Jun 2019 01:30:46 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 19 Jun 2019 02:30:45 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 19 Jun 2019 17:30:43 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 19 Jun 2019 17:30:43 +0800
Message-ID: <1560936643.2158.15.camel@mtksdaap41>
Subject: Re: [PATCH v5 07/14] soc: mediatek: Refactor sram control
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Sean Wang <sean.wang@mediatek.com>
Date: Wed, 19 Jun 2019 17:30:43 +0800
In-Reply-To: <CANMq1KAYU8xVcdhYBDwy8Nh+=naH5bDYyJ2seZWHzvNHW=eDvw@mail.gmail.com>
References: <20190319080140.24055-1-weiyi.lu@mediatek.com>
 <20190319080140.24055-8-weiyi.lu@mediatek.com>
 <CANMq1KAYU8xVcdhYBDwy8Nh+=naH5bDYyJ2seZWHzvNHW=eDvw@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_023052_172836_E4CDCEB1 
X-CRM114-Status: GOOD (  19.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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

On Tue, 2019-03-19 at 20:07 +0800, Nicolas Boichat wrote:
> On Tue, Mar 19, 2019 at 4:02 PM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
> >
> > Put sram enable and disable control in separate functions.
> >
> > Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> 
> Refactoring looks ok, just a small comment.
> 
> Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>
> 
> > ---
> >  drivers/soc/mediatek/mtk-scpsys.c | 79 ++++++++++++++++++++-----------
> >  1 file changed, 51 insertions(+), 28 deletions(-)
> >
> > diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> > index 3e9be07a2627..65b734b40098 100644
> > --- a/drivers/soc/mediatek/mtk-scpsys.c
> > +++ b/drivers/soc/mediatek/mtk-scpsys.c
> > @@ -235,12 +235,55 @@ static void scpsys_clk_disable(struct clk *clk[], int max_num)
> >         }
> >  }
> >
> > +static int scpsys_sram_enable(struct scp_domain *scpd, void __iomem *ctl_addr)
> > +{
> > +       u32 val;
> > +       u32 pdn_ack = scpd->data->sram_pdn_ack_bits;
> > +       int tmp;
> > +
> > +       val = readl(ctl_addr) & ~scpd->data->sram_pdn_bits;
> > +       writel(val, ctl_addr);
> > +
> > +       /* Either wait until SRAM_PDN_ACK all 0 or have a force wait */
> > +       if (MTK_SCPD_CAPS(scpd, MTK_SCPD_FWAIT_SRAM)) {
> > +               /*
> > +                * Currently, MTK_SCPD_FWAIT_SRAM is necessary only for
> > +                * MT7622_POWER_DOMAIN_WB and thus just a trivial setup
> > +                * is applied here.
> > +                */
> > +               usleep_range(12000, 12100);
> 
> Does the range really need to be so tight? Would 12000, 13000 also be ok?
> 

I think Sean could give you a more accurate answer.

Hi Sean, would you mind answering this question?

> > +       } else {
> > +               /* Either wait until SRAM_PDN_ACK all 1 or 0 */
> > +               int ret = readl_poll_timeout(ctl_addr, tmp,
> > +                               (tmp & pdn_ack) == 0,
> > +                               MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
> > +               if (ret < 0)
> > +                       return ret;
> > +       }
> > +
> > +       return 0;
> > +}
> > +
> > +static int scpsys_sram_disable(struct scp_domain *scpd, void __iomem *ctl_addr)
> > +{
> > +       u32 val;
> > +       u32 pdn_ack = scpd->data->sram_pdn_ack_bits;
> > +       int tmp;
> > +
> > +       val = readl(ctl_addr) | scpd->data->sram_pdn_bits;
> > +       writel(val, ctl_addr);
> > +
> > +       /* Either wait until SRAM_PDN_ACK all 1 or 0 */
> > +       return readl_poll_timeout(ctl_addr, tmp,
> > +                       (tmp & pdn_ack) == pdn_ack,
> > +                       MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
> > +}
> > +
> >  static int scpsys_power_on(struct generic_pm_domain *genpd)
> >  {
> >         struct scp_domain *scpd = container_of(genpd, struct scp_domain, genpd);
> >         struct scp *scp = scpd->scp;
> >         void __iomem *ctl_addr = scp->base + scpd->data->ctl_offs;
> > -       u32 pdn_ack = scpd->data->sram_pdn_ack_bits;
> >         u32 val;
> >         int ret, tmp;
> >
> > @@ -252,6 +295,7 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
> >         if (ret)
> >                 goto err_clk;
> >
> > +       /* subsys power on */
> >         val = readl(ctl_addr);
> >         val |= PWR_ON_BIT;
> >         writel(val, ctl_addr);
> > @@ -273,24 +317,9 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
> >         val |= PWR_RST_B_BIT;
> >         writel(val, ctl_addr);
> >
> > -       val &= ~scpd->data->sram_pdn_bits;
> > -       writel(val, ctl_addr);
> > -
> > -       /* Either wait until SRAM_PDN_ACK all 0 or have a force wait */
> > -       if (MTK_SCPD_CAPS(scpd, MTK_SCPD_FWAIT_SRAM)) {
> > -               /*
> > -                * Currently, MTK_SCPD_FWAIT_SRAM is necessary only for
> > -                * MT7622_POWER_DOMAIN_WB and thus just a trivial setup is
> > -                * applied here.
> > -                */
> > -               usleep_range(12000, 12100);
> > -
> > -       } else {
> > -               ret = readl_poll_timeout(ctl_addr, tmp, (tmp & pdn_ack) == 0,
> > -                                        MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
> > -               if (ret < 0)
> > -                       goto err_pwr_ack;
> > -       }
> > +       ret = scpsys_sram_enable(scpd, ctl_addr);
> > +       if (ret < 0)
> > +               goto err_pwr_ack;
> >
> >         if (scpd->data->bus_prot_mask) {
> >                 ret = mtk_infracfg_clear_bus_protection(scp->infracfg,
> > @@ -317,7 +346,6 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
> >         struct scp_domain *scpd = container_of(genpd, struct scp_domain, genpd);
> >         struct scp *scp = scpd->scp;
> >         void __iomem *ctl_addr = scp->base + scpd->data->ctl_offs;
> > -       u32 pdn_ack = scpd->data->sram_pdn_ack_bits;
> >         u32 val;
> >         int ret, tmp;
> >
> > @@ -329,17 +357,12 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
> >                         goto out;
> >         }
> >
> > -       val = readl(ctl_addr);
> > -       val |= scpd->data->sram_pdn_bits;
> > -       writel(val, ctl_addr);
> > -
> > -       /* wait until SRAM_PDN_ACK all 1 */
> > -       ret = readl_poll_timeout(ctl_addr, tmp, (tmp & pdn_ack) == pdn_ack,
> > -                                MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
> > +       ret = scpsys_sram_disable(scpd, ctl_addr);
> >         if (ret < 0)
> >                 goto out;
> >
> > -       val |= PWR_ISO_BIT;
> > +       /* subsys power off */
> > +       val = readl(ctl_addr) | PWR_ISO_BIT;
> >         writel(val, ctl_addr);
> >
> >         val &= ~PWR_RST_B_BIT;
> > --
> > 2.18.0
> >



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
