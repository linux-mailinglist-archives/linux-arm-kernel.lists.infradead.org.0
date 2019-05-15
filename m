Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 214041E905
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 09:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2MOVW59sliNBQ0r6ebTmL8xPKyjUKSIwtmffxJ3P7rI=; b=eSGuLRWp1nXxFq
	zYAvRvLXaMNMh0rf6whClwqbDG6c95dZ4Gln0NieoHm8eoEokoaIdIYk6yYRd6LD46ey1BmXFmuad
	YJU6jXAWQKTSvCXRLYnjDoEuLJO3NNHu0jhTpZywvG79HVbGmMYbmST8Gy729rmHixWlCZbiHTLaY
	0IIUD5plbu/93WGeEkXHkMy8D9J1QTZuidKc0rAL1tyDSggkiBt6mBLfp6ecCBJPR8oUgy7XmZope
	QNblau7zsZj8ayHHOiiSpWYKTA3u+CpQTz5ld189n0Hy7WAPitIHLXAzE+n20IjuC/4iE7s2xp/OQ
	FdUNxEKfYv7iR3RFRIDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQoOu-0006Dn-BA; Wed, 15 May 2019 07:32:32 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQoOl-0006DO-Ma
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 07:32:25 +0000
Received: by newverein.lst.de (Postfix, from userid 107)
 id E8B5768C7B; Wed, 15 May 2019 09:32:01 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on verein.lst.de
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=ALL_TRUSTED,BAYES_50
 autolearn=disabled version=3.3.1
Received: from blackhole.lan (p5B33F92B.dip0.t-ipconnect.de [91.51.249.43])
 by newverein.lst.de (Postfix) with ESMTPSA id A72FF68AFE;
 Wed, 15 May 2019 09:31:33 +0200 (CEST)
Date: Wed, 15 May 2019 09:31:41 +0200
From: Torsten Duwe <duwe@lst.de>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH 4/4] arm64: DTS: allwinner: a64: enable ANX6345 bridge
 on Teres-I
Message-ID: <20190515093141.41016b11@blackhole.lan>
In-Reply-To: <CA+E=qVfuKBzWK7dpM_eabjU8mLdzOw3zCnYk6Tc1oXdavH7CNA@mail.gmail.com>
References: <20190514155911.6C0AC68B05@newverein.lst.de>
 <20190514160241.9EAC768C7B@newverein.lst.de>
 <CA+E=qVfuKBzWK7dpM_eabjU8mLdzOw3zCnYk6Tc1oXdavH7CNA@mail.gmail.com>
Organization: LST e.V.
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.32; x86_64-suse-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_003223_889838_31EA0330 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
 devicetree <devicetree@vger.kernel.org>,
 Archit Taneja <architt@codeaurora.org>, Andrzej Hajda <a.hajda@samsung.com>,
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

On Tue, 14 May 2019 10:48:40 -0700
Vasily Khoruzhick <anarsoul@gmail.com> wrote:

> > +       anx6345: anx6345@38 {
> > +               compatible = "analogix,anx6345";
> > +               reg = <0x38>;
> > +               reset-gpios = <&pio 3 24 GPIO_ACTIVE_LOW>; /* PD24
> > */
> > +               dvdd25-supply = <&reg_dldo2>;
> > +               dvdd12-supply = <&reg_dldo3>;
> > +
> > +               port {
> > +                       anx6345_in: endpoint {
> > +                               remote-endpoint =
> > <&tcon0_out_anx6345>;
> > +                       };
> > +               };
> 
> It doesn't comply with bindings document. You need to add out endpoint

It does comply with the bindings. The ports are all optional.
As far as DT is concerned, the signal path ends here. This is also the
final component _required_ to get the Linux kernel DRI up and running.

> as well, and to do so you need to add bindings for eDP connector first
> and then implement panel driver.
> See Rob's suggestions here: http://patchwork.ozlabs.org/patch/1042593/

Well, one *could* extend the hardware description down to the actual
panel if necessary, but on the Teres-I it is not. I assume the panel
they ship provides proper EDID to the anx6345, because the display
works fine here with this DT.

Do I understand this correctly that the (3 different?) pinebook panels
are not that easy to handle? I try to include the pinebook wherever
possible, just because it's so similar, but here I'm a bit lost, so I
had to omit these parts.

Should I also have added a Tested-by: ? ;-)

	Torsten

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
