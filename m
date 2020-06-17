Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D83271FC3EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 04:01:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KWyKTWlPXNacBWsVRgEI11KqWX968JIjHYuqnoijLyE=; b=SDzRF8UQtrsK/C
	hzE8bM+P/xGTKj1+sbWBsTpP+lhJy4YKhtmXR33xEiMaZDY2mEmHvfMgp670fx7JjraPnxINyiG9t
	P7KmXkOtc6tFflra81HfVzy6FY5HAXdfmuk7izDQzIFGW55EorFlVgOfdcsnk+W3u/TntHny+oLVG
	8Q6y7HHTl77Jey6E9/+yE8MUMB19chaUg6PUbLyFt633KR+ymDIBHdu3VrhOhq9BtAcZeC+3aXOjU
	CozXDdFfRdcXNwEq6al3rRrCsSWIywfISvfEGDZsP0fuhmsCl/c4QXZi2LAMFnGBKREz0gjaqWLGK
	rmiu8J3JalneqtKr+QWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlNNu-0007tC-Jf; Wed, 17 Jun 2020 02:01:02 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlNNl-0007sd-RQ
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 02:00:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1592359249; bh=nfSFk/xxv2HPjCmgiQmTzC85XO7JsaYmjsZ2Hf0O8WA=;
 h=Date:From:To:Cc:Subject:References:From;
 b=RSTp/x25+vrf98bzteSPi+kPYJSJl7O5J4mEvqeDFgtzOodDhGQfnygpDh84JiXmH
 7U6a1om3H+8zqs/Y+QMNPTl24XwrWut/xPnaaHdCyotCcDDbC7Wqd3W7Oo213aSY9N
 XoVIbzOov26zePoClavc9rZy25sVMXE7VaGg/5M8=
Date: Wed, 17 Jun 2020 04:00:49 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [linux-sunxi] Re: [PATCH v3 3/5] drm: panel: Add Xingbangda
 XBD599 panel (ST7703 controller)
Message-ID: <20200617020049.iz6vujrs25kuipl6@core.my.home>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Icenowy Zheng <icenowy@aosc.io>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Samuel Holland <samuel@sholland.org>,
 Martijn Braam <martijn@brixit.nl>, Luca Weiss <luca@z3ntu.xyz>,
 Bhushan Shah <bshah@kde.org>
References: <20200513212451.1919013-1-megous@megous.com>
 <20200513212451.1919013-4-megous@megous.com>
 <CACRpkdZpiQ7E_v-Gfk6vFcUEiMazvixYaL0ksKeP=Tq3O6Fh=Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdZpiQ7E_v-Gfk6vFcUEiMazvixYaL0ksKeP=Tq3O6Fh=Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_190054_219497_68898B70 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hello Linus,

On Tue, May 26, 2020 at 01:32:25PM +0200, Linus Walleij wrote:
> Hi Ondrej,
> 

[...]

> > +       dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP1,
> > +                         0x82, 0x10, 0x06, 0x05, 0xA2, 0x0A, 0xA5, 0x12,
> > +                         0x31, 0x23, 0x37, 0x83, 0x04, 0xBC, 0x27, 0x38,
> > +                         0x0C, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0C, 0x00,
> > +                         0x03, 0x00, 0x00, 0x00, 0x75, 0x75, 0x31, 0x88,
> > +                         0x88, 0x88, 0x88, 0x88, 0x88, 0x13, 0x88, 0x64,
> > +                         0x64, 0x20, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88,
> > +                         0x02, 0x88, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> > +                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
> > +       dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP2,
> > +                         0x02, 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> > +                         0x00, 0x00, 0x00, 0x00, 0x02, 0x46, 0x02, 0x88,
> > +                         0x88, 0x88, 0x88, 0x88, 0x88, 0x64, 0x88, 0x13,
> > +                         0x57, 0x13, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88,
> > +                         0x75, 0x88, 0x23, 0x14, 0x00, 0x00, 0x02, 0x00,
> > +                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> > +                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x0A,
> > +                         0xA5, 0x00, 0x00, 0x00, 0x00);
> > +       dsi_dcs_write_seq(dsi, ST7703_CMD_SETGAMMA,
> > +                         0x00, 0x09, 0x0D, 0x23, 0x27, 0x3C, 0x41, 0x35,
> > +                         0x07, 0x0D, 0x0E, 0x12, 0x13, 0x10, 0x12, 0x12,
> > +                         0x18, 0x00, 0x09, 0x0D, 0x23, 0x27, 0x3C, 0x41,
> > +                         0x35, 0x07, 0x0D, 0x0E, 0x12, 0x13, 0x10, 0x12,
> > +                         0x12, 0x18);
> > +       msleep(20);
> 
> This stuff is really hard or impossible to understand without the
> datasheet.
> 
> In my previous review I wrote:
> 
> It appears that the Himax HX8363 is using the same display controller
> if you look at the datasheet:
> http://www.datasheet-pdf.com/PDF/HX8369-A-Datasheet-Himax-729024
> There you find an explanation to some of the commands.

It is st7703, and we have a fairly complete datasheet available
publicly. I posted links in the cover letter.

> That means, try to get rid of as much of the magic bytes as you can
> and use proper #defines. I know it takes some work but the result
> is so much more useful and readable.

I've added some descriptions from the datasheet as comments next
to the values in v4.

Thank you and regards,
	o.

> Further I wrote:
> 
> You should definately insert code to read the MTP bytes:
> 0xDA manufacturer
> 0xDB driver version
> 0xDC LCD module/driver
> And print these, se e.g. my newly added NT35510 driver or
> the Sony ACX424AKP driver.
> 
> So please do that.
> 
> Yours,
> Linus Walleij
> 
> -- 
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/CACRpkdZpiQ7E_v-Gfk6vFcUEiMazvixYaL0ksKeP%3DTq3O6Fh%3DQ%40mail.gmail.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
