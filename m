Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 303433D532
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 20:09:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zLcNj2I7hL+nFkO+61hpXggkT7MJTu+Ti0cAhZ/C5Do=; b=Ker76itbleomX8
	VW9CtJaaT7nktzFQCjhyoRw4v42Tn478WmHhMOWFOFf6D9ToR17eyIHTLA7DauuGYIN7pt+NQRbDe
	gMShvwxO1KCEVKX0Y/5V6Si2SmiCBW0FSwjuSkpdazYa7k2JFLYWkm1gpfxeG155vgCdiHEcrPrl9
	XvDB+T/nTu8wR4c0l65G1p/hyo3LBo0mAHCZucN3vigV5LxmvbuCGtBGTGqMu4zPWipI5AtPRC0rN
	4B8n14C4o9j/iwSdVQmgCy4WA/T63JpapEz+//96YgkdKaWqho8a+g2XGp/Gp7D0IKC6hGIGsd17Y
	3ptZx8/mV2ryfxa4NvYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1halCf-00059J-CE; Tue, 11 Jun 2019 18:09:01 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1halCN-00054K-GS; Tue, 11 Jun 2019 18:08:45 +0000
Received: by mail-ot1-x341.google.com with SMTP id z23so12787842ote.13;
 Tue, 11 Jun 2019 11:08:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O89jlWqoEX7q/G6CiVxiDDmlI/FOM0sB6BHEXW+0fFM=;
 b=cHdSLiwdTyZbPGVz/qYnZJJCYplwKEbE0QdVdYmjqez+GGasa8TA9GEaZeZf+/Q/yc
 8TIaqOiIijHlpQPN+b0BBZvmxtMd47x/uYK7Vk5XPD8mYxbl+yUPaIuF7vI0M7QzRtm0
 HNeafuVGHu/sa/BCqZcATKXmtS7Eag+BS6pOHP7N3/7dY0uWHKLKUSLT34TY6AzMuvGD
 Nr42TPWl2pxEfX5qbCwSGwJadJSQJ9gNcRUKKGUG7vKQZCsm/m8sJ9YWSh2bYRWL5CwC
 TqB5iiaGNo0Yp7KTmdwXVV/+fDhjaVwXeP064+XZo1StqFJ682mO7SEdwmnKHz22qWhC
 eMcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O89jlWqoEX7q/G6CiVxiDDmlI/FOM0sB6BHEXW+0fFM=;
 b=STqRoHxEyXnzZupT7GoGBIlrUGb7NSyl3yhwZdWeh1ZWqXTKe9nFOpC9SGmRJheH2X
 uqPSRxWHLaL3FQJQcvWER+s5QZUFCAvRWA1YBUJrcHCN0TmksOhwM9EHtVeBpFIhS+cr
 nNCgPziq35+U7cG5n2Jj3MUyUj2FRD0LWTjg6HQmYSW1yN8fVtEbSZZPFDhgU0bw0I1z
 RM8HxtFOMui7iHLUkG4xbB4SH0sKvQeavT71bjUqLGaGxcClHhp6p4h+YLoaw+QI13R7
 H99hiD1ndsqyYVKcyTvRNevJyRAKBZt1EgRqLPkgkW/HLdQi/04chuM76wga2WrZvjqI
 fO0w==
X-Gm-Message-State: APjAAAXyAeYQc1GSXzVNzlZ4ZWdhDuxtteThErI7qJnR2ABlJtwFWl8D
 4ywVGPskEUHiptKvelVedETXufRRrYk7nLYbc5M=
X-Google-Smtp-Source: APXvYqx6SoLuddvsSFbGwWXlHsKKnRFjZOzVnVqvxNNOkTK4cQ1P337c36bckWzk3tAMnUuN46R+aOyOVrxZcNZhBbc=
X-Received: by 2002:a9d:32a6:: with SMTP id u35mr36300662otb.81.1560276522291; 
 Tue, 11 Jun 2019 11:08:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190611135842.8396-1-narmstrong@baylibre.com>
In-Reply-To: <20190611135842.8396-1-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 11 Jun 2019 20:08:31 +0200
Message-ID: <CAFBinCAkwjf9oDV6AGPi2PzzQ2KNTXXDHW6FTfN3kXpDT6cFpg@mail.gmail.com>
Subject: Re: [PATCH] usb: dwc3: meson-g12a: Add support for IRQ based OTG
 switching
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_110843_640173_24F5783A 
X-CRM114-Status: GOOD (  19.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: balbi@kernel.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Tue, Jun 11, 2019 at 3:58 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Add support for the OTG ID change interrupt to switch between Host
> and Device mode.
>
> Tested on the Hardkernel Odroid-N2 board.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
with the three questions/comments below answered/addressed:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

> ---
>  drivers/usb/dwc3/dwc3-meson-g12a.c | 32 ++++++++++++++++++++++++++++--
>  1 file changed, 30 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/usb/dwc3/dwc3-meson-g12a.c b/drivers/usb/dwc3/dwc3-meson-g12a.c
> index 2aec31a2eacb..e5c5ad0d529e 100644
> --- a/drivers/usb/dwc3/dwc3-meson-g12a.c
> +++ b/drivers/usb/dwc3/dwc3-meson-g12a.c
the comment block at the start of the driver file also contains a
"TOFIX" which points to the missing IRQ handling
can you please also drop that TOFIX comment in lines 15/16?

> @@ -348,6 +348,22 @@ static enum usb_role dwc3_meson_g12a_role_get(struct device *dev)
>                 USB_ROLE_HOST : USB_ROLE_DEVICE;
>  }
>
> +static irqreturn_t dwc3_meson_g12a_irq_thread(int irq, void *data)
> +{
> +       struct dwc3_meson_g12a *priv = data;
> +       enum phy_mode otg_id;
> +
> +       otg_id = dwc3_meson_g12a_get_id(priv);
> +       if (otg_id != priv->otg_phy_mode) {
> +               if (dwc3_meson_g12a_otg_mode_set(priv, otg_id))
> +                       dev_warn(priv->dev, "Failed to switch OTG mode\n");
> +       }
> +
> +       regmap_update_bits(priv->regmap, USB_R5, USB_R5_ID_DIG_IRQ, 0);
> +
> +       return IRQ_HANDLED;
> +}
> +
>  static struct device *dwc3_meson_g12_find_child(struct device *dev,
>                                                 const char *compatible)
>  {
> @@ -374,7 +390,7 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>         void __iomem *base;
>         struct resource *res;
>         enum phy_mode otg_id;
> -       int ret, i;
> +       int ret, i, irq;
>
>         priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>         if (!priv)
> @@ -436,6 +452,19 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>         /* Get dr_mode */
>         priv->otg_mode = usb_get_dr_mode(dev);
>
> +       if (priv->otg_mode == USB_DR_MODE_OTG) {
> +               /* Ack irq before registering */
> +               regmap_update_bits(priv->regmap, USB_R5,
> +                                  USB_R5_ID_DIG_IRQ, 0);
I assume that either the IRQ line is:
- always enabled
- enabled when (USB_R5_ID_DIG_EN_0 | USB_R5_ID_DIG_EN_1 |
USB_R5_ID_DIG_TH_MASK) are set (which we already do in
dwc3_meson_g12a_usb_init)

> +               irq = platform_get_irq(pdev, 0);
do we need to check the IRQ before trying to request it?
drivers/gpu/drm/meson/meson_dw_hdmi.c and drivers/usb/dwc3/host.c for
example error out if irq number is lower than 0

(it's great to see that this only required a small patch to make it work :))


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
