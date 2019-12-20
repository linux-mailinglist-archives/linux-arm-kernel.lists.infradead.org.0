Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DEBE12746D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 05:06:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oMlqVDnQ+b8XR74SP1vjYUlf02Aym77meljUypjSiNA=; b=ZynPQ1DnRWPFDQ
	sdjH7J4jGB2A/Cl1pN0agTXFqKQ5RmQd8WR+S3kZh+wQTCbabq0FhvDlLQb8pGEHVWv4Mxxkg70e/
	wdAiL3byLL2iQovN+fMTPiie5wxpZVos8HqsjUN3H9UKSxD9r140gV7lx35xH7Kp/joGD8NIuRxQF
	G/Jm8wrHDrc1VBIK52O92QxmZ2Aa2o0C0s9V9Jj3FqkfWtYZIvC1V0PmG3azHFPsfDh0Uzv16+ENr
	PdWSjbgEf4ZqPc3hy3E145adJ4wDqYnEgcpBJ9WJnxs07QqX+wgx+HdTjb0+KG+X1ZTzKWc6GM4k5
	1ce2aOml2hGJRDg5vUIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii9Y4-0006Zk-PI; Fri, 20 Dec 2019 04:05:56 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii9Xt-0006Z7-Qh
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 04:05:48 +0000
Received: by mail-qt1-x843.google.com with SMTP id d5so7096114qto.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 20:05:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8ga0E7oSn5UxcDKXQpFWi17JvMVxp/H1CQadjvnAI/0=;
 b=CmcE0e9QV5vHmxcHy94jE3wVgg5ciOsnVn53cHyWjejLWFRScaZKMqJlCNAggSkU3c
 0b7bDleEvlgUwjH60U4yEzXfsfruhBNXx+7GOFdf890b5qfn5BmcoAp+YZ/TmMR7l3qx
 z7QJ47bqAyyjCHTtQYYJtJltJx00L8MH+rYyM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8ga0E7oSn5UxcDKXQpFWi17JvMVxp/H1CQadjvnAI/0=;
 b=XAEo7zZmqTv18yqVNSO8wsJWDr9X4Se3iiVaKD3EyP0cTUyEhnKhVZwc6AR3+ZQXKS
 FciM6CbXsvGDgcSBzl13jYB2XQwYAj5Wzh1M/7MOCQXgZGR7HbxG2UsVvuNUbIvaD7Lb
 Za/tTrH7/xXNnlqyG6WBGv3nq/6ETJ2U0UNsfyXCOf622QHeF7vAGLSK0rkjUoZyGDKi
 oG0cFwFgmyxyR8N/01XgXOuikb8GVLXnq0fifBcTN5playsVPp/BqZY7a5DDghq8QJIp
 lp1cqyWVF6cwz/J5OiJgI7Bn2+GKZDOnxK4SHSsI9xuMu1UgA92zdjcFS+Fwiq/Fwi+g
 fUOg==
X-Gm-Message-State: APjAAAUMKueuC/o3kdRivMBmWi4Y2IoP25TMgpGhqZxS5MKpqarB29fA
 wwTLRIxHyf1+V8o5OThBpXajtp7mCYfaBd3vdjwrpzAaDzM=
X-Google-Smtp-Source: APXvYqzgV6S+HLkQ9uQK5J8+93JlErQ5EoeCf6XpiuCrsE2ZRN+WXh8Vcrx/Kjlf0IN0WELngtQJqfFI16ol29pJRmE=
X-Received: by 2002:aed:3641:: with SMTP id e59mr9997083qtb.174.1576814743613; 
 Thu, 19 Dec 2019 20:05:43 -0800 (PST)
MIME-Version: 1.0
References: <1576813564-23927-1-git-send-email-weiyi.lu@mediatek.com>
 <1576813564-23927-4-git-send-email-weiyi.lu@mediatek.com>
In-Reply-To: <1576813564-23927-4-git-send-email-weiyi.lu@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 20 Dec 2019 12:05:32 +0800
Message-ID: <CANMq1KBFjFNTyW=EG88HPMypvEDBF41A8yNU0eSHp3D7WVuM=A@mail.gmail.com>
Subject: Re: [PATCH v11 03/10] soc: mediatek: Add basic_clk_name to
 scp_power_data
To: Weiyi Lu <weiyi.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_200545_903847_6BF203EA 
X-CRM114-Status: GOOD (  19.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
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

On Fri, Dec 20, 2019 at 11:46 AM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
>
> Try to stop extending the clk_id or clk_names if there are
> more and more new BASIC clocks. To get its own clocks by the
> basic_clk_name of each power domain.
> And then use basic_clk_name strings for all compatibles, instead of
> mixing clk_id and clk_name.
>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>

Looks good, thanks!

Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>

> ---
>  drivers/soc/mediatek/mtk-scpsys.c | 138 +++++++++++++-------------------------
>  1 file changed, 45 insertions(+), 93 deletions(-)
>
> diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> index f669d37..db35a28 100644
> --- a/drivers/soc/mediatek/mtk-scpsys.c
> +++ b/drivers/soc/mediatek/mtk-scpsys.c
> @@ -78,34 +78,6 @@
>  #define PWR_STATUS_HIF1                        BIT(26) /* MT7622 */
>  #define PWR_STATUS_WB                  BIT(27) /* MT7622 */
>
> -enum clk_id {
> -       CLK_NONE,
> -       CLK_MM,
> -       CLK_MFG,
> -       CLK_VENC,
> -       CLK_VENC_LT,
> -       CLK_ETHIF,
> -       CLK_VDEC,
> -       CLK_HIFSEL,
> -       CLK_JPGDEC,
> -       CLK_AUDIO,
> -       CLK_MAX,
> -};
> -
> -static const char * const clk_names[] = {
> -       NULL,
> -       "mm",
> -       "mfg",
> -       "venc",
> -       "venc_lt",
> -       "ethif",
> -       "vdec",
> -       "hif_sel",
> -       "jpgdec",
> -       "audio",
> -       NULL,
> -};
> -
>  #define MAX_CLKS       3
>
>  /**
> @@ -116,7 +88,7 @@ enum clk_id {
>   * @sram_pdn_bits: The mask for sram power control bits.
>   * @sram_pdn_ack_bits: The mask for sram power control acked bits.
>   * @bus_prot_mask: The mask for single step bus protection.
> - * @clk_id: The basic clocks required by this power domain.
> + * @basic_clk_name: The basic clocks required by this power domain.
>   * @caps: The flag for active wake-up action.
>   */
>  struct scp_domain_data {
> @@ -126,7 +98,7 @@ struct scp_domain_data {
>         u32 sram_pdn_bits;
>         u32 sram_pdn_ack_bits;
>         u32 bus_prot_mask;
> -       enum clk_id clk_id[MAX_CLKS];
> +       const char *basic_clk_name[MAX_CLKS];
>         u8 caps;
>  };
>
> @@ -411,12 +383,23 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
>         return ret;
>  }
>
> -static void init_clks(struct platform_device *pdev, struct clk **clk)
> +static int init_basic_clks(struct platform_device *pdev, struct clk **clk,
> +                       const char * const *name)
>  {
>         int i;
>
> -       for (i = CLK_NONE + 1; i < CLK_MAX; i++)
> -               clk[i] = devm_clk_get(&pdev->dev, clk_names[i]);
> +       for (i = 0; i < MAX_CLKS && name[i]; i++) {
> +               clk[i] = devm_clk_get(&pdev->dev, name[i]);
> +
> +               if (IS_ERR(clk[i])) {
> +                       dev_err(&pdev->dev,
> +                               "get basic clk %s fail %ld\n",
> +                               name[i], PTR_ERR(clk[i]));
> +                       return PTR_ERR(clk[i]);
> +               }
> +       }
> +
> +       return 0;
>  }
>
>  static struct scp *init_scp(struct platform_device *pdev,
> @@ -426,9 +409,8 @@ static struct scp *init_scp(struct platform_device *pdev,
>  {
>         struct genpd_onecell_data *pd_data;
>         struct resource *res;
> -       int i, j;
> +       int i, ret;
>         struct scp *scp;
> -       struct clk *clk[CLK_MAX];
>
>         scp = devm_kzalloc(&pdev->dev, sizeof(*scp), GFP_KERNEL);
>         if (!scp)
> @@ -481,8 +463,6 @@ static struct scp *init_scp(struct platform_device *pdev,
>
>         pd_data->num_domains = num;
>
> -       init_clks(pdev, clk);
> -
>         for (i = 0; i < num; i++) {
>                 struct scp_domain *scpd = &scp->domains[i];
>                 struct generic_pm_domain *genpd = &scpd->genpd;
> @@ -493,17 +473,9 @@ static struct scp *init_scp(struct platform_device *pdev,
>
>                 scpd->data = data;
>
> -               for (j = 0; j < MAX_CLKS && data->clk_id[j]; j++) {
> -                       struct clk *c = clk[data->clk_id[j]];
> -
> -                       if (IS_ERR(c)) {
> -                               dev_err(&pdev->dev, "%s: clk unavailable\n",
> -                                       data->name);
> -                               return ERR_CAST(c);
> -                       }
> -
> -                       scpd->clk[j] = c;
> -               }
> +               ret = init_basic_clks(pdev, scpd->clk, data->basic_clk_name);
> +               if (ret)
> +                       return ERR_PTR(ret);
>
>                 genpd->name = data->name;
>                 genpd->power_off = scpsys_power_off;
> @@ -560,7 +532,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_CONN_PWR_CON,
>                 .bus_prot_mask = MT2701_TOP_AXI_PROT_EN_CONN_M |
>                                  MT2701_TOP_AXI_PROT_EN_CONN_S,
> -               .clk_id = {CLK_NONE},
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
>         [MT2701_POWER_DOMAIN_DISP] = {
> @@ -568,7 +539,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .sta_mask = PWR_STATUS_DISP,
>                 .ctl_offs = SPM_DIS_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
> -               .clk_id = {CLK_MM},
> +               .basic_clk_name = {"mm"},
>                 .bus_prot_mask = MT2701_TOP_AXI_PROT_EN_MM_M0,
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
> @@ -578,7 +549,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_MFG_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = GENMASK(12, 12),
> -               .clk_id = {CLK_MFG},
> +               .basic_clk_name = {"mfg"},
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
>         [MT2701_POWER_DOMAIN_VDEC] = {
> @@ -587,7 +558,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_VDE_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = GENMASK(12, 12),
> -               .clk_id = {CLK_MM},
> +               .basic_clk_name = {"mm"},
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
>         [MT2701_POWER_DOMAIN_ISP] = {
> @@ -596,7 +567,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_ISP_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = GENMASK(13, 12),
> -               .clk_id = {CLK_MM},
> +               .basic_clk_name = {"mm"},
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
>         [MT2701_POWER_DOMAIN_BDP] = {
> @@ -604,7 +575,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .sta_mask = PWR_STATUS_BDP,
>                 .ctl_offs = SPM_BDP_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
> -               .clk_id = {CLK_NONE},
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
>         [MT2701_POWER_DOMAIN_ETH] = {
> @@ -613,7 +583,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_ETH_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = GENMASK(15, 12),
> -               .clk_id = {CLK_ETHIF},
> +               .basic_clk_name = {"ethif"},
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
>         [MT2701_POWER_DOMAIN_HIF] = {
> @@ -622,14 +592,13 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_HIF_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = GENMASK(15, 12),
> -               .clk_id = {CLK_ETHIF},
> +               .basic_clk_name = {"ethif"},
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
>         [MT2701_POWER_DOMAIN_IFR_MSC] = {
>                 .name = "ifr_msc",
>                 .sta_mask = PWR_STATUS_IFR_MSC,
>                 .ctl_offs = SPM_IFR_MSC_PWR_CON,
> -               .clk_id = {CLK_NONE},
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
>  };
> @@ -644,7 +613,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_DIS_PWR_CON,
>                 .sram_pdn_bits = GENMASK(8, 8),
>                 .sram_pdn_ack_bits = GENMASK(12, 12),
> -               .clk_id = {CLK_MM},
> +               .basic_clk_name = {"mm"},
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
>         [MT2712_POWER_DOMAIN_VDEC] = {
> @@ -653,7 +622,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_VDE_PWR_CON,
>                 .sram_pdn_bits = GENMASK(8, 8),
>                 .sram_pdn_ack_bits = GENMASK(12, 12),
> -               .clk_id = {CLK_MM, CLK_VDEC},
> +               .basic_clk_name = {"mm", "vdec"},
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
>         [MT2712_POWER_DOMAIN_VENC] = {
> @@ -662,7 +631,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_VEN_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = GENMASK(15, 12),
> -               .clk_id = {CLK_MM, CLK_VENC, CLK_JPGDEC},
> +               .basic_clk_name = {"mm", "venc", "jpgdec"},
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
>         [MT2712_POWER_DOMAIN_ISP] = {
> @@ -671,7 +640,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_ISP_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = GENMASK(13, 12),
> -               .clk_id = {CLK_MM},
> +               .basic_clk_name = {"mm"},
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
>         [MT2712_POWER_DOMAIN_AUDIO] = {
> @@ -680,7 +649,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_AUDIO_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = GENMASK(15, 12),
> -               .clk_id = {CLK_AUDIO},
> +               .basic_clk_name = {"audio"},
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
>         [MT2712_POWER_DOMAIN_USB] = {
> @@ -689,7 +658,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_USB_PWR_CON,
>                 .sram_pdn_bits = GENMASK(10, 8),
>                 .sram_pdn_ack_bits = GENMASK(14, 12),
> -               .clk_id = {CLK_NONE},
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
>         [MT2712_POWER_DOMAIN_USB2] = {
> @@ -698,7 +666,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_USB2_PWR_CON,
>                 .sram_pdn_bits = GENMASK(10, 8),
>                 .sram_pdn_ack_bits = GENMASK(14, 12),
> -               .clk_id = {CLK_NONE},
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
>         [MT2712_POWER_DOMAIN_MFG] = {
> @@ -707,7 +674,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_MFG_PWR_CON,
>                 .sram_pdn_bits = GENMASK(8, 8),
>                 .sram_pdn_ack_bits = GENMASK(16, 16),
> -               .clk_id = {CLK_MFG},
> +               .basic_clk_name = {"mfg"},
>                 .bus_prot_mask = BIT(14) | BIT(21) | BIT(23),
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
> @@ -717,7 +684,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = 0x02c0,
>                 .sram_pdn_bits = GENMASK(8, 8),
>                 .sram_pdn_ack_bits = GENMASK(16, 16),
> -               .clk_id = {CLK_NONE},
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
>         [MT2712_POWER_DOMAIN_MFG_SC2] = {
> @@ -726,7 +692,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = 0x02c4,
>                 .sram_pdn_bits = GENMASK(8, 8),
>                 .sram_pdn_ack_bits = GENMASK(16, 16),
> -               .clk_id = {CLK_NONE},
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
>         [MT2712_POWER_DOMAIN_MFG_SC3] = {
> @@ -735,7 +700,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = 0x01f8,
>                 .sram_pdn_bits = GENMASK(8, 8),
>                 .sram_pdn_ack_bits = GENMASK(16, 16),
> -               .clk_id = {CLK_NONE},
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
>  };
> @@ -760,7 +724,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = 0x300,
>                 .sram_pdn_bits = GENMASK(8, 8),
>                 .sram_pdn_ack_bits = GENMASK(12, 12),
> -               .clk_id = {CLK_VDEC},
> +               .basic_clk_name = {"vdec"},
>         },
>         [MT6797_POWER_DOMAIN_VENC] = {
>                 .name = "venc",
> @@ -768,7 +732,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = 0x304,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = GENMASK(15, 12),
> -               .clk_id = {CLK_NONE},
>         },
>         [MT6797_POWER_DOMAIN_ISP] = {
>                 .name = "isp",
> @@ -776,7 +739,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = 0x308,
>                 .sram_pdn_bits = GENMASK(9, 8),
>                 .sram_pdn_ack_bits = GENMASK(13, 12),
> -               .clk_id = {CLK_NONE},
>         },
>         [MT6797_POWER_DOMAIN_MM] = {
>                 .name = "mm",
> @@ -784,7 +746,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = 0x30C,
>                 .sram_pdn_bits = GENMASK(8, 8),
>                 .sram_pdn_ack_bits = GENMASK(12, 12),
> -               .clk_id = {CLK_MM},
> +               .basic_clk_name = {"mm"},
>                 .bus_prot_mask = (BIT(1) | BIT(2)),
>         },
>         [MT6797_POWER_DOMAIN_AUDIO] = {
> @@ -793,7 +755,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = 0x314,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = GENMASK(15, 12),
> -               .clk_id = {CLK_NONE},
>         },
>         [MT6797_POWER_DOMAIN_MFG_ASYNC] = {
>                 .name = "mfg_async",
> @@ -801,7 +762,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = 0x334,
>                 .sram_pdn_bits = 0,
>                 .sram_pdn_ack_bits = 0,
> -               .clk_id = {CLK_MFG},
> +               .basic_clk_name = {"mfg"},
>         },
>         [MT6797_POWER_DOMAIN_MJC] = {
>                 .name = "mjc",
> @@ -809,7 +770,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = 0x310,
>                 .sram_pdn_bits = GENMASK(8, 8),
>                 .sram_pdn_ack_bits = GENMASK(12, 12),
> -               .clk_id = {CLK_NONE},
>         },
>  };
>
> @@ -834,7 +794,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_ETHSYS_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = GENMASK(15, 12),
> -               .clk_id = {CLK_NONE},
>                 .bus_prot_mask = MT7622_TOP_AXI_PROT_EN_ETHSYS,
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
> @@ -844,7 +803,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_HIF0_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = GENMASK(15, 12),
> -               .clk_id = {CLK_HIFSEL},
> +               .basic_clk_name = {"hif_sel"},
>                 .bus_prot_mask = MT7622_TOP_AXI_PROT_EN_HIF0,
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
> @@ -854,7 +813,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_HIF1_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = GENMASK(15, 12),
> -               .clk_id = {CLK_HIFSEL},
> +               .basic_clk_name = {"hif_sel"},
>                 .bus_prot_mask = MT7622_TOP_AXI_PROT_EN_HIF1,
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
> @@ -864,7 +823,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_WB_PWR_CON,
>                 .sram_pdn_bits = 0,
>                 .sram_pdn_ack_bits = 0,
> -               .clk_id = {CLK_NONE},
>                 .bus_prot_mask = MT7622_TOP_AXI_PROT_EN_WB,
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP | MTK_SCPD_FWAIT_SRAM,
>         },
> @@ -881,7 +839,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_CONN_PWR_CON,
>                 .bus_prot_mask = MT2701_TOP_AXI_PROT_EN_CONN_M |
>                                  MT2701_TOP_AXI_PROT_EN_CONN_S,
> -               .clk_id = {CLK_NONE},
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
>         [MT7623A_POWER_DOMAIN_ETH] = {
> @@ -890,7 +847,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_ETH_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = GENMASK(15, 12),
> -               .clk_id = {CLK_ETHIF},
> +               .basic_clk_name = {"ethif"},
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
>         [MT7623A_POWER_DOMAIN_HIF] = {
> @@ -899,14 +856,13 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_HIF_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = GENMASK(15, 12),
> -               .clk_id = {CLK_ETHIF},
> +               .basic_clk_name = {"ethif"},
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
>         [MT7623A_POWER_DOMAIN_IFR_MSC] = {
>                 .name = "ifr_msc",
>                 .sta_mask = PWR_STATUS_IFR_MSC,
>                 .ctl_offs = SPM_IFR_MSC_PWR_CON,
> -               .clk_id = {CLK_NONE},
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
>  };
> @@ -922,7 +878,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_VDE_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = GENMASK(12, 12),
> -               .clk_id = {CLK_MM},
> +               .basic_clk_name = {"mm"},
>         },
>         [MT8173_POWER_DOMAIN_VENC] = {
>                 .name = "venc",
> @@ -930,7 +886,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_VEN_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = GENMASK(15, 12),
> -               .clk_id = {CLK_MM, CLK_VENC},
> +               .basic_clk_name = {"mm", "venc"},
>         },
>         [MT8173_POWER_DOMAIN_ISP] = {
>                 .name = "isp",
> @@ -938,7 +894,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_ISP_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = GENMASK(13, 12),
> -               .clk_id = {CLK_MM},
> +               .basic_clk_name = {"mm"},
>         },
>         [MT8173_POWER_DOMAIN_MM] = {
>                 .name = "mm",
> @@ -946,7 +902,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_DIS_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = GENMASK(12, 12),
> -               .clk_id = {CLK_MM},
> +               .basic_clk_name = {"mm"},
>                 .bus_prot_mask = MT8173_TOP_AXI_PROT_EN_MM_M0 |
>                         MT8173_TOP_AXI_PROT_EN_MM_M1,
>         },
> @@ -956,7 +912,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_VEN2_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = GENMASK(15, 12),
> -               .clk_id = {CLK_MM, CLK_VENC_LT},
> +               .basic_clk_name = {"mm", "venc_lt"},
>         },
>         [MT8173_POWER_DOMAIN_AUDIO] = {
>                 .name = "audio",
> @@ -964,7 +920,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_AUDIO_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = GENMASK(15, 12),
> -               .clk_id = {CLK_NONE},
>         },
>         [MT8173_POWER_DOMAIN_USB] = {
>                 .name = "usb",
> @@ -972,7 +927,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_USB_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = GENMASK(15, 12),
> -               .clk_id = {CLK_NONE},
>                 .caps = MTK_SCPD_ACTIVE_WAKEUP,
>         },
>         [MT8173_POWER_DOMAIN_MFG_ASYNC] = {
> @@ -981,7 +935,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_MFG_ASYNC_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = 0,
> -               .clk_id = {CLK_MFG},
> +               .basic_clk_name = {"mfg"},
>         },
>         [MT8173_POWER_DOMAIN_MFG_2D] = {
>                 .name = "mfg_2d",
> @@ -989,7 +943,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_MFG_2D_PWR_CON,
>                 .sram_pdn_bits = GENMASK(11, 8),
>                 .sram_pdn_ack_bits = GENMASK(13, 12),
> -               .clk_id = {CLK_NONE},
>         },
>         [MT8173_POWER_DOMAIN_MFG] = {
>                 .name = "mfg",
> @@ -997,7 +950,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .ctl_offs = SPM_MFG_PWR_CON,
>                 .sram_pdn_bits = GENMASK(13, 8),
>                 .sram_pdn_ack_bits = GENMASK(21, 16),
> -               .clk_id = {CLK_NONE},
>                 .bus_prot_mask = MT8173_TOP_AXI_PROT_EN_MFG_S |
>                         MT8173_TOP_AXI_PROT_EN_MFG_M0 |
>                         MT8173_TOP_AXI_PROT_EN_MFG_M1 |
> --
> 1.8.1.1.dirty

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
