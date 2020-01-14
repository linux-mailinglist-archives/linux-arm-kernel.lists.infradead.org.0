Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9A813ADE3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 16:43:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yZxbq4LPtiXx0Rl6HYnt9WAXbQogVYG7VizLx81JQms=; b=umJJW1PcmiaWD+H4RrOJqjjrO
	SNdUti3QyOXHkI75p7QocqKoFyMBmA6SAqKa+EKu+KSHmdi8maRl0R3/fC8AMubq6uyJO86yGB+uj
	mLWN1rV3XWNqYtbb2iPsdXzTvoLJVnHnpZ/wjJFNTNPyYdDsyJF5w57eh2e+jDjfW4HR1knof+xyi
	mrSfU7foqT8vKrqlbSP183FmSdOEz5hnQZzhJIvJrK+PpTcsKga+LF78qefQiXG/nWCfCY4cEtqgU
	xi29cfZS4ht5OL4PJFUQGaoXm/b46tO7+mxzxqN18QXW5TngdocxmCtVrKQIcmS/yQ1uK9P5M2nKk
	eKNuwRg2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irOLv-0004og-51; Tue, 14 Jan 2020 15:43:35 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irOLf-0004o9-No
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 15:43:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZCTSH+k6xThdH79h0I5oh1zVw+T2m5gqrWX7QMFhKd4=; b=UpQ1WewlV5QqhtFdaZ8w6ORpF
 8M9iXrAUdbtW9g5RYjBjRrjEDY4WYvrb7K/SZOdWF5OskeoDuNHqszDZeK8AHaoLAH7unGua0Uiuf
 Onsb4Voox3RhmYdBl7MgsARFkeAKvNV6JjYHwLu3CouBWfw4L+7XUAqTJXgQDH0Sexj5g=;
Received: from fw-tnat-cam7.arm.com ([217.140.106.55]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1irOLa-0000KP-L6; Tue, 14 Jan 2020 15:43:14 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 2CE91D002CB; Tue, 14 Jan 2020 15:43:14 +0000 (GMT)
Date: Tue, 14 Jan 2020 15:43:14 +0000
From: Mark Brown <broonie@kernel.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v3 3/6] dt-bindings: mfd: da9062: add regulator voltage
 selection documentation
Message-ID: <20200114154314.GZ3897@sirena.org.uk>
References: <20191212161019.GF4310@sirena.org.uk>
 <20191212162152.5uu3feacduetysq7@pengutronix.de>
 <20191212165124.GJ4310@sirena.org.uk>
 <20191216085525.csr2aglm5md4vtsw@pengutronix.de>
 <20191216114454.GB4161@sirena.org.uk>
 <20191217073533.GC31182@pengutronix.de>
 <20191217125832.GF4755@sirena.org.uk>
 <20200107083654.atgbjhrnhyax2gqq@pengutronix.de>
 <20200107130911.GD4877@sirena.org.uk>
 <20200107133811.rua5i6lflzyzlh24@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20200107133811.rua5i6lflzyzlh24@pengutronix.de>
X-Cookie: Programming is an unnatural act.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_074319_779776_950945A0 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: multipart/mixed; boundary="===============0908207313765864400=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0908207313765864400==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yhqQ34TVR4fE8mPU"
Content-Disposition: inline


--yhqQ34TVR4fE8mPU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 07, 2020 at 02:38:11PM +0100, Marco Felsch wrote:
> On 20-01-07 13:09, Mark Brown wrote:
> > On Tue, Jan 07, 2020 at 09:36:54AM +0100, Marco Felsch wrote:

> > > The input signal is routed trough the da9062 gpio block to the
> > > regualtors. You can't set any voltage value using a gpio instead you
> > > decide which voltage setting is applied. The voltage values for
> > > runtime/suspend comes from the dt-data. No it's not just a fast
> > > switching option imagine the system suspend case where the cpu and soc
> > > voltage can be reduced to a very low value. Older soc's like the imx6
> > > signaling this state by a hard wired gpio line because the soc and
> > > cpu cores don't work properly on such low voltage values. This is
> > > my use case and I can't use the sequencer.

> > My point is that I can't tell any of this from the description.

> Therefore I want to discuss the dt-binding documentation with you and
> the others to get this done. Is the above description better to
> understand the dt-binding?

That text really doesn't feel like text that'd be idiomatic
directly in a binding document but some of those ideas probably
do need to be in the text I think.

--yhqQ34TVR4fE8mPU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4d4ZEACgkQJNaLcl1U
h9CJjAf+Lyl6pKu3ywfkP8t2CeYxi0Fz9ndEKvYqp7nK6CZxn8OgX9Jjem3iwm4w
vhgB2B06edcnP8wIDEgk8YUMirzG0/Rc475SlTvVg/1BYOaGftqksTiEZfHJf0qt
4mcWgT+Agw3YzPMkM6kahAu243KxKHAwojM3iVV7gb9PX/rOVtInStggPxzdcxtk
jQQo2RvYBo2mEBArehWE+PGGT2/JElQGTLyhRVx3BrhuAXXoNKuwkS9fUrVAnyk5
m5kKBygRDyY4MdZ/a53/E8URMDJbctEtveN03mzI+QQ//PMDTufBPqSmURaODb5c
PAal49kxIE8ZAfvvCgimhdhS3yzmTg==
=m6uy
-----END PGP SIGNATURE-----

--yhqQ34TVR4fE8mPU--


--===============0908207313765864400==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0908207313765864400==--

