Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A25AB14E94
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 17:04:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6DL8m321deHrGPAgBo0mVdHWoFTjWLT+b3zJeZbpZUk=; b=rJUGQjZdccH+2X
	7KGgDR5OnwejmeUkMomfF/AMjsl2Gauz+s0WuXJDs+FGgp8tpIRRKc5sSKOgutRrUqpSzAoE8WVnm
	BEciWAbNihonABc+MsbkPWFiijTzFPvzBWa/TT3QzS8EqCHlNcNoPLItdbqDs80A3D7dWPYuPN3nJ
	Ya+ZNr/doB8/iFwJPMYUw6Ynqb5K3nFnhD16zIKJzxA6NT30DSO4uIjWdz0YJy0vKxpMbsOavwzKK
	xKk02FF5MyC0WMylSyveyVQT093uv56qapiA20GcWLEgoSSeFy2S4tlRL1uDjJOpX0N2Vt4JBTUpq
	k7rqtKU4QAi47TY3zN7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNfAW-000634-A5; Mon, 06 May 2019 15:04:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNfAG-0005uW-7h; Mon, 06 May 2019 15:04:32 +0000
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
 [209.85.160.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 408C02173B;
 Mon,  6 May 2019 15:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557155063;
 bh=GTU8OTjGtl5LOFT7cRg59KsW701NKsE0VzSWQUozfUE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Cvs5PHrbtmKdII0xM3nLCehc/8f272vJsChhVCWWGXtXnPy7j1H/KGXvY2kmKL2BW
 ztsO2Cyzhz3QDyMR2bZxoONjXQdNpFbU42iJMQvfAsfgu9+xrUYnRYmd6+1vxUO5xT
 aEepz0ihsx+ItjP/ZKs1EzwY1OQWrEXvEeWPn5E8=
Received: by mail-qt1-f174.google.com with SMTP id y42so15047189qtk.6;
 Mon, 06 May 2019 08:04:23 -0700 (PDT)
X-Gm-Message-State: APjAAAUgzvqmWYJmvPEicJ8eRiZf4CBkXmh/V9he4alQ/1KSf04Vc/ax
 VmFripgvd1j3tZuA/PiKzPkAZaHMB1yXqGqBkg==
X-Google-Smtp-Source: APXvYqwTGaTwpQhCxUNSWGGAJ6lrotLyqlbDqtumhudX19OwLFLZtjwpqmue9eoggzwpO7k4YQzf0M3Agg9uhmRbdSE=
X-Received: by 2002:ac8:610f:: with SMTP id a15mr21088874qtm.257.1557155062365; 
 Mon, 06 May 2019 08:04:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190501121448.3812-1-jagan@amarulasolutions.com>
 <20190501193429.GA9075@ravnborg.org>
 <CAMty3ZAfwVyvmAmenhrQHJcy3eq-Yb61a4WLop_8jS-7vM940A@mail.gmail.com>
In-Reply-To: <CAMty3ZAfwVyvmAmenhrQHJcy3eq-Yb61a4WLop_8jS-7vM940A@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 6 May 2019 10:04:10 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+mYy1JF_cM7sD82aLuUSnZnwsSD6-Q-W1uTp+_oSdRmg@mail.gmail.com>
Message-ID: <CAL_Jsq+mYy1JF_cM7sD82aLuUSnZnwsSD6-Q-W1uTp+_oSdRmg@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm/panel: simple: Add FriendlyELEC HD702E 800x1280
 LCD panel
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_080424_620625_60999CBB 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 devicetree <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 6, 2019 at 4:56 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> Hi Sam,
>
> On Thu, May 2, 2019 at 1:04 AM Sam Ravnborg <sam@ravnborg.org> wrote:
> >
> > Hi Jagan
> >
> > On Wed, May 01, 2019 at 05:44:47PM +0530, Jagan Teki wrote:
> > > HD702E lcd is FriendlyELEC developed eDP LCD panel with 800x1280
> > > resolution. It has built in Goodix, GT9271 captive touchscreen
> > > with backlight adjustable via PWM.
> > >
> > > Add support for it.
> > >
> > > Cc: Thierry Reding <thierry.reding@gmail.com>
> > > Cc: Sam Ravnborg <sam@ravnborg.org>
> > > Cc: David Airlie <airlied@linux.ie>
> > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > Cc: dri-devel@lists.freedesktop.org
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> >
> > Please submit the binding in a separate patch as per
> > Documentation/devicetree/bindings/submitting-patches.txt
>
> Hmm.. prepared like this initially but few of my patches were combined
> earlier even-though I sent it separately. anyway let me separate it
> again.

For what subsystem? All the maintainers that I was aware of doing that
have stopped.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
