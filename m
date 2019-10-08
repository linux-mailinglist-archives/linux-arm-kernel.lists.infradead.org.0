Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1A6CF3AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 09:26:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LG++VicsDYJuxq+Jm1cvUrAfjcu2I2ZEnF7JjEzEkAw=; b=hYJ+FH5/F0+LKU
	szYsbNCws7GeniYxR2pohpd2L9FZ8wAGjMLbv1n5+ApbxHFZmug9MVqKsOkWSCwzghCxagoHzVciA
	G3FADyNImRJtDwh2aHUt+byRHQIYJ0CsHUn74UwZh5vooRSDyXtz+tf0AvKpUpTTMKzjXvCQQPW3K
	JV1VYr6/DYbgTx3d7SvOnPDewFCYrt3/8JMpaE+v+kSCoadLYE4gF2VFVwAjLR6gJ1+xoShATHW/B
	oj2pfvK9b19k/IOdTHqsInDHAjo2zWSsfSPfyia4+A2SjT24XxQxRvtJ1/vkkdZ+fiO3XkZV4cLQ5
	ruOhqirUBgMAi9WWU+bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHjsj-0004AW-Hu; Tue, 08 Oct 2019 07:26:05 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHjsb-00049m-4O
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 07:25:59 +0000
Received: by mail-wr1-x441.google.com with SMTP id j18so17253705wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 00:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4kal6lzen4CHLw+JnccRumaFnnhCb00ynZNLABryreg=;
 b=NKrLehZ/TKt+1PDXDjQmfWItHIAFJHrd9cn7LjgSUerCYGJJJXU3ia1ruT44v1swZP
 4HDluTnag7GekQh2DrgH4MAU0FK3/+3oe6OSoHjoQU1k9iBbOtDJKO2KKCrKc1v8F8zL
 nXE2SniQOcMm+hoZyfAszTnzS8VnHI8Vj6OrTPMbJMvnUaqbbdg/CdCjp9O0QcHpGU4P
 mJqrhBxWc3JD/DnDoNFI+haZ/iyG9jWTDi7ZTGKvHccmrBpQrYiseuxhucJTOS7uJq+8
 rb3IimCY9i8o1EkJxKQr+L92XDcr4eae8BxNCkrMtY06VF4mnB45BL6UV6K4xl0K4h9R
 l2yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4kal6lzen4CHLw+JnccRumaFnnhCb00ynZNLABryreg=;
 b=bl+Hb8MJtqV/8Ypdrdyhc4cj0hLes0pz2UNzl4oXSSHNY2Kcu+o0P9lp3CCcsYo4p5
 caePM9TZFCXf3GLDcsZXjD+uBepbOcMJ5PSXT0IWo4D8Fz+6ajNwEHJFUWmaBI6uvk89
 ErLZjCYFccl5yFTJz8zLSuh6As5QE4IN1LBewreOOi8xIsMiv3sJMyhSkfZ7ETytTHvi
 jVxBmPVVMgN+dJrgRiAUpgBCXb+BtQtBhQIB9QnLhN7WLz3Nt6RII0q+byTyFE5Sv4C6
 Y2ONlGN7UkidqpioxN1KOH9CJiylB4hQ07wFr6vhMpkwlmUZG7OPYLhmIigMy4G2QfpL
 jv6Q==
X-Gm-Message-State: APjAAAVNn4r+1v48P8WJEP5l2JZin/32rsmVEOPkhqh1+635e6g821n9
 hlzlZLQJM0eoNuTUayUBog9EnecF2AcS5VzI0ak=
X-Google-Smtp-Source: APXvYqxTIv3FYsobIxPqWB6cREu1LXDS7Puo8zQve+mUHnO0mJm3+k2OON2tEHH3/JBbLM8gt+FzZbcr+b9H3HnBwlU=
X-Received: by 2002:a5d:630d:: with SMTP id i13mr4533668wru.230.1570519553425; 
 Tue, 08 Oct 2019 00:25:53 -0700 (PDT)
MIME-Version: 1.0
References: <1564980742-19124-1-git-send-email-hongxing.zhu@nxp.com>
 <1564980742-19124-5-git-send-email-hongxing.zhu@nxp.com>
 <CAEnQRZBoLw5pfZ10STGMRfmR7=6hFjYNFOmXiMAnbM+-8Q4uLg@mail.gmail.com>
In-Reply-To: <CAEnQRZBoLw5pfZ10STGMRfmR7=6hFjYNFOmXiMAnbM+-8Q4uLg@mail.gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 8 Oct 2019 10:25:41 +0300
Message-ID: <CAEnQRZCkoA-q=C6nU0L_i33W8iTPY2RC4Cvb-aWuExA8VEqM4g@mail.gmail.com>
Subject: Re: [RESEND PATCH v5 4/4] mailbox: imx: add support for imx v1 mu
To: Richard Zhu <hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_002557_630892_B6066037 
X-CRM114-Status: GOOD (  21.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Richard,

Can you please rebase and resend this patch series?

On Mon, Aug 5, 2019 at 10:21 PM Daniel Baluta <daniel.baluta@gmail.com> wrote:
>
> On Mon, Aug 5, 2019 at 8:16 AM Richard Zhu <hongxing.zhu@nxp.com> wrote:
> >
> > There is a version 1.0 MU on i.MX7ULP platform.
> > One new version ID register is added, and it's offset is 0.
> > TRn registers are defined at the offset 0x20 ~ 0x2C.
> > RRn registers are defined at the offset 0x40 ~ 0x4C.
> > SR/CR registers are defined at 0x60/0x64.
> > Extend this driver to support it.
> >
> > Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> > Suggested-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> > Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de>
>
> Very clean solution. Thanks Richard!
>
> Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
>
> > ---
> >  drivers/mailbox/imx-mailbox.c | 55 ++++++++++++++++++++++++++++++-------------
> >  1 file changed, 38 insertions(+), 17 deletions(-)
> >
> > diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
> > index afe625e..2cdcdc5 100644
> > --- a/drivers/mailbox/imx-mailbox.c
> > +++ b/drivers/mailbox/imx-mailbox.c
> > @@ -12,19 +12,11 @@
> >  #include <linux/of_device.h>
> >  #include <linux/slab.h>
> >
> > -/* Transmit Register */
> > -#define IMX_MU_xTRn(x)         (0x00 + 4 * (x))
> > -/* Receive Register */
> > -#define IMX_MU_xRRn(x)         (0x10 + 4 * (x))
> > -/* Status Register */
> > -#define IMX_MU_xSR             0x20
> >  #define IMX_MU_xSR_GIPn(x)     BIT(28 + (3 - (x)))
> >  #define IMX_MU_xSR_RFn(x)      BIT(24 + (3 - (x)))
> >  #define IMX_MU_xSR_TEn(x)      BIT(20 + (3 - (x)))
> >  #define IMX_MU_xSR_BRDIP       BIT(9)
> >
> > -/* Control Register */
> > -#define IMX_MU_xCR             0x24
> >  /* General Purpose Interrupt Enable */
> >  #define IMX_MU_xCR_GIEn(x)     BIT(28 + (3 - (x)))
> >  /* Receive Interrupt Enable */
> > @@ -44,6 +36,13 @@ enum imx_mu_chan_type {
> >         IMX_MU_TYPE_RXDB,       /* Rx doorbell */
> >  };
> >
> > +struct imx_mu_dcfg {
> > +       u32     xTR[4];         /* Transmit Registers */
> > +       u32     xRR[4];         /* Receive Registers */
> > +       u32     xSR;            /* Status Register */
> > +       u32     xCR;            /* Control Register */
> > +};
> > +
> >  struct imx_mu_con_priv {
> >         unsigned int            idx;
> >         char                    irq_desc[IMX_MU_CHAN_NAME_SIZE];
> > @@ -61,12 +60,27 @@ struct imx_mu_priv {
> >         struct mbox_chan        mbox_chans[IMX_MU_CHANS];
> >
> >         struct imx_mu_con_priv  con_priv[IMX_MU_CHANS];
> > +       const struct imx_mu_dcfg        *dcfg;
> >         struct clk              *clk;
> >         int                     irq;
> >
> >         bool                    side_b;
> >  };
> >
> > +static const struct imx_mu_dcfg imx_mu_cfg_imx6sx = {
> > +       .xTR    = {0x0, 0x4, 0x8, 0xc},
> > +       .xRR    = {0x10, 0x14, 0x18, 0x1c},
> > +       .xSR    = 0x20,
> > +       .xCR    = 0x24,
> > +};
> > +
> > +static const struct imx_mu_dcfg imx_mu_cfg_imx7ulp = {
> > +       .xTR    = {0x20, 0x24, 0x28, 0x2c},
> > +       .xRR    = {0x40, 0x44, 0x48, 0x4c},
> > +       .xSR    = 0x60,
> > +       .xCR    = 0x64,
> > +};
> > +
> >  static struct imx_mu_priv *to_imx_mu_priv(struct mbox_controller *mbox)
> >  {
> >         return container_of(mbox, struct imx_mu_priv, mbox);
> > @@ -88,10 +102,10 @@ static u32 imx_mu_xcr_rmw(struct imx_mu_priv *priv, u32 set, u32 clr)
> >         u32 val;
> >
> >         spin_lock_irqsave(&priv->xcr_lock, flags);
> > -       val = imx_mu_read(priv, IMX_MU_xCR);
> > +       val = imx_mu_read(priv, priv->dcfg->xCR);
> >         val &= ~clr;
> >         val |= set;
> > -       imx_mu_write(priv, val, IMX_MU_xCR);
> > +       imx_mu_write(priv, val, priv->dcfg->xCR);
> >         spin_unlock_irqrestore(&priv->xcr_lock, flags);
> >
> >         return val;
> > @@ -111,8 +125,8 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
> >         struct imx_mu_con_priv *cp = chan->con_priv;
> >         u32 val, ctrl, dat;
> >
> > -       ctrl = imx_mu_read(priv, IMX_MU_xCR);
> > -       val = imx_mu_read(priv, IMX_MU_xSR);
> > +       ctrl = imx_mu_read(priv, priv->dcfg->xCR);
> > +       val = imx_mu_read(priv, priv->dcfg->xSR);
> >
> >         switch (cp->type) {
> >         case IMX_MU_TYPE_TX:
> > @@ -138,10 +152,10 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
> >                 imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_TIEn(cp->idx));
> >                 mbox_chan_txdone(chan, 0);
> >         } else if (val == IMX_MU_xSR_RFn(cp->idx)) {
> > -               dat = imx_mu_read(priv, IMX_MU_xRRn(cp->idx));
> > +               dat = imx_mu_read(priv, priv->dcfg->xRR[cp->idx]);
> >                 mbox_chan_received_data(chan, (void *)&dat);
> >         } else if (val == IMX_MU_xSR_GIPn(cp->idx)) {
> > -               imx_mu_write(priv, IMX_MU_xSR_GIPn(cp->idx), IMX_MU_xSR);
> > +               imx_mu_write(priv, IMX_MU_xSR_GIPn(cp->idx), priv->dcfg->xSR);
> >                 mbox_chan_received_data(chan, NULL);
> >         } else {
> >                 dev_warn_ratelimited(priv->dev, "Not handled interrupt\n");
> > @@ -159,7 +173,7 @@ static int imx_mu_send_data(struct mbox_chan *chan, void *data)
> >
> >         switch (cp->type) {
> >         case IMX_MU_TYPE_TX:
> > -               imx_mu_write(priv, *arg, IMX_MU_xTRn(cp->idx));
> > +               imx_mu_write(priv, *arg, priv->dcfg->xTR[cp->idx]);
> >                 imx_mu_xcr_rmw(priv, IMX_MU_xCR_TIEn(cp->idx), 0);
> >                 break;
> >         case IMX_MU_TYPE_TXDB:
> > @@ -270,7 +284,7 @@ static void imx_mu_init_generic(struct imx_mu_priv *priv)
> >                 return;
> >
> >         /* Set default MU configuration */
> > -       imx_mu_write(priv, 0, IMX_MU_xCR);
> > +       imx_mu_write(priv, 0, priv->dcfg->xCR);
> >  }
> >
> >  static int imx_mu_probe(struct platform_device *pdev)
> > @@ -278,6 +292,7 @@ static int imx_mu_probe(struct platform_device *pdev)
> >         struct device *dev = &pdev->dev;
> >         struct device_node *np = dev->of_node;
> >         struct imx_mu_priv *priv;
> > +       const struct imx_mu_dcfg *dcfg;
> >         unsigned int i;
> >         int ret;
> >
> > @@ -295,6 +310,11 @@ static int imx_mu_probe(struct platform_device *pdev)
> >         if (priv->irq < 0)
> >                 return priv->irq;
> >
> > +       dcfg = of_device_get_match_data(dev);
> > +       if (!dcfg)
> > +               return -EINVAL;
> > +       priv->dcfg = dcfg;
> > +
> >         priv->clk = devm_clk_get(dev, NULL);
> >         if (IS_ERR(priv->clk)) {
> >                 if (PTR_ERR(priv->clk) != -ENOENT)
> > @@ -348,7 +368,8 @@ static int imx_mu_remove(struct platform_device *pdev)
> >  }
> >
> >  static const struct of_device_id imx_mu_dt_ids[] = {
> > -       { .compatible = "fsl,imx6sx-mu" },
> > +       { .compatible = "fsl,imx7ulp-mu", .data = &imx_mu_cfg_imx7ulp },
> > +       { .compatible = "fsl,imx6sx-mu", .data = &imx_mu_cfg_imx6sx },
> >         { },
> >  };
> >  MODULE_DEVICE_TABLE(of, imx_mu_dt_ids);
> > --
> > 2.7.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
