Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DA518B3FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 14:06:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1XU5gJQW2nU9+JqwEbq6hfsvPBXO1hSyEqcw6RzQiA=; b=FYo+zWZMAcFSGV
	uMT8o+IGgKjUquYWHFoV2vaa0b1FiDEZx2K1CEeErk43E0AF4EYk8WlqVeSKswpvss4prt3vRsBum
	Qz1oIhDCSRXaYm1G8ZqUIwH9jNhOPvyutRIEvJcyzgN5T/RO7OFK4WaFAkX5xOgb+VoJn4L94AYSW
	d34OghCk4o7Xhl87aZJeySQ0RNWDZJ18sXPHEMUnC1QpPV473QESr5ygkxkYcFBO2ybpud2cR85Jd
	3jAoOFHMOXXL/Qur8WZxzXYGq6Ys5aeC7zJsW2rrkzZlG6DfsKVymtKx3/wcddlU6hR5dfT6XufG5
	vEbtsctURIZDembDQPoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEusH-0005xa-NM; Thu, 19 Mar 2020 13:06:13 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEus9-0005ws-Eq
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 13:06:07 +0000
Received: by mail-ot1-x341.google.com with SMTP id a2so2236348otq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 06:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JNrzJ43ADUGKGgcYIYmm8uAsAxVnbPxCKcqomy6wzR8=;
 b=TVp42mYXKeI+CzEDqNdIZ8OSjOYd/x2BHF3WQsRwUplFoeXvhUkRzymLKfdlVKXVgS
 GzwUg2Q7ho8ZvC7uyy7SUT28MucxF4UxCJ/qO2fnyTsnua7SxjrDkXe0e99BVkOpALLL
 iX+Nfz8vqxrVET+CnfJyBGbZP9aENhotFEL8cWKt0rx0UXQxhpJcqzqqhY1hbF4XQMVh
 hUW+v4bgFd5HlN+csF5pQThvddNw+lZumxBcb3eP9pq7feovGzeBUf7Mthvx/0+wAbcr
 6u5pwajrtYTDgDnYY4EI1S3xWl1jc0aoSPYiQM1i+Ngl1EVzCXMzYw/esdw5gERxe7wM
 leBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JNrzJ43ADUGKGgcYIYmm8uAsAxVnbPxCKcqomy6wzR8=;
 b=OkpM8mRyYCiBwV2deM6O502Bv521nbQKz+rMJHp9c7RzVlhTFvqmXTZFrJG2TaZGUy
 SOEVc+OsSAbUMhQtSSp2aPf6GAgwZKjQf+5r3MUtqaTyOAdMiJhk+JJ1Yuq+i3YlYfz3
 PupGOq7roJIgiZckp414e/XBzZTYhu+pY6sHJb9YX00uU8LougSqIkVptNqNLLXB/b2q
 oEzIIATrdbZ9ycKLMoxO8+Zw5X9mtFiR/uGwnBySo7ESAz9Fie9hm548WRczRTaxs4B8
 0heX2zKW2FdNz81ml3QVMY8tVTyTVkOOr4xFb+RCDptzkzum7ajWZUMH4w/90IjEa0xZ
 N8/Q==
X-Gm-Message-State: ANhLgQ2USKY8RGLRRsLHKlmtcdDumVJYLAXz8SyNqcXr5eUBMjVfV8zh
 rTiaCAgF+sjFIj49bLK+YTTOs9RU0H4lcJr5X54=
X-Google-Smtp-Source: ADFU+vu6TgclLFcGUTWCKylwKuQ1xUKX/i4NckoB5Lg2bmpS65EzGwsKNTO9xiLZkksGH2ZBHR96INCeNIhBb87zs70=
X-Received: by 2002:a9d:264a:: with SMTP id a68mr2250727otb.176.1584623163859; 
 Thu, 19 Mar 2020 06:06:03 -0700 (PDT)
MIME-Version: 1.0
References: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584133954-6953-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200319124452.3yfcvq754vi4q2rv@gilmour.lan>
In-Reply-To: <20200319124452.3yfcvq754vi4q2rv@gilmour.lan>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 19 Mar 2020 13:05:37 +0000
Message-ID: <CA+V-a8vH+wJoC1SL0nuk8ypAH3Mosd+K1dLNDA5wwgP4W6A=CQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] media: dt-bindings: media: i2c: Switch to
 assigned-clock-rates
To: Maxime Ripard <maxime@cerno.tech>,
 Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_060605_502799_AAD44B07 
X-CRM114-Status: GOOD (  22.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 LAK <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

Thank you for the review.

On Thu, Mar 19, 2020 at 12:45 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi,
>
> On Fri, Mar 13, 2020 at 09:12:31PM +0000, Lad Prabhakar wrote:
> > Use assigned-clock-rates to specify the clock rate. Also mark
> > clock-frequency property as deprecated.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> >  Documentation/devicetree/bindings/media/i2c/ov5645.txt | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.txt b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > index 72ad992..e62fe82 100644
> > --- a/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > +++ b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > @@ -8,7 +8,7 @@ Required Properties:
> >  - compatible: Value should be "ovti,ov5645".
> >  - clocks: Reference to the xclk clock.
> >  - clock-names: Should be "xclk".
> > -- clock-frequency: Frequency of the xclk clock.
> > +- clock-frequency (deprecated): Frequency of the xclk clock.
> >  - enable-gpios: Chip enable GPIO. Polarity is GPIO_ACTIVE_HIGH. This corresponds
> >    to the hardware pin PWDNB which is physically active low.
> >  - reset-gpios: Chip reset GPIO. Polarity is GPIO_ACTIVE_LOW. This corresponds to
> > @@ -37,7 +37,8 @@ Example:
> >
> >                       clocks = <&clks 200>;
> >                       clock-names = "xclk";
> > -                     clock-frequency = <24000000>;
> > +                     assigned-clocks = <&clks 200>;
> > +                     assigned-clock-rates = <24000000>;
> >
> >                       vdddo-supply = <&camera_dovdd_1v8>;
> >                       vdda-supply = <&camera_avdd_2v8>;
>
> clock-frequency is quite different from assigned-clock-rates though,
> semantically speaking. clock-frequency is only about what the clock
> frequency is, while assigned-clock-rates will change the rate as well,
> and you have no idea how long it will last.
>
Agreed clock-frequency tells whats the clock frequency, wrt ov5645 driver
this property was read and and the clock rate was changed accordingly as per
the value being passed. So switching  to assigned-clock-rates does bypass
of clock rate being set in the ov5645 driver [1] as the framework does it.

> If you want to retrieve that through the clock framework, then just
> making clock-frequency optional is enough and falling back to
> clk_get_rate on the clocks property already provided is enough.
>
As done in patch [1] ?

Fyi I have posted a v4 [2] to ML.

[1] https://patchwork.linuxtv.org/patch/62378/
[2] https://patchwork.linuxtv.org/project/linux-media/list/?series=1990

Cheers,
--Prabhakar

> Maxime
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
