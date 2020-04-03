Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E5319D6BD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 14:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YKjWFHurTR2QWYjb9G73xjJC1bvBv6YYbF19aHVRSeA=; b=hMILrcBTji8fXQ1MqovZTYGgl
	fwkb5iMXqsmjHV57lXY/lFGnMUeQjKt/jSER43+izqPPC2EwaZd0m6bf5o5ctwQhBF07gY32s9o6K
	WmnVGhXk9+/9efu145VRJd1nZxdoG7SaXQXpYSfMyp6bjxnNnudPdLoqjeSkKC5GJAlddLUnfc5Eq
	FwN02MYWWo2uve4jpiWO+wNcpf6f0zMKTPo7MNPevMnj56CCDC5Sv+tmfwe45txDtWXcO5tN7lc0+
	ZnhsCAv705DQn8njKkLI5+iEG1kKGanMiayA1KWkOeBLo88FwwneiF8OK9GmQRs+AUDrqkfu2J7NB
	kP9Abk30A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKLU2-0004sl-O9; Fri, 03 Apr 2020 12:31:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKLTu-0004sI-Dw; Fri, 03 Apr 2020 12:31:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A343F30E;
 Fri,  3 Apr 2020 05:31:29 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2D07B3F7BB;
 Fri,  3 Apr 2020 05:31:29 -0700 (PDT)
Date: Fri, 3 Apr 2020 13:31:27 +0100
From: Mark Brown <broonie@kernel.org>
To: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
Subject: Re: [PATCH v8 00/10] Support ROHM BD99954 charger IC
Message-ID: <20200403123127.GF4286@sirena.org.uk>
References: <cover.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
 <50797a6ac6cda4647f9a396dab0ad08017e3138b.camel@fi.rohmeurope.com>
 <20200403110210.GO1922688@smile.fi.intel.com>
 <8007dadb0b3a13934f2a950204506a156cb2e65e.camel@fi.rohmeurope.com>
 <20200403120135.GE4286@sirena.org.uk>
 <c149a7b377e4e4a26fffa8c9413f3854223985e9.camel@fi.rohmeurope.com>
MIME-Version: 1.0
In-Reply-To: <c149a7b377e4e4a26fffa8c9413f3854223985e9.camel@fi.rohmeurope.com>
X-Cookie: Use other side for additional listings.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_053130_555369_CED59252 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "andrei.stefanescu@microchip.com" <andrei.stefanescu@microchip.com>,
 "heiko@sntech.de" <heiko@sntech.de>, "rafael@kernel.org" <rafael@kernel.org>,
 "tony@atomide.com" <tony@atomide.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "brendanhiggins@google.com" <brendanhiggins@google.com>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "kholk11@gmail.com" <kholk11@gmail.com>,
 "hsin-hsiung.wang@mediatek.com" <hsin-hsiung.wang@mediatek.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "axel.lin@ingics.com" <axel.lin@ingics.com>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "b.zolnierkie@samsung.com" <b.zolnierkie@samsung.com>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "m.reichl@fivetechno.de" <m.reichl@fivetechno.de>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "wens@csie.org" <wens@csie.org>, "andreas@kemnade.info" <andreas@kemnade.info>,
 "agross@kernel.org" <agross@kernel.org>, "Laine,
 Markus" <Markus.Laine@fi.rohmeurope.com>,
 "Adam.Thomson.Opensource@diasemi.com" <Adam.Thomson.Opensource@diasemi.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "ckeepax@opensource.cirrus.com" <ckeepax@opensource.cirrus.com>,
 "linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "rf@opensource.cirrus.com" <rf@opensource.cirrus.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "sre@kernel.org" <sre@kernel.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "support.opensource@diasemi.com" <support.opensource@diasemi.com>,
 "baolin.wang@linaro.org" <baolin.wang@linaro.org>, "Mutanen,
 Mikko" <Mikko.Mutanen@fi.rohmeurope.com>,
 "patches@opensource.cirrus.com" <patches@opensource.cirrus.com>,
 "rdunlap@infradead.org" <rdunlap@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sbkim73@samsung.com" <sbkim73@samsung.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "mazziesaccount@gmail.com" <mazziesaccount@gmail.com>
Content-Type: multipart/mixed; boundary="===============7047724694055060351=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7047724694055060351==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dgjlcl3Tl+kb3YDk"
Content-Disposition: inline


--dgjlcl3Tl+kb3YDk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 03, 2020 at 12:30:17PM +0000, Vaittinen, Matti wrote:

> Thanks for taking it Mark. So I should rebase and resend when v5.7-rc1
> is tagged as Andy suggested?=20

Yes.

--dgjlcl3Tl+kb3YDk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6HLJ8ACgkQJNaLcl1U
h9B5NAf9GjrKaxW2koo8ElpfqvI3L+jZTiyfN6soXmHcBTbbk+A4YZ7JaQFQWWk+
X+s2OG3EFcETrgo6KwqdgxljrJnUIRGx6f5yThediKngvu0Lt7YGt5yufbtDOZog
1FFWWfQqR8h9BGINddVvIu23aYns4nijWN2skNlmOPxDhGb+UWXGRcP19gmahcS7
sKGB4nhMQlrtSfPe1brE2xzBImdVcTaSv3DuQWxUZgNSjGjNpqH/aWkyC+r/93HG
wCXmwLV/DSJrm/NvDiKGV1vCgHKrdlrB+vhMPHU7LQV+CdKgJYf5A/mGG4baTneg
wIvDQ8DVz2beWlgWHgD6xc7c9GyYhw==
=ycmr
-----END PGP SIGNATURE-----

--dgjlcl3Tl+kb3YDk--


--===============7047724694055060351==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7047724694055060351==--

