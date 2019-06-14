Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD28E45988
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 11:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BrH7kaTvQQtUQSSh5AXtvl+n6QqOw9P3empmtzqa1k=; b=Ra6J918dMawikP
	ypxRhA+vwJO4PpznTmzR2zTvECa2JVU+PI2y1hMzGifKr8K/+3sR+qGmz7rHMwWghMKc211KQLZPw
	O4N66dUMmkE4l32tSvGUi9uELElBV7WnUEztVxqHn40YnvKD030dsFEjolmLtJ8+NP3rdU+28VfMI
	/1nVQY1cCo7blOf8k8/aqig7a+MHO1uM1mPGlrGRoyN58z4pEPZtzKwbt/6b6vmdAD23fMPwXoU7C
	2DaFk6ObfNRpdJXwzVb2Z9PqE2JdGLC+s3pRsB2AUHGVFc/2WIxG1cbv05BCGJa89izeY+is6MW9B
	T6GpP+NoZQQAAyEWlp2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbiuk-0000mn-DC; Fri, 14 Jun 2019 09:54:30 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbiuU-0000lk-Lj
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 09:54:16 +0000
Received: by mail-ed1-f66.google.com with SMTP id z25so2639251edq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 02:54:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qHuGCrXRTUkFQGayB4c7fw1V8CKP+g27HnNUqp7luJE=;
 b=CyG+T7/J4xBZt2qupC+XsOGbSfzASD9OfEfLLQP4hXoTRByANYI1nEDzcIjb60CpzG
 RCYdtHkUwv+08nAb0+4tsuReBbdClPCFdfJJYA72hzhEEXgwYl9y2niCWSZU4Jn/uCY7
 uULGSbqe2LTNM3A3ELubL9PIl/S4u8dCFvlkqsLq/yPldb/wbwH1fSwCR1stEzW5SPoY
 sXkMudkEkTQGPB5SbiiMxnLOlOEwvrn+kx+xCqp/ms2yNx6YHHoKLaDJVIlJlOwd+pLA
 7SvASAPIzhZprWkCrWFTltd+7yCOakWDmyDO9Ooho4h4DE4udY0gphGYf6I651j/nqoL
 VvNw==
X-Gm-Message-State: APjAAAV6/xY37koMBFriUuU1woGbtrNCyztdUflRWIlJdphQAnqIEYBb
 c/4e6ShDdiPWKBy5wzYDRqNhHfsOB4U=
X-Google-Smtp-Source: APXvYqy9xIbAYJi8C5DXA2vxGDw5/8vpaXFCbEq8LB/Pm93x14f/Y2bsRfeiHSrxJisGNhNW1PZwcA==
X-Received: by 2002:a17:906:951:: with SMTP id
 j17mr55082639ejd.174.1560506052772; 
 Fri, 14 Jun 2019 02:54:12 -0700 (PDT)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com.
 [209.85.128.44])
 by smtp.gmail.com with ESMTPSA id w18sm481751eji.44.2019.06.14.02.54.11
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 02:54:12 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id s15so1655702wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 02:54:11 -0700 (PDT)
X-Received: by 2002:a1c:a186:: with SMTP id k128mr7440554wme.125.1560506051478; 
 Fri, 14 Jun 2019 02:54:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
 <20190613185241.22800-6-jagan@amarulasolutions.com>
 <CAGb2v654p=HZuXCTJkrbWbFP_kEkpRWHwj-7_Ck_=XbyMFmvFw@mail.gmail.com>
 <CAMty3ZD0atS2uWJmPB-n1wmy324JEpwt42=_wpKeF-8uxM-GbQ@mail.gmail.com>
In-Reply-To: <CAMty3ZD0atS2uWJmPB-n1wmy324JEpwt42=_wpKeF-8uxM-GbQ@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 14 Jun 2019 17:53:58 +0800
X-Gmail-Original-Message-ID: <CAGb2v66BOOydMRQprKAo87F2rpr+xgqWgpGt_cccoHf8+9AoNA@mail.gmail.com>
Message-ID: <CAGb2v66BOOydMRQprKAo87F2rpr+xgqWgpGt_cccoHf8+9AoNA@mail.gmail.com>
Subject: Re: [PATCH 5/9] ARM: dts: sun8i: r40: Add TCON TOP LCD clocking
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_025414_716442_CAACCDEA 
X-CRM114-Status: GOOD (  23.64  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 5:48 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> On Fri, Jun 14, 2019 at 9:16 AM Chen-Yu Tsai <wens@csie.org> wrote:
> >
> > On Fri, Jun 14, 2019 at 2:54 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
> > >
> > > According to Fig 7-2. TCON Top Block Diagram in User manual.
> > >
> > > TCON TOP can have an hierarchy for TCON_LCD0, LCD1 like
> > > TCON_TV0, TV1 so, the tcon top would handle the clocks of
> > > TCON_LCD0, LCD1 similar like TV0, TV1.
> >
> > That is not guaranteed. The diagram shows the pixel data path,
> > not necessarily the clocks. In addition, the LCD TCONs have an
> > internal clock gate for the dot-clock output, which the TV variants
> > do not. That might explain the need for the gates in TCON TOP.
>
> Correct, the actual idea about explanation here is to mention the
> clocks definition in tcon top level and internal tv and lcd can handle
> as you explained.
>
> >
> > > But, the current tcon_top node is using dsi clock name with
> > > CLK_DSI_DPHY which is ideally handle via dphy which indeed
> > > a separate interface block.
> > >
> > > So, use tcon-lcd0 instead of dsi which would refer the
> > > CLK_TCON_LCD0 similar like CLK_TCON_TV0 with tcon-tv0.
> > >
> > > This way we can refer CLK_TCON_LCD0 from tcon_top clock in
> > > tcon_lcd0 node and the actual DSI_DPHY clock node would
> > > refer in dphy node.
> >
> > That doesn't make sense. What about TCON_LCD1?
> >
> > The CCU already has CLK_TCON_LCD0 and CLK_TCON_LCD1. What makes
> > you think that the TCONs don't use them directly?
> >
> > Or maybe they do go through TCON_TOP, but there's no gate,
> > so we don't know about it.
> >
> > You need to rethink this. What are you trying to deal with?
>
> Yes, I understand what your asking for and indeed this is where I get
> confused and tried this way initially and attach the dsi reference in
> dphy something like
>
> tcon_lcd0 {
>                 clocks = <&ccu CLK_BUS_TCON_LCD0>, <&ccu CLK_TCON_LCD0>;
>                 clock-names = "ahb", "tcon-ch0";
> };
>
> dphy {
>                clocks = <&ccu CLK_BUS_MIPI_DSI>,
>                               <&tcon_top CLK_TCON_TOP_DSI>;
>                clock-names = "bus", "mod";
> };
>
> This would ended-up, phy wont getting the mod clock keep probing for
> -EPROBE-DEFER since tcon top driver might not be loaded at the time
> mipi driver. This way we have tv0, tv1 and dsi gates supported as
> existed. Does it make sense?

Looks like that happens because the clocks are only registered at
the component bind phase, rather than the probe phase. And to bind
all the components, the DSI controller wants the DPHY available,
which isn't because it's still waiting for the clock.

So you could try moving the bits that register the clocks in the
TCON TOP driver to the probe function, and see if that solves
the circular dependency issue.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
