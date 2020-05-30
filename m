Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B011E1E9298
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 18:24:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kX9Yx9teXxC6p+NGvl7pH+tIzRZ+zxNIUBPia7ms9mo=; b=rPqe/8wH/9lJRoWYk1+jNzqWW
	k9bth8yI5V/qqPHYYqm5Et6AcQ9gmXIhPoNCYbcspKHJ/lEIEt5NUfn92m6UNJQqdsXokHbbdOvlN
	3bh09mf64WdxfV/B/ibZ4c+zc7/FeNpt2ItiLqhslBmmzjAB/XHeDg5EFw2JFv+wXrgCq228o6EPl
	CY8Rgo3MsE3/F/uPvg/nDK+K/HS1ep4lUORENJaHQ9SH5HmI/i048WCrWmmLG9BZA3qWdYBwP7lq5
	0WIXYeDt1K7OCscLn+nib2qABKYZsf6ZiNTbQT58L3FQC+OnFNeVlQGQZcd8LZzPi93ksLimzbKcb
	dJ77F1NLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf4HK-00033a-Rc; Sat, 30 May 2020 16:24:10 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf4HE-00031D-JF; Sat, 30 May 2020 16:24:06 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 513F799C;
 Sat, 30 May 2020 12:23:46 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Sat, 30 May 2020 12:23:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=tRLW7jASUA/7qXtyJTN53ouwzXK
 3073xV/nniK6Mf4A=; b=uhsW5CKmUl1aJaOAfdh+QYD9tqgFP39Ex0uTI+pP8fR
 8oUyDYfz6fFaEndkj5cyalHj9BV/cW63qo9BSZGBF2n7LI+zhUJSA58nokZSB72f
 LBsBPsb7T30/Pkgvv/5H3voPyI+i7n007k/+LxsgY/t3rG1aJj9wc+1PWv8bE6f2
 hssG0/UL09QSfPD1VGJUbJQm/82cjVsIRP+0VNI5C88SecQpxqTG6ZOhgPFP9c5h
 RB7ebZCIrTGUJ3spfwkDUeX6RgMtUfAKIyMWHRqXOidckqru2XlFOxKBtY4s39Sz
 izeaTah0ofp0+QmZBER7YOfyjcANV63CaeAdfMcIqww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=tRLW7j
 ASUA/7qXtyJTN53ouwzXK3073xV/nniK6Mf4A=; b=ZvoSsfXjppjshWsm6G2JiB
 R7d+mxzHmGnuooTiDjePiCBlVp8ZqAB7oF5HhvnRkkw71UYsgaVjAD/cvUABL1Iy
 4Gh8u4eRqAjSG/taQnXFNzEY3jRuDPDiHYgmD++v6Ip4SpymMq4+QS2GnE1ZpBoi
 df2p0DPBuvDTI3vlewryv5UrJFA5aaaC2BWkf6dMnbD7XV4+KauePcKl2s/E+ObY
 EJo7CLnLtgFg3gHpAUWK5T7QVPFcnXZZ1pA+5mD1uLk+xZ1RHV/JVZrLZ1Tj8t8S
 OnDX8wuT5xwbUirMyow7qWZ69Z7IDziBKWWYgsI0pLW8WJPqUw1UMNtELq7xsdDQ
 ==
X-ME-Sender: <xms:kIjSXmQf8AIxBTw2y82qdT_16CqT5XwJZFhwvOI8xJdc5lSVenEu3g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeftddgleekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:kIjSXrxRl-x5yT4N4YFfGJPVvFJ4UIKXkF7xWdf4vCWmASGHUTQXNg>
 <xmx:kIjSXj0NjQin7VXxUgn4mY2SJ_ckR0Vl--lS1mkZxMrJxHweEw23qw>
 <xmx:kIjSXiDdEr1iNkm0p0VzK5fZVpGjPzu0HhtjPfggQJe5rYzw9VTBzg>
 <xmx:kYjSXuOFGXeF5r1AzCUppMP4sZLILnoXoQkFnoVQr4wjeEh_2qANGoDwdOI>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 875933280059;
 Sat, 30 May 2020 12:23:44 -0400 (EDT)
Date: Sat, 30 May 2020 18:23:43 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 02/25] dt-bindings: clock: Add a binding for the RPi
 Firmware clocks
Message-ID: <20200530162343.6a26bfojrmnkimh3@gilmour>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
 <919e2f2f13583d4d53d0e95b81fc3fb8a7606107.1590594293.git-series.maxime@cerno.tech>
 <159078703613.69627.13627047580756230984@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
In-Reply-To: <159078703613.69627.13627047580756230984@swboyd.mtv.corp.google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_092404_672620_52C784EE 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3554750787702975767=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3554750787702975767==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="q6u7kxg7uz4ypprh"
Content-Disposition: inline


--q6u7kxg7uz4ypprh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Stephen,

Thanks for your review :)

On Fri, May 29, 2020 at 02:17:16PM -0700, Stephen Boyd wrote:
> > +      "#clock-cells":
> > +        const: 1
> > +        description: >
>=20
> Just curious if this is the same as the | syntax? I haven't seen this
> used before.

It differs on how it keeps the formatting of text below. | will keep the
formatting as is, > will leave the formatting to whatever is going to use i=
t.

Maxime

--q6u7kxg7uz4ypprh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXtKIjwAKCRDj7w1vZxhR
xWouAQCgq7KmeDnD6Gdb9kx0K/yZKnUJF1mt0Y62LZ9jZNWYbAEApzWnR7SP6Tg6
efcwInK571yukcmFjFrQ8InCGpkMigk=
=w9yk
-----END PGP SIGNATURE-----

--q6u7kxg7uz4ypprh--


--===============3554750787702975767==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3554750787702975767==--

