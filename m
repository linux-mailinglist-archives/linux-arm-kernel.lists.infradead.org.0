Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DA682582
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 21:21:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0cfDFTt0GgpcjC+HChNlRzvy8DJTZJp1zgxI9ft02PM=; b=kADYRe/ylG3p8g
	3umF/t0CcmQUSCUYo8zTr7+2NsqvJ6B7F0she8wuIDssnNxijOZk9za+eE3rgexn/7nZEFfdK2/lu
	SuFmjdrgTd8kCtBZVH4F1Kr+rpTMPOt3dkFK2WnIjSuOliXIKnadLY+gkxXNp9C3EUcg6qNScwDAX
	r9K93sSY1FWXYjEPPmdR1MgrrlFHziC2h2i9qF7IbOkvs7pOiOFqs1wiZCAnXKqBqMDnL6E/XB70S
	olSxLTE9F95hm3LRI7TNZYedUp+dGenZwQcPupT6t+INKdNNDghQXZk4cNgNTKMJWmBmGvjnfa5bC
	hYh7yFUIRNlSRQWAtdIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huiY0-00048s-K4; Mon, 05 Aug 2019 19:21:32 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huiXq-00048L-Jf
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 19:21:24 +0000
Received: by mail-wm1-x344.google.com with SMTP id p74so75785273wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 12:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d/QPU2oHFa2Ho1S1u38hXjGyl5aDEeD7TzQnoABqEf8=;
 b=SwHvedwU9g6nA48S5GDPPoRmtIuPB6HVKguEwN51Eqau0hMLvokHWFkjgDclLT4WJ9
 ZRvtdR1OMl3pDsxeHammDyWTZCV7+pl755zIO26Q6KHFjQ3e/gLCYtfTt/CDuEhl9B89
 GzO3i9QMkksXWwWTLmaWgoIJQJsnZvBoSZtu5hDq0oVnoafBUSkYMFVcgnaK6cy2pwPH
 TxzDBdKCB2U3WYsv7E/YVck4skGcHSx1IjNQMnPlRP5Ac+ea13jFQc8xMsPGn0rBCWik
 Q7M645Zr53ABB8n3lL7+F70QLPeg4uOsu4tRI414AG4hSgTAeO17Zw6WbUebtwNLYWJn
 qKbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d/QPU2oHFa2Ho1S1u38hXjGyl5aDEeD7TzQnoABqEf8=;
 b=PNe0LhUD4phorpkR/e0gixlL6hiOcVRLuYA/pL4mATLYZlldes8b2vwMQJDWTU2UKv
 c25jvmCS9Ovc4wohH9H2KzmUjqsX1lNbQjz9UDT83XTyfTi3Zwk6H1x4Q1Xyh3YCwzkC
 GXbSW15etxM+UUbXq61UHl9A+ozvk4Wkwc2pGrXT6EDSiqig0mVeoHPv1loOKO2YL+Ol
 M3Zkj39Fd6TauScdatf9PTvRp37iAAqpL4FfU90B/0R4yXBXZ2w3+mWiJ2cAvtIqZDMz
 t3VfCMdHfk1cjPKdIIHC72fhPyOzOOOZD4TCN5ywm01mF6gTW6Kvv1iFN8MS/sDWtlTO
 WdsA==
X-Gm-Message-State: APjAAAX1dR5rSLBqZLYKYYdpkl1Y+mmU7nDxa/KxQHPkmkjiTBSz+ae+
 sJ1q83QvMgEaQD+MeFYaeaJg0fABh8cJCt3jI7w=
X-Google-Smtp-Source: APXvYqwJAi8fBMrA9JxX1gG/spoyp/2JsRd6mnSAibX5oq4oYYIfQZGjDkqlnIZdIIGU+PrKfA9ja1590/VFMJ38aa0=
X-Received: by 2002:a1c:96c7:: with SMTP id y190mr18272908wmd.87.1565032881088; 
 Mon, 05 Aug 2019 12:21:21 -0700 (PDT)
MIME-Version: 1.0
References: <1564980742-19124-1-git-send-email-hongxing.zhu@nxp.com>
 <1564980742-19124-5-git-send-email-hongxing.zhu@nxp.com>
In-Reply-To: <1564980742-19124-5-git-send-email-hongxing.zhu@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 5 Aug 2019 22:21:09 +0300
Message-ID: <CAEnQRZBoLw5pfZ10STGMRfmR7=6hFjYNFOmXiMAnbM+-8Q4uLg@mail.gmail.com>
Subject: Re: [RESEND PATCH v5 4/4] mailbox: imx: add support for imx v1 mu
To: Richard Zhu <hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_122122_648464_350842BC 
X-CRM114-Status: GOOD (  20.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, jassisinghbrar@gmail.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 5, 2019 at 8:16 AM Richard Zhu <hongxing.zhu@nxp.com> wrote:
>
> There is a version 1.0 MU on i.MX7ULP platform.
> One new version ID register is added, and it's offset is 0.
> TRn registers are defined at the offset 0x20 ~ 0x2C.
> RRn registers are defined at the offset 0x40 ~ 0x4C.
> SR/CR registers are defined at 0x60/0x64.
> Extend this driver to support it.
>
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Suggested-by: Oleksij Rempel <o.rempel@pengutronix.de>
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de>

Very clean solution. Thanks Richard!

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

> ---
>  drivers/mailbox/imx-mailbox.c | 55 ++++++++++++++++++++++++++++++-------------
>  1 file changed, 38 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
> index afe625e..2cdcdc5 100644
> --- a/drivers/mailbox/imx-mailbox.c
> +++ b/drivers/mailbox/imx-mailbox.c
> @@ -12,19 +12,11 @@
>  #include <linux/of_device.h>
>  #include <linux/slab.h>
>
> -/* Transmit Register */
> -#define IMX_MU_xTRn(x)         (0x00 + 4 * (x))
> -/* Receive Register */
> -#define IMX_MU_xRRn(x)         (0x10 + 4 * (x))
> -/* Status Register */
> -#define IMX_MU_xSR             0x20
>  #define IMX_MU_xSR_GIPn(x)     BIT(28 + (3 - (x)))
>  #define IMX_MU_xSR_RFn(x)      BIT(24 + (3 - (x)))
>  #define IMX_MU_xSR_TEn(x)      BIT(20 + (3 - (x)))
>  #define IMX_MU_xSR_BRDIP       BIT(9)
>
> -/* Control Register */
> -#define IMX_MU_xCR             0x24
>  /* General Purpose Interrupt Enable */
>  #define IMX_MU_xCR_GIEn(x)     BIT(28 + (3 - (x)))
>  /* Receive Interrupt Enable */
> @@ -44,6 +36,13 @@ enum imx_mu_chan_type {
>         IMX_MU_TYPE_RXDB,       /* Rx doorbell */
>  };
>
> +struct imx_mu_dcfg {
> +       u32     xTR[4];         /* Transmit Registers */
> +       u32     xRR[4];         /* Receive Registers */
> +       u32     xSR;            /* Status Register */
> +       u32     xCR;            /* Control Register */
> +};
> +
>  struct imx_mu_con_priv {
>         unsigned int            idx;
>         char                    irq_desc[IMX_MU_CHAN_NAME_SIZE];
> @@ -61,12 +60,27 @@ struct imx_mu_priv {
>         struct mbox_chan        mbox_chans[IMX_MU_CHANS];
>
>         struct imx_mu_con_priv  con_priv[IMX_MU_CHANS];
> +       const struct imx_mu_dcfg        *dcfg;
>         struct clk              *clk;
>         int                     irq;
>
>         bool                    side_b;
>  };
>
> +static const struct imx_mu_dcfg imx_mu_cfg_imx6sx = {
> +       .xTR    = {0x0, 0x4, 0x8, 0xc},
> +       .xRR    = {0x10, 0x14, 0x18, 0x1c},
> +       .xSR    = 0x20,
> +       .xCR    = 0x24,
> +};
> +
> +static const struct imx_mu_dcfg imx_mu_cfg_imx7ulp = {
> +       .xTR    = {0x20, 0x24, 0x28, 0x2c},
> +       .xRR    = {0x40, 0x44, 0x48, 0x4c},
> +       .xSR    = 0x60,
> +       .xCR    = 0x64,
> +};
> +
>  static struct imx_mu_priv *to_imx_mu_priv(struct mbox_controller *mbox)
>  {
>         return container_of(mbox, struct imx_mu_priv, mbox);
> @@ -88,10 +102,10 @@ static u32 imx_mu_xcr_rmw(struct imx_mu_priv *priv, u32 set, u32 clr)
>         u32 val;
>
>         spin_lock_irqsave(&priv->xcr_lock, flags);
> -       val = imx_mu_read(priv, IMX_MU_xCR);
> +       val = imx_mu_read(priv, priv->dcfg->xCR);
>         val &= ~clr;
>         val |= set;
> -       imx_mu_write(priv, val, IMX_MU_xCR);
> +       imx_mu_write(priv, val, priv->dcfg->xCR);
>         spin_unlock_irqrestore(&priv->xcr_lock, flags);
>
>         return val;
> @@ -111,8 +125,8 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
>         struct imx_mu_con_priv *cp = chan->con_priv;
>         u32 val, ctrl, dat;
>
> -       ctrl = imx_mu_read(priv, IMX_MU_xCR);
> -       val = imx_mu_read(priv, IMX_MU_xSR);
> +       ctrl = imx_mu_read(priv, priv->dcfg->xCR);
> +       val = imx_mu_read(priv, priv->dcfg->xSR);
>
>         switch (cp->type) {
>         case IMX_MU_TYPE_TX:
> @@ -138,10 +152,10 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
>                 imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_TIEn(cp->idx));
>                 mbox_chan_txdone(chan, 0);
>         } else if (val == IMX_MU_xSR_RFn(cp->idx)) {
> -               dat = imx_mu_read(priv, IMX_MU_xRRn(cp->idx));
> +               dat = imx_mu_read(priv, priv->dcfg->xRR[cp->idx]);
>                 mbox_chan_received_data(chan, (void *)&dat);
>         } else if (val == IMX_MU_xSR_GIPn(cp->idx)) {
> -               imx_mu_write(priv, IMX_MU_xSR_GIPn(cp->idx), IMX_MU_xSR);
> +               imx_mu_write(priv, IMX_MU_xSR_GIPn(cp->idx), priv->dcfg->xSR);
>                 mbox_chan_received_data(chan, NULL);
>         } else {
>                 dev_warn_ratelimited(priv->dev, "Not handled interrupt\n");
> @@ -159,7 +173,7 @@ static int imx_mu_send_data(struct mbox_chan *chan, void *data)
>
>         switch (cp->type) {
>         case IMX_MU_TYPE_TX:
> -               imx_mu_write(priv, *arg, IMX_MU_xTRn(cp->idx));
> +               imx_mu_write(priv, *arg, priv->dcfg->xTR[cp->idx]);
>                 imx_mu_xcr_rmw(priv, IMX_MU_xCR_TIEn(cp->idx), 0);
>                 break;
>         case IMX_MU_TYPE_TXDB:
> @@ -270,7 +284,7 @@ static void imx_mu_init_generic(struct imx_mu_priv *priv)
>                 return;
>
>         /* Set default MU configuration */
> -       imx_mu_write(priv, 0, IMX_MU_xCR);
> +       imx_mu_write(priv, 0, priv->dcfg->xCR);
>  }
>
>  static int imx_mu_probe(struct platform_device *pdev)
> @@ -278,6 +292,7 @@ static int imx_mu_probe(struct platform_device *pdev)
>         struct device *dev = &pdev->dev;
>         struct device_node *np = dev->of_node;
>         struct imx_mu_priv *priv;
> +       const struct imx_mu_dcfg *dcfg;
>         unsigned int i;
>         int ret;
>
> @@ -295,6 +310,11 @@ static int imx_mu_probe(struct platform_device *pdev)
>         if (priv->irq < 0)
>                 return priv->irq;
>
> +       dcfg = of_device_get_match_data(dev);
> +       if (!dcfg)
> +               return -EINVAL;
> +       priv->dcfg = dcfg;
> +
>         priv->clk = devm_clk_get(dev, NULL);
>         if (IS_ERR(priv->clk)) {
>                 if (PTR_ERR(priv->clk) != -ENOENT)
> @@ -348,7 +368,8 @@ static int imx_mu_remove(struct platform_device *pdev)
>  }
>
>  static const struct of_device_id imx_mu_dt_ids[] = {
> -       { .compatible = "fsl,imx6sx-mu" },
> +       { .compatible = "fsl,imx7ulp-mu", .data = &imx_mu_cfg_imx7ulp },
> +       { .compatible = "fsl,imx6sx-mu", .data = &imx_mu_cfg_imx6sx },
>         { },
>  };
>  MODULE_DEVICE_TABLE(of, imx_mu_dt_ids);
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
