Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A509511D2C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 17:51:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QHe7wc9xU23yDxEZa94qRtLFatjzESmqcPrxGiwNhXw=; b=nYoGsePWmlVfkgdxPBqtL9t92
	zvQeoJkw9baB8Ox/QiOiulWXv83flvyprB39zPEojEmTWq/RB5y7iGiy8vE62YwKlppLvGGozJIvu
	iN02APz6u7RuWTMGgoM3z9kYBiROACt0HTkGZ18NXM5kmB7xJokdEXmhEpGXWO6WVZrjPYy9q0LNl
	GeNAcpBX/CeeCClDPdYtDPEfOa3P/WTqbDcwKoQZhHwjy4nD4NDEzFIJYdyPx3a30orzNXGnu2gQF
	27jMKFbLF/WewrzwX2rZnBj73QC0pYd+xUgk0wF8FnWIx+UBBZrp+own8iSmEI/WRUsd3stzRBZXM
	pf6MCmQOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifRgj-000559-E3; Thu, 12 Dec 2019 16:51:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifRgX-000549-NI
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 16:51:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C3E3630E;
 Thu, 12 Dec 2019 08:51:26 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 431F63F6CF;
 Thu, 12 Dec 2019 08:51:26 -0800 (PST)
Date: Thu, 12 Dec 2019 16:51:24 +0000
From: Mark Brown <broonie@kernel.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v3 3/6] dt-bindings: mfd: da9062: add regulator voltage
 selection documentation
Message-ID: <20191212165124.GJ4310@sirena.org.uk>
References: <20191129172537.31410-1-m.felsch@pengutronix.de>
 <20191129172537.31410-4-m.felsch@pengutronix.de>
 <20191204134631.GT1998@sirena.org.uk>
 <20191210094144.mxximpuouchy3fqu@pengutronix.de>
 <AM5PR1001MB099497419E4DCA69D424EC35805A0@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
 <20191211170918.q7kqkd4lrwwp7jl3@pengutronix.de>
 <20191212161019.GF4310@sirena.org.uk>
 <20191212162152.5uu3feacduetysq7@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20191212162152.5uu3feacduetysq7@pengutronix.de>
X-Cookie: We have DIFFERENT amounts of HAIR --
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_085129_808707_4CBEC124 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Support Opensource <Support.Opensource@diasemi.com>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "andrew@aj.id.au" <andrew@aj.id.au>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "joel@jms.id.au" <joel@jms.id.au>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 "lee.jones@linaro.org" <lee.jones@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============8152014198750277156=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8152014198750277156==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZG+WKzXzVby2T9Ro"
Content-Disposition: inline


--ZG+WKzXzVby2T9Ro
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Dec 12, 2019 at 05:21:53PM +0100, Marco Felsch wrote:

> "... what's driving the input ..":
> Sorry I didn't get you here. What did you mean? The input is driven by
> the host. This can be any gpio line and in my case it is a gpio line
> driven by the soc-hw during a suspend operation.

Something needs to say what that thing is, especially if it's runtime
controllable.  In your case from the point of view of software there is
actually no enable control so we shouldn't be providing an enable
operation to the framework.

--ZG+WKzXzVby2T9Ro
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3ycAwACgkQJNaLcl1U
h9B0+Af/VqUSeJpE19kobOJNyxukShzWkjvn9zBGGTGch6WlXuTTNWPT3to6NmBZ
h9MnIKzpjLfRlv6iAlnWJRxzMh5yeAZv7BBOwdqpO+pLwsJ/xcTpcT8IEqioaIYx
Vgq3TQKDv5I9NJoz33MUu6RZ/FwFcPx7rF+9Hs/O43gAjeQy4EW4o25ZTqSJivZe
BXocX/5YTPwTuFBpYbLLvu0YX/joFGU50yiN3IcMPUMWkf8My0aSD5FjWZDTZD07
+KMKZi5qHkLZ1icKON2BhiYDMNH69+ormalcBZMrXiS7rVeoIGQ+d4ox2l+Osieq
J3w1vPOljnw05pXWu43tWEgA2h9ung==
=OQvA
-----END PGP SIGNATURE-----

--ZG+WKzXzVby2T9Ro--


--===============8152014198750277156==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8152014198750277156==--

