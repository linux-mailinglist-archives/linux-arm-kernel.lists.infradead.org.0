Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0A9CA1BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 18:00:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OzcrZiOmidPmYAtJFZcnOF5Rrt3AA5rXcuk1KNAG1fA=; b=i6NJwcInJrXNIw
	8FMNPH96ZNbR5LcW90VVmnVy5l5Gkfh1T6F//5WRBqxagmFoUOdMoMNcizL7MTu4Fyg+mHS7t0MNR
	S9P1o0UuuDDZNED1aWBQgaaLL+NAFU2tI3dV1Q3akoqct7yJlITsYFe+p4h1f1LZwh7jar3xXDBgQ
	crAuLikD77Qc4iXIutD6PvFW9cncxlEcnmHEWfJjux5iHDLx4rj2C/I0DMwwBJHoxhM/DlQmPRezG
	yWUECpKvmWokQK8nxSghVrColIaJsq5IExjZs/+hoKVBvqsyoxVelbu0VRR7abJZ7ePejZtgtCryp
	hZcrX9bTC4rwSftKa8OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG3WB-0006kM-7F; Thu, 03 Oct 2019 15:59:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG3W2-0006jT-QQ
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 15:59:44 +0000
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F3BB7222D1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  3 Oct 2019 15:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570118382;
 bh=UYI+i4ZdBUJfq10YbStvW3i66fBJsqe8ARvR8bHxCbY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=RqbyF7VSy9NGgBFB+HIevDvHLWm+7aEURok3DWHfiN9exDTZhQ0pl2MxYRrX080ic
 NvimPrOdtKf3nbQIlfd+/crmMgf4KzFT7yuBdmLEm+N4KARx9ff/JsYlUcKUJn+11m
 v/Eryv8Mp0Q/GqOr9XmwF5yWFxqs8FHEcY16wT1Q=
Received: by mail-qt1-f178.google.com with SMTP id 3so4342662qta.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 08:59:41 -0700 (PDT)
X-Gm-Message-State: APjAAAV8davyP8DbuGTFZpAyFR/6wWm3nQ//2VhyGaIdy/7mV5Gv3GXX
 dOgNfmsU/mRMIAprJOzTxuCdMl/Zl2XRUP63aw==
X-Google-Smtp-Source: APXvYqwcwdNJlOIpfQZz2dIR2x5UhCf43ZSWs3Ge+J8BHWO8rEIey1vwAN28tyHAn9j5UNMWeVMspf0z3kY4qPEkVYI=
X-Received: by 2002:ad4:458d:: with SMTP id x13mr9205417qvu.85.1570118380840; 
 Thu, 03 Oct 2019 08:59:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190920075411.15735-1-marcel@ziswiler.com>
 <20190920075411.15735-2-marcel@ziswiler.com>
 <20191001220539.GA16232@bogus>
 <e6fdfd7f46308dbc8fd33d4a2ff0b242ec39a84c.camel@toradex.com>
In-Reply-To: <e6fdfd7f46308dbc8fd33d4a2ff0b242ec39a84c.camel@toradex.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 3 Oct 2019 10:59:29 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKmCVP3Fc2sUY=FpM5-HLQ0-=uTf6PEwn0XzyC5BBHBOA@mail.gmail.com>
Message-ID: <CAL_JsqKmCVP3Fc2sUY=FpM5-HLQ0-=uTf6PEwn0XzyC5BBHBOA@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] drm/panel: simple: add display timings for logic
 technologies displays
To: Philippe Schenker <philippe.schenker@toradex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_085942_901513_C3B338CE 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "j.bauer@endrich.com" <j.bauer@endrich.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "info@logictechno.com" <info@logictechno.com>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "marcel@ziswiler.com" <marcel@ziswiler.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>, "sam@ravnborg.org" <sam@ravnborg.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 2, 2019 at 5:27 AM Philippe Schenker
<philippe.schenker@toradex.com> wrote:
>
> On Tue, 2019-10-01 at 17:05 -0500, Rob Herring wrote:
> > On Fri, Sep 20, 2019 at 09:54:11AM +0200, Marcel Ziswiler wrote:
> > > From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> > >
> > > Add display timings for the following 3 display panels manufactured
> > > by
> > > Logic Technologies Limited:
> > >
> > > - LT161010-2NHC e.g. as found in the Toradex Capacitive Touch
> > > Display
> > >   7" Parallel [1]
> > > - LT161010-2NHR e.g. as found in the Toradex Resistive Touch Display
> > > 7"
> > >   Parallel [2]
> > > - LT170410-2WHC e.g. as found in the Toradex Capacitive Touch
> > > Display
> > >   10.1" LVDS [3]
> > >
> > > Those panels may also be distributed by Endrich Bauelemente
> > > Vertriebs
> > > GmbH [4].
> > >
> > > [1]
> > > https://docs.toradex.com/104497-7-inch-parallel-capacitive-touch-display-800x480-datasheet.pdf
> > > [2]
> > > https://docs.toradex.com/104498-7-inch-parallel-resistive-touch-display-800x480.pdf
> > > [3]
> > > https://docs.toradex.com/105952-10-1-inch-lvds-capacitive-touch-display-1280x800-datasheet.pdf
> > > [4]
> > > https://www.endrich.com/isi50_isi30_tft-displays/lt170410-1whc_isi30
> > >
> > > Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> > >
> > > ---
> > >
> > >  drivers/gpu/drm/panel/panel-simple.c | 65
> > > ++++++++++++++++++++++++++++
> > >  1 file changed, 65 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/panel/panel-simple.c
> > > b/drivers/gpu/drm/panel/panel-simple.c
> > > index 28fa6ba7b767..42bd0de25167 100644
> > > --- a/drivers/gpu/drm/panel/panel-simple.c
> > > +++ b/drivers/gpu/drm/panel/panel-simple.c
> > > @@ -2034,6 +2034,62 @@ static const struct panel_desc lg_lp129qe = {
> > >     },
> > >  };
> > >
> > > +static const struct display_timing logictechno_lt161010_2nh_timing
> > > = {
> > > +   .pixelclock = { 26400000, 33300000, 46800000 },
> > > +   .hactive = { 800, 800, 800 },
> > > +   .hfront_porch = { 16, 210, 354 },
> > > +   .hback_porch = { 46, 46, 46 },
> > > +   .hsync_len = { 1, 20, 40 },
> > > +   .vactive = { 480, 480, 480 },
> > > +   .vfront_porch = { 7, 22, 147 },
> > > +   .vback_porch = { 23, 23, 23 },
> > > +   .vsync_len = { 1, 10, 20 },
> > > +   .flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW |
> > > +            DISPLAY_FLAGS_DE_HIGH | DISPLAY_FLAGS_PIXDATA_POSEDGE |
> > > +            DISPLAY_FLAGS_SYNC_POSEDGE,
> > > +};
> > > +
> > > +static const struct panel_desc logictechno_lt161010_2nh = {
> > > +   .timings = &logictechno_lt161010_2nh_timing,
> > > +   .num_timings = 1,
> > > +   .size = {
> > > +           .width = 154,
> > > +           .height = 86,
> > > +   },
> > > +   .bus_format = MEDIA_BUS_FMT_RGB666_1X18,
> > > +   .bus_flags = DRM_BUS_FLAG_DE_HIGH |
> > > +                DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE |
> > > +                DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE,
> > > +};
> > > +
> > > +static const struct display_timing logictechno_lt170410_2whc_timing
> > > = {
> > > +   .pixelclock = { 68900000, 71100000, 7340000 },
> > > +   .hactive = { 1280, 1280, 1280 },
> > > +   .hfront_porch = { 23, 60, 71 },
> > > +   .hback_porch = { 23, 60, 71 },
> > > +   .hsync_len = { 15, 40, 47 },
> > > +   .vactive = { 800, 800, 800 },
> > > +   .vfront_porch = { 5, 7, 10 },
> > > +   .vback_porch = { 5, 7, 10 },
> > > +   .vsync_len = { 6, 9, 12 },
> > > +   .flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW |
> > > +            DISPLAY_FLAGS_DE_HIGH | DISPLAY_FLAGS_PIXDATA_POSEDGE |
> > > +            DISPLAY_FLAGS_SYNC_POSEDGE,
> > > +};
> > > +
> > > +static const struct panel_desc logictechno_lt170410_2whc = {
> > > +   .timings = &logictechno_lt170410_2whc_timing,
> > > +   .num_timings = 1,
> > > +   .size = {
> > > +           .width = 217,
> > > +           .height = 136,
> > > +   },
> > > +   .bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
> > > +   .bus_flags = DRM_BUS_FLAG_DE_HIGH |
> > > +                DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE |
> > > +                DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE,
> > > +};
> > > +
> > >  static const struct drm_display_mode mitsubishi_aa070mc01_mode = {
> > >     .clock = 30400,
> > >     .hdisplay = 800,
> > > @@ -3264,6 +3320,15 @@ static const struct of_device_id
> > > platform_of_match[] = {
> > >     }, {
> > >             .compatible = "lg,lp129qe",
> > >             .data = &lg_lp129qe,
> > > +   }, {
> > > +           .compatible = "logictechno,lt161010-2nhc",
> > > +           .data = &logictechno_lt161010_2nh,
> > > +   }, {
> > > +           .compatible = "logictechno,lt161010-2nhr",
> > > +           .data = &logictechno_lt161010_2nh,
> > > +   }, {
> > > +           .compatible = "logictechno,lt170410-2whc",
> > > +           .data = &logictechno_lt170410_2whc,
> >
> > The vendor prefix wasn't documented, but the compatible string and
> > rest
> > already are?
>
> Marcel added the vendor prefix in the first patch of the series [1]

Right, but where's the panel's binding documentation with the above
compatible strings documented?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
