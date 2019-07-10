Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D7564E9F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 00:12:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5/tuIjOzbhnWkKjV4wXtAiSw76IBQX7LxwCD/ASBZkc=; b=XCyMhdbf5KaUzo
	wKq5xxIRrmM8/pAzwQTotPYW/fXlEEatSziiaj2aEnqcCcFeaBVey2p6+729g2G2+RKf5mbPHM1q+
	0O60vVUgWL8BQGiaBrbAAiek5vThTRwIs9VlSySlbpKlOmPSd4kHtgh8zvI1VpdjNWEPMnqQO7e/x
	H+O2b5UYBzrl+sRD52jPfmcSHLcLnf3kx8fyeOGM9YqZfRbDXowllOvYK66XjUEKD59tVibcQoBCh
	OG9P27hRw0/AzeZRR3Oxk6jSP0uzTcz333lQMn+1AFkCgTQM86WDTXB4NxJrE+/P5xsPvCGbHct58
	N3AJ1l7KbOAGlBwIL+/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlKoy-0002NF-D4; Wed, 10 Jul 2019 22:12:16 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlKoG-0002MJ-69
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 22:11:33 +0000
Received: by mail-oi1-x241.google.com with SMTP id 65so2874849oid.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 15:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w0fNZ+VwPek5C+viI1snkH/my4gCM3GRy8SEqIEurFg=;
 b=FDMNkG9C/a/JXOKXykARV0Tgu5YnEa+mdKXbnNdqxZB8C8/0GpR1qgIShCPQ015R+/
 rXagG3fo+XoxkQSBmh7wQSI2U0ZELZ+DI5FuNydFTxqfmKxbfDBtHY5sm3CkM2mEyTwJ
 ECmHfCFgxnIx7XbU8ZlyeesZhkNpMf150ltwtgo3VqfYRAcZXDMry+c2Gj9GG9js9jHp
 4qk2fkGpojRs+P7zVMsrK/tu5Pi113FcVZUZV2HU/bFr+Dn+IHSQhcPa6uPnbGuBpCt8
 5AniWOjqbOCSJAC0N8+qxBtPkT97+cOImG7CW8xEVi/DKYKmK6sf0s6Zs3Iag/vsvDJL
 pmqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w0fNZ+VwPek5C+viI1snkH/my4gCM3GRy8SEqIEurFg=;
 b=g0S7ZuisKLzd5wRkFcvXcQMFtNDICnOcDoGGUVP9XqXxpRRSk+ANUpS3s2qUmx603k
 yCoZW00gMVOqs4ppaH29zkcAmf+qv5sTuNQueVjqtBz02mO6tz4n/GsRt+CMZYjxG9TH
 V7mo4dvkeDmDYwcj0Br6sBiJzU1NK7kGrUOJqM5RSWU9hmQH08B0mBc3Y31q8ATuICW5
 N9gXvOE+s7IhoUOIW764R+7bt7mhxRB9oGLFeKBq2BHCc6YaY9199pS87g2COxIBKLmt
 Uu/TaXq6gy/J3R8qLJpN6vFmHU0KUl9shQjCn1IGIlcmowzE3ynvhfNuBVIz1+gGnPIR
 iH8w==
X-Gm-Message-State: APjAAAUJGkEEqRcbo4Nnhv2ztJ7IHFflQgx8nOGCP6prKmonXO2XF8O/
 txLNPi+BVI53hizn/kNbhu2oUMBn9+/nRgi5kEg=
X-Google-Smtp-Source: APXvYqy5OXN836oo7SWmrQ7Vg9tlideKoCNYHP1ilr/cbrOyEfNDRMdydeIgqr0QsvHASXs5J1ioQHTHS5HXQQG1cGQ=
X-Received: by 2002:aca:f552:: with SMTP id t79mr353341oih.145.1562796690656; 
 Wed, 10 Jul 2019 15:11:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190607062802.m5wslx3imiqooq5a@flea>
 <CGME20190607094103epcas1p4babbb11ec050974a62f2af79bc64d752@epcas1p4.samsung.com>
 <20190607094030.GA12373@lst.de>
 <66707fcc-b48e-02d3-5ed7-6b7e77d53266@samsung.com>
 <20190612152022.c3cfhp4cauhzhfyr@flea>
 <bb2c2c00-b46e-1984-088f-861ac8952331@samsung.com>
 <20190701095842.fvganvycce2cy7jn@flea>
 <CA+E=qVdsYV2Bxk245=Myq=otd7-7WHzUnSJN8_1dciAzvSOG8g@mail.gmail.com>
 <20190709085532.cdqv7whuesrjs64c@flea>
 <CA+E=qVdz4vfU3rtTTKjYdM+4UA+=FWheJfWOMaDtFMnWQ1rHbw@mail.gmail.com>
 <20190710114042.ybgavnxb4hgqrtor@flea>
In-Reply-To: <20190710114042.ybgavnxb4hgqrtor@flea>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Wed, 10 Jul 2019 15:11:04 -0700
Message-ID: <CA+E=qVdFoT137pADfxz3uMwhOqjqrA9+6hBeOfbJxuH-M-3Pjw@mail.gmail.com>
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: a64: enable ANX6345 bridge
 on Teres-I
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_151132_258180_2113DA44 
X-CRM114-Status: GOOD (  37.60  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 devicetree <devicetree@vger.kernel.org>, Sean Paul <seanpaul@chromium.org>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Torsten Duwe <duwe@lst.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 4:40 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Tue, Jul 09, 2019 at 01:30:18PM -0700, Vasily Khoruzhick wrote:
> > On Tue, Jul 9, 2019 at 1:55 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Mon, Jul 08, 2019 at 05:49:21PM -0700, Vasily Khoruzhick wrote:
> > > > > > Maybe instead of edp-connector one would introduce integrator's specific
> > > > > > connector, for example with compatible "olimex,teres-edp-connector"
> > > > > > which should follow edp abstract connector rules? This will be at least
> > > > > > consistent with below presentation[1] - eDP requirements depends on
> > > > > > integrator. Then if olimex has standard way of dealing with panels
> > > > > > present in olimex/teres platforms the driver would then create
> > > > > > drm_panel/drm_connector/drm_bridge(?) according to these rules, I guess.
> > > > > > Anyway it still looks fishy for me :), maybe because I am not
> > > > > > familiarized with details of these platforms.
> > > > >
> > > > > That makes sense yes
> > > >
> > > > Actually, it makes no sense at all. Current implementation for anx6345
> > > > driver works fine as is with any panel specified assuming panel delays
> > > > are long enough for connected panel. It just doesn't use panel timings
> > > > from the driver. Creating a platform driver for connector itself looks
> > > > redundant since it can't be reused, it doesn't describe actual
> > > > hardware and it's just defeats purpose of DT by introducing
> > > > board-specific code.
> > >
> > > I'm not sure where you got the idea that the purpose of DT is to not
> > > have any board-specific code.
> >
> > I believe DT was an attempt to move to declarative approach for
> > describing hardware. Yes, we have different compatibles for different
> > devices but they're specific to particular device rather than
> > particular board. Device interconnection is described in DT along with
> > some properties rather than in board-specific C-file.
>
> You're right, but it's not incompatible with having some code to deal
> with some board quirk.
>
> > Introducing board-specific compatible for a connector isn't looking
> > right to me.
>
> If that board has a board-specific behaviour for it's connector, then
> what's the issue?
>
> You can't describe all the quirks in the all boards using purely
> properties.
>
> > > It's perfectly fine to have some, that's even why there's a compatible
> > > assigned to each and every board.
> > >
> > > What the DT is about is allowing us to have a generic behaviour that
> > > we can detect: we can have a given behaviour for a given board, and a
> > > separate one for another one, and this will be evaluated at runtime.
> > >
> > > This is *exactly* what this is about: we can have a compatible that
> > > sets a given, more specific, behaviour (olimex,teres-edp-connector)
> > > while saying that this is compatible with the generic behaviour
> > > (edp-connector). That way, any OS will know what quirk to apply if
> > > needed, and if not that it can use the generic behaviour.
> > >
> > > And we could create a generic driver, for the generic behaviour if
> > > needed.
> > >
> > > > There's another issue: if we introduce edp-connector we'll have to
> > > > specify power up delays somewhere (in dts? or in platform driver?), so
> > > > edp-connector doesn't really solve the issue of multiple panels with
> > > > same motherboard.
> > >
> > > And that's what that compatible is about :)
> >
> > Sorry, I fail to see how it would be different from using existing
> > panels infrastructure and different panels compatibles. I think Rob's
> > idea was to introduce generic edp-connector.
>
> Again, there's no such thing as a generic edp-connector. The spec
> doesn't define anything related to the power sequence for example.
>
> > If we can't make it generic then let's use panel infrastructure.
>
> Which uses a device specific compatible. Really, I'm not sure what
> your objection and / or argument is here.
>
> In addition, when that was brought up in the discussion, you rejected
> it because it was inconvenient:
> https://patchwork.freedesktop.org/patch/283012/?series=56163&rev=1#comment_535206

It is inconvenient, but I don't understand how having board-specific
connectors fixes it.



> And I agree with you on that one.
>
> > > > I'd say DT overlays should be preferred solution here, not another
> > > > connector binding.
> > >
> > > Overlays are a way to apply a device tree dynamically. It's orthogonal
> > > to the binding.
> >
> > It isn't orthogonal to original problem though.
>
> It is. The original problem is that you want to power up whatever is
> on the other side of a eDP link using an arbitrary regulator.
>
> This is a "how do I describe that in my DT" problem, and it really has
> nothing to do with how the DT is being passed to the kernel.
>
> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
