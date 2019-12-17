Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD64E122C65
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 13:58:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nYAZfwDKqBLglEUF6lX/XjmOlwUfdU0KRnXEiyNx0io=; b=LOmdUo+mPBydNAxWk5PCFPF+s
	5GxtcZhyK/u2s/SOqc8jf5KJ35U0iUb3wGc+7pmOeAMX6H9b38exHLarKMupDlwWECXdDiamQnEnr
	k7bqqszOeW9e6IEU5hyGR2nKxmLqlcXIZUGlVEHX4LUAZnlCKuLefFn2yVmwq+cNfpsLqupHdNCk8
	L/nLk2V0iKJo/PTJzKNEYQez3UlRBGEPQw10se84Han637QBW/DIkyQ6KgRSZIknOZtWRaZFmC2jS
	1oVfHoKmf61a49jGct1vdZ+GtqCr+zFTEVlKAfieUgNlvTQItis7SpFTVMY9bF4cnQ2EKEASAlPnn
	O1DyRa2aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihCR4-00025O-FW; Tue, 17 Dec 2019 12:58:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihCQt-00024o-V5
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 12:58:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B54A331B;
 Tue, 17 Dec 2019 04:58:34 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 34EF33F719;
 Tue, 17 Dec 2019 04:58:33 -0800 (PST)
Date: Tue, 17 Dec 2019 12:58:32 +0000
From: Mark Brown <broonie@kernel.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v3 3/6] dt-bindings: mfd: da9062: add regulator voltage
 selection documentation
Message-ID: <20191217125832.GF4755@sirena.org.uk>
References: <20191204134631.GT1998@sirena.org.uk>
 <20191210094144.mxximpuouchy3fqu@pengutronix.de>
 <AM5PR1001MB099497419E4DCA69D424EC35805A0@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
 <20191211170918.q7kqkd4lrwwp7jl3@pengutronix.de>
 <20191212161019.GF4310@sirena.org.uk>
 <20191212162152.5uu3feacduetysq7@pengutronix.de>
 <20191212165124.GJ4310@sirena.org.uk>
 <20191216085525.csr2aglm5md4vtsw@pengutronix.de>
 <20191216114454.GB4161@sirena.org.uk>
 <20191217073533.GC31182@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20191217073533.GC31182@pengutronix.de>
X-Cookie: Thufir's a Harkonnen now.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_045836_092091_477EBEA3 
X-CRM114-Status: GOOD (  19.94  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============8410831952775362129=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8410831952775362129==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0hHDr/TIsw4o3iPK"
Content-Disposition: inline


--0hHDr/TIsw4o3iPK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 17, 2019 at 08:35:33AM +0100, Marco Felsch wrote:
> On 19-12-16 11:44, Mark Brown wrote:

> > What I'm saying is that I think the binding needs to explicitly talk
> > about that since at the minute it's really confusing reading it as it
> > is, it sounds very much like it's trying to override that in a chip
> > specific fashion as using gpiolib and the GPIO bindings for pinmuxing is
> > really quite unusual.

> Hm.. I still think that we don't mux the pin to some special function.
> It is still a gpio input pin and if we don't request the pin we could
> read the input from user-space too and get a 'valid' value. Muxing would
> happen if we change the pad to so called _alternate_ function. Anyway,
> lets find a binding description:

I don't think any of this makes much difference from a user point of
view.

> IMHO this is very descriptive and needs no update.

> description:
>  - A GPIO reference to a local general purpose input, [1] calls it GPI.
>    The DA9062 regulators can select between voltage-a/-b settings.
>    Each regulator has a VBUCK*_GPI or VLDO*_GPI input to determine the
>    active setting. In front of the VBUCK*_GPI/VLDO*_GPI input is a mux
>    to select between different signal sources, valid sources are: the
>    internal sequencer, GPI1, GPI2 and GPI3. See [1] table 63 for more
>    information. Most the time the internal sequencer is fine but
>    sometimes it is necessary to use the signal from the DA9062 GPI
>    pads. This binding covers the second use case.
>    Attention: Sharing the same GPI for other purposes or across multiple
>    regulators is possible but the polarity setting must equal.

This doesn't say anything about how the GPIO input is expected to be
controlled, for voltage setting any runtime control would need to be
done by the driver and it sounds like that's all that can be controlled.
The way this reads I'd expect one use of this to be for fast voltage
setting for example (you could even combine that with suspend sequencing
using the internal sequencer if you mux back to the sequencer during
suspend).

--0hHDr/TIsw4o3iPK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl340PcACgkQJNaLcl1U
h9BQJwf/ZRW2Sc0sN6zR4aGO1ekytPGFqpZCQbZG5T5CX9CTgmD+QldwXmP9gB0A
fAa98/pWCJQHoEVQQxbrVMEpfoFKUTONO5xv+/jA8lq5MTxo9/s9U4mZcVulaCEk
uiWXoDvSF6LrgQvsJpkFooRbdrUDHxwF73qd+qfxGkDknsayb7XPPt1O2AWzLFCN
dezSJXFa8Xw+qa+y3H6r1W9+siNEIGYp2qjNlUWFtltrZav2ys2TxITxYXlQundv
9iX5+AIzFWeAMsMdoMp17Q49QWW5bYCQ4p3d3M8jtRvGN7LpZflN79S4sWYEuhQe
XYgXLKaDfjer7VeQkopSdft+oAo3Pg==
=iy8V
-----END PGP SIGNATURE-----

--0hHDr/TIsw4o3iPK--


--===============8410831952775362129==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8410831952775362129==--

