Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3264125A2C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 04:58:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kU2Zybpvnrr0j3XyH+ViWfglTCiWOI2nNg8gtzoG/s4=; b=e41Z9F9sqEgput
	h2SIkEhWoSQNY1cHY42aNxqD3zGWh1481GlB4WUmjUVS9i589Ic86zu+faf5zcTDLVDLauO6bKmNC
	EGt6rLRXfMBTNrnXDE6ADoELHu82LZKtRyw8Nn+E/FQoDD11TaedcYXr52PAl+C72/U53bSVpVND2
	RnG6oV4HgSdTtR7sanbt2XyGiAXM06n7AeakwOXtJTBMT6oXkhp1ibim4OfMY9EheP5PoW2uauyBF
	l3sGo40EyX7kHa0mF2SXnSjALY9SZxQmz/avW+37NmDA5jhUwlxK6jaHEZLDJQ3DugWQlgeO01daT
	iqe1A9/OOfZ38+gkunxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihmx5-000537-F7; Thu, 19 Dec 2019 03:58:15 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihmws-00051L-2h
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 03:58:03 +0000
Received: by mail-qk1-x742.google.com with SMTP id 21so3562834qky.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 19:58:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gW5SNpt87UiG+lsIdrY5UhkxjdU7rCSW5a9k6JS9SRk=;
 b=hqFkhfDzCCKIUTBL6FeQxUmjvs91e8R1WmNH0Vumuze6UR95Wrm3Tm7TSP/G5+p2yi
 NcohuQv4yW/e/F73o9/U/0brsCCYjDSsFJ0FzHUZUJ7Y3w8xzUwKwuVzwHyodCdvvRTY
 xPQFXPHStersJiiwdEMwbEwdFJOsf8FM7ID0g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gW5SNpt87UiG+lsIdrY5UhkxjdU7rCSW5a9k6JS9SRk=;
 b=bl7dTPT7ab7+XLhWVrArtEao5YwIPzm5t1CCzVC3ld4z9PGEbWwkv8TM+BToGoVKC8
 fZX1gUTNICS8o5dhcbi1kTNzYZNkzj+R6z+OcuWtsovq5ExdowsYTs2Mva1NQ9dbsT8O
 Z1BGsMfOCg+V+K6O5HxojOLSapXmYKR7KAOjuuvuCdmJg4bNdnSRhXcxGo7VH4lvNXVt
 hE/Sg79sM+6dyr2SpaIzSE1xaPid0Egq7NwBRvncZl611WsrFdKHijIYlxxbgqsWlvIK
 gB55ktbBue/xAKodlh87AXzL9ZMd7531Go/SyLwA+UWpMQMsyqP43Ry+7Rf5YxIHZpc9
 pTlQ==
X-Gm-Message-State: APjAAAU2y6U8mqkmnGE9WzjYhe9tC5uvDO+bInLJbAWdcJJLu0jzzFv5
 P872RepNIqDXnyRfQeEEOnyz6sOXEGbd1xnTGe9Y1Q==
X-Google-Smtp-Source: APXvYqyXidRE2qnvUa+RAtayNDFWnB5o5tPU43BxSLYWf08arGF8HAOG7Pl7mstZLKWLgHOqgzccqGmeitfLHhV35Sk=
X-Received: by 2002:ae9:f003:: with SMTP id l3mr6202689qkg.457.1576727881256; 
 Wed, 18 Dec 2019 19:58:01 -0800 (PST)
MIME-Version: 1.0
References: <1576657848-14711-1-git-send-email-weiyi.lu@mediatek.com>
 <1576657848-14711-10-git-send-email-weiyi.lu@mediatek.com>
In-Reply-To: <1576657848-14711-10-git-send-email-weiyi.lu@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 19 Dec 2019 11:57:50 +0800
Message-ID: <CANMq1KB_YFUg34UJ_-uaOgrr_UDig5GkZrtMWKTD-qxg=+GRmg@mail.gmail.com>
Subject: Re: [PATCH v10 09/12] soc: mediatek: Add extra sram control
To: Weiyi Lu <weiyi.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_195802_128891_B056084E 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
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

On Wed, Dec 18, 2019 at 4:31 PM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
>
> For some power domains like vpu_core on MT8183 whose sram need to
> do clock and internal isolation while power on/off sram.
> We add a flag "sram_iso_ctrl" in scp_domain_data to judge if we
> need to do the extra sram isolation control or not.
>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>

Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>

> ---
>  drivers/soc/mediatek/mtk-scpsys.c | 24 ++++++++++++++++++++++--
>  1 file changed, 22 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> index 9f06f17..e010fb3 100644
> --- a/drivers/soc/mediatek/mtk-scpsys.c
> +++ b/drivers/soc/mediatek/mtk-scpsys.c
> @@ -56,6 +56,8 @@
>  #define PWR_ON_BIT                     BIT(2)
>  #define PWR_ON_2ND_BIT                 BIT(3)
>  #define PWR_CLK_DIS_BIT                        BIT(4)
> +#define PWR_SRAM_CLKISO_BIT            BIT(5)
> +#define PWR_SRAM_ISOINT_B_BIT          BIT(6)
>
>  #define PWR_STATUS_CONN                        BIT(1)
>  #define PWR_STATUS_DISP                        BIT(3)
> @@ -86,6 +88,8 @@
>   * @name: The domain name.
>   * @sta_mask: The mask for power on/off status bit.
>   * @ctl_offs: The offset for main power control register.
> + * @sram_iso_ctrl: The flag to judge if the power domain need to do
> + *                 the extra sram isolation control.
>   * @sram_pdn_bits: The mask for sram power control bits.
>   * @sram_pdn_ack_bits: The mask for sram power control acked bits.
>   * @basic_clk_name: The basic clocks required by this power domain.
> @@ -98,6 +102,7 @@ struct scp_domain_data {
>         const char *name;
>         u32 sta_mask;
>         int ctl_offs;
> +       bool sram_iso_ctrl;
>         u32 sram_pdn_bits;
>         u32 sram_pdn_ack_bits;
>         const char *basic_clk_name[MAX_CLKS];
> @@ -233,6 +238,14 @@ static int scpsys_sram_enable(struct scp_domain *scpd, void __iomem *ctl_addr)
>                         return ret;
>         }
>
> +       if (scpd->data->sram_iso_ctrl)  {
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
> @@ -242,8 +255,15 @@ static int scpsys_sram_disable(struct scp_domain *scpd, void __iomem *ctl_addr)
>         u32 pdn_ack = scpd->data->sram_pdn_ack_bits;
>         int tmp;
>
> -       val = readl(ctl_addr);
> -       val |= scpd->data->sram_pdn_bits;
> +       if (scpd->data->sram_iso_ctrl)  {
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
