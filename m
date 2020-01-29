Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 103B514C96C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 12:18:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8lBQ8Fid84f3BnrJJK2gBaShjzc6s4vv4zreUgm+Oxg=; b=KRAAPr2DMJa7nzpnuV1rTA1tW
	k3S6n2nk82/bOagzCErNkluGA0t235upM46GYm4DkiO3EMautcTLFQEhf/XeDma/kZiWgjnGYmOPM
	0pEfSZsdQ0xt7w2G93XAe3aF53ZU3FH4DGQw/Xg6qtlGeeUE0CjFH+ulFoPx9AAbZE9xf6y9sA9Nk
	xR5gMs7JffJ0f6e1h4V4xA2ZZtJUgwYpJ96d1KSQoBdn7Jppncm49x4uoNF2Th7+rQpGtZpVfs2Ux
	N31cSBD+CCg63A6I7jrYFss1Dn9LbEktrY9DuDb+lVrS0bwWtRuCnugzNPwW95+Z7C1nzRuzDvicd
	wuxmbWCCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwlLv-0004z6-T5; Wed, 29 Jan 2020 11:17:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwlLX-0004yF-UW
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 11:17:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 469C71FB;
 Wed, 29 Jan 2020 03:17:20 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5D9D33F67D;
 Wed, 29 Jan 2020 03:17:19 -0800 (PST)
Date: Wed, 29 Jan 2020 11:17:17 +0000
From: Mark Brown <broonie@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 2/7] bus: Introduce firewall controller framework
Message-ID: <20200129111717.GA3928@sirena.org.uk>
Mail-Followup-To: Greg KH <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 "robh@kernel.org" <robh@kernel.org>,
 Loic PALLARDY <loic.pallardy@st.com>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "system-dt@lists.openampproject.org" <system-dt@lists.openampproject.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "lkml@metux.net" <lkml@metux.net>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "stefano.stabellini@xilinx.com" <stefano.stabellini@xilinx.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
 <20200128153806.7780-3-benjamin.gaignard@st.com>
 <20200128155243.GC3438643@kroah.com>
 <0dd9dc95-1329-0ad4-d03d-99899ea4f574@st.com>
 <20200128165712.GA3667596@kroah.com>
 <62b38576-0e1a-e30e-a954-a8b6a7d8d897@st.com>
 <CACRpkdY427EzpAt7f5wwqHpRS_SHM8Fvm+cFrwY8op0E_J+D9Q@mail.gmail.com>
 <20200129095240.GA3852081@kroah.com>
MIME-Version: 1.0
In-Reply-To: <20200129095240.GA3852081@kroah.com>
X-Cookie: Chocolate chip.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_031724_074041_C22F5640 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: "robh@kernel.org" <robh@kernel.org>,
 "stefano.stabellini@xilinx.com" <stefano.stabellini@xilinx.com>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "lkml@metux.net" <lkml@metux.net>, "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 Loic PALLARDY <loic.pallardy@st.com>,
 "system-dt@lists.openampproject.org" <system-dt@lists.openampproject.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2965568825839498938=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2965568825839498938==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="OXfL5xGRrasGEqWY"
Content-Disposition: inline


--OXfL5xGRrasGEqWY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 29, 2020 at 10:52:40AM +0100, Greg KH wrote:

> It just needs to be part of the bus logic for the specific bus that this
> "firewall" is on.  Just like we do the same thing for USB or thunderbolt
> devices.  Put this in the bus-specific code please.

I'd expect that this is going to affect at least platform and AMBA
buses.

--OXfL5xGRrasGEqWY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4xaboACgkQJNaLcl1U
h9AXbAf+KRZCtLfkXYUWRgFwJkclHlVSyIoUud3CsqCBy5e60mmmGtO/XARpZkDm
riG9GS1aF/2cXrFRpsaj0g9dkUsAhVJPddW/L9xvVP8od3iKT1XRTgLdVaMWZlt+
P8gZ0SdSe7IR2Oedeb3pB8BAAnHLbHroB7PUwxr6/3yVk5XO1JHVh9nD3nHiY8av
VVliKZLOA+nzN7BjsD5uoQeM1wLp7pBNjXdsJXAgwkTYhKQTZCcJvPpz0G/tjF4P
C3l51yXi2jBlsWIChml2OMfEgtTGHQONR2+nXzQ7+gb2z/g0AgjngOBjtbO2B7sM
C33w5SPMmYSvIHOUKPSFodAeeFr1Kg==
=oi89
-----END PGP SIGNATURE-----

--OXfL5xGRrasGEqWY--


--===============2965568825839498938==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2965568825839498938==--

