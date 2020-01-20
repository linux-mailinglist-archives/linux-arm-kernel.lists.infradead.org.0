Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F79143069
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 18:04:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hcD24UbuQ4Jti4rCFHhkFxEWvCX8LJCWZc+Oe3L2rm4=; b=bHN60z9mEB9LSf+/uadQDmDyv
	sRl49Vz2e6/cZ0VKfNWm7wMiy5UW3hbPdWWegdDn20MXbg3eUZjtO6ZNrHodK7GmIiyzVyGg5YaBS
	iJSadGZXhqSIdTaHQ3ING+RwG6PnUONsTudqhvCK6dEdIZ/aMkr+tc+7EuVS0iFXQaJkdgUX5lUZz
	iLh4ag/fdCsO4DgCwhugDNRpTQQlFyeP99rZjlmDnPOStvotbyt6JghuPVI3KpikyJ8eOd/Hm5w1e
	x7X5Kc5P+cNrv9vtWWKWEYP2jYSbUqejtA2qXqxtHMEiZUChlOMh/UxVIw2a2leJoDq0GPR3fk3Aw
	LgPCvC6pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itaT3-0005Nx-F6; Mon, 20 Jan 2020 17:04:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itaSp-0005Mv-0g; Mon, 20 Jan 2020 17:03:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EC74E31B;
 Mon, 20 Jan 2020 09:03:45 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 67D6C3F68E;
 Mon, 20 Jan 2020 09:03:45 -0800 (PST)
Date: Mon, 20 Jan 2020 17:03:43 +0000
From: Mark Brown <broonie@kernel.org>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v3 4/7] drm/panfrost: Add support for multiple regulators
Message-ID: <20200120170343.GE6852@sirena.org.uk>
References: <20200114071602.47627-1-drinkcat@chromium.org>
 <20200114071602.47627-5-drinkcat@chromium.org>
 <7e82cac2-efbf-806b-8c2e-04dbd0482b50@arm.com>
MIME-Version: 1.0
In-Reply-To: <7e82cac2-efbf-806b-8c2e-04dbd0482b50@arm.com>
X-Cookie: I invented skydiving in 1989!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_090347_104003_52896DC3 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Nicolas Boichat <drinkcat@chromium.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7326125391205512211=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7326125391205512211==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a1QUDc0q7S3U7/Jg"
Content-Disposition: inline


--a1QUDc0q7S3U7/Jg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 20, 2020 at 02:43:10PM +0000, Steven Price wrote:

> From discussions offline, I think I've come round to the view that
> having a "soft PDC" in device tree isn't the right solution. Device tree
> should be describing the hardware and that isn't actually a hardware
> component.

You can use an implementation like that separately to it being in the
device tree, it is perfectly possible to instantiate devices that have
no representation at all in device tree based on other things that are
there like board or SoC information, or as subdevices of things that are
there.

--a1QUDc0q7S3U7/Jg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4l3W8ACgkQJNaLcl1U
h9DW1Qf+O1rhi1Qf46h1FjTMYWukB9iEFgJeJZ9xZby51p6qFhhoaf/vJWQgPgqC
PY+Tcxt1Dsk+84dKcLHXZVzsyFLanGZHI9TA2a0j5E1viknxKbaHP84RFmHU4y3s
lJQbgllRUQwkDF2ixZWfipql08kA3v/54BnAN8RsmJMrFN6mpSojTwQlT7390aaA
o2cjkfI/9GOUZ+mGsWzOmr/REEcE/+/aiFXvXnNFyRUzWHoHaEP3eIRegFGjp4E1
kV3GIOpFTkavPF8xb5LRChqYobnVhIizFJiFnlV9h9g/jG7OG1SUifQEtbSsOBT7
fvMX0psaSlV+9wp2Ei3MLvjGH1vemA==
=zekS
-----END PGP SIGNATURE-----

--a1QUDc0q7S3U7/Jg--


--===============7326125391205512211==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7326125391205512211==--

