Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E58862D27
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 02:50:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8tKI+DZg7OwCkhqsCcMWvRjZNJe9w/sxRPnQlStoYSA=; b=cfTlniDmd7Od4L
	Un1RS3xkLlQuw4ZyNkNZl0O/3SpVocJu/kV8iLB8pe20VrE2RJ/dDevd1wr9uNnJXXnNxBL3G6Y2m
	0/MmA8h46u+cyCVUTgA9ErR6nYj8VhwxMt3fxCPWdvBYq/G56a1wO39/FHjPmFW96VRSUcddLEiOs
	uxtptz8IRQYtiyDzmPIpf6HnZ740NZsaQzaVh9x0l/fizWoJK/XR0i2yb+pwFApU5HU0wswIDzWSD
	VagSUU6BLA1W1IZfGZnfwtK3gKFooed3TZeHPkeCuFzxmhHeQOKvxDwTT1/A4Eb5HgUhwdCePBUlK
	S8WoeSV0yMXIKVBMi0WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkeKJ-0006Yo-2f; Tue, 09 Jul 2019 00:49:47 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkeK3-0006YK-WC
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 00:49:33 +0000
Received: by mail-oi1-x244.google.com with SMTP id 65so14050468oid.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 17:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mZfF3qmGUmaIXGQVLjO4ElcPFOkI/q/c+xioJlIBg2U=;
 b=A+6tMfOydkWZAq3FLs4JYZTw3Q+rRUwRJpGF79VNLOKlzkmnFjXBBoVFCPB6WH032H
 heRFES7RMAV1lT9/7vozKekg8HAZa7l54YEJ+ZJvC6W6P2DKHqFGmZ/zYZBf99ICvwaY
 6WK+H/4RwupNppMbKV5C81EiPhx08soNSJCaWtntbLw7fXD9/hCk929ra2K1C7XAoME0
 Z8aWaXfodpDgxVje7iFZrELXqv/9UCQpZt3t5HaDSVfbslLjbJ9j1yT2gI+cn0cjNAZE
 lLyUEpU6GREM2LLCUFPqQAHbDl2HpMKDqnru4XN80ye/ljTCNYMwEb/7SmrGmEPZg9Qf
 4pWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mZfF3qmGUmaIXGQVLjO4ElcPFOkI/q/c+xioJlIBg2U=;
 b=l6BlWCo23uiiOzH9BIbuLc26HLpeYfVQ3mdISMh/gTK+FLdazmSIywnSy4Q81KQBO2
 LnSFwqctRM5REmiB46yY0CgahXKqwwkDPKUKFpBT9BqemOxGvYqRbotqxns8XXEkrRw4
 xa9A8ye0vF6bL+lJ9vi9smq5/vqGFhSqiuqbfCTd6OaIz3an/LRrMkbGSN3NIzxPJe3M
 4rjNqZCBWvtBUfo9EYayHRswclbXx6h3YaUEJMneYHDRTWcYCbLdgOXhPIggtbKTpi5U
 TU7OJ1PWkimU2voNT2STV2OATvtlNBJ7GeDdwKrm3alCXwH2nbNCzKXDkvMvQ1SM1Hd3
 l4KA==
X-Gm-Message-State: APjAAAUfOBH0eP384P55O15FNbAD/fXT1kTx0Z7YJTebnWTHkV/XEXoo
 BaG36h9tQbbW1rxN5Nq0OHv9QdaY6NI+dd16ik4=
X-Google-Smtp-Source: APXvYqwn/NmbXG3TvpJ/5pRB/ldFPNOG9MC5TDpP7mMGAObq2oBz7QvF8Qh6xGlGhVhQcK1KBKGA38nN+dBvrIRtU7Y=
X-Received: by 2002:aca:f552:: with SMTP id t79mr10221713oih.145.1562633370288; 
 Mon, 08 Jul 2019 17:49:30 -0700 (PDT)
MIME-Version: 1.0
References: <CA+E=qVckHLqRngsfK=AcvstrD0ymEfRkYyhS_kBtZ3YWdE3L=g@mail.gmail.com>
 <20190605101317.GA9345@lst.de> <20190605120237.ekmytfxcwbjaqy3x@flea>
 <E1hYsvP-0000PY-Pz@stardust.g4.wien.funkfeuer.at>
 <20190607062802.m5wslx3imiqooq5a@flea>
 <CGME20190607094103epcas1p4babbb11ec050974a62f2af79bc64d752@epcas1p4.samsung.com>
 <20190607094030.GA12373@lst.de>
 <66707fcc-b48e-02d3-5ed7-6b7e77d53266@samsung.com>
 <20190612152022.c3cfhp4cauhzhfyr@flea>
 <bb2c2c00-b46e-1984-088f-861ac8952331@samsung.com>
 <20190701095842.fvganvycce2cy7jn@flea>
In-Reply-To: <20190701095842.fvganvycce2cy7jn@flea>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Mon, 8 Jul 2019 17:49:21 -0700
Message-ID: <CA+E=qVdsYV2Bxk245=Myq=otd7-7WHzUnSJN8_1dciAzvSOG8g@mail.gmail.com>
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: a64: enable ANX6345 bridge
 on Teres-I
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_174932_063117_5386BCC2 
X-CRM114-Status: GOOD (  29.75  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Mon, Jul 1, 2019 at 2:58 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Hi!
>
> On Fri, Jun 28, 2019 at 12:39:32PM +0200, Andrzej Hajda wrote:
> > On 12.06.2019 17:20, Maxime Ripard wrote:
> > >> I am not sure if I understand whole discussion here, but I also do not
> > >> understand whole edp-connector thing.
> > > The context is this one:
> > > https://patchwork.freedesktop.org/patch/257352/?series=51182&rev=1
> > > https://patchwork.freedesktop.org/patch/283012/?series=56163&rev=1
> > > https://patchwork.freedesktop.org/patch/286468/?series=56776&rev=2
> > >
> > > TL;DR: This bridge is being used on ARM laptops that can come with
> > > different eDP panels. Some of these panels require a regulator to be
> > > enabled for the panel to work, and this is obviously something that
> > > should be in the DT.
> > >
> > > However, we can't really describe the panel itself, since the vendor
> > > uses several of them and just relies on the eDP bus to do its job at
> > > retrieving the EDIDs. A generic panel isn't really working either
> > > since that would mean having a generic behaviour for all the panels
> > > connected to that bus, which isn't there either.
> > >
> > > The connector allows to expose this nicely.
> >
> > As VESA presentation says[1] eDP is based on DP but is much more
> > flexible, it is up to integrator (!!!) how the connection, power
> > up/down, initialization sequence should be performed. Trying to cover
> > every such case in edp-connector seems to me similar to panel-simple
> > attempt failure. Moreover there is no such thing as physical standard
> > eDP connector. Till now I though DT connector should describe physical
> > connector on the device, now I am lost, are there some DT bindings
> > guidelines about definition of a connector?
>
> This might be semantics but I guess we're in some kind of grey area?
>
> Like, for eDP, if it's soldered I guess we could say that there's no
> connector. But what happens if for some other board, that signal is
> routed through a ribbon?
>
> You could argue that there's no physical connector in both cases, or
> that there's one in both, or one for the ribbon and no connector for
> the one soldered in.
>
> > Maybe instead of edp-connector one would introduce integrator's specific
> > connector, for example with compatible "olimex,teres-edp-connector"
> > which should follow edp abstract connector rules? This will be at least
> > consistent with below presentation[1] - eDP requirements depends on
> > integrator. Then if olimex has standard way of dealing with panels
> > present in olimex/teres platforms the driver would then create
> > drm_panel/drm_connector/drm_bridge(?) according to these rules, I guess.
> > Anyway it still looks fishy for me :), maybe because I am not
> > familiarized with details of these platforms.
>
> That makes sense yes

Actually, it makes no sense at all. Current implementation for anx6345
driver works fine as is with any panel specified assuming panel delays
are long enough for connected panel. It just doesn't use panel timings
from the driver. Creating a platform driver for connector itself looks
redundant since it can't be reused, it doesn't describe actual
hardware and it's just defeats purpose of DT by introducing
board-specific code.

There's another issue: if we introduce edp-connector we'll have to
specify power up delays somewhere (in dts? or in platform driver?), so
edp-connector doesn't really solve the issue of multiple panels with
same motherboard.

I'd say DT overlays should be preferred solution here, not another
connector binding.

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
