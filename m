Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1755417E825
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 20:18:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8NU6L4cT8eOpGRKzJlsvDqhPv5wSR7xfVBoGIwNKx9o=; b=pxrHvKJwIhfZXV2SMyxPs8uWn
	+KEqWn0L2W+iK8NC5X4aa4LcHysu+A1wv7JoY16bUQSZRHuwDUtvKnjHN4o4/AUneHXtPMPmez2Go
	ROxdHhUkV3jOqcCfi9LSucDpEd2wWcxpXFzcVuHTPhQqx+mCroTt4ljo7vKhuGlyz+IgiE961KQMr
	vGaTsiNw3UiP0OZX9l0GSmkEhB9zin+bwDgb90aFWcZELy56uhYObv6hvnMsc+HkFZOeq8DkqHXaQ
	UBStZ/HqqViLe9E4vxsVGYWiOcG2cfzX0xQtA7w0879/B8qgqy3mxeGTysiM6IpcUsM8isDlXWHfV
	2odiC26zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBNux-00039b-Ae; Mon, 09 Mar 2020 19:18:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBNuq-00038n-Mx
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 19:18:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 796B01FB;
 Mon,  9 Mar 2020 12:18:15 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EC4793F67D;
 Mon,  9 Mar 2020 12:18:14 -0700 (PDT)
Date: Mon, 9 Mar 2020 19:18:13 +0000
From: Mark Brown <broonie@kernel.org>
To: Kevin Li <kevin-ke.li@broadcom.com>
Subject: Re: [PATCH] ASoC: brcm: Add DSL/PON SoC audio driver
Message-ID: <20200309191813.GA51173@sirena.org.uk>
References: <20200306222705.13309-1-kevin-ke.li@broadcom.com>
 <20200309123307.GE4101@sirena.org.uk>
 <69138568e9c18afa57d5edba6be9887b@mail.gmail.com>
 <20200309175205.GJ4101@sirena.org.uk>
 <8113837129a1b41aee674c68258cd37f@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <8113837129a1b41aee674c68258cd37f@mail.gmail.com>
X-Cookie: Beware of dog.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_121816_800064_944103DD 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Scott Branden <sbranden@broadcom.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, bcm-kernel-feedback-list@broadcom.com,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6097501494005592500=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6097501494005592500==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="G4iJoqBmSsgzjUCe"
Content-Disposition: inline


--G4iJoqBmSsgzjUCe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Mar 09, 2020 at 11:14:18AM -0700, Kevin Li wrote:

Please fix your mailer, it looks like you've included some text I wrote
here:

> I can't really parse what you're talking about here (perhaps some of that
> context would have helped...) but it doesn't seem to be the clocking of
> the I2S bus which would normally be what master and slave would be talking
> about.

but it's completely indistinguishable from the new text that you've
added.

> It is the clock setting of I2S bus master or slave.
> If I am playing music only, I set TX as master. All others are slave.
> If I am recording only. I set RX as master. All others are slave.
> If I am playing and recording at same time, I set first coming stream as
> master second coming stream as slave. If I shut down first stream before
> second stream, then I will set the second stream as master, otherwise
> there will be no clock/FS signal on the I2S bus to maintain the second
> stream to its end.

This is not how any of this is supposed to work, it's unlikely to work
well with other devices.  If the device supports both master and slave
operation then you should let the machine driver pick if the SoC or the
CODEC is master via set_fmt(), randomly varying this at runtime is not
going to be helpful.

--G4iJoqBmSsgzjUCe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5mlnQACgkQJNaLcl1U
h9DJ4gf/W/+cBKoBjZFDxUg3x8GtQhsWd7Wv5h7M1lAX2b3JG3TYTn/9KTw8pw9t
IqRQlZ5fYkIaqXjoH9c29EHV+7Oc1H7ipYTypjRpmai4D17oAixzgMg6JfsdczV0
RpmZZbDWEYfaIHAC8mAetFWYs0JAd9VLDjRUVY0ineBnXdjCrsZBc4UQsg9vYj+h
uV3z8auOgOz1dHgOk/FYdomT2aXtIJ3vxYQPzXK1Q19uhmlLcO3ELmk+I4opLVZH
CnUx839AjYN+UOsa7z5I/z3RVndp/dtPIBF6TMTLrBJmgdU6QLCPBuVgLE4gdCQ2
W4g38ZUD3DpNTiKgsPbhrXu/v7MxQg==
=Ukbe
-----END PGP SIGNATURE-----

--G4iJoqBmSsgzjUCe--


--===============6097501494005592500==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6097501494005592500==--

