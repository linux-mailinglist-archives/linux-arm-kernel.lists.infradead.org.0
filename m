Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B74CEFBEB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 11:58:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFEHCakONHDtoUfp9+z96UYYn541VleTE6ifOdwIIHc=; b=Q5jHAGqK9E1P8D
	DgXT0XYgWLZBKOacVXf4NPjFGpnGcExcfnMxI4W3PKwe1zX4REVq2PLzDwTvBI8/SCLrY8x3Fwwfy
	LdagsLpzbymxSYEtrMJ3U5TOFcIeEHqxeZnkyuIj0YSG+aeW5mIuo6hZcPTUzVdbPHbMxENkIagPp
	t3WlAGCl+hc3/4OEYrRU9irR36dhKVM5nQFofxM4KxhY1Tw4MgDR5BlajH8jTUVqghejwK3ZWqt2R
	k/hho5JKytW6oashISEZASFfaDmLCMt4ocRXoxfSi+jDnP+nNFXlGXvcQwdT2rznzeQ7yH/sdWYf/
	bJuFQadKysCM7LrkuOkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRwXU-0001Uc-8g; Tue, 05 Nov 2019 10:58:20 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRwXM-0001U6-Jj
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 10:58:14 +0000
Received: by verein.lst.de (Postfix, from userid 2005)
 id 820FA68B05; Tue,  5 Nov 2019 11:58:08 +0100 (CET)
Date: Tue, 5 Nov 2019 11:58:08 +0100
From: Torsten Duwe <duwe@lst.de>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v5 6/7] dt-bindings: Add ANX6345 DP/eDP transmitter binding
Message-ID: <20191105105808.GA27999@lst.de>
References: <20191104110400.F319F68BE1@verein.lst.de>
 <20191104110613.C3BA468C4E@verein.lst.de> <20191105104342.GD3876@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105104342.GD3876@gilmour.lan>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_025812_798682_FF43F053 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
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

On Tue, Nov 05, 2019 at 11:43:42AM +0100, Maxime Ripard wrote:
> 
> On Tue, Oct 29, 2019 at 01:16:57PM +0100, Torsten Duwe wrote:
> > The anx6345 is an ultra-low power DisplayPort/eDP transmitter designed
> > for portable devices.
> >
> > Add a binding document for it.
> >
> > Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> > Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Torsten Duwe <duwe@suse.de>
> > Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> Applied, thanks

Re-thanks!

> (still, there's one comment below that can be addressed in a
> subsequent patch).
> 
> > +
> > +  ports:
> > +    type: object
> > +
> > +    properties:
> > +      port@0:
> > +        type: object
> > +        description: |
> > +          Video port for LVTTL input
> > +
> > +      port@1:
> > +        type: object
> > +        description: |
> > +          Video port for eDP output (panel or connector).
> > +          May be omitted if EDID works reliably.
> > +
> > +    required:
> > +      - port@0
> 
> You should have something like:
> 
> ports:
>   type: object
>   additionalProperties: false
> 
> as well...

Yes, and it also struck me that I forgot at least about the hotplug-gpio.
It's unused on the Teres and the Pinebook, but in theory it's a valid
property, which can't be added any more now.

	Torsten


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
