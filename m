Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E980F13271B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 14:09:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7/UV1ai+goejijhGDEUOvxJcpOY7GshMDaZWRombKZo=; b=TCD7W1dwIs1AyyEbX+CDyOJdW
	1+smRiRjpd+b8gx8UXwXhhJpHmofO0RftsOj8BDwUYpxy/iJS5fI7gbJfn+D+V1EwHvty/sn4Qvss
	goatALEheYnddCWHb2jt+dQAoy0AjDZ8BQEH+JJ7aNERIurBywZFzK0WeKF2i/hPbatkj6FTVf2Xl
	Ir+L1nlM5D9iEXA3cWjZVOhXnQ3uMUxmW/Pcw+kgyjhG+pE1RKrM4B5G+PpO77+RWR9Ziyf+Un2Nm
	743XlFQVN5Nz9NMnVvEcnUHdmDBBF6QnmQRPJPA00HuAT3k5CPn/kQGrMm5t9hF5uHg3nXEzHrqFS
	352CTSA6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioobp-0002uC-Oa; Tue, 07 Jan 2020 13:09:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioobj-0002ta-9l
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 13:09:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F226631B;
 Tue,  7 Jan 2020 05:09:13 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 571BF3F703;
 Tue,  7 Jan 2020 05:09:13 -0800 (PST)
Date: Tue, 7 Jan 2020 13:09:11 +0000
From: Mark Brown <broonie@kernel.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v3 3/6] dt-bindings: mfd: da9062: add regulator voltage
 selection documentation
Message-ID: <20200107130911.GD4877@sirena.org.uk>
References: <AM5PR1001MB099497419E4DCA69D424EC35805A0@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
 <20191211170918.q7kqkd4lrwwp7jl3@pengutronix.de>
 <20191212161019.GF4310@sirena.org.uk>
 <20191212162152.5uu3feacduetysq7@pengutronix.de>
 <20191212165124.GJ4310@sirena.org.uk>
 <20191216085525.csr2aglm5md4vtsw@pengutronix.de>
 <20191216114454.GB4161@sirena.org.uk>
 <20191217073533.GC31182@pengutronix.de>
 <20191217125832.GF4755@sirena.org.uk>
 <20200107083654.atgbjhrnhyax2gqq@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20200107083654.atgbjhrnhyax2gqq@pengutronix.de>
X-Cookie: Will Rogers never met you.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_050915_426119_ED3FD644 
X-CRM114-Status: GOOD (  14.36  )
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
Content-Type: multipart/mixed; boundary="===============2071169341112347542=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2071169341112347542==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mSxgbZZZvrAyzONB"
Content-Disposition: inline


--mSxgbZZZvrAyzONB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 07, 2020 at 09:36:54AM +0100, Marco Felsch wrote:
> On 19-12-17 12:58, Mark Brown wrote:

> > This doesn't say anything about how the GPIO input is expected to be
> > controlled, for voltage setting any runtime control would need to be
> > done by the driver and it sounds like that's all that can be controlled.
> > The way this reads I'd expect one use of this to be for fast voltage
> > setting for example (you could even combine that with suspend sequencing
> > using the internal sequencer if you mux back to the sequencer during
> > suspend).

> The input signal is routed trough the da9062 gpio block to the
> regualtors. You can't set any voltage value using a gpio instead you
> decide which voltage setting is applied. The voltage values for
> runtime/suspend comes from the dt-data. No it's not just a fast
> switching option imagine the system suspend case where the cpu and soc
> voltage can be reduced to a very low value. Older soc's like the imx6
> signaling this state by a hard wired gpio line because the soc and
> cpu cores don't work properly on such low voltage values. This is
> my use case and I can't use the sequencer.

My point is that I can't tell any of this from the description.

--mSxgbZZZvrAyzONB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4UgvYACgkQJNaLcl1U
h9AmOwf/dQI3hnspOymA8BdYOaCtzXhoiVJeMde8RKleUyfpqEoLvele7bnhJvxP
66E8RM0aDJk6N+Jc5KzXO1mb1JWFhiGQM92q3NXPczpOyvgl/zl0UwKMnqHnj4nd
/vDVfa60zDKTbUCS12us1kwgJNtHVRiFb8DX+9W3zSONqE5QIeNjmMMoL4EaPwJb
clCtLm7jBckZinNOefKS6M2eElpRFFhtRON7EsaDqObH2xTP9aSNb9PEYCBy3nHq
Cr6gYbC0cwgXL29ayf/aRtx3o9/DTC4LIAfAPZvGjDMN5vgYm3bznZKWmVzgR2Pd
1fQ0J3Dh032Q/8ZTkaceklgsT1uGJg==
=uLVS
-----END PGP SIGNATURE-----

--mSxgbZZZvrAyzONB--


--===============2071169341112347542==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2071169341112347542==--

