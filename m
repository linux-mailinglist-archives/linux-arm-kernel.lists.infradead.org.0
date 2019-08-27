Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A50AD9F285
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 20:41:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m41kwMgQgS5AG8F3sY+GKYSGVpH7jU0O6TzCA3JLdBk=; b=R+8RsUtb028dL0/6wXvmInXVj
	8YGfEoedvwuquhBY9b4bl5vLql7uBvYLGxI1l838RWSMqGhP3g/vrX9cpsHIrwn7Zsy7U0t3NRrPk
	aXmOsDAtLSKOdaVjLdnGJh5t0ZNzudfcSvRLiL8F1CBO6oIyYnO7iD+ij5w/O+HNMcKm4BFXEQFfX
	fmfJCaY394//HM2hNI2sCwlldiGitxySYedfmddTKa6XF5Xvb8ZgzYIA+3GHSvnPM2KW1gwvi8j0o
	2Ku5kbd/qWK+wmxb5hmoAGeERL9yezEIyAYxpyIhKZfreaxLMPX9sj/8kL418+B79lJsNwRQ0ae3E
	lIqkZ0UJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2gOy-0005mW-Mu; Tue, 27 Aug 2019 18:41:08 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2gOq-0005lr-O2
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 18:41:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=epG1Jj0LZAm9JsQ4dirXtSr8T+ss8OxvKfoyO3+fm7o=; b=sM2g0hijUSswGlnHykjQw5vhb
 +nU6Ko6Hf8zMuJKHsKssVCeLZHvI91ek0A1SoM7ns98Ru2B23NI2E3movUEr8CrskL4MGyQItkPQt
 dpl5I24ouOTA5uIUuOnhN7xMJmnb+3/cWJw2OOcOVecSPVDRqugaUfYukM3421A8tu2H4=;
Received: from 92.41.142.151.threembb.co.uk ([92.41.142.151]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1i2gOa-0000xT-5B; Tue, 27 Aug 2019 18:40:45 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 5ACE5D02CE6; Tue, 27 Aug 2019 19:40:39 +0100 (BST)
Date: Tue, 27 Aug 2019 19:40:39 +0100
From: Mark Brown <broonie@kernel.org>
To: =?utf-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>
Subject: Re: [PATCH v2 0/4] wm8904: adapt driver for use with audio-graph-card
Message-ID: <20190827184039.GJ23391@sirena.co.uk>
Mail-Followup-To: =?utf-8?B?TWljaGHFgiBNaXJvc8WCYXc=?=
 <mirq-linux@rere.qmqm.pl>, 
 alsa-devel@alsa-project.org, patches@opensource.cirrus.com,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Allison Randal <allison@lohutok.net>,
 Anders Roxell <anders.roxell@linaro.org>,
 Annaliese McDermond <nh6z@nh6z.net>,
 Charles Keepax <ckeepax@opensource.cirrus.com>,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 Enrico Weigelt <info@metux.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jaroslav Kysela <perex@perex.cz>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Kirill Marinushkin <kmarinushkin@birdec.tech>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Maxime Jourdan <mjourdan@baylibre.com>,
 Nariman Poushin <npoushin@opensource.cirrus.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Nikesh Oswal <nikesh@opensource.cirrus.com>,
 Paul Cercueil <paul@crapouillou.net>,
 Piotr Stankiewicz <piotrs@opensource.cirrus.com>,
 Randy Dunlap <rdunlap@infradead.org>,
 Richard Fitzgerald <rf@opensource.cirrus.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Takashi Iwai <tiwai@suse.com>, Thomas Gleixner <tglx@linutronix.de>,
 zhong jiang <zhongjiang@huawei.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <cover.1566734630.git.mirq-linux@rere.qmqm.pl>
MIME-Version: 1.0
In-Reply-To: <cover.1566734630.git.mirq-linux@rere.qmqm.pl>
X-Cookie: Don't SANFORIZE me!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_114100_788021_26DD32D3 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Maxime Jourdan <mjourdan@baylibre.com>, alsa-devel@alsa-project.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Kirill Marinushkin <kmarinushkin@birdec.tech>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Paul Cercueil <paul@crapouillou.net>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Jerome Brunet <jbrunet@baylibre.com>, Anders Roxell <anders.roxell@linaro.org>,
 Takashi Iwai <tiwai@suse.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 Charles Keepax <ckeepax@opensource.cirrus.com>,
 Piotr Stankiewicz <piotrs@opensource.cirrus.com>,
 Annaliese McDermond <nh6z@nh6z.net>,
 Richard Fitzgerald <rf@opensource.cirrus.com>,
 Nariman Poushin <npoushin@opensource.cirrus.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jaroslav Kysela <perex@perex.cz>,
 zhong jiang <zhongjiang@huawei.com>, Allison Randal <allison@lohutok.net>,
 patches@opensource.cirrus.com, Randy Dunlap <rdunlap@infradead.org>,
 Nikesh Oswal <nikesh@opensource.cirrus.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Enrico Weigelt <info@metux.net>
Content-Type: multipart/mixed; boundary="===============3453263241014828568=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3453263241014828568==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5PPnVwj6ulmYFu5t"
Content-Disposition: inline


--5PPnVwj6ulmYFu5t
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Aug 25, 2019 at 02:17:30PM +0200, Micha=C5=82 Miros=C5=82aw wrote:
> This series allows to use WM8904 codec as audio-graph-card component.
> It starts with rework of FLL handling in the codec's driver, and as an
> example includes (untested) rework for codec with similar FLL: WM8994.

Please make some effort to focus your CC list on only relevant
people, many upstream developers get a lot of e-mail and cutting
down on that helps everyone stay more productive, too many can
also set off anti-spam software.  You've sent this to a lot of
people and I'm struggling to figure out why most of them are on
the list.

--5PPnVwj6ulmYFu5t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1leSYACgkQJNaLcl1U
h9D/qAf/aDKjsXpu3OV9W/YRcVKa/q4lkLirQXvzegtCjjtctGiFmmTa8hRGeaU2
sHHo5pU4H6EDQZubuS3bnNWzE0SRout2VquNd1ddjAQoVCmRv2rfaGFpI2SelVqL
2lAMUx2niskdB2f1YFRIBbuvwfok6C3qew9aM3DZIDhD+foqHLWuwWYNDjjbwopR
rqLgjwGRoCwQQh9/HfhdWB7b94NQ74aPsa0xETo+dsR4z1k1PEjoThjBkckOI/eF
8yFtAR6coVQ2DHbsAKTO7ajC43cumNyh4XhYRAxBVrCJ6wG17AQTT23HTpNaLCGy
tYANpAltXhi4j1vd/QkH9wh3MvDFww==
=GFP7
-----END PGP SIGNATURE-----

--5PPnVwj6ulmYFu5t--


--===============3453263241014828568==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3453263241014828568==--

