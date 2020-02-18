Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD65162591
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 12:32:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I0yNQ8iVMmbjskn+lXllk8oVnMnj6bWkTrL1/DZUpNU=; b=eVQU/yKLZ/xs5H75/z2YRDKjr
	hYdjsuy3ATu1gtN4kYOP1M+DvnouQ5rbB4ySyG882DazaCVKwanIni8wxLznsq6p/1vD1PAlCK8ya
	p+h3j5eW9XZSGsaChSmQkmvHG0dxQyAxjHoZqWu1GJXNhpAQ7FvbP1gFjsLgYUFw/jD8Okcynkb5m
	d/5I/fyU1FxbXN1+J898T+W0Xuy8izedXSWDI0HbFQR0twnnFMQPW1GeEeP6ldzmKoeUuGJA/tdZS
	TQjyK5p3mQokRaVQrcG5Rb2qG/Ps5rQk7hDXQGpaOuvM3lQtbQcCSoxBc1Kiip5ayTWQ9hpCwj7ir
	dp4WfT/Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j417S-0006UE-CA; Tue, 18 Feb 2020 11:32:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j417L-0006TY-Hj
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 11:32:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 705721FB;
 Tue, 18 Feb 2020 03:32:41 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E92BA3F703;
 Tue, 18 Feb 2020 03:32:40 -0800 (PST)
Date: Tue, 18 Feb 2020 11:32:39 +0000
From: Mark Brown <broonie@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [RFC PATCH 05/34] ASoC: sun8i-codec: Remove incorrect
 SND_SOC_DAIFMT_DSP_B
Message-ID: <20200218113239.GB4232@sirena.org.uk>
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-6-samuel@sholland.org>
 <20200217150208.GG9304@sirena.org.uk>
 <1cdcbc0d-39c7-25f2-68eb-a44e815fb9b8@sholland.org>
MIME-Version: 1.0
In-Reply-To: <1cdcbc0d-39c7-25f2-68eb-a44e815fb9b8@sholland.org>
X-Cookie: No alcohol, dogs or horses.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_033243_632907_B7E58179 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 =?iso-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@free-electrons.com>,
 stable@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7868770511427576495=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7868770511427576495==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nVMJ2NtxeReIH9PS"
Content-Disposition: inline


--nVMJ2NtxeReIH9PS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 17, 2020 at 07:35:08PM -0600, Samuel Holland wrote:
> On 2/17/20 9:02 AM, Mark Brown wrote:
> > On Mon, Feb 17, 2020 at 12:42:21AM -0600, Samuel Holland wrote:

> >> DSP_A and DSP_B are not interchangeable. The timing used by the codec in
> >> DSP mode is consistent with DSP_A. This is verified with an EG25-G modem
> >> connected to AIF2, as well as by comparing with the BSP driver.

> > This can only break things for existing systems using stable, if they
> > haven't noticed a problem with DSP B they'll certainly notice failing to
> > set up the DAI at all without it.

> Are you suggesting that I drop this patch entirely, or only that I remove the CC
> to stable (and/or Fixes: tag)? Is this something that can't be removed once it's
> there, or is the concern about making user-visible changes on stable?

Remove the stable tag, if someone is relying on the DSP B support in
stable this will break it.

--nVMJ2NtxeReIH9PS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5Ly1YACgkQJNaLcl1U
h9CFEQf8D9YL5SadnjL9dOFFrzy8yoRe7dCBkHfRxS2YavdoyZPsbCrDOcY93rEL
/VkLJwslj6K1LCmAYYJ4/Qo+q+hPV2bnnzcslJD4Mk19RhLuBbLR8/kfP0mgnlb4
igA2RgQJlN1GubExF4orNfkGrQxaTORV9EmceHayvRL232NkBdwGqu6wcG4Gk3YR
dA0GaD0uBoCMBucCRvveNRdwJAD9aStpZZwC2Qb4Iv3lMAD6do8XCz99kT+ptlFs
8N/oDBbmQpwJTkXmTphUhhkCkxA/bMZMw8QxPHZnG5SuemVyfYJ/WYevARSnpaTp
zPxaVojES71xzKzOJUh3NURlUBhKcg==
=Hx/L
-----END PGP SIGNATURE-----

--nVMJ2NtxeReIH9PS--


--===============7868770511427576495==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7868770511427576495==--

