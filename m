Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEB3125A21
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 04:54:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6nHtmA4D23Kyahw3rFmJaqPqMKTWj7XXzNgjXtuk0Q=; b=Lbk2F/lwIwJz9K
	3pLFEgp+Bv0Br181/B2kiwlpxWDrOqXmVDOp24nJsN7pS8Er2WFf7kU6BOCZngAQfS5tuQDfVbJso
	UF4DOekVyJEdpkNHCO372/YrL/Dc0KzB+3WkK4UXoGW7wHZqvilhE18TvAMf4IEK8kvNYL2kf6sGQ
	+yqdBGwmtvF5soA3y3HwB82PJsYZIWjKSIfd3bvBr90TfbZytehmrS0NHRFGOAd60inrFFYbqKwWW
	iOrEQnv3HIq7Lizi8IzDLMk9+sjLIefXdjPDQusQodvkHGCcErTyYLTYkbhtggCDdazH4tFcNE7g7
	vtdX8+wUpV20lWKrsgXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihmtf-0002ug-9w; Thu, 19 Dec 2019 03:54:43 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihmtS-0002tf-Ra
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 03:54:33 +0000
Received: by mail-qv1-xf43.google.com with SMTP id f16so1695046qvi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 19:54:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F3u9kGaQk+7+mvvGSN3GLe2hFj+Kn5FQzP51xZCsUKo=;
 b=Kdo+GJdX7tYzhXquSDc0xGVNiOOg5TeySqELrQ2yuh9FWPf5ylwA3V6z7XSfLZl2re
 St7zg+5OfREjsHKCXhtwSSiw5wPLn2LgGO44RUPigiSQTeMaC5jNE5ghGGw5vG87ssPx
 vV1He9TBFtYLo9BR3a0fBxWAEAus5wwPrQcLw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F3u9kGaQk+7+mvvGSN3GLe2hFj+Kn5FQzP51xZCsUKo=;
 b=kPmQKqwCHYFMsN36GSurpcvK+BRzZ8L924t6nojOSStodgVSy3e+z0uo78VtTEpZOm
 Z/bB5iaLGhDawExfsb1Z617zka2hdVczwYY9m9h5hlqC2hqPkYIRQ9LuKkhfxAjVkK0n
 jumyMXzyPghp12ZK7zmVL+RdnVIYhkwiQra5vo7coISEt099hqQ4N0T4g4Q3sjmi6b5O
 fFXZMo2Lx89ewYp81swkWVU14N8r1q6nqa3Yr4ob4DxMo9bSrtnUd/R7t2x3OzYfrd8f
 7AfTC8NGNoxMU7QXO6VY6keZDJGwVszkfdVhFOpmnYHPcEKeZQpaYnMxBqPpbLwor+3I
 55Rw==
X-Gm-Message-State: APjAAAVDz/Far0E79ydhDGp0Gn8PyhnUIptlLSzZetlQVcDAelUVboWl
 c3aHPAwVClozF5wIfp1BHXBFL2ERU+ZJADtTKtWD7w==
X-Google-Smtp-Source: APXvYqwuyAXa2Jdb5SI5NjuVCqpwCGL57AeIkrWFebqCOrV3nUWLdEqBGI7lMw4kze/n/yjz3JdwZP26fwmXaNefFDc=
X-Received: by 2002:a05:6214:42c:: with SMTP id
 a12mr5659443qvy.172.1576727669559; 
 Wed, 18 Dec 2019 19:54:29 -0800 (PST)
MIME-Version: 1.0
References: <1576657848-14711-1-git-send-email-weiyi.lu@mediatek.com>
 <1576657848-14711-7-git-send-email-weiyi.lu@mediatek.com>
In-Reply-To: <1576657848-14711-7-git-send-email-weiyi.lu@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 19 Dec 2019 11:54:18 +0800
Message-ID: <CANMq1KCbmwY_nZTfZcbxYQm27CXdADD48RWQOx0JuTmGBn=y=g@mail.gmail.com>
Subject: Re: [PATCH v10 06/12] soc: mediatek: Use bp_table for all compatibles
To: Weiyi Lu <weiyi.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_195430_917498_8C5F273F 
X-CRM114-Status: GOOD (  16.86  )
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 4:31 PM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
>
> Only use bp_table for bus protection of all compatibles,
> instead of mixing bus_prot_mask and bus_prot_reg_update.

ditto, I'd just squash in the previous patch.

> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-scpsys.c | 94 ++++++++++++++++++++-------------------
>  1 file changed, 48 insertions(+), 46 deletions(-)
>
> diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> index 5699d9f..c438c53 100644
> --- a/drivers/soc/mediatek/mtk-scpsys.c
> +++ b/drivers/soc/mediatek/mtk-scpsys.c
> @@ -11,7 +11,6 @@
>  #include <linux/platform_device.h>
>  #include <linux/pm_domain.h>
>  #include <linux/regulator/consumer.h>
> -#include <linux/soc/mediatek/infracfg.h>
>  #include <linux/soc/mediatek/scpsys-ext.h>
>
>  #include <dt-bindings/power/mt2701-power.h>
> @@ -88,7 +87,6 @@
>   * @ctl_offs: The offset for main power control register.
>   * @sram_pdn_bits: The mask for sram power control bits.
>   * @sram_pdn_ack_bits: The mask for sram power control acked bits.
> - * @bus_prot_mask: The mask for single step bus protection.
>   * @basic_clk_name: The basic clocks required by this power domain.
>   * @caps: The flag for active wake-up action.
>   * @bp_table: The mask table for multiple step bus protection.
> @@ -99,7 +97,6 @@ struct scp_domain_data {
>         int ctl_offs;
>         u32 sram_pdn_bits;
>         u32 sram_pdn_ack_bits;
> -       u32 bus_prot_mask;
>         const char *basic_clk_name[MAX_CLKS];
>         u8 caps;
>         struct bus_prot bp_table[MAX_STEPS];
> @@ -128,7 +125,6 @@ struct scp {
>         struct regmap *infracfg;
>         struct regmap *smi_common;
>         struct scp_ctrl_reg ctrl_reg;
> -       bool bus_prot_reg_update;
>  };
>
>  struct scp_subdomain {
> @@ -142,7 +138,6 @@ struct scp_soc_data {
>         const struct scp_subdomain *subdomains;
>         int num_subdomains;
>         const struct scp_ctrl_reg regs;
> -       bool bus_prot_reg_update;
>  };
>
>  static int scpsys_domain_is_on(struct scp_domain *scpd)
> @@ -256,12 +251,6 @@ static int scpsys_bus_protect_enable(struct scp_domain *scpd)
>  {
>         struct scp *scp = scpd->scp;
>
> -       if (scpd->data->bus_prot_mask) {
> -               return mtk_infracfg_set_bus_protection(scp->infracfg,
> -                               scpd->data->bus_prot_mask,
> -                               scp->bus_prot_reg_update);
> -       }
> -
>         return mtk_scpsys_ext_set_bus_protection(scpd->data->bp_table,
>                         scp->infracfg, scp->smi_common);
>  }
> @@ -270,12 +259,6 @@ static int scpsys_bus_protect_disable(struct scp_domain *scpd)
>  {
>         struct scp *scp = scpd->scp;
>
> -       if (scpd->data->bus_prot_mask) {
> -               return mtk_infracfg_clear_bus_protection(scp->infracfg,
> -                               scpd->data->bus_prot_mask,
> -                               scp->bus_prot_reg_update);
> -       }
> -
>         return mtk_scpsys_ext_clear_bus_protection(scpd->data->bp_table,
>                         scp->infracfg, scp->smi_common);
>  }
> @@ -412,8 +395,7 @@ static int init_basic_clks(struct platform_device *pdev, struct clk **clk,
>
>  static struct scp *init_scp(struct platform_device *pdev,
>                         const struct scp_domain_data *scp_domain_data, int num,
> -                       const struct scp_ctrl_reg *scp_ctrl_reg,
> -                       bool bus_prot_reg_update)
> +                       const struct scp_ctrl_reg *scp_ctrl_reg)
>  {
>         struct genpd_onecell_data *pd_data;
>         struct resource *res;
> @@ -427,8 +409,6 @@ static struct scp *init_scp(struct platform_device *pdev,
>         scp->ctrl_reg.pwr_sta_offs = scp_ctrl_reg->pwr_sta_offs;
>         scp->ctrl_reg.pwr_sta2nd_offs = scp_ctrl_reg->pwr_sta2nd_offs;
>
> -       scp->bus_prot_reg_update = bus_prot_reg_update;
> -
>         scp->dev = &pdev->dev;
>
>         res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> @@ -549,8 +529,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .name = "conn",
>                 .sta_mask = PWR_STATUS_CONN,
>                 .ctl_offs = SPM_CONN_PWR_CON,
> -               .bus_prot_mask = MT2701_TOP_AXI_PROT_EN_CONN_M |
> -                                MT2701_TOP_AXI_PROT_EN_CONN_S,
> +               .bp_table = {
> +                       BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
> +                               BIT(2) | BIT(8), BIT(2) | BIT(8)),
> +               },

I'm a bit sad we lose the information about the BIT meaning.

Of course this looks ugly and verbose:
                      BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
                               MT2701_TOP_AXI_PROT_EN_CONN_M |
MT2701_TOP_AXI_PROT_EN_CONN_S,
                               MT2701_TOP_AXI_PROT_EN_CONN_M |
MT2701_TOP_AXI_PROT_EN_CONN_S),

But if you make "check_clr_mask" a boolean, you wouldn't have to
repeat the mask twice and you could keep the nice register bit
definitions.

[snip, many similar occurences below]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
