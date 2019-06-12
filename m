Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D041842A20
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 17:00:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/lKd/AmVh5Ix5MyKhoiCLrRF3Ul1EB9Q0ssRryLaMEY=; b=WKcIaaCV+I+S/a
	QmJDllxD07MhEden/K2+obL0uM+EdsnBC5lqX68W7RIVXgIXprtkt4Thw2aL/Em8JsRDtJB9a9VEh
	HrhYKXA0ObIScXqPkteBbubXIp+L3dc1rFrKNseA9WVA38upXr8D/2fup8AQwO5nAqG23DfvBovrL
	cBPW95lNBn7EYAX6kTHDYMsJVD2zX3S0T4ZrYRrtHqI6AnPvs5j/3e0AzbSv5vNHT/Ocg1lIbGAn9
	GI/K7J7UqrKR38hAO29Z7bxwywX1h2J8+jlQ7As+JTXTEkve2SqKxiGuU9TOPUiRj4VQrSRsdcrX6
	tosEReJr1D9gRl5R7WSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb4jb-0008Cv-0G; Wed, 12 Jun 2019 15:00:19 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb4jH-0007nS-Vr
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 15:00:03 +0000
Received: by newverein.lst.de (Postfix, from userid 2005)
 id 1205768B02; Wed, 12 Jun 2019 16:59:27 +0200 (CEST)
Date: Wed, 12 Jun 2019 16:59:26 +0200
From: Torsten Duwe <duwe@lst.de>
To: Andrzej Hajda <a.hajda@samsung.com>
Subject: Re: [PATCH v2 6/7] dt-bindings: Add ANX6345 DP/eDP transmitter binding
Message-ID: <20190612145926.GA28426@lst.de>
References: <20190604122150.29D6468B05@newverein.lst.de>
 <CGME20190604122333epcas2p2f2c750e19a363901c83abb83354f55d4@epcas2p2.samsung.com>
 <20190604122305.07B9068B05@newverein.lst.de>
 <354de37d-57bb-6b06-c81a-a2081ea4f222@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <354de37d-57bb-6b06-c81a-a2081ea4f222@samsung.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_080001_536014_D2168060 
X-CRM114-Status: GOOD (  15.76  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 10:16:37AM +0200, Andrzej Hajda wrote:
> > +The ANX6345 is an ultra-low power Full-HD eDP transmitter designed for
> > +portable devices.
> > +
> > +Required properties:
> > +
> > + - compatible		: "analogix,anx6345"
> > + - reg			: I2C address of the device
> > + - reset-gpios		: Which GPIO to use for reset
> 
> 
> You have not specified it's active state, since in driver's code you
> named it RESETN I guess it should be active low.

Yes. The chip's reset is active low.
> 
> > + - dvdd12-supply	: Regulator for 1.2V digital core power.
> > + - dvdd25-supply	: Regulator for 2.5V digital core power.
> > + - Video port for LVTTL input, using the DT bindings defined in [1].
> 
> 
> Please assign port number for input (I guess 0).

True.

> 
> > +
> > +Optional properties:
> > +
> > + - Video port for eDP output (panel or connector) using the DT bindings
> > +   defined in [1].
> 
> 
> Shouldn't it be also required?

See previous discussion. Surely there should be _something_ connected to
the output side, but that something might not be relevant for the software
side, so it might be omitted from the device tree.

In fact, I'll submit v3 with the SPDX changes and without exactly this
output port spec which had caused the heated discussion.

	Torsten


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
