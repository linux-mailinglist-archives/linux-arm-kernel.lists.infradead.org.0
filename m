Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 486A31273E8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 04:30:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4nooXZChGiBHToOMzIvbiQMHpa/CZ6mjYpOfsc4qHIU=; b=OKko8Z3N9785wp
	C/0hOi3I/2ie4S6RsHyaWu6JkjZuK2rFWcIvlyGGTCSbAUL+9kNvarb3vDPjcAvYjtMtHVL88dEo9
	jUWk4sla9ckpzAhc9lX/dOQQmRvR2t2cu/g4nr+3v1q+Bdkvsl4Xy/UvDi36XU5KiMAwND/wX5MZm
	pYh7BvtnRgjPxDNfX2FvtAfQr5yrazNJAukPog5Wy3orhbln6QkYfHuv8p6aWAV0KjM7Zf0rFIwpq
	p1U4APt+df+5+QMztn9Tcx+I1kcYy+TeGwzUas9kZFO7TYjTtdXQLYJI4qbsFdgyUo8jzAWbRPXCK
	FQoTMVAwRFu89nISZZjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii8zl-0005k1-7R; Fri, 20 Dec 2019 03:30:29 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii8zY-0005hV-5o; Fri, 20 Dec 2019 03:30:19 +0000
X-UUID: 383b7e75c6bb49fd9fd7495175a4142d-20191219
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=wDAMquRlB6xdD54caxdrUkHr4443AkfDwSmlMaiKuUM=; 
 b=Ds7/Neb/w/7cH8nBZyH+f91u4E0BLLmCRDB116pQmmweY4IT0KPpbvpe6GlkWy58TBQjbVdSxU7wsUcdA/4zia1kaHRwXBuWuFUmvOWWgH5rQ9m7OW+tjghNeYAbBVJCtLJTRkLs9EcBeAMRBCL8YGWNqnyn9ovlj2PRDd34Db8=;
X-UUID: 383b7e75c6bb49fd9fd7495175a4142d-20191219
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 526183261; Thu, 19 Dec 2019 19:30:10 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Dec 2019 19:30:33 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Dec 2019 11:29:21 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 20 Dec 2019 11:30:01 +0800
Message-ID: <1576812595.8410.7.camel@mtksdaap41>
Subject: Re: [PATCH v10 04/12] soc: mediatek: Use basic_clk_name for all
 compatibles
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 20 Dec 2019 11:29:55 +0800
In-Reply-To: <CANMq1KAV13W259iPqLoWm2V2FKDxbGd+s8LUXaizvkz6hWZzcw@mail.gmail.com>
References: <1576657848-14711-1-git-send-email-weiyi.lu@mediatek.com>
 <1576657848-14711-5-git-send-email-weiyi.lu@mediatek.com>
 <CANMq1KAV13W259iPqLoWm2V2FKDxbGd+s8LUXaizvkz6hWZzcw@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_193016_240795_DDD6F406 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>, Sascha
 Hauer <kernel@pengutronix.de>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-12-19 at 11:48 +0800, Nicolas Boichat wrote:
> On Wed, Dec 18, 2019 at 4:31 PM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
> >
> > Use basic_clk_name strings for all compatibles, instead of
> > mixing clk_id and clk_name.
> 
> This looks good, but I'd just squash it into 03/16 of the series.
> 

OK, will update in next version.

> >
> > Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-scpsys.c | 149 +++++++++++---------------------------
> >  1 file changed, 44 insertions(+), 105 deletions(-)
> >
> > diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> > index 9343277..db35a28 100644
> > --- a/drivers/soc/mediatek/mtk-scpsys.c
> > +++ b/drivers/soc/mediatek/mtk-scpsys.c
> > @@ -78,34 +78,6 @@
> >  #define PWR_STATUS_HIF1                        BIT(26) /* MT7622 */
> >  #define PWR_STATUS_WB                  BIT(27) /* MT7622 */
> >
> > -enum clk_id {
> > -       CLK_NONE,
> > -       CLK_MM,
> > -       CLK_MFG,
> > -       CLK_VENC,
> > -       CLK_VENC_LT,
> > -       CLK_ETHIF,
> > -       CLK_VDEC,
> > -       CLK_HIFSEL,
> > -       CLK_JPGDEC,
> > -       CLK_AUDIO,
> > -       CLK_MAX,
> > -};
> > -
> > -static const char * const clk_names[] = {
> > -       NULL,
> > -       "mm",
> > -       "mfg",
> > -       "venc",
> > -       "venc_lt",
> > -       "ethif",
> > -       "vdec",
> > -       "hif_sel",
> > -       "jpgdec",
> > -       "audio",
> > -       NULL,
> > -};
> > -
> >  #define MAX_CLKS       3
> >
> >  /**
> > @@ -116,9 +88,7 @@ enum clk_id {
> >   * @sram_pdn_bits: The mask for sram power control bits.
> >   * @sram_pdn_ack_bits: The mask for sram power control acked bits.
> >   * @bus_prot_mask: The mask for single step bus protection.
> > - * @clk_id: The basic clocks required by this power domain.
> > - * @basic_clk_name: provide the same purpose with field "clk_id"
> > - *                by declaring basic clock prefix name rather than clk_id.
> > + * @basic_clk_name: The basic clocks required by this power domain.
> >   * @caps: The flag for active wake-up action.
> >   */
> >  struct scp_domain_data {
> > @@ -128,7 +98,6 @@ struct scp_domain_data {
> >         u32 sram_pdn_bits;
> >         u32 sram_pdn_ack_bits;
> >         u32 bus_prot_mask;
> > -       enum clk_id clk_id[MAX_CLKS];
> >         const char *basic_clk_name[MAX_CLKS];
> >         u8 caps;
> >  };
> > @@ -414,12 +383,23 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
> >         return ret;
> >  }
> >
> > -static void init_clks(struct platform_device *pdev, struct clk **clk)
> > +static int init_basic_clks(struct platform_device *pdev, struct clk **clk,
> > +                       const char * const *name)
> >  {
> >         int i;
> >
> > -       for (i = CLK_NONE + 1; i < CLK_MAX; i++)
> > -               clk[i] = devm_clk_get(&pdev->dev, clk_names[i]);
> > +       for (i = 0; i < MAX_CLKS && name[i]; i++) {
> > +               clk[i] = devm_clk_get(&pdev->dev, name[i]);
> > +
> > +               if (IS_ERR(clk[i])) {
> > +                       dev_err(&pdev->dev,
> > +                               "get basic clk %s fail %ld\n",
> > +                               name[i], PTR_ERR(clk[i]));
> > +                       return PTR_ERR(clk[i]);
> > +               }
> > +       }
> > +
> > +       return 0;
> >  }
> >
> >  static struct scp *init_scp(struct platform_device *pdev,
> > @@ -429,9 +409,8 @@ static struct scp *init_scp(struct platform_device *pdev,
> >  {
> >         struct genpd_onecell_data *pd_data;
> >         struct resource *res;
> > -       int i, j;
> > +       int i, ret;
> >         struct scp *scp;
> > -       struct clk *clk[CLK_MAX];
> >
> >         scp = devm_kzalloc(&pdev->dev, sizeof(*scp), GFP_KERNEL);
> >         if (!scp)
> > @@ -484,8 +463,6 @@ static struct scp *init_scp(struct platform_device *pdev,
> >
> >         pd_data->num_domains = num;
> >
> > -       init_clks(pdev, clk);
> > -
> >         for (i = 0; i < num; i++) {
> >                 struct scp_domain *scpd = &scp->domains[i];
> >                 struct generic_pm_domain *genpd = &scpd->genpd;
> > @@ -496,27 +473,9 @@ static struct scp *init_scp(struct platform_device *pdev,
> >
> >                 scpd->data = data;
> >
> > -               if (data->clk_id[0]) {
> > -                       WARN_ON(data->basic_clk_name[0]);
> > -
> > -                       for (j = 0; j < MAX_CLKS && data->clk_id[j]; j++) {
> > -                               struct clk *c = clk[data->clk_id[j]];
> > -
> > -                               if (IS_ERR(c)) {
> > -                                       dev_err(&pdev->dev,
> > -                                               "%s: clk unavailable\n",
> > -                                               data->name);
> > -                                       return ERR_CAST(c);
> > -                               }
> > -
> > -                               scpd->clk[j] = c;
> > -                       }
> > -               } else if (data->basic_clk_name[0]) {
> > -                       for (j = 0; j < MAX_CLKS &&
> > -                                       data->basic_clk_name[j]; j++)
> > -                               scpd->clk[j] = devm_clk_get(&pdev->dev,
> > -                                               data->basic_clk_name[j]);
> > -               }
> > +               ret = init_basic_clks(pdev, scpd->clk, data->basic_clk_name);
> > +               if (ret)
> > +                       return ERR_PTR(ret);
> >
> >                 genpd->name = data->name;
> >                 genpd->power_off = scpsys_power_off;
> > @@ -573,7 +532,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_CONN_PWR_CON,
> >                 .bus_prot_mask = MT2701_TOP_AXI_PROT_EN_CONN_M |
> >                                  MT2701_TOP_AXI_PROT_EN_CONN_S,
> > -               .clk_id = {CLK_NONE},
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> >         [MT2701_POWER_DOMAIN_DISP] = {
> > @@ -581,7 +539,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .sta_mask = PWR_STATUS_DISP,
> >                 .ctl_offs = SPM_DIS_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> > -               .clk_id = {CLK_MM},
> > +               .basic_clk_name = {"mm"},
> >                 .bus_prot_mask = MT2701_TOP_AXI_PROT_EN_MM_M0,
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> > @@ -591,7 +549,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_MFG_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = GENMASK(12, 12),
> > -               .clk_id = {CLK_MFG},
> > +               .basic_clk_name = {"mfg"},
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> >         [MT2701_POWER_DOMAIN_VDEC] = {
> > @@ -600,7 +558,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_VDE_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = GENMASK(12, 12),
> > -               .clk_id = {CLK_MM},
> > +               .basic_clk_name = {"mm"},
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> >         [MT2701_POWER_DOMAIN_ISP] = {
> > @@ -609,7 +567,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_ISP_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = GENMASK(13, 12),
> > -               .clk_id = {CLK_MM},
> > +               .basic_clk_name = {"mm"},
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> >         [MT2701_POWER_DOMAIN_BDP] = {
> > @@ -617,7 +575,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .sta_mask = PWR_STATUS_BDP,
> >                 .ctl_offs = SPM_BDP_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> > -               .clk_id = {CLK_NONE},
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> >         [MT2701_POWER_DOMAIN_ETH] = {
> > @@ -626,7 +583,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_ETH_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = GENMASK(15, 12),
> > -               .clk_id = {CLK_ETHIF},
> > +               .basic_clk_name = {"ethif"},
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> >         [MT2701_POWER_DOMAIN_HIF] = {
> > @@ -635,14 +592,13 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_HIF_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = GENMASK(15, 12),
> > -               .clk_id = {CLK_ETHIF},
> > +               .basic_clk_name = {"ethif"},
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> >         [MT2701_POWER_DOMAIN_IFR_MSC] = {
> >                 .name = "ifr_msc",
> >                 .sta_mask = PWR_STATUS_IFR_MSC,
> >                 .ctl_offs = SPM_IFR_MSC_PWR_CON,
> > -               .clk_id = {CLK_NONE},
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> >  };
> > @@ -657,7 +613,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_DIS_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(8, 8),
> >                 .sram_pdn_ack_bits = GENMASK(12, 12),
> > -               .clk_id = {CLK_MM},
> > +               .basic_clk_name = {"mm"},
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> >         [MT2712_POWER_DOMAIN_VDEC] = {
> > @@ -666,7 +622,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_VDE_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(8, 8),
> >                 .sram_pdn_ack_bits = GENMASK(12, 12),
> > -               .clk_id = {CLK_MM, CLK_VDEC},
> > +               .basic_clk_name = {"mm", "vdec"},
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> >         [MT2712_POWER_DOMAIN_VENC] = {
> > @@ -675,7 +631,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_VEN_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = GENMASK(15, 12),
> > -               .clk_id = {CLK_MM, CLK_VENC, CLK_JPGDEC},
> > +               .basic_clk_name = {"mm", "venc", "jpgdec"},
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> >         [MT2712_POWER_DOMAIN_ISP] = {
> > @@ -684,7 +640,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_ISP_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = GENMASK(13, 12),
> > -               .clk_id = {CLK_MM},
> > +               .basic_clk_name = {"mm"},
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> >         [MT2712_POWER_DOMAIN_AUDIO] = {
> > @@ -693,7 +649,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_AUDIO_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = GENMASK(15, 12),
> > -               .clk_id = {CLK_AUDIO},
> > +               .basic_clk_name = {"audio"},
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> >         [MT2712_POWER_DOMAIN_USB] = {
> > @@ -702,7 +658,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_USB_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(10, 8),
> >                 .sram_pdn_ack_bits = GENMASK(14, 12),
> > -               .clk_id = {CLK_NONE},
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> >         [MT2712_POWER_DOMAIN_USB2] = {
> > @@ -711,7 +666,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_USB2_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(10, 8),
> >                 .sram_pdn_ack_bits = GENMASK(14, 12),
> > -               .clk_id = {CLK_NONE},
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> >         [MT2712_POWER_DOMAIN_MFG] = {
> > @@ -720,7 +674,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_MFG_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(8, 8),
> >                 .sram_pdn_ack_bits = GENMASK(16, 16),
> > -               .clk_id = {CLK_MFG},
> > +               .basic_clk_name = {"mfg"},
> >                 .bus_prot_mask = BIT(14) | BIT(21) | BIT(23),
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> > @@ -730,7 +684,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = 0x02c0,
> >                 .sram_pdn_bits = GENMASK(8, 8),
> >                 .sram_pdn_ack_bits = GENMASK(16, 16),
> > -               .clk_id = {CLK_NONE},
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> >         [MT2712_POWER_DOMAIN_MFG_SC2] = {
> > @@ -739,7 +692,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = 0x02c4,
> >                 .sram_pdn_bits = GENMASK(8, 8),
> >                 .sram_pdn_ack_bits = GENMASK(16, 16),
> > -               .clk_id = {CLK_NONE},
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> >         [MT2712_POWER_DOMAIN_MFG_SC3] = {
> > @@ -748,7 +700,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = 0x01f8,
> >                 .sram_pdn_bits = GENMASK(8, 8),
> >                 .sram_pdn_ack_bits = GENMASK(16, 16),
> > -               .clk_id = {CLK_NONE},
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> >  };
> > @@ -773,7 +724,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = 0x300,
> >                 .sram_pdn_bits = GENMASK(8, 8),
> >                 .sram_pdn_ack_bits = GENMASK(12, 12),
> > -               .clk_id = {CLK_VDEC},
> > +               .basic_clk_name = {"vdec"},
> >         },
> >         [MT6797_POWER_DOMAIN_VENC] = {
> >                 .name = "venc",
> > @@ -781,7 +732,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = 0x304,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = GENMASK(15, 12),
> > -               .clk_id = {CLK_NONE},
> >         },
> >         [MT6797_POWER_DOMAIN_ISP] = {
> >                 .name = "isp",
> > @@ -789,7 +739,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = 0x308,
> >                 .sram_pdn_bits = GENMASK(9, 8),
> >                 .sram_pdn_ack_bits = GENMASK(13, 12),
> > -               .clk_id = {CLK_NONE},
> >         },
> >         [MT6797_POWER_DOMAIN_MM] = {
> >                 .name = "mm",
> > @@ -797,7 +746,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = 0x30C,
> >                 .sram_pdn_bits = GENMASK(8, 8),
> >                 .sram_pdn_ack_bits = GENMASK(12, 12),
> > -               .clk_id = {CLK_MM},
> > +               .basic_clk_name = {"mm"},
> >                 .bus_prot_mask = (BIT(1) | BIT(2)),
> >         },
> >         [MT6797_POWER_DOMAIN_AUDIO] = {
> > @@ -806,7 +755,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = 0x314,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = GENMASK(15, 12),
> > -               .clk_id = {CLK_NONE},
> >         },
> >         [MT6797_POWER_DOMAIN_MFG_ASYNC] = {
> >                 .name = "mfg_async",
> > @@ -814,7 +762,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = 0x334,
> >                 .sram_pdn_bits = 0,
> >                 .sram_pdn_ack_bits = 0,
> > -               .clk_id = {CLK_MFG},
> > +               .basic_clk_name = {"mfg"},
> >         },
> >         [MT6797_POWER_DOMAIN_MJC] = {
> >                 .name = "mjc",
> > @@ -822,7 +770,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = 0x310,
> >                 .sram_pdn_bits = GENMASK(8, 8),
> >                 .sram_pdn_ack_bits = GENMASK(12, 12),
> > -               .clk_id = {CLK_NONE},
> >         },
> >  };
> >
> > @@ -847,7 +794,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_ETHSYS_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = GENMASK(15, 12),
> > -               .clk_id = {CLK_NONE},
> >                 .bus_prot_mask = MT7622_TOP_AXI_PROT_EN_ETHSYS,
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> > @@ -857,7 +803,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_HIF0_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = GENMASK(15, 12),
> > -               .clk_id = {CLK_HIFSEL},
> > +               .basic_clk_name = {"hif_sel"},
> >                 .bus_prot_mask = MT7622_TOP_AXI_PROT_EN_HIF0,
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> > @@ -867,7 +813,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_HIF1_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = GENMASK(15, 12),
> > -               .clk_id = {CLK_HIFSEL},
> > +               .basic_clk_name = {"hif_sel"},
> >                 .bus_prot_mask = MT7622_TOP_AXI_PROT_EN_HIF1,
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> > @@ -877,7 +823,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_WB_PWR_CON,
> >                 .sram_pdn_bits = 0,
> >                 .sram_pdn_ack_bits = 0,
> > -               .clk_id = {CLK_NONE},
> >                 .bus_prot_mask = MT7622_TOP_AXI_PROT_EN_WB,
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP | MTK_SCPD_FWAIT_SRAM,
> >         },
> > @@ -894,7 +839,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_CONN_PWR_CON,
> >                 .bus_prot_mask = MT2701_TOP_AXI_PROT_EN_CONN_M |
> >                                  MT2701_TOP_AXI_PROT_EN_CONN_S,
> > -               .clk_id = {CLK_NONE},
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> >         [MT7623A_POWER_DOMAIN_ETH] = {
> > @@ -903,7 +847,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_ETH_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = GENMASK(15, 12),
> > -               .clk_id = {CLK_ETHIF},
> > +               .basic_clk_name = {"ethif"},
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> >         [MT7623A_POWER_DOMAIN_HIF] = {
> > @@ -912,14 +856,13 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_HIF_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = GENMASK(15, 12),
> > -               .clk_id = {CLK_ETHIF},
> > +               .basic_clk_name = {"ethif"},
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> >         [MT7623A_POWER_DOMAIN_IFR_MSC] = {
> >                 .name = "ifr_msc",
> >                 .sta_mask = PWR_STATUS_IFR_MSC,
> >                 .ctl_offs = SPM_IFR_MSC_PWR_CON,
> > -               .clk_id = {CLK_NONE},
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> >  };
> > @@ -935,7 +878,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_VDE_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = GENMASK(12, 12),
> > -               .clk_id = {CLK_MM},
> > +               .basic_clk_name = {"mm"},
> >         },
> >         [MT8173_POWER_DOMAIN_VENC] = {
> >                 .name = "venc",
> > @@ -943,7 +886,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_VEN_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = GENMASK(15, 12),
> > -               .clk_id = {CLK_MM, CLK_VENC},
> > +               .basic_clk_name = {"mm", "venc"},
> >         },
> >         [MT8173_POWER_DOMAIN_ISP] = {
> >                 .name = "isp",
> > @@ -951,7 +894,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_ISP_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = GENMASK(13, 12),
> > -               .clk_id = {CLK_MM},
> > +               .basic_clk_name = {"mm"},
> >         },
> >         [MT8173_POWER_DOMAIN_MM] = {
> >                 .name = "mm",
> > @@ -959,7 +902,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_DIS_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = GENMASK(12, 12),
> > -               .clk_id = {CLK_MM},
> > +               .basic_clk_name = {"mm"},
> >                 .bus_prot_mask = MT8173_TOP_AXI_PROT_EN_MM_M0 |
> >                         MT8173_TOP_AXI_PROT_EN_MM_M1,
> >         },
> > @@ -969,7 +912,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_VEN2_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = GENMASK(15, 12),
> > -               .clk_id = {CLK_MM, CLK_VENC_LT},
> > +               .basic_clk_name = {"mm", "venc_lt"},
> >         },
> >         [MT8173_POWER_DOMAIN_AUDIO] = {
> >                 .name = "audio",
> > @@ -977,7 +920,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_AUDIO_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = GENMASK(15, 12),
> > -               .clk_id = {CLK_NONE},
> >         },
> >         [MT8173_POWER_DOMAIN_USB] = {
> >                 .name = "usb",
> > @@ -985,7 +927,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_USB_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = GENMASK(15, 12),
> > -               .clk_id = {CLK_NONE},
> >                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
> >         },
> >         [MT8173_POWER_DOMAIN_MFG_ASYNC] = {
> > @@ -994,7 +935,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_MFG_ASYNC_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = 0,
> > -               .clk_id = {CLK_MFG},
> > +               .basic_clk_name = {"mfg"},
> >         },
> >         [MT8173_POWER_DOMAIN_MFG_2D] = {
> >                 .name = "mfg_2d",
> > @@ -1002,7 +943,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_MFG_2D_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(11, 8),
> >                 .sram_pdn_ack_bits = GENMASK(13, 12),
> > -               .clk_id = {CLK_NONE},
> >         },
> >         [MT8173_POWER_DOMAIN_MFG] = {
> >                 .name = "mfg",
> > @@ -1010,7 +950,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
> >                 .ctl_offs = SPM_MFG_PWR_CON,
> >                 .sram_pdn_bits = GENMASK(13, 8),
> >                 .sram_pdn_ack_bits = GENMASK(21, 16),
> > -               .clk_id = {CLK_NONE},
> >                 .bus_prot_mask = MT8173_TOP_AXI_PROT_EN_MFG_S |
> >                         MT8173_TOP_AXI_PROT_EN_MFG_M0 |
> >                         MT8173_TOP_AXI_PROT_EN_MFG_M1 |
> > --
> > 1.8.1.1.dirty
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
