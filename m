Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A01DA1BDCE3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 14:59:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5EOlB957nEux9pUPBFCwKK+3v5TFFINsdnXb0v4Lfgs=; b=AaZuguEKoEFghqGeVbx9zEjAX
	VjghTGPmkykEWO8T+DMnc3dhhBF0UXzASIWBPca4dRYdix5ZmPDerC1KwYrOzWrvWDRS/4aJ+uKlu
	SxUi3rDz7ju9utr0SBoo1hYwVL8DGZopZp5iLbOADpU210WAAz3FzLKYJzfm/lKVn+suDJ7g+1JJP
	CwW0I9G1NVcXpEgD6LfTTfcPkljDoARZqXnI3rbad7z62ge/LbekECAePk3URSg8+Z0n+TXV+za35
	Iq/2f4iCOntD95cyDcMJENj2TtPdZ/sqV/Pv9aXSEuiL6/+n5PS2VQiF5OqrD6yE1ATTfmVl9eKC6
	8Zsl0au4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTmIe-0007fE-2Q; Wed, 29 Apr 2020 12:58:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTmIV-0007eq-NX
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 12:58:44 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BECFE208FE;
 Wed, 29 Apr 2020 12:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588165123;
 bh=li6Xj3PSlgcABYGV0eO2IHr8jMH0aES6+8vgJv4vSkI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gKeaL7cuw9y28v4bTwmHN6XU7HARFAAxv4aps3Yd06f8jH0/Y+RsPKEBJCJBMjhpX
 VRkS2NDskyNYR6JPa/7nlbQSFeslZelyy7YN8eFeF4pQ7oZ1GRxuNzeGSfqmRz41hY
 rV2l4ace0KSWvUGU3dxPnu7Z8/Nc6BW7vgTVST4I=
Date: Wed, 29 Apr 2020 13:58:40 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ASoC: SOF: sort out Kconfig, again
Message-ID: <20200429125840.GK4201@sirena.org.uk>
References: <20200428212752.2901778-1-arnd@arndb.de>
 <6b39fbba-c65d-2c02-14bf-11c2d00547af@linux.intel.com>
 <CAK8P3a24whg2RhJE3Vf5u3EWy+wvFqhXdp7EQZuQx0shPsMARw@mail.gmail.com>
 <f91c9a68-7641-beb8-a23e-bd1b9b8d0acb@linux.intel.com>
 <b784c008-7094-05cb-6200-6b246ff39bb8@linux.intel.com>
 <CAK8P3a3vri_-tdEy3x6tRGUjb_k-+Mc+Jt9bQpgFvqm2RN+cJA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK8P3a3vri_-tdEy3x6tRGUjb_k-+Mc+Jt9bQpgFvqm2RN+cJA@mail.gmail.com>
X-Cookie: I know how to do SPECIAL EFFECTS!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_055843_789032_A55D6AA8 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 Kai Vehmanen <kai.vehmanen@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Takashi Iwai <tiwai@suse.com>, YueHaibing <yuehaibing@huawei.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 sound-open-firmware@alsa-project.org
Content-Type: multipart/mixed; boundary="===============1896056657175808902=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1896056657175808902==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HTLCc13+3hfAZ6SL"
Content-Disposition: inline


--HTLCc13+3hfAZ6SL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 29, 2020 at 10:24:45AM +0200, Arnd Bergmann wrote:

> I looked at the bigger picture again and found that the more fundamental
> problem is the dependency reversal in sound/soc/sof/sof-of-dev.c, where
> you have common code that knows about and links against a hardware
> specific driver. This is something we try hard do avoid in general in the
> kernel, as it causes all kinds of problems:

This is a legacy of this being factored out of the x86 code, since ACPI
is not really fit for purpose when used to describe at least the audio
hardware on modern laptops essentially all the enumeration is quirk
based.  It really needs cleaning up for the non-x86 SOF users.

--HTLCc13+3hfAZ6SL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6pef8ACgkQJNaLcl1U
h9DFqgf7Bk+odcTlRMvglULBd8JVvvVNug3HsTUJZY0nAIJ8yvEYcing+rV9QnY6
WwoxEdaADURcX9ZNcW/nwguxgd87xkc2rLeasBXq5aJTtTQlfRkym+rc6ws53+7v
BD6eD5RXHgYz8tTAiPKQZg1pS2mgneX0Akpg5Txl7UGKaffA32meh9iz3f6JvGPe
OUg6IYwkMHEz/2x8Wd46205Ygp0R96/FuUMo3Io6TgJOX9L9lf/2flb+B3yyeHpG
lPtFxgiPutWxduMDbxiAHJL1xgzL1GQScnfQWOgho9egVaaYrW1q7VGRNrBLwHr1
uhwjh/jEoitjH3YvQCM4wI4gOvLmyw==
=qi/x
-----END PGP SIGNATURE-----

--HTLCc13+3hfAZ6SL--


--===============1896056657175808902==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1896056657175808902==--

