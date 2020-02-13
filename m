Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3090815CAA6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 19:46:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DfZmn0JOwNoiXetNCxllyLtMm5oy5dQ7nP2d3wKNhWM=; b=cD0L9KlsFyAz8A7bTG7yPnAho
	10Y8HCf/ZntFTL9ndnQuitzgYgHN0EGgmIyZ8gf2uQC0PXfOGv1Gw66/sOmGQsgs5YfVSyehMlDsg
	7dphrIwt9z+EvqU+yK9fDyyseHWgibRoBf0m4x4ouMlIahcCuXzdavMFCQdEURO2LKcOLZXh8CVDv
	MCv023f+ZXwYhvja9b0fXYYsqZU5m4chSGmL2pRJ9TAvbHCj19KQLSNUgJGq8ahKAgiwRfobsjQrt
	9TahpsNZz8N8buw+nQ1FaZyDAqtLbI4rs2wfzc16RHnYzhUM+b4/2kpkZFN+V9jkCFh8ov0QY8wKE
	R9+yweBYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2JVU-0008QA-W1; Thu, 13 Feb 2020 18:46:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2JVM-0008PG-LP
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 18:46:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0F84B328;
 Thu, 13 Feb 2020 10:46:27 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 842C93F68E;
 Thu, 13 Feb 2020 10:46:26 -0800 (PST)
Date: Thu, 13 Feb 2020 18:46:25 +0000
From: Mark Brown <broonie@kernel.org>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH V2 2/5] spi: fspi: dynamically alloc AHB memory
Message-ID: <20200213184624.GK4333@sirena.org.uk>
References: <20200202125950.1825013-1-aford173@gmail.com>
 <20200202125950.1825013-2-aford173@gmail.com>
 <CAOMZO5D3emrAk84wDS04qJC-3AyvFnqodhoMsXO-ukHnYsU+PQ@mail.gmail.com>
 <CAHCN7xJyZRwJhnWW2mAbOeGyrMsB7Au_e6AvwiNmNS8gFUfSyw@mail.gmail.com>
 <20200212120753.GF4028@sirena.org.uk>
 <CAHCN7x+5bACfYVX49Lib+fmNq-dEOkcyi0gXt7rtYxrGaYbH1Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHCN7x+5bACfYVX49Lib+fmNq-dEOkcyi0gXt7rtYxrGaYbH1Q@mail.gmail.com>
X-Cookie: Academicians care, that's who.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_104628_745482_0FC7677F 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ashish Kumar <ashish.kumar@nxp.com>,
 linux-spi <linux-spi@vger.kernel.org>, Yogesh Gaur <yogeshgaur.83@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Han Xu <han.xu@nxp.com>,
 Fabio Estevam <festevam@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7075494164552252174=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7075494164552252174==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ah40dssYA/cDqAW1"
Content-Disposition: inline


--Ah40dssYA/cDqAW1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 12, 2020 at 07:08:49AM -0600, Adam Ford wrote:

> The original author was copied on the initial commit.  I literally
> generated the patch from NXP's branch,  added my notes, and pushed
> them to the mailing lists after testing them on the  the Linux master
> branch.   I am a bit disappointed that NXP's author hasn't responded
> to any of the comments or feedback.  NXP knows their hardware and

Bear in mind that it's been the spring festival and there's been quite a
bit of delay in getting back to work in China resulting from coronavirus
stuff so hopefully it's just a delay in replying.

--Ah40dssYA/cDqAW1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5FmYAACgkQJNaLcl1U
h9BIJQf/YCuS+PbvoZjpzEq+oZbCnmY0R0BkFrp7Sc1PV9zHgjKqGmQAr9RVSeSI
kfalZEPSUkUEpxgouX+I3VVvKPpQhDEhj46+y+IXYWH/Y0QA58bDv7ctWOhIBn+Q
vW7iTl/+CHsJdTptylbI5K0TiVP3D5wDGbiym/rvAjIGpe7FXzd9WUteXNKeLJMy
QmhJg6z+gAVwf/mYiyM03MRx1Gn1c5C/cMkan6s189g77et3avP4nEfKb6UyApgi
FY+BqvQCyBK7OSErmJ7H+NpqM9Rq0b7xJLknFwbfOLTpqvG8iRhGzvQyNg3uPAqt
aAm0o3dppPZAbuc4HFV4OF5n2YoGBA==
=r4u7
-----END PGP SIGNATURE-----

--Ah40dssYA/cDqAW1--


--===============7075494164552252174==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7075494164552252174==--

