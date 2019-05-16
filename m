Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC45620D60
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 18:49:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b86vQbPk7SrC1ywd9N+3xbUR03P4e2sYo7j2He2F4wA=; b=eRZtem/XhdwDT0
	gFcymw+gvd0YTiTe1U9Mwrsv2Ms3rCQdA2fCuDp7vtP5ZpGAcoUWX54R3jP+VY6aph1UTBNpJZRwu
	kNNFYFtBessHkXgJWcTh9o0Bad/QcKeYCnrrIopJnpTaQwsTTM7vvqlV51pOqySu0JumrbC8loZAa
	bL/6zgYzfgyPbUV7NGcc5DDjH80jATiT5uGYuiSNqlVk6ZiMohLUeV9npuEPUgJDpnuHoj4Gk5gh0
	WdcNfIxxL6pfXN9dQiFhZ+wweC0bm435YqkY5uwuaWW8GMjdut4iIsYOS7F5zkW9iOWMKDD/ay2LZ
	aFOsGo/8TJU91WZbrgeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJZU-00036a-LT; Thu, 16 May 2019 16:49:32 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJZK-00030q-Dd
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 16:49:23 +0000
Received: by newverein.lst.de (Postfix, from userid 2005)
 id 17CF168B02; Thu, 16 May 2019 18:49:00 +0200 (CEST)
Date: Thu, 16 May 2019 18:48:59 +0200
From: Torsten Duwe <duwe@lst.de>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH 4/4] arm64: DTS: allwinner: a64: enable ANX6345 bridge
 on Teres-I
Message-ID: <20190516164859.GB10431@lst.de>
References: <20190514155911.6C0AC68B05@newverein.lst.de>
 <20190514160241.9EAC768C7B@newverein.lst.de>
 <CA+E=qVfuKBzWK7dpM_eabjU8mLdzOw3zCnYk6Tc1oXdavH7CNA@mail.gmail.com>
 <20190515093141.41016b11@blackhole.lan>
 <CA+E=qVf6K_0T0x2Hsfp6EDqM-ok6xiAzeZPvp6SRg0yt010pKA@mail.gmail.com>
 <20190516154820.GA10431@lst.de>
 <CA+E=qVe5NkAvHXPvVc7iTbZn5sKeoRm0166zPW_s83c2gk7B+g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+E=qVe5NkAvHXPvVc7iTbZn5sKeoRm0166zPW_s83c2gk7B+g@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_094922_644341_492AB6BD 
X-CRM114-Status: GOOD (  10.00  )
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

On Thu, May 16, 2019 at 09:06:41AM -0700, Vasily Khoruzhick wrote:
> 
> Driver can talk to the panel over AUX channel only after t1+t3, t1 is
> up to 10ms, t3 is up to 200ms.

This is after power-on. The boot loader needs to deal with this.

> It works with older version of driver
> that keeps panel always on because it takes a while between driver
> probe and pipeline start.

No lid switch, no USB, no WiFi, no MMC. If you disable DCDC1 you'll
run out of wakeup-sources ;-) IOW: I see no practical way any OS
driver can switch this panel voltage off and survive...

> All in all - you don't need panel timings since there's EDID but you
> still need panel delays. Anyway, it's up to you and maintainers.

Let's give it a try.

	Torsten


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
