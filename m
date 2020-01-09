Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45957135E4E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:30:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iDAmfX4OoLSUqF9t4GgK9Zyr9LfZygkAF9Zui0seOkc=; b=UsVDyUU9ZJ9V3DwgRfUYNOR9Q
	ahmoxPth0qfoAie7Cxy0Yy1m+gdZnqByfdBXYaZXHqhQFwttWPg3SR2rAfopWP9FWjM5pGkIMVQuM
	PzxyXMpBnyUsto+tmYa651vPSQUpzXRCGcIHz2RLAuufFXsU/62XJPkvDy5RbTXnXfDWUMhvtT1AT
	glCU07wExe9lUKRy5FIX1NdRnU9W9DfqCz8LWgtfNwg16x7Az+OcwuWPsp1vwJfPBhUqQVbYFtHSQ
	cYWKilQy+hUdhEgyGGgKHXZEevAs7oiTY1fLKRFqKCIsfm3xNumjM12QeI/h+G8DN9fC/8iXpKc65
	ZEpLDvyAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipahW-0006tM-T5; Thu, 09 Jan 2020 16:30:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipahJ-0006sg-K5
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:30:15 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AABB82067D;
 Thu,  9 Jan 2020 16:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578587413;
 bh=QrZvthlzizcWbBIK0uVSmw0bZpQBJKO1KkJ6E+nHviE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hlMr7qfj3Stdv/x03Sd30cXsn221NPEYgT6xh88S/FpzDwFIHMPLpCWKBl/1nxHeK
 myRYc2tLIWwFpMNardIFIhi3cIOfF979ogb90+COk+vdMz5epDjIhoPCRBt4MDmHBM
 gKH5IabfTUBsb+otKAN/v8+3jM2USel4PWlveYVI=
Date: Thu, 9 Jan 2020 17:30:09 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH v2 0/4] arm64: allwinner: a64: Enable DVFS on A64
Message-ID: <20200109163009.v4jc22jyjushbxxx@gilmour.lan>
References: <20200108042018.571251-1-anarsoul@gmail.com>
 <20200108160402.u44odtfsuhiuytfl@gilmour.lan>
 <CA+E=qVeMvJ96OZ62E_B3byr4dGgtWd3NVD6qqB40gS7ExZy5uw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+E=qVeMvJ96OZ62E_B3byr4dGgtWd3NVD6qqB40gS7ExZy5uw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_083013_681305_11F67FA0 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1440229966172819747=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1440229966172819747==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yu3dj7bbxga4rc5i"
Content-Disposition: inline


--yu3dj7bbxga4rc5i
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 08, 2020 at 08:38:10AM -0800, Vasily Khoruzhick wrote:
> On Wed, Jan 8, 2020 at 8:04 AM Maxime Ripard <mripard@kernel.org> wrote:
> >
> > Hi,
> >
> > On Tue, Jan 07, 2020 at 08:20:14PM -0800, Vasily Khoruzhick wrote:
> > > This series introduces new DTSI with operating points for A64,
> > > adds cooling maps and thermal tripping points and enables DVFS
> > > on all the supported A64-based boards
> >
> > Thanks for that new series.
> >
> > I'm not sure I've seen the answer, but how did you test that the OPPs
> > were stable?
>
> I've been using them for close to 2 years and haven't seen any
> issues so far.

I'm sure you did, but those issues can be easily masked depending on
your config (and the default governor you have) and the workload.

> > So far, the only method that proved to be reliable was to run
> > https://github.com/ssvb/cpuburn-arm/blob/master/cpufreq-ljt-stress-test
> >
> > Could you paste the result (one board should be enough) ?
>
> Here is a run on Pine64-LTS:
> https://gist.github.com/anarsoul/23c361b42bcdf4f2e23624f74c4c94bc

Awesome, thanks!
Maxime

--yu3dj7bbxga4rc5i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhdVDAAKCRDj7w1vZxhR
xV2/AP4ph8ruPTTtBNeFVcqqYllFYD+dyWFzhfn+5pGAzFGHCAD+PRx5Q2rvIBUJ
FqDnaJWoTHa9HsvJgXVDvrvx6MVcsgg=
=SZCt
-----END PGP SIGNATURE-----

--yu3dj7bbxga4rc5i--


--===============1440229966172819747==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1440229966172819747==--

