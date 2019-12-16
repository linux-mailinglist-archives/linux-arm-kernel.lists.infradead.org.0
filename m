Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 775DD11FF01
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 08:29:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+hIoWywRNY/F1g+p1bmuFug/v23xAdsDlM4mnBWuE1I=; b=C6KY2NMY2tOKgn
	OHm/I+7bgyqW+cVAjEuB5ehnR/VUiljkoX5RxdJfLPcX7SQ5CY5dhPFWcWDMN4qfqo2D4r4LEVTdu
	NYFXFrmbtLbohgyqzT/DASF+gmH9UImFY5GIwpznWPWDIipMKMJ3LrZVTc5z+WR/MwklHOLzYu5qc
	oKfvUVExm267NrZ77UDQ7A3EEq2K88iLZM38P+s7ki5jxIqeuEQKlBpCZQdKkV8B6ykLWuFSS7qDp
	H4sSKCDUZ1XTh1ajZVrIT4QGsk8/cgV083F2e8VkJhC2GRjsmC8aDRDRgMk5QymMdAzsItBGFxfqP
	23p93xEH0VZP6Qp0jB7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igkoi-0007Cl-CC; Mon, 16 Dec 2019 07:29:20 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igkoY-0007Bs-PB
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 07:29:12 +0000
Received: by mail-qv1-xf44.google.com with SMTP id o18so2351110qvf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 23:29:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dV2vlOFsb8F1dAAOKXkJvVUNN8FBypx/gfjiA3eTMEk=;
 b=DtWiSVkzUKVe/+yccfzUw4WSKnnZtLyFCqfBtFPkSMldVlhuvwOPUyS3ok/mY4XPAF
 PHC1IMbSqaHlr4Hh5oFyoIovVNdsI1TN66gV/B7nWVJSXuKWQgYaJFdCbhAg0Rlu7mRD
 3qHcptFRU6nlSJeHsmFWtsqh6MrCKNSH1Nv9k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dV2vlOFsb8F1dAAOKXkJvVUNN8FBypx/gfjiA3eTMEk=;
 b=fnaLpUnNHByC+ov244jh1Z4l4idXrDbSHtbgVQoVRc4m81uCxHf4qgostf32FYwL2X
 oMaaPFkqGcaJjD2ChGPtjzJJVbNLF1sXNWevF898mDJF3PHLp8yQeITOeiYnFSVxejfn
 eCIduJMNk2kdxf0Y3vIC5wWwwaPyAyTA+allOSNAEI+8ngARWPPmYaGHji6eyHkvHHdV
 B7eYeQNWvsEaSA8RvUXbIUIRhhwF0/3w+huakLBLHeVM0pnVHUOpM+PXAFaxtAA4v6qp
 jQFdWfErZ+Ul1ojfR9bhLLTryrwD+9XUKeGiy0VpNrhjllHYV59XsFb+pGwWDr7DYMUt
 k2Dg==
X-Gm-Message-State: APjAAAXqCHxBk5DF7yTF8VJUEa91CSVfJTNYMGnFnl1YOV67tWwd2s3G
 66f2jXpVxb2iDUsl8UEn6ELLMrkp6J5vynUQjes2Mg==
X-Google-Smtp-Source: APXvYqwq88sA56fSNNx0AkPlWaUiYAr/DCMmo6+DmdP4m8AvPhTWR6m3PCZRTb+X+AY/KsJkRJPt4zf5ONRH+6KvmMI=
X-Received: by 2002:a0c:f703:: with SMTP id w3mr25474009qvn.6.1576481349748;
 Sun, 15 Dec 2019 23:29:09 -0800 (PST)
MIME-Version: 1.0
References: <1575960413-6900-1-git-send-email-weiyi.lu@mediatek.com>
 <1575960413-6900-7-git-send-email-weiyi.lu@mediatek.com>
In-Reply-To: <1575960413-6900-7-git-send-email-weiyi.lu@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 16 Dec 2019 15:28:58 +0800
Message-ID: <CANMq1KDkywkPBDK9bbKqDcYser-QiXV-XSuDmVCqnkh6Su9Awg@mail.gmail.com>
Subject: Re: [PATCH v9 6/9] soc: mediatek: Add extra sram control
To: Weiyi Lu <weiyi.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_232910_842983_E7A72DC8 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Yong Wu <yong.wu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 2:47 PM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
>
> For some power domains like vpu_core on MT8183 whose sram need to
> do clock and internal isolation while power on/off sram.
> We add a flag "sram_iso_ctrl" in scp_domain_data to judge if we
> need to do the extra sram isolation control or not.
>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-scpsys.c | 25 +++++++++++++++++++++++--
>  1 file changed, 23 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> index 2bbf907..0676b46 100644
> --- a/drivers/soc/mediatek/mtk-scpsys.c
> +++ b/drivers/soc/mediatek/mtk-scpsys.c
> @@ -57,6 +57,8 @@
>  #define PWR_ON_BIT                     BIT(2)
>  #define PWR_ON_2ND_BIT                 BIT(3)
>  #define PWR_CLK_DIS_BIT                        BIT(4)
> +#define PWR_SRAM_CLKISO_BIT            BIT(5)
> +#define PWR_SRAM_ISOINT_B_BIT          BIT(6)
>
>  #define PWR_STATUS_CONN                        BIT(1)
>  #define PWR_STATUS_DISP                        BIT(3)
> @@ -115,6 +117,8 @@ enum clk_id {
>   * @name: The domain name.
>   * @sta_mask: The mask for power on/off status bit.
>   * @ctl_offs: The offset for main power control register.
> + * @sram_iso_ctrl: The flag to judge if the power domain need to do
> + *                 the extra sram isolation control.
>   * @sram_pdn_bits: The mask for sram power control bits.
>   * @sram_pdn_ack_bits: The mask for sram power control acked bits.
>   * @bus_prot_mask: The mask for single step bus protection.
> @@ -130,6 +134,7 @@ struct scp_domain_data {
>         const char *name;
>         u32 sta_mask;
>         int ctl_offs;
> +       bool sram_iso_ctrl;
>         u32 sram_pdn_bits;
>         u32 sram_pdn_ack_bits;
>         u32 bus_prot_mask;
> @@ -269,6 +274,14 @@ static int scpsys_sram_enable(struct scp_domain *scpd, void __iomem *ctl_addr)
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
> @@ -278,8 +291,16 @@ static int scpsys_sram_disable(struct scp_domain *scpd, void __iomem *ctl_addr)
>         u32 pdn_ack = scpd->data->sram_pdn_ack_bits;
>         int tmp;
>
> -       val = readl(ctl_addr);
> -       val |= scpd->data->sram_pdn_bits;
> +       if (scpd->data->sram_iso_ctrl)  {
> +               val = readl(ctl_addr);
> +               val |= PWR_SRAM_CLKISO_BIT;

You do this in 1 line above. I don't really care, but be consistent?
e.g. val = readl(ctl_addr) | PWR_SRAM_CLKISO_BIT;

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
