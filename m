Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 515F721526
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 10:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y1kmJMJT5pe/3V68E7ABcAucPvsEVwzoAut8U5gfAgs=; b=CKi5hzO8j7zLO+
	1RcJwOqo+LHMclFOD6aVWBjn/fD0fUQPyJfbthqxrqgbTGSfULCKGHW0ULzLGVJBAVHDFBH2YHVqH
	PNSs9UyNUHNTOlHsh6eyJb8jTGkFIWjZRCRXQ75wCfeNTEB5flXj0t8MwUUd8atQZzujD3yLABZmf
	3Q5bFeuulnGxFoccxHaplcH9Nuqpu6dkmW8q2UoHex7ENnzXsZKcJcNeGm4uTKlWs6nFxNI7VgFA5
	0PQ6z3oazEEzxXQArjY4MPo8UWhNRxULfoZJtKfxYCEQAzEaE6ktchhY2R7CwjuAwecuaBfHES7VR
	mtrQByGNvxkU/4L3bO/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRY1P-0005cw-Ou; Fri, 17 May 2019 08:15:19 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRY1H-0005cP-Tr
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 08:15:13 +0000
Received: by newverein.lst.de (Postfix, from userid 107)
 id 97CF968B20; Fri, 17 May 2019 10:14:49 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on verein.lst.de
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=ALL_TRUSTED,BAYES_50
 autolearn=disabled version=3.3.1
Received: from blackhole.lan (p5B33F92B.dip0.t-ipconnect.de [91.51.249.43])
 by newverein.lst.de (Postfix) with ESMTPSA id DBFF067329;
 Fri, 17 May 2019 10:14:19 +0200 (CEST)
Date: Fri, 17 May 2019 10:14:18 +0200
From: Torsten Duwe <duwe@lst.de>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 4/4] arm64: DTS: allwinner: a64: enable ANX6345 bridge
 on Teres-I
Message-ID: <20190517101353.3e86d696@blackhole.lan>
In-Reply-To: <20190517072738.deohh5fly4jxms7k@flea>
References: <20190514155911.6C0AC68B05@newverein.lst.de>
 <20190514160241.9EAC768C7B@newverein.lst.de>
 <CA+E=qVfuKBzWK7dpM_eabjU8mLdzOw3zCnYk6Tc1oXdavH7CNA@mail.gmail.com>
 <20190515093141.41016b11@blackhole.lan>
 <CA+E=qVf6K_0T0x2Hsfp6EDqM-ok6xiAzeZPvp6SRg0yt010pKA@mail.gmail.com>
 <20190516154820.GA10431@lst.de>
 <CA+E=qVe5NkAvHXPvVc7iTbZn5sKeoRm0166zPW_s83c2gk7B+g@mail.gmail.com>
 <20190516164859.GB10431@lst.de>
 <20190517072738.deohh5fly4jxms7k@flea>
Organization: LST e.V.
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.32; x86_64-suse-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_011512_113543_43EB5F48 
X-CRM114-Status: GOOD (  17.42  )
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
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Chen-Yu Tsai <wens@csie.org>,
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

On Fri, 17 May 2019 09:27:38 +0200
Maxime Ripard <maxime.ripard@bootlin.com> wrote:

> On Thu, May 16, 2019 at 06:48:59PM +0200, Torsten Duwe wrote:
> > On Thu, May 16, 2019 at 09:06:41AM -0700, Vasily Khoruzhick wrote:
> > >
> > > Driver can talk to the panel over AUX channel only after t1+t3,
> > > t1 is up to 10ms, t3 is up to 200ms.
> >
> > This is after power-on. The boot loader needs to deal with this.
> 
> The bootloader can deal with it, but the kernel will also need to. The
> bootloader might not be doing this because it's not been updated, the
> regulator might have been disabled between the time the kernel was
> started and the time the bridge driver probes, etc.

No, you cannot practically switch off this voltage. It supports _all_
the devices I mentioned. In fact, the PMIC needs to enable it initially,
and then it takes some time before the SoC can access the MMC and read
the SPL from it, just because of exactly these 3.3V. Then the boot
loader starts, and later the eDP bridge gets initialised.

In *theory*, albeit a very daring one, I could imagine a very deep
sleep mode that can only be ended by pressing the power button, which
should still work without DCDC1. Only then, a description of the panel
would be required. But I probably missed something and even this does
not work.

So for all current practical purposes, we can assume the Teres-I panel
to be powered properly and providing valid EDID; nothing to worry about
in software.

HTH,
	Torsten

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
