Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6B51F6A58
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 16:52:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ztAFFvTh0TnGKlIdSbxP/BqSEsYe3gdE+PX0vXimBFY=; b=c7iOUmQKlVSqio
	Abgs9/TQkfsa7033gRrQhgHb5H7e7y/ubTdy+u0yp+Oi5zilpJEHMWempzZ0DL7e1m8hbn6+uw2x3
	xTrveRup3Oz6Lrsw7oeY1zSlfmSR86bbtQoO0YZaazNMIy5ThKNqKL2l0n5lUXqQpq6+J0Lq6fv8i
	RlatVL3+XXdDE3NBoYaTneBSaIpEFLKkK/alIn6wCpRPqGhElQENI9AEC7y8YdGCQS231yQ32tMZp
	rkb+RtPkQbqWGfxoPa9bDtmwWiXBUzJj/ntSKfitNA7T+Y2cVZa1XpvSCOtZzKbAr5WIDP0/wmLxG
	ZAgU8yP27CY+QSNxhRTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjOZ0-0005av-5J; Thu, 11 Jun 2020 14:52:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjOYs-0005ZI-P5
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 14:52:12 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jjOYj-0001t7-Vd; Thu, 11 Jun 2020 16:52:01 +0200
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jjOYf-0000k8-BN; Thu, 11 Jun 2020 16:51:57 +0200
Message-ID: <ab17b350d6ac74a89f301b70d0b339f346f5e37a.camel@pengutronix.de>
Subject: Re: [PATCH 1/2] drm/imx: fix use after free
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>, Marco Felsch
 <m.felsch@pengutronix.de>
Date: Thu, 11 Jun 2020 16:51:57 +0200
In-Reply-To: <20200611130145.GX1551@shell.armlinux.org.uk>
References: <20200611124332.20819-1-m.felsch@pengutronix.de>
 <20200611130145.GX1551@shell.armlinux.org.uk>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_075210_816889_BFE43DCB 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kernel@pengutronix.de, airlied@linux.ie, dri-devel@lists.freedesktop.org,
 stefan@agner.ch, daniel@ffwll.ch, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Thu, 2020-06-11 at 14:01 +0100, Russell King - ARM Linux admin wrote:
> On Thu, Jun 11, 2020 at 02:43:31PM +0200, Marco Felsch wrote:
> > From: Philipp Zabel <p.zabel@pengutronix.de>
> > 
> > Component driver structures allocated with devm_kmalloc() in bind() are
> > freed automatically after unbind(). Since the contained drm structures
> > are accessed afterwards in drm_mode_config_cleanup(), move the
> > allocation into probe() to extend the driver structure's lifetime to the
> > lifetime of the device. This should eventually be changed to use drm
> > resource managed allocations with lifetime of the drm device.
> 
> You need to be extremely careful doing this.  If the allocation is
> in the probe function, it's lifetime is not just until unbind, but
> potentitally to the _next_ bind, unbind, bind, unbind.  In other
> words, it's lifetime is from the point that the component is probed
> to the point that it is later removed.
> 
> If the driver relies on initialisation of that structure, then that
> must be _very_ carefully handled - any state in that structure will
> remain.
> 
> So, you need to think long and hard about changes like this, and do
> a thorough review of the lifetime of every structure member.

Thank you for the warning, I've tried to make sure that no driver relies
on prior initialization by explicitly replacing each
	x = devm_kzalloc(dev, sizeof(*x), GFP_KERNEL);
in .bind() with a
	memset(x, 0, sizeof(*x));

The patch still requires the lifetime of embedded connector and encoder
structures to end somewhere between .unbind() and the next .bind(), but
that should be guaranteed by calling drm_mode_config_cleanup() after
component_unbind_all().

I'd like to replace this with devm_drm_dev_alloc() afterwards, but doing
this first would allow to fix stable kernels as well.

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
