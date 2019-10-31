Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB55EAE75
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 12:08:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZJvxrW5s+DKVtkkjQrUJ6/hbNyJVN1qrR4kbKLbKm/s=; b=p0qb5FN1AFT1UE
	hnjUm7OvY5zcQRmLFKTPEawdrqgcv2zUPaJpmMz/s6A/wiauZkL9w924BDjP1lGI+A8U5XJxXyfUm
	UjNpWczVVXF62fvRLMCyOV9BdYGK8eg69cvXxJQ87Os23GK0vhn2D+htQ1apGoaYh17778o8XoRKu
	sDq9VOTBCzG8Y3CYUZzP7OmLn9W2SQr7mLDRY5O6k6KRgiAxgxicXNMXbhg7YdrhPkC1W/BrSrzAW
	HigboOmque0tzdNY3hv3n3yD1vDfzQKPTn0g2FU2vBAiqCl3NOWedqhe4DLrl/lItfG7o7xtg3t45
	xUByIgJw5uA3/AuCP0Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ8Jg-0001Qq-2T; Thu, 31 Oct 2019 11:08:36 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ8JR-0001PC-ON
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 11:08:23 +0000
X-Originating-IP: 91.217.168.176
Received: from localhost (unknown [91.217.168.176])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 942B6FF810;
 Thu, 31 Oct 2019 11:08:11 +0000 (UTC)
Date: Thu, 31 Oct 2019 12:08:11 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 2/2] ARM: dts: at91: add a common kizboxmini dtsi file
Message-ID: <20191031110811.GC2967@piout.net>
References: <20191018140304.31547-1-kamel.bouhara@bootlin.com>
 <20191018140304.31547-3-kamel.bouhara@bootlin.com>
 <20191029123426.GB8412@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029123426.GB8412@bogus>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_040821_932381_FC1C6374 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: 2.9 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [91.217.168.176 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
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
Cc: Kamel Bouhara <kamel.bouhara@bootlin.com>, devicetree@vger.kernel.org,
 Mickael GARDET <m.gardet@overkiz.com>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 =?iso-8859-1?Q?K=E9vin?= RAYMOND <k.raymond@overkiz.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/10/2019 07:34:26-0500, Rob Herring wrote:
> On Fri, Oct 18, 2019 at 04:03:04PM +0200, Kamel Bouhara wrote:
> > Split the Kizbox Mini boards into two board configuration, the
> > Kizboxmini Mother board and the Kizboxmini RailDIN board.
> > =

> > Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> > Signed-off-by: K=E9vin RAYMOND <k.raymond@overkiz.com>
> > Signed-off-by: Mickael GARDET <m.gardet@overkiz.com>
> > ---
> >  arch/arm/boot/dts/Makefile                    |   2 +
> >  arch/arm/boot/dts/at91-kizboxmini-mb.dts      |  38 ++++
> >  arch/arm/boot/dts/at91-kizboxmini-rd.dts      |  54 ++++++
> >  arch/arm/boot/dts/at91-kizboxmini_common.dtsi | 166 ++++++++++++++++++
> >  4 files changed, 260 insertions(+)
> >  create mode 100644 arch/arm/boot/dts/at91-kizboxmini-mb.dts
> >  create mode 100644 arch/arm/boot/dts/at91-kizboxmini-rd.dts
> >  create mode 100644 arch/arm/boot/dts/at91-kizboxmini_common.dtsi
> > =

> > diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> > index c976b72a4c94..6b3a65f3f6f8 100644
> > --- a/arch/arm/boot/dts/Makefile
> > +++ b/arch/arm/boot/dts/Makefile
> > @@ -38,6 +38,8 @@ dtb-$(CONFIG_SOC_AT91SAM9) +=3D \
> >  	at91-ariettag25.dtb \
> >  	at91-cosino_mega2560.dtb \
> >  	at91-kizboxmini.dtb \
> > +	at91-kizboxmini-mb.dtb \
> > +	at91-kizboxmini-rd.dtb \
> >  	at91-wb45n.dtb \
> >  	at91sam9g15ek.dtb \
> >  	at91sam9g25ek.dtb \
> > diff --git a/arch/arm/boot/dts/at91-kizboxmini-mb.dts b/arch/arm/boot/d=
ts/at91-kizboxmini-mb.dts
> > new file mode 100644
> > index 000000000000..52921f547dd6
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/at91-kizboxmini-mb.dts
> > @@ -0,0 +1,38 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2015-2018 Overkiz SAS
> > + *   Author: Mickael Gardet <m.gardet@overkiz.com>
> > + *           K=E9vin Raymond <k.raymond@overkiz.com>
> > + */
> > +/dts-v1/;
> > +#include "at91-kizboxmini_common.dtsi"
> > +
> > +/ {
> > +	model =3D "Overkiz Kizbox Mini Mother Board";
> > +	compatible =3D "overkiz,kizboxmini-mb", "atmel,at91sam9g25",
> > +		     "atmel,at91sam9x5", "atmel,at91sam9";
> > +
> > +	clocks {
> > +		slow_xtal {
> =

> Don't use '_' in node names.
> =


We are stuck with that one until we change the dtsi.


-- =

Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
