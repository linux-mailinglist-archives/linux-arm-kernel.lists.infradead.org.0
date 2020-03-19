Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 212E818B569
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 14:18:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B6I/W8R0qolJ2XGyGw4BcNd6ojNaNVhm5laN7XxJuVE=; b=khgDEQRTKwArZ8
	Pwza3eqnMGd/FNaVfXzcDksl+ArLsoRki8hI+Qkgzqh3iyyRYSl1wNJvv+vkU/zq80WDTfYfH+XSE
	Ub+dDy5EzGjDtOb6Uj0yXfeFnJpk/K04bicPsvcHRkE0J5rf81SJLG++bVWrudqPOEkBM8lkrc3t/
	kek/hXxdVvVRYEzVWhIoTX5l3upfpaBWY+s32Xvw6EwWBvK98gtuQoylvsEvMbzENkhJQQnb5PWqY
	PnUhPx5LpBmbLux/AJdYxcXimGtHb3ldLrlQJiW4loH+b/3Z3Ux2H77HcFHNjdvQJw2jElOqfqrWk
	C+nu7WtRnJXtAPljN4IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEv49-00044M-Q8; Thu, 19 Mar 2020 13:18:29 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEv3z-00043y-10
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 13:18:20 +0000
Received: by mail-oi1-x241.google.com with SMTP id 9so2554363oiq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 06:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qDQpti7t01GpCTV3F9lVKa0JXF79TC4yEbf9DOSPn8g=;
 b=mcAQ0yZCaJg48cbZ+UPok9xqwUcsLaZsb9fzmjLgeh8zdqkKXz81zq/ILbwNrBso2a
 MN4btAAs+YQirt8xgKGSVUBCNTD5zHSZMVoAo15X2tUTWsKNcvIDf9ULConjYj0Aprz0
 bpiQ94KXoh7flze0IXswZPt+qyF2ZmgAi+FL55Ar139q+XJxp4ZasBrKaZYUwGFxD95X
 tRz65ibnOZuh9KDbSY3lfdkiqYrn9QcbjX/2NHFqETcoSloqNpfMtrf5PdxLbZOgMjA/
 GFpujd6djm/SWaidRo4GwHfr2sGBvYlPciDOrkswyNdJYyeprCBX+oLvAN4PxdBkODDL
 lXEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qDQpti7t01GpCTV3F9lVKa0JXF79TC4yEbf9DOSPn8g=;
 b=OTLwkh8Uw22rNp4e7FiN6T0g9UJ8Ka/3HPYGYsOGi6eRlfQk2cutDSIUfbx5d8aYgx
 xWQhxtny+yuaJvFtWG/mAyFO9yvYThOrlhFxxaX3cW/mgBse9iJbDu3l89x7+rsqM26B
 OeyHOwRfbo0I3Q93LNEeOob/N7cpZlmjnvt3T9bhq0ReeQ6u88LdCMBxR75J5aRSkHie
 HauQJzXA/k1swCgMtnX5Yki4oAa+vGOf78PqdZMyVBNDd8jH6POQ5/zb3O6NNGtbPONU
 x6hR2VFpIR+CC2rEqPoNPMl6fYM8T8T7BpwHeBi924BQUeYRn3gJtmCbc4eBtPkutoA6
 Pwng==
X-Gm-Message-State: ANhLgQ2g6oyhloNleMFvJYDsWfEgBlhUONrqlBVEdK3Aab7ZqFCoJMK+
 vevgP4v2XtAJUTtIe2yrpNFDN0C+9v7DpePeww4=
X-Google-Smtp-Source: ADFU+vsS6/XH+ew6MFOJMJjm3XI7q3PIxIoAJ7KFCUkmkMgL0Zaluvh9eiLo/6KcPprvw6aGuxFV0AQaeSh8Jiiw3FI=
X-Received: by 2002:aca:ac89:: with SMTP id v131mr2290732oie.7.1584623898057; 
 Thu, 19 Mar 2020 06:18:18 -0700 (PDT)
MIME-Version: 1.0
References: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584133954-6953-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200319124452.3yfcvq754vi4q2rv@gilmour.lan>
 <20200319130348.GC4872@pendragon.ideasonboard.com>
In-Reply-To: <20200319130348.GC4872@pendragon.ideasonboard.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 19 Mar 2020 13:17:51 +0000
Message-ID: <CA+V-a8s-GZsYuBLyGnzURZfGD42f0c+QEan6FSwb2ew1=7Gj3g@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] media: dt-bindings: media: i2c: Switch to
 assigned-clock-rates
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_061819_068691_23522B24 
X-CRM114-Status: GOOD (  25.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
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
 <devicetree@vger.kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Maxime Ripard <maxime@cerno.tech>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Shawn Guo <shawnguo@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, linux-media <linux-media@vger.kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

On Thu, Mar 19, 2020 at 1:04 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Maxime,
>
> On Thu, Mar 19, 2020 at 01:44:52PM +0100, Maxime Ripard wrote:
> > On Fri, Mar 13, 2020 at 09:12:31PM +0000, Lad Prabhakar wrote:
> > > Use assigned-clock-rates to specify the clock rate. Also mark
> > > clock-frequency property as deprecated.
> > >
> > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > ---
> > >  Documentation/devicetree/bindings/media/i2c/ov5645.txt | 5 +++--
> > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.txt b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > > index 72ad992..e62fe82 100644
> > > --- a/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > > +++ b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > > @@ -8,7 +8,7 @@ Required Properties:
> > >  - compatible: Value should be "ovti,ov5645".
> > >  - clocks: Reference to the xclk clock.
> > >  - clock-names: Should be "xclk".
> > > -- clock-frequency: Frequency of the xclk clock.
> > > +- clock-frequency (deprecated): Frequency of the xclk clock.
> > >  - enable-gpios: Chip enable GPIO. Polarity is GPIO_ACTIVE_HIGH. This corresponds
> > >    to the hardware pin PWDNB which is physically active low.
> > >  - reset-gpios: Chip reset GPIO. Polarity is GPIO_ACTIVE_LOW. This corresponds to
> > > @@ -37,7 +37,8 @@ Example:
> > >
> > >                     clocks = <&clks 200>;
> > >                     clock-names = "xclk";
> > > -                   clock-frequency = <24000000>;
> > > +                   assigned-clocks = <&clks 200>;
> > > +                   assigned-clock-rates = <24000000>;
> > >
> > >                     vdddo-supply = <&camera_dovdd_1v8>;
> > >                     vdda-supply = <&camera_avdd_2v8>;
> >
> > clock-frequency is quite different from assigned-clock-rates though,
> > semantically speaking. clock-frequency is only about what the clock
> > frequency is, while assigned-clock-rates will change the rate as well,
> > and you have no idea how long it will last.
>
> The driver currently reads the clock-frequency property and then calls
> clk_set_rate(). I agree tht assigned-clock-rates isn't a panacea, but I
> think it's less of a hack than what we currently have.
>
> As discussed on IRC, maybe the best option in this specific case is to
> drop clock-frequency and assigned-clok-rates, and call clk_set_rate()
> with a hardcoded frequency of 24MHz in the driver, as that's the only
> frequency the driver supports.
>
Does this mean any driver which has a fixed clock requirement shouldn't be a
DT property and should be just handled by the drivers internally ?

Cheers,
--Prabhakar

> > If you want to retrieve that through the clock framework, then just
> > making clock-frequency optional is enough and falling back to
> > clk_get_rate on the clocks property already provided is enough.
>
> --
> Regards,
>
> Laurent Pinchart
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
