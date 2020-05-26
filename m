Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D2C1E20E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 13:32:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ofogpBbeqyqkOPFhi+s9PBlYOsDVDzsX7/Yr1OagRE=; b=KUB+abVY07ERcO
	BHClu6gp1mZFsR1yguf5qPfWu6u8KfsVOpWIXeA8A6u3AmDJAnRanWlBeyEGiMUE0lDWTieaLbptq
	kT/0MVg902DHEaSQoIHcC6cFG5hPQu2aZmAPOX342hReDgazg19aPfhPUH0gkXTM0e8IcOJ7SiBBa
	q9UX8z5+s6sDpbpzFAC6adNDkevWFv0Pm0NvBR+Xc4XfT0YgOevFBATnJVZ8OkfizASDdrIg40lC1
	Avwgo+GjZnMqEeONX7L2LLoALU7oY25HALWHrg++yFXTib6FhquxrvpONrXbwDrASLcB47U2g6YEa
	1APuukjhn0XYxhQxzqmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdXpF-00085v-V1; Tue, 26 May 2020 11:32:54 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdXp1-00084q-9O
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 11:32:41 +0000
Received: by mail-lj1-x241.google.com with SMTP id k5so23988609lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 04:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N3aU8bQ2jt19toIdkwK4iimsCUAHj37+zUJ/z8dG82c=;
 b=TxHGmW0M/1J5kA67dTHib6mjP7IqlmXB9GlPXLnj3brNAtLjENIk88ciWY00CFrxgh
 m+RVHnNpqmSoAmn0koZ4VVVv6Q8kij/9A1DQWcHw5NKCJPlqkcB/PoNqDhyiWHyl1iaj
 zEPAGqTTOUnZBomUlkcEEjud7qxatQaGdOU7DXRnWr8MnBbpiXXPwEQFgujvP3Mhq0jt
 KgGPg0GPrFObpIdq9Qmg9LZXRK6i2WYpw5FgQEWoJqeiLwnsW8YIpZroi2BnnirKRE1u
 Te3lMIxX9v3MiDlAkkFy2ES3BpkILyrkkioDjGf+EdIFsoI0j5f3Z1YOQU0m5o9ZCAGa
 zNVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N3aU8bQ2jt19toIdkwK4iimsCUAHj37+zUJ/z8dG82c=;
 b=itbaGGv4oMoVmDGAKXFJcrDMjtFsH06TOm3+vPB6YzWj6drzfHRXS6sWnDCfPNzW70
 QPuzjvfkVSmt6+h7lVHwj5bVO9MWi78En1U9X2CyV4pgMo4kVG8gH28LiKHAj+XUa7/c
 B6rRGDfmuv9XLCrCEWoKOJZylmSnRofgiX2Nkioe1LoIwRCTBz6LQ5HbZdgZSGkUMwHX
 VzkQJ2nbj+9GehmztLpg2r0qbkDRoNqp4wP0tkiStc5DfnTQqVpR76WrnRQJK7fYEjf9
 Es8wPk3lkvCxA0uDd1Oi7vR1Se9YkgKKm8Hz4btn98dvR++UEVVAm4TVSbz0xXYNzwcc
 ek1w==
X-Gm-Message-State: AOAM5303HvmSPk3kBOIiAE3ymV9RjObSlxBU9Cm9FUqXTvg5vFMAHGsE
 cU+2aMU/Gb5KCANCkTdrml2NV/GEXjizdPLFT87T/Q==
X-Google-Smtp-Source: ABdhPJxM6A8ot4e/2DXXh6aue4hLFO5ial0ZBwWU8vJG+VNoWIczU4kxVWFCMR36ozh5h1OSlYeLxEUkI+61oop6giU=
X-Received: by 2002:a05:651c:32d:: with SMTP id
 b13mr401630ljp.283.1590492757082; 
 Tue, 26 May 2020 04:32:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200513212451.1919013-1-megous@megous.com>
 <20200513212451.1919013-4-megous@megous.com>
In-Reply-To: <20200513212451.1919013-4-megous@megous.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 26 May 2020 13:32:25 +0200
Message-ID: <CACRpkdZpiQ7E_v-Gfk6vFcUEiMazvixYaL0ksKeP=Tq3O6Fh=Q@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] drm: panel: Add Xingbangda XBD599 panel (ST7703
 controller)
To: Ondrej Jirman <megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_043239_333781_BD33F4C0 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Samuel Holland <samuel@sholland.org>,
 David Airlie <airlied@linux.ie>, Bhushan Shah <bshah@kde.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Martijn Braam <martijn@brixit.nl>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 Luca Weiss <luca@z3ntu.xyz>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ondrej,

I see you took over this driver submission from
Icenowy.

On Wed, May 13, 2020 at 11:24 PM Ondrej Jirman <megous@megous.com> wrote:

> From: Icenowy Zheng <icenowy@aosc.io>
>
> Xingbangda XBD599 is a 5.99" 720x1440 MIPI-DSI IPS LCD panel made by
> Xingbangda, which is used on PinePhone final assembled phones.
>
> It is based on Sitronix ST7703 LCD controller.
>
> Add support for it.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Ondrej Jirman <megous@megous.com>

(...)
>  create mode 100644 drivers/gpu/drm/panel/panel-sitronix-st7703.c

Nice!

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
> +       msleep(20);

This stuff is really hard or impossible to understand without the
datasheet.

In my previous review I wrote:

It appears that the Himax HX8363 is using the same display controller
if you look at the datasheet:
http://www.datasheet-pdf.com/PDF/HX8369-A-Datasheet-Himax-729024
There you find an explanation to some of the commands.

That means, try to get rid of as much of the magic bytes as you can
and use proper #defines. I know it takes some work but the result
is so much more useful and readable.

Further I wrote:

You should definately insert code to read the MTP bytes:
0xDA manufacturer
0xDB driver version
0xDC LCD module/driver
And print these, se e.g. my newly added NT35510 driver or
the Sony ACX424AKP driver.

So please do that.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
