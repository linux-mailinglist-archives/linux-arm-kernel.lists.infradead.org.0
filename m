Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 524FACCF52
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 10:05:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q1ifF3O/M0jrXQRwAMzTYWW9EGjGXvRkYqgYhqCR4zs=; b=tKywVBTOabmYUF
	P5OxwZIxUQFX0HxR0qVriHglSj0uRuF7U+OrN/76YfGfyC9OYZEA5BRnrpt70i6ZkxhxYl/IXyZHM
	4F8rc2k24Xn1hZnjQG3XRidWHfajS//draAKLfakWtwiM8EG23J75sb5KcuItd3QqFj+z72JINoWM
	3MkiB6mR/6/S8x50GoLpHkSQbziap9wC8EFFweCTzA9mCMNoAO1BuQNfOH22CinZpjgzOQXDsbPbf
	MLdSlxfH5fSlN0RAqbsJRKUSBz6NhQRtd5H1mUprxoVarTWVs9ixoDu6JRxzRZLvW+mO7cdc901vR
	ooA7c/NAbPUJGk60BTvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH1Xk-0007OV-MS; Sun, 06 Oct 2019 08:05:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH1Xb-0007NK-IZ
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 08:05:21 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9139E2084D;
 Sun,  6 Oct 2019 08:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570349117;
 bh=D/wd/mWjmPW54gsl+QbV0f4qahPhKTVJuxLON5hP40Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aH/RzuIGYc/dOl4IhP5y4h85I95r/bQ5J8zN0qKVhvuw7vDiQ6SDlIuWnFY8pvyDj
 6BPXid09AqnfgTnrScg6vt3UZrK1DLPUjn9POE22o09cLjLqadWcW+lG8EYTqsK45w
 BwrEomQXQBzWyS7VxqucwOTBQsbzUkuSsV9R6a7c=
Date: Sun, 6 Oct 2019 16:04:44 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH v2 2/2] dt-bindings: etnaviv: Add #cooling-cells
Message-ID: <20191006080442.GW7150@dragon>
References: <cover.1568255903.git.agx@sigxcpu.org>
 <6e9d761598b2361532146f43161fd05f3eee6545.1568255903.git.agx@sigxcpu.org>
 <caf166f465465c61b70ad69d88f0634f1ca2ae64.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <caf166f465465c61b70ad69d88f0634f1ca2ae64.camel@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_010519_645013_3CC11289 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Anson Huang <Anson.Huang@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 David Airlie <airlied@linux.ie>,
 Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, etnaviv@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Russell King <linux+etnaviv@armlinux.org.uk>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 04:32:55PM +0200, Lucas Stach wrote:
> On Mi, 2019-09-11 at 19:40 -0700, Guido G=FCnther wrote:
> > Add #cooling-cells for when the gpu acts as a cooling device.
> > =

> > Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> =

> Reviewed-by: Lucas Stach <l.stach@pengutronix.de>

Lucas,

I assume you will pick it up.

Shawn

> =

> > ---
> >  .../devicetree/bindings/display/etnaviv/etnaviv-drm.txt          | 1 +
> >  1 file changed, 1 insertion(+)
> > =

> > diff --git a/Documentation/devicetree/bindings/display/etnaviv/etnaviv-=
drm.txt b/Documentation/devicetree/bindings/display/etnaviv/etnaviv-drm.txt
> > index 8def11b16a24..640592e8ab2e 100644
> > --- a/Documentation/devicetree/bindings/display/etnaviv/etnaviv-drm.txt
> > +++ b/Documentation/devicetree/bindings/display/etnaviv/etnaviv-drm.txt
> > @@ -21,6 +21,7 @@ Required properties:
> >  Optional properties:
> >  - power-domains: a power domain consumer specifier according to
> >    Documentation/devicetree/bindings/power/power_domain.txt
> > +- #cooling-cells: : If used as a cooling device, must be <2>
> >  =

> >  example:
> >  =

> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
