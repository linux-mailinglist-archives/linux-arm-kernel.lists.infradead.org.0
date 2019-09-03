Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F091A69BE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 15:25:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=imc/xmr0gUL9tZfNNEYhF70GXYNQWbxi+4N0UvJPEFc=; b=UbMQhFmksasJfd
	3E29fJN/FZdIFlC5x4PhGF2Ltz6808zR77mg+b81pfvuHZHoiDtVkX4IMFi2NOxfoC4VVAMLDM7fL
	qmfYKY+UCvyEaE0Qp7F6kps9nmVDwmwoJazEvN3tvWQ/akcaYENd0jCOCqRXqRiN9m4QhNZkXj5QF
	4I+uSVDvPgO/o3L1Y5Tfuh4T/KcY/dvvC4xm+vvJR4V6xRCq5Dubwycins3rAB9KjRFV7t4WPDJsl
	UEk+0/ZqEwCkpmNmiH37nb2ujl09/xi9igYOtzuNe0Oi/GHUqv3VIN5p+8YXF6KyFwHqerw6bJyS8
	LZOiY3/EKd4VKtIDowQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i58og-0004AE-A6; Tue, 03 Sep 2019 13:25:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i58oT-00049r-Vh
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 13:25:39 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1i58oM-0005Ht-6s; Tue, 03 Sep 2019 15:25:30 +0200
Message-ID: <1567517129.5229.9.camel@pengutronix.de>
Subject: Re: [PATCHv3 01/10] dt-bindings: omap: add new binding for PRM
 instances
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Tony Lindgren <tony@atomide.com>, Tero Kristo <t-kristo@ti.com>
Date: Tue, 03 Sep 2019 15:25:29 +0200
In-Reply-To: <20190903131632.GL52127@atomide.com>
References: <20190830121816.30034-1-t-kristo@ti.com>
 <20190830121816.30034-2-t-kristo@ti.com> <20190902042631.GA22055@bogus>
 <e8d700cd-8f3c-5cea-a022-b20a595fc1e1@ti.com>
 <CAL_Jsq+AJj1bgOQYG=c86A5HC_g2UZph387oVEKZyP4M18kURw@mail.gmail.com>
 <7c2c8a4d-d24e-ceec-afc1-04cdc4d5d952@ti.com>
 <20190903131632.GL52127@atomide.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_062538_026247_D89FA024 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh@kernel.org>, linux-omap <linux-omap@vger.kernel.org>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tony,

On Tue, 2019-09-03 at 06:16 -0700, Tony Lindgren wrote:
> * Tero Kristo <t-kristo@ti.com> [190903 08:15]:
> > On 03/09/2019 11:10, Rob Herring wrote:
> > > I prefer that bindings be complete as possible even if driver support
> > > is not there yet. Adding power domain support may only mean adding
> > > '#power-domain-cells'.
> > > 
> > > The location is fine then.
> > 
> > Yeah, I assume just adding power-domain-cells should be enough. I am not too
> > sure before I start trying this out though so did not want to add it yet.
> 
> Should we call the device tree node name power-controller instead of
> reset controller though? Most of the PRM instances do not have a
> separate rstctrl reset control functionality.
> 
> Anybody got better any better naming in mind?

power-controller seems fine to me, that is their primary function.

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
