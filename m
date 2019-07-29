Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 055AB78368
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 04:44:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hygdJ/AR2EO9H8H0uItSjATtIIS4lvd9orwzRdw7Q20=; b=HY+1WCkHY6FYLo
	Srkw/ZxlK8TveAmNciAZYLuxzJfkB+sd0RdgyMj0JNSYYoYvBs7KAKBb6stFOUt098NMq93t6WRMb
	DORvLUDXvkzZxL/Vx9vydoraqA00NBTmJmUacyFd3VMI3J42Dd3MuC7g83uwTmx4yKhXUs6z7Vs+j
	I/DLErWdQVq6WCCeNYagDl479WgfnTB9fXnw1aFL1QuuoTyHqFQ2umctG91wfHpQX/kTi6pG7gMd2
	EkKaLWG7cfZUfhvAVwsFd3650v+i71wzdUPlfuNHW2eYtkdwTmNSE0MZyRmBrGXFP6kXhAuFJZnGH
	wAPuaD6eyWT8zjNiOIhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrveW-00062Z-T2; Mon, 29 Jul 2019 02:44:45 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrveI-00062E-78
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 02:44:32 +0000
Received: by mail-io1-xd43.google.com with SMTP id g20so116756199ioc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 19:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qZKDGA7dw8r2uGStIMNho0NjnS8TMkeMvnKftPxADUc=;
 b=riwQGH0knljuXJOJB+PKQrE1h7zGAnH++JZG49X4KAvYeYSte8vABtR68R1Cg/seSQ
 DZAduG7X7Y79Fbv4Zi1nTo79pnxJDJd2OmTvvHc4JsSBpQUpobdfa2+DVllQCDX1xLGj
 DvlUaBNHzeffDWWC+kmXx9em2aLLz/MuyBJLCV9D14RwO3gBPgDbY74lTIaCq1pox2j+
 onMZZqDegfT2gq6Ek0UKNamu4Ce54Q4B/JC1Y95A95spHIlYdatZzn/U+pr+ZRk4hw6F
 UesWwPjwXIw16WyUEkf+l3Y2WmNaRpEFTXsJl4Mq2LuX+59jnVxcYWv3HntS314ymt0G
 BoHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qZKDGA7dw8r2uGStIMNho0NjnS8TMkeMvnKftPxADUc=;
 b=uMvoFZUdtnpirKpf+21QsjIX34buVULM7cKdX/qtG3WSBfejmrY9O7yHCH54l+v+Id
 OQ0IToCAeoGIrpYi20b6HtcQ3EWh7C5KJTylLnsu7lnvxtX1CZh/zQnHRM82qzBC/MdY
 XFTjKTF+KS9mUuSeKvob9UzV5Ug5ZOw2jvQ7lwJ8RBEO5UimcS9jUJp1Ulev+vlWpcgk
 f1xiOwzyHY6gDjje8P3Q8elp+CSDvsH5ZHY4YMueOmkBqkjeUI0RY4WwwiN+AWnzl6qk
 xwlAAnKPU3WALGUsBt8Kw4IyEr/yLKeBwSdu269mmiT0X62pT1lUygwkxbBEbXozc83f
 rh6g==
X-Gm-Message-State: APjAAAX41/Yd0sfnQRYLSCEjMIP0wE7FUowN6MwzFOtR/uqUYwK1/IZo
 D3YtznPb2q9CdEBJoHFKwWlYvfxz+K/9hrc8plQ=
X-Google-Smtp-Source: APXvYqzVI9Bzhn17tfo43Alw60jaUq1PcNVfW7oM1XPLN0EYgoZUnqGDA9FDR4RezS+zaWZuoT5UaCiovEmdBC88pwo=
X-Received: by 2002:a6b:6d08:: with SMTP id a8mr89007303iod.191.1564368268798; 
 Sun, 28 Jul 2019 19:44:28 -0700 (PDT)
MIME-Version: 1.0
References: <1564366440-10970-1-git-send-email-hongxing.zhu@nxp.com>
In-Reply-To: <1564366440-10970-1-git-send-email-hongxing.zhu@nxp.com>
From: Dong Aisheng <dongas86@gmail.com>
Date: Mon, 29 Jul 2019 10:35:15 +0800
Message-ID: <CAA+hA=Qg9uu+m3iTnbu2_+s4UN=kGpSNHsoKtjUggXnvLy4hbw@mail.gmail.com>
Subject: Re: [PATCH] mailbox: imx: add support for imx v1 mu
To: Richard Zhu <hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_194430_288243_B704A4A2 
X-CRM114-Status: GOOD (  19.19  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (dongas86[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dongas86[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>, jassisinghbrar@gmail.com,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 10:36 AM Richard Zhu <hongxing.zhu@nxp.com> wrote:
>
> There is a version1.0 MU on i.MX7ULP platform.
> One new version ID register is added, and it's offset is 0.
> TRn registers are defined at the offset 0x20 ~ 0x2C.
> RRn registers are defined at the offset 0x40 ~ 0x4C.
> SR/CR registers are defined at 0x60/0x64.
> Extend this driver to support it.
>

If only the register base offset is different, there's probably a more
simple way.
Please refer to:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/tty/serial/fsl_lpuart.c?id=24b1e5f0e83c2aced8096473d20c4cf6c1355f30

Regards
Aisheng

> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  drivers/mailbox/imx-mailbox.c | 67 ++++++++++++++++++++++++++++++++-----------
>  1 file changed, 50 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
> index 25be8bb..8423a38 100644
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
> @@ -61,12 +60,39 @@ struct imx_mu_priv {
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
> +       .xTR[0] = 0x0,
> +       .xTR[1] = 0x4,
> +       .xTR[2] = 0x8,
> +       .xTR[3] = 0xC,
> +       .xRR[0] = 0x10,
> +       .xRR[1] = 0x14,
> +       .xRR[2] = 0x18,
> +       .xRR[3] = 0x1C,
> +       .xSR    = 0x20,
> +       .xCR    = 0x24,
> +};
> +
> +static const struct imx_mu_dcfg imx_mu_cfg_imx7ulp = {
> +       .xTR[0] = 0x20,
> +       .xTR[1] = 0x24,
> +       .xTR[2] = 0x28,
> +       .xTR[3] = 0x2C,
> +       .xRR[0] = 0x40,
> +       .xRR[1] = 0x44,
> +       .xRR[2] = 0x48,
> +       .xRR[3] = 0x4C,
> +       .xSR    = 0x60,
> +       .xCR    = 0x64,
> +};
> +
>  static struct imx_mu_priv *to_imx_mu_priv(struct mbox_controller *mbox)
>  {
>         return container_of(mbox, struct imx_mu_priv, mbox);
> @@ -88,10 +114,10 @@ static u32 imx_mu_xcr_rmw(struct imx_mu_priv *priv, u32 set, u32 clr)
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
> @@ -111,8 +137,8 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
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
> @@ -138,10 +164,10 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
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
> @@ -159,7 +185,7 @@ static int imx_mu_send_data(struct mbox_chan *chan, void *data)
>
>         switch (cp->type) {
>         case IMX_MU_TYPE_TX:
> -               imx_mu_write(priv, *arg, IMX_MU_xTRn(cp->idx));
> +               imx_mu_write(priv, *arg, priv->dcfg->xTR[cp->idx]);
>                 imx_mu_xcr_rmw(priv, IMX_MU_xCR_TIEn(cp->idx), 0);
>                 break;
>         case IMX_MU_TYPE_TXDB:
> @@ -257,7 +283,7 @@ static void imx_mu_init_generic(struct imx_mu_priv *priv)
>                 return;
>
>         /* Set default MU configuration */
> -       imx_mu_write(priv, 0, IMX_MU_xCR);
> +       imx_mu_write(priv, 0, priv->dcfg->xCR);
>  }
>
>  static int imx_mu_probe(struct platform_device *pdev)
> @@ -265,6 +291,7 @@ static int imx_mu_probe(struct platform_device *pdev)
>         struct device *dev = &pdev->dev;
>         struct device_node *np = dev->of_node;
>         struct imx_mu_priv *priv;
> +       const struct imx_mu_dcfg *dcfg;
>         unsigned int i;
>         int ret;
>
> @@ -282,6 +309,11 @@ static int imx_mu_probe(struct platform_device *pdev)
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
> @@ -335,7 +367,8 @@ static int imx_mu_remove(struct platform_device *pdev)
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
