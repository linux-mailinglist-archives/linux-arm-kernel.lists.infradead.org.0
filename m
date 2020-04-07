Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E781A0F13
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 16:23:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7gdnWgld4WGKmgNzEbibO/TGsUutf3lpX2DOAyZ3SRY=; b=qvLqPTGJY/AAQyqsv3KQPcQuu
	y9g7lqFY+ksXcBQLsXEwDpQkvTIOHZLtylpwBzhXLBTcX8hau2JHLIg+D2joVjQyGYbfmu/Y9DJqv
	GZuZqiX9XRthfp3JKFCmyM8tir8gptKIuRmMr1sP6BqxfjdtBiPpiUeNu49tmJgWM02KFCySmwdNl
	brIfXdMtTja6zgbpx3xMy8+b+jEtJ4PNlFwAa5MJJqraFTVzkDPO0C9qpZVX/Y7IpEXtvyO29ZapF
	Ng5lYlTRoHmwDB8IsrRpAwKLHojgDylFkuFaV1MiPDrSQyd19azplIr9iN5qotHXMI7C0z6HeFjtX
	GpHnu9gkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLp7x-0005at-4t; Tue, 07 Apr 2020 14:22:57 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLp7q-0005ZZ-0n
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 14:22:51 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id E14165800FB;
 Tue,  7 Apr 2020 10:22:44 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 07 Apr 2020 10:22:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=WZZOGhHApCSV1L4UtRpjl8cMVms
 LTISqTdlhGk83/tE=; b=wdop+RypTY1L95rFhllqkRhtWYgEAFYClfhAPgL7V8o
 qMlLR5SE6GWLIa1ZSoQ79+Z0W44kt9OiHmZ3CvUvzPb9jnW8UTnki0vTUO07qO/M
 IH6Du1/ArFs7vqpgdxcGBcasaf/y7tUY/Qy7R0LaqaiV+vdq3gWWG69cu1/Db2d2
 tSYjGHL62GfQ854q3eGFOokJ2aVePEbHQyaKzerNy29ZfdIMewn63SjOEecLL7SC
 keWTudwlRGyEJlyAtfcF1aiupSS+Bt6ZxO/lAXvD3cJrOSGcwc7fHwYCw97oo/XP
 B09l3Pen7zFk/wx6bMLUR9LR0LM1186/fRdBfVdHAjg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=WZZOGh
 HApCSV1L4UtRpjl8cMVmsLTISqTdlhGk83/tE=; b=u7Ar+N/LF2C6DeXvp3SLmb
 v1Aty03403E8GzS/l7ZKt6hE1iFd1OjUSMadk8vZhO0FHQa5CTGzPnz2qMBxScGh
 VM3E1KLQdyBaBxleBRWqGLabrDiHLEfgPjVNddjZEVwztIaWE4P5pY5cKXNJff1G
 m4v7B7IbDgM7MLt99bro9rRdWjB2MqQrm0rgPulYrJ6qwW00bE6wZ8PNYhUPXcpA
 NpZlR0RsXbdqFhNsP68Mf/Bl8eF9YLBED3W7NW8d0Dgna7s6UMubPnxtj7zz17PK
 db20zhWWFiQbOMl2mISNojJH+Obdtsrx2/DuH48sMTHeAJRm9Yrwpn1QMT9SoKvA
 ==
X-ME-Sender: <xms:sIyMXlTiXSiRI3WvCdI1mm-Jzir6hQXM5vePtj5cXsapk4tU1rNmag>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehgdejgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epuggvvhhitggvthhrvggvrdhorhhgnecukfhppeeltddrkeelrdeikedrjeeinecuvehl
 uhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvse
 gtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:sIyMXgXSx8_2lL0owyyT9Y357BIRf8xmDBvgz7I_14l90OfeLLKC5w>
 <xmx:sIyMXhLRLGm4H2wIpXCkhFto8ChkzLs0j1QJICpClPHUiGd0LFxaYA>
 <xmx:sIyMXo1pKdgnUJ6tomalMQBcN1-ucn-9h8KxFx-8TrBFAflFemlHRg>
 <xmx:tIyMXlK4-tLy7Ok2qgPryQ3kFTA8t51d5wIiKn3KRdcyZJ25Z25gwQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0064F3280066;
 Tue,  7 Apr 2020 10:22:39 -0400 (EDT)
Date: Tue, 7 Apr 2020 16:22:38 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH 2/3] Input: rotary-encoder-counter: add DT bindings
Message-ID: <20200407142238.ik67isetbggn2rh3@gilmour.lan>
References: <20200406155806.1295169-1-kamel.bouhara@bootlin.com>
 <20200406155806.1295169-3-kamel.bouhara@bootlin.com>
 <20200407094159.xtbhtsxorvs2g22c@gilmour.lan>
 <20200407110339.GA1489441@kb-xps>
MIME-Version: 1.0
In-Reply-To: <20200407110339.GA1489441@kb-xps>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_072250_195579_6AC82AFD 
X-CRM114-Status: GOOD (  22.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: multipart/mixed; boundary="===============2842247657365593231=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2842247657365593231==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cmea35pc2hxci5l3"
Content-Disposition: inline


--cmea35pc2hxci5l3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 07, 2020 at 01:03:39PM +0200, Kamel Bouhara wrote:
> > On Mon, Apr 06, 2020 at 05:58:05PM +0200, Kamel Bouhara wrote:
> > > Add dt binding for the counter variant of the rotary encoder driver.
> > >
> > > Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> > > ---
> > >  .../input/rotary-encoder-counter.yaml         | 67 +++++++++++++++++++
> > >  1 file changed, 67 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml b/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
> > > new file mode 100644
> > > index 000000000000..a59f7c1faf0c
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
> > > @@ -0,0 +1,67 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> >
> > Bindings are usually used by other OS's, so you should consider
> > putting it under a more permissive license, usually that would be GPL2
> > and the BSD-2-Clause
>
> Well to be honest I just looked into an existing binding and I guess
> the wrong one :).

Not the wrong ones, but the old ones :)

It's painful to change a license on existing files, whereas it's
pretty easy to mention it during review.

> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/input/rotary-encoder-counter.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Rotary Encoder Counter
> > > +
> > > +maintainers:
> > > +  - Kamel Bouhara <kamel.bouhara@bootlin.com>
> > > +
> > > +description:
> > > +  Registers a Rotary encoder connected through a counter device.
> >
> > You shouldn't really describe the action here, but more what the
> > binding is about. The registration will not depend on the presence of
> > the node following that binding, but rather on whether or not the OS
> > that uses it has support for it.
> >
>
> Then shall it be better with just :
> "A rotary encoder device using a generic counter interface." ?

The generic counter interface is a Linux-only stuff though, some other
OS might want to implement something else. Something like "based on a
counter"?

Maxime

--cmea35pc2hxci5l3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXoyMrgAKCRDj7w1vZxhR
xaGoAP0Rk4zze3+M3tv+xBVv0PmMPLNoqDCmIQF259PcWDF2FQEAovMUQKsz/fRB
40V3ClfoNka1Z3kbhlkiwiHDy75R/Q0=
=HdTF
-----END PGP SIGNATURE-----

--cmea35pc2hxci5l3--


--===============2842247657365593231==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2842247657365593231==--

