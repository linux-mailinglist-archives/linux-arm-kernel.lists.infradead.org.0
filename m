Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA56ED3CE
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 17:01:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o9GsbmoYQYa99/2vlCIQfgTHFa2tGST3ScPrE0PNIqQ=; b=fZSQy6/ZHHBlkeI4O4m6CnQux
	LjjGiol0cBUn1+1VV0BMIzEUcCWV5EiJdharIf+bMbv4olc3gtVkLcovMp8zdnfvlmytlvpHq1CJF
	8zbFeH3CDPzkvX0TOoV6C6YG+9HnqBCj2h3rYKMvgV8KVTIkOZYXZ9xVfs52bcf9BPNKshTHwsvLE
	yMjk66lL96OCyB8qti1XRZIaA4vIQBAB8pIK7yFgoIHsrZK4TJXvR8rPLKJCyP3emysoko8wRP1DJ
	l6vuJ1lEV/11s+qNzlJoRnCRL9V23wj9d0TWItKNMlHwcgKFn17zJLLBm+RFQuslRZZJW0Hh/+s+8
	TsbPRiewQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRIJj-0005B8-Rm; Sun, 03 Nov 2019 16:01:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRIJZ-00059k-SE
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 16:01:19 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 04CCD2084D;
 Sun,  3 Nov 2019 16:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572796877;
 bh=Lpq9fn2fii7gBSLXJ89Ao8eK1QO7fC9NIhZkf0eEtYA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OCwDFQkWKusxtKXsxi91PdS4FMndv/PZ40OLVWxDDGqjae8h/Dw/eR2w/CFWnlCiF
 05LMTf6JN+eJiF+Asn1yAmFM6COsnzFFyJfRcI32IyI//GopKIp2PAbknEArZTo53t
 8EvQSINAYXMGp654yYfuaWc8jOv6b5LkCNJF2Nxs=
Date: Sun, 3 Nov 2019 17:01:14 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [PATCH v4 6/7] dt-bindings: Add ANX6345 DP/eDP transmitter binding
Message-ID: <20191103160114.GD7001@gilmour>
References: <20191029153815.C631668C4E@verein.lst.de>
 <20191029153953.8EE9B68D04@verein.lst.de>
 <20191031125100.qprbdaaysg3tmhif@hendrix>
 <20191031145224.GA5973@lst.de>
MIME-Version: 1.0
In-Reply-To: <20191031145224.GA5973@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_080117_952931_43F4085A 
X-CRM114-Status: GOOD (  25.10  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============1154334342399695054=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1154334342399695054==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="O3RTKUHj+75w1tg5"
Content-Disposition: inline


--O3RTKUHj+75w1tg5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 31, 2019 at 03:52:24PM +0100, Torsten Duwe wrote:
> On Thu, Oct 31, 2019 at 01:51:00PM +0100, Maxime Ripard wrote:
> > On Tue, Oct 29, 2019 at 01:16:57PM +0100, Torsten Duwe wrote:
> > > +
> > > +  ports:
> > > +    anyOf:
> > > +      - port@0:
> > > +        description: Video port for LVTTL input
> > > +      - port@1:
> > > +        description: Video port for eDP output (panel or connector).
> > > +                     May be omitted if EDID works reliably.
> > > +    required:
> > > +      - port@0
> >
> > Have you tried to validate those two ports in a DT?
>
> Yes, it validates as expected, like I wrote. Various sources told me that
> json-schema is not always straightforward so I assumed anyOf was OK.
>
> > I'm not quite sure what you wanted to express with that anyOf, but if
> > it was something like port@0 is mandatory, and port@1 is optional, it
> > should be something like this:
> >
> > properties:
> >
> >   ...
> >
> >   ports:
> >     type: object
> >
> >     properties:
> >       port@0:
> >         type: object
> >         description: |
> > 	  Video port for LVTTL input
> >
> >       port@1:
> >         type: object
> >         description: |
> > 	  Video port for eDP output (..)
> >
> >     required:
> >       - port@0
> >
> > This way, you express that both port@0 and port@1 must by nodes, under
> > a node called ports, and port@0 is mandatory.
>
> That validates, too. Looks better, admittedly. I don't have a strong
> opinion here. It's just that Rob wrote in
> <CAL_JsqKAU3WG3L=KP8A8u4vW=q_BQWPN-m_c+ADOwTioJ2-cmg@mail.gmail.com>:
>
> | For this case specifically, we do need to define a common graph
> | schema, but haven't yet. You can assume we do and only really need to
> | capture what Maxime said above.
> (your points back then were port@N descriptions and neccessity for port@0)
>
> Are you sure that "object" is specific enough?

Possibly not, but at least it checks that there's indeed something
called port@0 (and port@1), and that they are both nodes (and not
properties).

We can probably refine this further, but this is good enough at the
moment.

> > You should even push this a bit further by adding
> > additionalProperties: false to prevent a DT from having undocumented
> > properties and children for the main node and ports node.
>
> You mean like
>
> | jsonschema.exceptions.SchemaError: Additional properties are not allowed ('unevaluatedProperties' was unexpected)
> [...]
> | On schema:
> |    {'$id': 'http://devicetree.org/schemas/watchdog/allwinner,sun4i-a10-wdt.yaml#',
> [...]
> |      'unevaluatedProperties': False}
>
> ? ;-)

That would be on the meta-schema, but yes, we want to trigger warnings
on something that isn't described.

>
> But yes, this patch series passes even with additionalProperties: false.
>
> In which form would you like to receive the update?

Please send a new version.

Thanks!
Maxime

--O3RTKUHj+75w1tg5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXb75ygAKCRDj7w1vZxhR
xQ7rAQCZLQcuukaEIuQQut4PC1tgBMKrdJ+kUMMrTujJsMh0KAD/XxEP4qvCHVOh
pyNiY1VTEuJDPf//SnH0gq+kzuonjQ8=
=cdL1
-----END PGP SIGNATURE-----

--O3RTKUHj+75w1tg5--


--===============1154334342399695054==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1154334342399695054==--

