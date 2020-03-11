Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B060F180E56
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 04:14:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Tg+TUxAcQWHFWt+lDruV1qJ5s6YxcAp9rghlypuM08=; b=BWo9f7EKu18/h5
	zG2iFPYxVDUFrWokzPMsfItEtqLNJbSxvSi8gWBZlKObhWrvqcISFPHX8YJL6EIsRXy33+f1ERRZJ
	/69+BmbrCsDjhZS8KT3qN+VldAL8pcKoUER3XDzGcEC209Rub0FXLzB38aqIipNa5Zuq6twuUNZGI
	zxMSj3b99SdHiBqzk2qLwZ9WEN8YbgiPJTgazGcuJHRdIuhd5lifUWyI8uGotlvGbeO0hqg9Vy4a2
	j4jTQ5HA3GPmnHqZew1D8awJNKE+GLLiiR6CI+7uctCf7J0xD1+rTsxAAxyxmAZFYI8besRT8g7Tl
	yzTmSjghJh2WGuaZccgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBrpC-0000oZ-VI; Wed, 11 Mar 2020 03:14:26 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBrp3-0000nl-Fk
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 03:14:18 +0000
Received: by mail-vs1-xe44.google.com with SMTP id z125so373329vsb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 20:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xYwUciegLoUmC80zL9vJOXVRDnxOH2mkTDk31tr500o=;
 b=kma7TvnaUs14CAynENNhB9yMyXCLNtcX+aYaWo+QKVGodAO3cUufnRsCqYxRF+OqQG
 OJnWRsCWKVXflciiGN1gFbuiCGI2OnYJ/8yprBahXg4gqa3Jr1YNGNE8DETggWwqF/IK
 OvFgZTSZgTNZXZhXlkbh/RQF5OXbFr0sK67jE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xYwUciegLoUmC80zL9vJOXVRDnxOH2mkTDk31tr500o=;
 b=nK/S4pGggo5qYsTJ5sVP8s8VfJIQAdR5nxrSf8Dvnzu46/18OMVU8sLCR31Q6unQwK
 pQH2MG9nN8kCTcE4SKMwl+eaUTEEUrfppdC45WHva+9+D8l1i2B/1ThlvTdDRU/XIMSP
 +hw3jSMa1HWrEDGi/UsFrwN1VaZbRu0xZVigbdGcYBJmI1oV23AR6C+QdsN6qDCDwN+d
 smrFuI8zoB0FmV0pMMvqvJBdwE9tU4MTe3W2xA0icqthSFVJahvfc5PqAbXLYp+ex9Sj
 yWGb+fTJmDwTWtpSd0wbQenhQBzh5PNk9Y5qiFPWdpPBo/FAJwzFP/ivusdyxnlYWrZN
 T3lQ==
X-Gm-Message-State: ANhLgQ2Vlj9pB+gDVe0Na8dlH02SVMuHKVcZTCX0oW8FKur6dS8WmM+/
 UxzdIUkfsn5GLzZJpwd3jwKCFjnj2MG8cXgNsA3GnpgqjLs=
X-Google-Smtp-Source: ADFU+vv6UMRH1wtcZGia0LIimAxqqwzcUCmpByfY2SG1i3IMsl7POB0lt6NB5QfIGWx8nIhwio7eOjvKXR6Tc1ZJNVs=
X-Received: by 2002:a67:fe05:: with SMTP id l5mr700513vsr.186.1583896456343;
 Tue, 10 Mar 2020 20:14:16 -0700 (PDT)
MIME-Version: 1.0
References: <1581910527-1636-1-git-send-email-weiyi.lu@mediatek.com>
 <1581910527-1636-8-git-send-email-weiyi.lu@mediatek.com>
In-Reply-To: <1581910527-1636-8-git-send-email-weiyi.lu@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 11 Mar 2020 11:14:05 +0800
Message-ID: <CANMq1KCL0qi3kXmhya7T_vBYreNmrCQGh6XTrk9qhU9eOWWnLQ@mail.gmail.com>
Subject: Re: [PATCH v12 07/10] soc: mediatek: Add extra sram control
To: Weiyi Lu <weiyi.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_201417_555090_5B7F7477 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Mon, Feb 17, 2020 at 11:35 AM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
>
> For some power domains like vpu_core on MT8183 whose sram need to
> do clock and internal isolation while power on/off sram.
> We add a cap "MTK_SCPD_SRAM_ISO" to judge if we need to do
> the extra sram isolation control or not.
>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>

Still looks good to me, and addresses Matthias' comments AFAICT:

Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>

> ---
>  drivers/soc/mediatek/mtk-scpsys.c | 22 ++++++++++++++++++++--
>  1 file changed, 20 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> index 2a9478f..98cc5ed 100644
> --- a/drivers/soc/mediatek/mtk-scpsys.c
> +++ b/drivers/soc/mediatek/mtk-scpsys.c
> @@ -26,6 +26,7 @@
>
>  #define MTK_SCPD_ACTIVE_WAKEUP         BIT(0)
>  #define MTK_SCPD_FWAIT_SRAM            BIT(1)
> +#define MTK_SCPD_SRAM_ISO              BIT(2)
>  #define MTK_SCPD_CAPS(_scpd, _x)       ((_scpd)->data->caps & (_x))
>
>  #define SPM_VDE_PWR_CON                        0x0210
> @@ -57,6 +58,8 @@
>  #define PWR_ON_BIT                     BIT(2)
>  #define PWR_ON_2ND_BIT                 BIT(3)
>  #define PWR_CLK_DIS_BIT                        BIT(4)
> +#define PWR_SRAM_CLKISO_BIT            BIT(5)
> +#define PWR_SRAM_ISOINT_B_BIT          BIT(6)
>
>  #define PWR_STATUS_CONN                        BIT(1)
>  #define PWR_STATUS_DISP                        BIT(3)
> @@ -234,6 +237,14 @@ static int scpsys_sram_enable(struct scp_domain *scpd, void __iomem *ctl_addr)
>                         return ret;
>         }
>
> +       if (MTK_SCPD_CAPS(scpd, MTK_SCPD_SRAM_ISO))     {
> +               val = readl(ctl_addr) | PWR_SRAM_ISOINT_B_BIT;
> +               writel(val, ctl_addr);
> +               udelay(1);
> +               val &= ~PWR_SRAM_CLKISO_BIT;
> +               writel(val, ctl_addr);
> +       }
> +
>         return 0;
>  }
>
> @@ -243,8 +254,15 @@ static int scpsys_sram_disable(struct scp_domain *scpd, void __iomem *ctl_addr)
>         u32 pdn_ack = scpd->data->sram_pdn_ack_bits;
>         int tmp;
>
> -       val = readl(ctl_addr);
> -       val |= scpd->data->sram_pdn_bits;
> +       if (MTK_SCPD_CAPS(scpd, MTK_SCPD_SRAM_ISO))     {
> +               val = readl(ctl_addr) | PWR_SRAM_CLKISO_BIT;
> +               writel(val, ctl_addr);
> +               val &= ~PWR_SRAM_ISOINT_B_BIT;
> +               writel(val, ctl_addr);
> +               udelay(1);
> +       }
> +
> +       val = readl(ctl_addr) | scpd->data->sram_pdn_bits;
>         writel(val, ctl_addr);
>
>         /* Either wait until SRAM_PDN_ACK all 1 or 0 */
> --
> 1.8.1.1.dirty

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
