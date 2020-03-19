Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6436E18B8B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 15:09:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WakJ6/ITLuMiTixkSt0zRmmdL5g2+lq7mSYuCZw8HNY=; b=iO36H5Y5x/mUkE
	vhRDVoR2ZRdpm5j753WPJgFwea114prtquh0ttNgLnQ/QGeIgrKqY1WUA5RRJ0vfwi/4v1pwGFr/p
	5DEHO51QlrsGMHrqrEF9IIbHfcVjUVKBpVmvlAKO+778CIFfjykCNfjk2h/XdA/dw0qK9Sq1199YO
	6J1SHC17oH3mYqtRYCxtJapAt7+THsz0J4rhDQqqo6+HwuokE3WkhfAomfYe1sfkcrhZCiQv7B+48
	GpwGbNBjnlCdw8F5N5u1E8SUBUvsywqxCQTzy5rsJ9UJfkSZesiEIkgd2LVUpJ1nVEiGDSs4vJyPb
	1sTdt3oH9IWxAucQlMRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEvrO-0007hi-4G; Thu, 19 Mar 2020 14:09:22 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEvr4-0007f4-BS
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 14:09:04 +0000
Received: by mail-lf1-x144.google.com with SMTP id j11so1738953lfg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 07:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gEcY8z6wwpaaAzNCe8Z6QFn2FupyzXJqJUFsyjFrfJ0=;
 b=RpJpNILV8tOQM22m6W5PBUdt+ZfhFSgvIxHC1TiiRYjzVLusOipyaoJsKDY1qBn9tC
 8TB8eQ+UdlHWSUBZx7YYfAkczhVm0iUNa4fZsCrSV6lW6L4gBoR4IzGSsM10bzU/XxJk
 xt2BWzjPc+zveX2UXnxkEsU0gXu0N+pJbv9gLrJgekGQdHkzMVBIMBtNcQO6VcI/yeJs
 jN6CSCeVLAsyHSKmknd300Oww6sGsSrfzPrYw038eJW/WOkqTtPBoIFpHMF0JQtaQnkJ
 bMQwUCeKH2KWlz/35dQkMLjM6eF+HheLW7BwEqBfn1hW1KIolmS7Lroy5Krr2USWV14a
 Ib9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gEcY8z6wwpaaAzNCe8Z6QFn2FupyzXJqJUFsyjFrfJ0=;
 b=IuMutT99OVH/uWHyB+HTs5TcUyfFCJL3aymRtUxXaWsiU8cP20H7FuaeajfdhqKL0t
 zIbg+E/1tZNXf9MzgxJNhl8tFPSi1AjRGepGDzg1uAj0FrBjEycFdmU2Fdu+QwYBKnW5
 Tb019Hp/8Stpi16Nr2Yv2YLdxP04IhO2ZicCw2AKaQGpwb9qYMH+OMskH2FCf0K2hw1E
 /oBHBztQw0ucpNLdpfaCE8OcvlMcvtCWUPkfGWbIgBPrEtyncH++PTX9Jd3JOBfuOCGJ
 R5Nx72WKskSvnGXZ+slzTjEJJCmZ3V82S532ir1w0PhTBk/kxnutiRNrZROiykUMBsnf
 t4jA==
X-Gm-Message-State: ANhLgQ0JHJaHfqFHzAtyFFQCYomskfZR/YxIlwNWEnD/xn72D6bydYJD
 oGbx3kkRx6wEmzISMXJjoYFrre4kbLUrV+BR5o8+xg==
X-Google-Smtp-Source: ADFU+vtL2a5EH4HAtULGcGOjAWCmsAowQ2bEo2SZGc7cGuYj69Mom1zEbkHAkEi23SJQ7tUhsLzeUDsfPICmoRNYDiM=
X-Received: by 2002:a19:4b53:: with SMTP id y80mr2235185lfa.77.1584626939845; 
 Thu, 19 Mar 2020 07:08:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200316133503.144650-1-icenowy@aosc.io>
 <20200316133503.144650-4-icenowy@aosc.io>
In-Reply-To: <20200316133503.144650-4-icenowy@aosc.io>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 19 Mar 2020 15:08:48 +0100
Message-ID: <CACRpkdahrHmXWpdqoApFEq6cW2gatMfds9SMZGwsUnNHt+J0aQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] drm: panel: add Xingbangda XBD599 panel
To: Icenowy Zheng <icenowy@aosc.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_070902_419544_E77737EE 
X-CRM114-Status: GOOD (  20.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ondrej Jirman <megous@megous.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Sam Ravnborg <sam@ravnborg.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Icenowy!

Thanks for your patch.

On Mon, Mar 16, 2020 at 2:37 PM Icenowy Zheng <icenowy@aosc.io> wrote:

> Xingbangda XBD599 is a 5.99" 720x1440 MIPI-DSI IPS LCD panel made by
> Xingbangda, which is used on PinePhone final assembled phones.
>
> Add support for it.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
(...)

> +/* Manufacturer specific Commands send via DSI */
> +#define ST7703_CMD_ALL_PIXEL_OFF 0x22
> +#define ST7703_CMD_ALL_PIXEL_ON         0x23
> +#define ST7703_CMD_SETDISP      0xB2
> +#define ST7703_CMD_SETRGBIF     0xB3
> +#define ST7703_CMD_SETCYC       0xB4
> +#define ST7703_CMD_SETBGP       0xB5
> +#define ST7703_CMD_SETVCOM      0xB6
> +#define ST7703_CMD_SETOTP       0xB7
> +#define ST7703_CMD_SETPOWER_EXT         0xB8
> +#define ST7703_CMD_SETEXTC      0xB9
> +#define ST7703_CMD_SETMIPI      0xBA
> +#define ST7703_CMD_SETVDC       0xBC
> +#define ST7703_CMD_SETSCR       0xC0
> +#define ST7703_CMD_SETPOWER     0xC1
> +#define ST7703_CMD_UNK_C6       0xC6
> +#define ST7703_CMD_SETPANEL     0xCC
> +#define ST7703_CMD_SETGAMMA     0xE0
> +#define ST7703_CMD_SETEQ        0xE3
> +#define ST7703_CMD_SETGIP1      0xE9
> +#define ST7703_CMD_SETGIP2      0xEA

It appears that the Himax HX8363 is using the same display controller
if you look at the datasheet:
http://www.datasheet-pdf.com/PDF/HX8369-A-Datasheet-Himax-729024
There you find an explanation to some of the commands.

People are trying to add support for this panel too:
https://discuss.96boards.org/t/adding-support-to-himax-hx8363-panel/9068

The set-up values etc for the Himax display will be widely
different because it is using the same display controller
for a display of 480x800(854) pixels.

You should definately insert code to read the MTP bytes:
0xDA manufacturer
0xDB driver version
0xDC LCD module/driver
And print these, se e.g. my newly added NT35510 driver or
the Sony ACX424AKP driver.

Nobody seems to have any documentation of these MTP
ID bytes but they are certainly consistent among
e.g Ilitek or Novatek display drivers.

I do not think that either Xingbangda or Himax have made
this display controller. The number of advanced display
controller vendors in the world is actually pretty limited.
Ilitek, Novatek or TPO make most of them.

It is a bit of a problem for the development world that
display manufacturers hide the details of which display
controller they actually use, because we can't have
2 different drivers for the same display controller just
because Himax and Xingbada package it up with
their own branding.

This actually looks very much like an Ilitek display controller.
Some commands are clearly identical to Ilitek ILI9342:
http://www.ampdisplay.com/documents/pdf/ILI9342_DS_V008_20100331.pdf

I would:

1. Try to determine what the actual display controller
  is. I think it is some Ilitek.

2. Write a panel-ilitek-ili9342.c (if that is the actual controller)
  and parameterize it for this display controller the same
  way we do in e.g. panel-novatek-nt35510.c or
  panel-ilitek-ili9322.c, so you use the compatible string
  to set up the actual per-display settings for this display
  controller.

> +       /*
> +        * Init sequence was supplied by the panel vendor.
> +        */
> +       dsi_dcs_write_seq(dsi, ST7703_CMD_SETEXTC,
> +                         0xF1, 0x12, 0x83);
> +       dsi_dcs_write_seq(dsi, ST7703_CMD_SETMIPI,
> +                         0x33, 0x81, 0x05, 0xF9, 0x0E, 0x0E, 0x20, 0x00,
> +                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x44, 0x25,
> +                         0x00, 0x91, 0x0a, 0x00, 0x00, 0x02, 0x4F, 0x11,
> +                         0x00, 0x00, 0x37);
> +       dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER_EXT,
> +                         0x25, 0x22, 0x20, 0x03);
> +       dsi_dcs_write_seq(dsi, ST7703_CMD_SETRGBIF,
> +                         0x10, 0x10, 0x05, 0x05, 0x03, 0xFF, 0x00, 0x00,
> +                         0x00, 0x00);
> +       dsi_dcs_write_seq(dsi, ST7703_CMD_SETSCR,
> +                         0x73, 0x73, 0x50, 0x50, 0x00, 0xC0, 0x08, 0x70,
> +                         0x00);
> +       dsi_dcs_write_seq(dsi, ST7703_CMD_SETVDC, 0x4E);
> +       dsi_dcs_write_seq(dsi, ST7703_CMD_SETPANEL, 0x0B);
> +       dsi_dcs_write_seq(dsi, ST7703_CMD_SETCYC, 0x80);
> +       dsi_dcs_write_seq(dsi, ST7703_CMD_SETDISP, 0xF0, 0x12, 0xF0);
> +       dsi_dcs_write_seq(dsi, ST7703_CMD_SETEQ,
> +                         0x00, 0x00, 0x0B, 0x0B, 0x10, 0x10, 0x00, 0x00,
> +                         0x00, 0x00, 0xFF, 0x00, 0xC0, 0x10);
> +       dsi_dcs_write_seq(dsi, 0xC6, 0x01, 0x00, 0xFF, 0xFF, 0x00);
> +       dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER,
> +                         0x74, 0x00, 0x32, 0x32, 0x77, 0xF1, 0xFF, 0xFF,
> +                         0xCC, 0xCC, 0x77, 0x77);
> +       dsi_dcs_write_seq(dsi, ST7703_CMD_SETBGP, 0x07, 0x07);
> +       dsi_dcs_write_seq(dsi, ST7703_CMD_SETVCOM, 0x2C, 0x2C);
> +       dsi_dcs_write_seq(dsi, 0xBF, 0x02, 0x11, 0x00);
> +
> +       dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP1,
> +                         0x82, 0x10, 0x06, 0x05, 0xA2, 0x0A, 0xA5, 0x12,
> +                         0x31, 0x23, 0x37, 0x83, 0x04, 0xBC, 0x27, 0x38,
> +                         0x0C, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0C, 0x00,
> +                         0x03, 0x00, 0x00, 0x00, 0x75, 0x75, 0x31, 0x88,
> +                         0x88, 0x88, 0x88, 0x88, 0x88, 0x13, 0x88, 0x64,
> +                         0x64, 0x20, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88,
> +                         0x02, 0x88, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
> +       dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP2,
> +                         0x02, 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +                         0x00, 0x00, 0x00, 0x00, 0x02, 0x46, 0x02, 0x88,
> +                         0x88, 0x88, 0x88, 0x88, 0x88, 0x64, 0x88, 0x13,
> +                         0x57, 0x13, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88,
> +                         0x75, 0x88, 0x23, 0x14, 0x00, 0x00, 0x02, 0x00,
> +                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x0A,
> +                         0xA5, 0x00, 0x00, 0x00, 0x00);
> +       dsi_dcs_write_seq(dsi, ST7703_CMD_SETGAMMA,
> +                         0x00, 0x09, 0x0D, 0x23, 0x27, 0x3C, 0x41, 0x35,
> +                         0x07, 0x0D, 0x0E, 0x12, 0x13, 0x10, 0x12, 0x12,
> +                         0x18, 0x00, 0x09, 0x0D, 0x23, 0x27, 0x3C, 0x41,
> +                         0x35, 0x07, 0x0D, 0x0E, 0x12, 0x13, 0x10, 0x12,
> +                         0x12, 0x18);

Already just using the HX8363 datasheet you can turn this into
something much more readable akin to how the NT35510 driver
is done.

> +static const struct drm_display_mode xbd599_default_mode = {
> +       .hdisplay    = 720,
> +       .hsync_start = 720 + 40,
> +       .hsync_end   = 720 + 40 + 40,
> +       .htotal      = 720 + 40 + 40 + 40,
> +       .vdisplay    = 1440,
> +       .vsync_start = 1440 + 18,
> +       .vsync_end   = 1440 + 18 + 10,
> +       .vtotal      = 1440 + 18 + 10 + 17,
> +       .vrefresh    = 60,

I think this vrefresh is going away soon.

> +       .clock       = 69000,
> +       .flags       = DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
> +
> +       .width_mm    = 68,
> +       .height_mm   = 136,
> +       .type        = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
> +};

All of this as well as some of the initialization
sequences should be per-variant data. (Switched by
the compatible).

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
