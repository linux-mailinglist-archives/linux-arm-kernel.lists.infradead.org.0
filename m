Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B0D214A2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 09:38:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vARUuUSrWPvbJW2qv5ekyU9lKcWCZ+7krdPnjnF5+HU=; b=RRvD+JD1KcAlnEnLFyB2jbEYO
	4vxzn7mVCFiqXcm2+BAT6heEsRM7r6QkmNCBhs6YKt1Og/m+9cFYUpJ7PEq5V2Z/H24C5p8UNTgra
	dR7e3xpav6DwY0GG/Tg2MRXs8zqFgCN2ezz3KEdv593rR0Cq5xC4ZBOtiwLsEnj/k/tPMCBwNTTYB
	JXR1dstx7CruVuvtXu5cxfywJISOQmHoUbq8YYD0gdkXOkBIjIHCbSAPGYMK68CxvANuyCpwYyXND
	AzKaHqPrNW8zngRzGemG/4+X54n4Lc43saLEH5kN6TROTexrpC4gTurdiotdfk1fesc900ly19ahx
	0WUsX6L6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRXRt-0005rK-O3; Fri, 17 May 2019 07:38:37 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRXRl-0005fZ-9y
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 07:38:31 +0000
X-Originating-IP: 80.215.154.25
Received: from localhost (unknown [80.215.154.25])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 874A2E001C;
 Fri, 17 May 2019 07:38:16 +0000 (UTC)
Date: Fri, 17 May 2019 09:38:15 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Frank Lee <tiny.windzz@gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: thermal: add binding document for h6
 thermal controller
Message-ID: <20190517073815.e5h7obnzyaljj4xn@flea>
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-4-tiny.windzz@gmail.com>
 <20190512134152.yrletgtiglxncyo4@flea>
 <CAEExFWvkM86ajB4io8yopkKEOfRE3UObRpqoi=Sq0RtDnuaRWA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEExFWvkM86ajB4io8yopkKEOfRE3UObRpqoi=Sq0RtDnuaRWA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_003829_493920_4E55F02D 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Daniel Lezcano <daniel.lezcano@linaro.org>, catalin.marinas@arm.com,
 will.deacon@arm.com, bjorn.andersson@linaro.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, paulmck@linux.ibm.com,
 stefan.wahren@i2se.com, Linux PM <linux-pm@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Andy Gross <andy.gross@linaro.org>, rui.zhang@intel.com,
 devicetree@vger.kernel.org, marc.w.gonzalez@free.fr,
 Eduardo Valentin <edubezval@gmail.com>, enric.balletbo@collabora.com,
 robh+dt@kernel.org, Jonathan.Cameron@huawei.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, olof@lixom.net,
 David Miller <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============0208245385128594110=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0208245385128594110==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fxtyg6m4voydyy57"
Content-Disposition: inline


--fxtyg6m4voydyy57
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 17, 2019 at 02:13:58AM +0800, Frank Lee wrote:
> On Sun, May 12, 2019 at 9:41 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > Hi,
> >
> > On Sun, May 12, 2019 at 04:26:14AM -0400, Yangtao Li wrote:
> > > This patch adds binding document for allwinner h6 thermal controller.
> > >
> > > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > > ---
> > >  .../bindings/thermal/sun50i-thermal.txt       | 32 +++++++++++++++++++
> > >  1 file changed, 32 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/thermal/sun50i-thermal.txt
> >
> > We're starting to convert to YAML for binding descriptions that will
> > allow to validate that all DT are properly using the binding. It would
> > be great if you could use it as well.
>
> What have been changed to this now?

This needs a YAML file instead of the text file you introduced.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--fxtyg6m4voydyy57
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXN5k5wAKCRDj7w1vZxhR
xVi+AQDjoz3LrnnFNDvlVcYVt1sSrswPkuViJuQuLmCuUtaAxAD/elWxrmZ+1PF9
BqQU0LtypLWGmBgeF++P6OPWQT10YQQ=
=3mNs
-----END PGP SIGNATURE-----

--fxtyg6m4voydyy57--


--===============0208245385128594110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0208245385128594110==--

