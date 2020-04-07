Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C881A0FB9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 16:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nBB5YVuls0g21GOqRrGpTkx4DzRy38hic048kqo0gqc=; b=XTn02R5reXriuZ
	8SAN95rU1Hop86vmdz/NoWXymsq+YjHXwiF5+v8YKaA1rv58Ym2fHzZdoIy0Np4e4JWAPV124bQf+
	N3bkDdCHohdUDBPcqK2NoZbPcRVYenLFhGugxh3bG83Xb0gOZlVLuHLD2R2nJ2Z2B9BOgzLqtuDFP
	uy7z23TB3gHdWaiN+t/YvFHhowER3INme88UepDLakQhSbZ8VsBtx63anQJ7wPBE8ucoIppNjHuRk
	akMeqaOYVyAY0APZO7R7Zt8wTkIq2a6ft5PfhK/hQaLGhhpBRM+/SeYmEPHQpIE7nDWWQjsukfzDg
	d4BW2YgNJH/RjkmNlTTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLpdS-0005Ja-My; Tue, 07 Apr 2020 14:55:30 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLpdK-0005HM-TY
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 14:55:24 +0000
Received: from kb-xps (unknown [78.193.40.249])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id DE9D2240009;
 Tue,  7 Apr 2020 14:55:11 +0000 (UTC)
Date: Tue, 7 Apr 2020 16:55:10 +0200
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 2/3] Input: rotary-encoder-counter: add DT bindings
Message-ID: <20200407145510.GC1489441@kb-xps>
References: <20200406155806.1295169-1-kamel.bouhara@bootlin.com>
 <20200406155806.1295169-3-kamel.bouhara@bootlin.com>
 <20200407094159.xtbhtsxorvs2g22c@gilmour.lan>
 <20200407110339.GA1489441@kb-xps>
 <20200407142238.ik67isetbggn2rh3@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407142238.ik67isetbggn2rh3@gilmour.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_075523_098694_5C1A2968 
X-CRM114-Status: GOOD (  25.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 07, 2020 at 04:22:38PM +0200, Maxime Ripard wrote:
> On Tue, Apr 07, 2020 at 01:03:39PM +0200, Kamel Bouhara wrote:
> > > On Mon, Apr 06, 2020 at 05:58:05PM +0200, Kamel Bouhara wrote:
> > > > Add dt binding for the counter variant of the rotary encoder driver.
> > > >
> > > > Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> > > > ---
> > > >  .../input/rotary-encoder-counter.yaml         | 67 +++++++++++++++++++
> > > >  1 file changed, 67 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml b/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
> > > > new file mode 100644
> > > > index 000000000000..a59f7c1faf0c
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
> > > > @@ -0,0 +1,67 @@
> > > > +# SPDX-License-Identifier: GPL-2.0
> > >
> > > Bindings are usually used by other OS's, so you should consider
> > > putting it under a more permissive license, usually that would be GPL2
> > > and the BSD-2-Clause
> >
> > Well to be honest I just looked into an existing binding and I guess
> > the wrong one :).
>
> Not the wrong ones, but the old ones :)
>
> It's painful to change a license on existing files, whereas it's
> pretty easy to mention it during review.
>

Alright.

> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/input/rotary-encoder-counter.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Rotary Encoder Counter
> > > > +
> > > > +maintainers:
> > > > +  - Kamel Bouhara <kamel.bouhara@bootlin.com>
> > > > +
> > > > +description:
> > > > +  Registers a Rotary encoder connected through a counter device.
> > >
> > > You shouldn't really describe the action here, but more what the
> > > binding is about. The registration will not depend on the presence of
> > > the node following that binding, but rather on whether or not the OS
> > > that uses it has support for it.
> > >
> >
> > Then shall it be better with just :
> > "A rotary encoder device using a generic counter interface." ?
>
> The generic counter interface is a Linux-only stuff though, some other
> OS might want to implement something else. Something like "based on a
> counter"?
>

Indeed, that's fair enough.

Thanks.

> Maxime



--
Kamel Bouhara, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
