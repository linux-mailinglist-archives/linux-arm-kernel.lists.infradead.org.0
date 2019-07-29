Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D9278DB8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 16:23:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e7Inm3D/wDFfqjVvUIZDxk7dEd3MgBzwvGOmU/rAXfE=; b=SV9lyCahnn6E6W
	2QABm/HiiORKE/ertECok1P3qhnu5iyKkHhq3ODzsQLzandCylIJuA1Zwp/nma5mTE03RvbkiVDUS
	PWnTcs9LuSahozYuydmXQsB72ROJjzderLPHxYDC/mh43Cg+nPbPi89xtRpOHAy+U28EzOBxvwJ8q
	RNhfroRZ8QEO6f5S/x7YUR8sbrge377Nn8Dcahty+iNmt6mHRSDryMw/B9+Xpt9vTY3Qc/Eoq5KGj
	PwrFoLEQZf4hN6A1SoXmegjNaF7Evu9yovm83TaeXgZYi4/zHtRWohy8nri1DDKgQ7pGVSrf97a2Z
	Z83cLkkPXDA/RtCMnKNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs6Ya-0002YC-TO; Mon, 29 Jul 2019 14:23:21 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs6YM-0002X8-K9
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 14:23:08 +0000
Received: by verein.lst.de (Postfix, from userid 2005)
 id E55C468AEF; Mon, 29 Jul 2019 16:22:58 +0200 (CEST)
Date: Mon, 29 Jul 2019 16:22:58 +0200
From: Torsten Duwe <duwe@lst.de>
To: Rob Herring <robh+dt@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH v3 6a/7] dt-bindings: Add ANX6345 DP/eDP transmitter
 binding
Message-ID: <20190729142258.GB7946@lst.de>
References: <20190722150414.9F97668B20@verein.lst.de>
 <20190725151829.DC20968B02@verein.lst.de>
 <20190726163601.o32bxqew5xavjgyi@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726163601.o32bxqew5xavjgyi@flea>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_072306_829643_7C88BC0D 
X-CRM114-Status: GOOD (  15.86  )
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
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 06:36:01PM +0200, Maxime Ripard wrote:
> > +
> > +  dvdd12-supply:
> > +    maxItems: 1
> > +    description: Regulator for 1.2V digital core power.
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +
> > +  dvdd25-supply:
> > +    maxItems: 1
> > +    description: Regulator for 2.5V digital core power.
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> 
> There's no need to specify the type here, all the properties ending in
> -supply are already checked for that type

Ok, thanks for the hint.

> > +  ports:
> > +    type: object
> > +    minItems: 1
> > +    maxItems: 2
> > +    description: |
> > +      Video port 0 for LVTTL input,
> > +      Video port 1 for eDP output (panel or connector)
> > +      using the DT bindings defined in
> > +      Documentation/devicetree/bindings/media/video-interfaces.txt
> 
> You should probably describe the port@0 and port@1 nodes here as
> well. It would allow you to express that the port 0 is mandatory and
> the port 1 optional, which got dropped in the conversion.

I would have liked to, but have not discovered yet a comprehensive source
of information about recommended syntax and semantics of the YAML schemes.

Is there some central reference for these types of issues? I mean not the
"here is a git repo with the meta-schemes" but sort of a cookbook?

	Torsten



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
