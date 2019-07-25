Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF57755FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 19:44:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wEnc4EMLoqHmBeEM752oZctmw6Ns5DvVLjMqX26bk6s=; b=sNH/AiA8E2s9BihOgKYOQPEwG
	LWxQMPG+Gv1TLY05XIIBj7rGAjsP6gJkFrGSsX5J9lUFz+uxuziBMqkW7CUaNSm6nFYDxkKw6LlSL
	1sgBxyxLQ90t8ZQRwPYQYve83zOCTKTYiv5x1c+fYVfOzQMwbYVJvroIpc6KgHE8s0YOaRqBtv70w
	j9NjPRW1A1GfyNEjuag1qYcP2mIaEfTrUZlWy9NWT2+dURZstTkLDePWw2TnJPB72dz9m9OEcQZFU
	9EtCwXatN8+VVAe03ByvMCbeCywDDgPFcN3fvkOnwrqx3ZW1xBVrKf6ki4RgIIeZwZrSmIEkvnkoB
	LXPc7t3yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqhn2-0006r9-8w; Thu, 25 Jul 2019 17:44:28 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqhmo-0006qI-LE
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 17:44:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QxIxcHtSGkV0O4puDpt6kv9EWAyrdZDebfpnewAIWIk=; b=M45asfunHm1cRA+Puzb4+99gr
 z5d0TeMHJrypKXbUH1TZQUE5EscTWrwlcBzW3kk22y8wRNlShau8AEqw4pEjgauwlfpMkDSDgYeKc
 px3h9FCeLELdUxcJ9N81TRLI6phWyPUAz7E4MUGEi41cvLn3COuo5bh3Ud2L0s++B16Io=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hqhmj-0003OO-My; Thu, 25 Jul 2019 17:44:09 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 315802742B5F; Thu, 25 Jul 2019 18:44:09 +0100 (BST)
Date: Thu, 25 Jul 2019 18:44:09 +0100
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: Best representation for TDM devices
Message-ID: <20190725174409.GF4213@sirena.org.uk>
References: <20190725130112.3j2vi4dyngyr6yh3@flea>
MIME-Version: 1.0
In-Reply-To: <20190725130112.3j2vi4dyngyr6yh3@flea>
X-Cookie: Jenkinson's Law:
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_104414_696805_45AAC25C 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1518461609711075358=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1518461609711075358==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cpvLTH7QU4gwfq3S"
Content-Disposition: inline


--cpvLTH7QU4gwfq3S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 25, 2019 at 03:01:12PM +0200, Maxime Ripard wrote:

> Since I have two codecs, I have two links (described through
> simple-card) and thus two subdevices. However, the microphones
> connected are really separate streams, so ideally (I guess?) we should
> have 1 subdevice per microphone.

> An alternative would be that we capture the whole 4 channels and use
> dsnoop to demux them, but trying to use the device directly (using
> arecord -D hw:0) results in the ioctl to change the number of channels
> being rejected, I'm assuming because each codec only has 2 channels?

> So I'm a bit lost at this point about how I should go and expose
> this. I couldn't really find any similar setup either in the
> kernel. Any preferred way of doing this?

What is the actual hardware - what do the microphones physically look
like in the system, what functional role do they play?  My initial guess
would be to combine them into a single PCM for userspace, there's some
support for that but it's not surprising if that's broken somewhere
along the line as it's very infrequently tested.

--cpvLTH7QU4gwfq3S
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl056mgACgkQJNaLcl1U
h9C4xgf/ecGx+yNE7q7BDjXryu/S2MaP2MoLVGeNAfqFdg6Q37hZnvDBkvS1FclU
ZhvpOy6AmwKHeMEsjIi6nloIBgwAy4xuuTC196fRfZPF6vm8anCEkNgy50L+1LHL
aMumVuDGg+lhdwpw9nNs+7Igf5aPYQ9GtNMRqO7Fzzlc016IzfwZfVuGTGLtmKYb
UPuDnCjbAfZ2y3bd4R2N6upPwykZQEobYTKg6bKecYw/m16OMlayRyXw7Cl/jjQ1
Qc/zIcgcAlPjJGdDmhmU0q9ekigKN9h2oXcyEOFXnHH3ofxa/Pv1NCnlIdjV29+L
VuBX4FLparLISadUL8FIIwxuvGUaZA==
=XGrz
-----END PGP SIGNATURE-----

--cpvLTH7QU4gwfq3S--


--===============1518461609711075358==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1518461609711075358==--

