Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EA7583A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 15:35:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FKAowRXNL0mO3sLUQxKNnI+dqWB/065S1p+IFmnlLZ0=; b=bxsi9ehnLAXgHamm4UmuqlPMY
	piwVl4Lcf0G3bq52hpRFjn6dPOjfgWxWgiLDgT7vn9ajQYMzMR0iSdV6bC/9B5+yF3T+Mm5w9jNLn
	VqsuN5jy8jLBIRaQVKaw94ytyJIHXBu1SFNjWGKTvIAk90d+ftDMNVyT0l7Ahf23I3qU35W1YyeK8
	n0brIwIJOvKbTh9EmJCfLzd87P5YXMzAMQBzXdNne0NcqAJXbQMJ2giWPLnOT49Rgnz60XOrEc4zT
	yRgtpjgSxcDu56CtWZGsAIJD43BhCVrAQzZ6VkzEl6bXwuFsRsiL9t71di2IUYK+yDtWezXUkO6gq
	roPr1wplw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgUYG-0003Cb-BS; Thu, 27 Jun 2019 13:35:00 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgUY0-0003BC-Oz
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 13:34:46 +0000
Received: from localhost (p54B33130.dip0.t-ipconnect.de [84.179.49.48])
 by pokefinder.org (Postfix) with ESMTPSA id 230072C3112;
 Thu, 27 Jun 2019 15:34:41 +0200 (CEST)
Date: Thu, 27 Jun 2019 15:34:40 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Eugen.Hristev@microchip.com
Subject: Re: I2C filtering (was Re: [PATCH v2 6/9] dt-bindings: i2c: at91:
 add binding for enable-ana-filt)
Message-ID: <20190627133440.GA7158@ninjato>
References: <1561449642-26956-1-git-send-email-eugen.hristev@microchip.com>
 <1561449642-26956-7-git-send-email-eugen.hristev@microchip.com>
 <4e81d3c9-25f3-ca6e-f2d5-17fad5905bb8@axentia.se>
 <84628b5e-bea7-7d91-f790-f3a2650040fa@microchip.com>
 <20190625093156.GF5690@piout.net> <20190625095533.GC1688@kunai>
 <20190627132200.GK3692@piout.net>
 <eb2d87b7-437c-53ee-a1ca-37c4d3fadea6@microchip.com>
MIME-Version: 1.0
In-Reply-To: <eb2d87b7-437c-53ee-a1ca-37c4d3fadea6@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_063444_973445_1D155D19 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, linux-stm32@st-md-mailman.stormreply.com,
 pierre-yves.mordret@st.com, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 peda@axentia.se, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4321046675170833672=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4321046675170833672==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7AUc2qLy4jB3hD7Z"
Content-Disposition: inline


--7AUc2qLy4jB3hD7Z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > Apart from enabling the filter there is indeed one configuration
> > setting, the maximum pulse width of spikes to be suppressed by the input
> > filter.

Yup, this is what I anticipated.

> This is a number 0 to 7 (3 bits) that represents the width of the spike=
=20
> in periph clock cycles.

For a generic binding, we would need some time-value as a parameter and
convert it to clock cycles in the driver then, I'd think.

> I am looking to see what is PADFCFG , as it's related to the PAD analog=
=20
> filter configuration. It may be unused by the filter.

Thanks!


--7AUc2qLy4jB3hD7Z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0UxewACgkQFA3kzBSg
KbbBxw/+PKlsndFyCPTuBvbsZv6QYFNcJSE6IMOwxnfLjInOoY8cAl/2uc55yh8K
uVXgbOdp9bQEtjjgva8oMOZdT+8N6EOqm+Bjqu2Nw44UsQ6HQXUM+LJU9J35Me4T
USjBCsZL+3rf9SUBq4xDSUa05wBuKN0ZC1Mss55kkBD/R4ULrd9VoVx0rpSe6oAF
/XQeBDsWhqDG15zoZysXgQ/he7kLCGgtPf+dz0vA80JefsflXEyrr3Al9rggVP/F
gK3+4UqBE8YLn0Iepd0HKsk7z3Qs7uLfjZex7fbd9Ul81JCN2yHn4PFIuV+NJf86
C7Nh7zYojp41vxBF1llxMvm+2E4z23KkQ/SKmTqOshOxxEcYH2OdfvuWPyLBctHr
Ex3IKFo/wESvBs12NPz1AAC/EadHG6elpaHNkdNaGjWMA4eIchDF+vaVXVsr34gT
FYSfwVLHx4WZEKBzF+jWds5EBUbNWhSF0+e5vBOkL6BsGJpU5PTgxuvbO3L6jqCj
nbCIkxFFM+pJCcwnb1eaDG9I9IUb1962hciz4tjFWMLog+QJdtWrwSk+az1237Jc
0okdeuwS1ztxn84GLBuELSkDizc0GlYEJbz0+ICd2ZLXXFRwytpC/b3Sj/QgGOWM
GNZtPtRGoadH2jxHySVRG+j9veFm1US51dR4b25SHUzlWyAR62A=
=tCqi
-----END PGP SIGNATURE-----

--7AUc2qLy4jB3hD7Z--


--===============4321046675170833672==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4321046675170833672==--

