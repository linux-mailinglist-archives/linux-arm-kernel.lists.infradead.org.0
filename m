Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4615420B7D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 17:49:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+ox6NLlj1cvGwlb3SX0r6fyzedP4MG/7Vqd2Rrd9Oc=; b=oD8FVhYcigVGxt
	fFX3IT3y5UnK5EnMpynMtMPxni4VWK8hWOfGc9u/wH2V7o2O2iO9t6fXsTIMQori9hZB0rrhBh7tL
	EkO2xnIV5GeoNhsqi8KPTI6sE14/SnC/36Fur5HjAjVSfF2dM17NCIKMjpcwbVNju6PsCm1P+2PDW
	zKKIgSAhNeiH9lv7zdCv4DZI9sDPuidTQAUUMFgLlm93ilKmXuHlNS/BRHZR/u0NX+n9355H4yrSO
	B5F6HWpdaW3iiAIeLjUFB3jgonfr+J5j8QGhTLSchYavusT7jjVT+jOHEW8fhXNkRgQOEBqvc8FDa
	2gZam/R9dqHcIKDH7u7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRIcm-0002VS-9Y; Thu, 16 May 2019 15:48:52 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRIcf-0002UI-5B
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 15:48:46 +0000
Received: by newverein.lst.de (Postfix, from userid 2005)
 id BC11268B02; Thu, 16 May 2019 17:48:20 +0200 (CEST)
Date: Thu, 16 May 2019 17:48:20 +0200
From: Torsten Duwe <duwe@lst.de>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH 4/4] arm64: DTS: allwinner: a64: enable ANX6345 bridge
 on Teres-I
Message-ID: <20190516154820.GA10431@lst.de>
References: <20190514155911.6C0AC68B05@newverein.lst.de>
 <20190514160241.9EAC768C7B@newverein.lst.de>
 <CA+E=qVfuKBzWK7dpM_eabjU8mLdzOw3zCnYk6Tc1oXdavH7CNA@mail.gmail.com>
 <20190515093141.41016b11@blackhole.lan>
 <CA+E=qVf6K_0T0x2Hsfp6EDqM-ok6xiAzeZPvp6SRg0yt010pKA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+E=qVf6K_0T0x2Hsfp6EDqM-ok6xiAzeZPvp6SRg0yt010pKA@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_084845_351659_489D63B9 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 devicetree <devicetree@vger.kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 08:08:57AM -0700, Vasily Khoruzhick wrote:
> On Wed, May 15, 2019 at 12:32 AM Torsten Duwe <duwe@lst.de> wrote:
> >
> > It does comply with the bindings. The ports are all optional.
> > As far as DT is concerned, the signal path ends here. This is also the
> > final component _required_ to get the Linux kernel DRI up and running.
> 
> Ugh, then bindings should be fixed. It's not optional. It may work if
> bootloader enables power for you, but it won't if you disable display
> driver in u-boot.

I double-checked. On the Teres-I, mentioning the panel _is_ optional.
PD23 powers down panel and backlight as much as possible, see
24bd5d2cb93bc arm64: dts: allwinner: a64: teres-i: enable backlight
(currently only in Maxime's repo) and the Teres-I schematics...

And the driver in your repo neatly guards all accesses with
"if (anx6345->panel)" -- good!
But I found the Vdds are required, so I added them as such.

> I guess you're testing it with older version of anx6345. Newer version
> that supports power management [1] needs startup delay for panel.
> Another issue that you're seeing is that backlight is not disabled on
> DPMS events. All in all, you need to describe panel in dts.
> 
> [1] https://github.com/anarsoul/linux-2.6/commit/2fbf9c242419c8bda698e8331a02d4312143ae2c

> > Should I also have added a Tested-by: ? ;-)
> 
> I don't have Teres, so I haven't tested these.

*I* have one, and this works. I'll retest with your newer driver,
just in case. Nonetheless, the changes in this series should be fine.
Sending out v2 in a moment...

	Torsten


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
