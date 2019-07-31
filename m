Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2171C7CEC2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=19jIJQ76cFyJZ9g9NuT75Eqh2FJX1R+7iuzv6AF6KyU=; b=Qc1chkbnuGMkpbnDsztsBLTf2
	1MPb0QOHeWirQ0yxxay4xQc1I80UlYK4yIsJv2rz6r5Ok31tRKmo3WkDwoFDgEe6zSYRwmcNtoviP
	YAq+giL8BG24hPPhepMUFAtlfHkDVDkYScfX/AROQIfBjfbJCv5cXZ6kPEBgt6FOMBksB7GFfE9WL
	9q7hW8NeM8eIXDV/v2YMRzLVzoIEo39WAJL9QjASrx7FwYTRWVbxQZ9fuWn0AuY8yALnQUu0jgqMP
	DaUp1FccXKkNaGD+KvGAL3/lxje+FmqoE54naAhJYPAPZAMGi2bcELovIavrZV1tjpOkCHvcS5omr
	a9hLK49Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvLp-00013k-9c; Wed, 31 Jul 2019 20:37:33 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvLi-00013K-Rh
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:37:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f8zgVGeJDIycQcvkIadKAWE4jNOD7aBA1sv5eo5/l2Q=; b=Fo4hgxN3HVjwMzMGY2TUs4nJk
 cYu5gBnxRALeeciuagRuGTeUesgj1mimsQykYiW1FAdV1oM3wAnq9yRimGHqQysqyzNi1rQ3ACukp
 vYGcU2hR5CrMFdGLmmtsrnirZeyRYdOWP3DBo1fOOy+Ovre+VB8+uoagIh7GPnYlxLWEk=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hsvLV-0003HI-JJ; Wed, 31 Jul 2019 20:37:13 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id C34E02742C99; Wed, 31 Jul 2019 21:37:12 +0100 (BST)
Date: Wed, 31 Jul 2019 21:37:12 +0100
From: Mark Brown <broonie@kernel.org>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [PATCH 0/6] ReST conversion patches not applied yet
Message-ID: <20190731203712.GJ4369@sirena.org.uk>
References: <cover.1564603513.git.mchehab+samsung@kernel.org>
 <20190731141734.1fa9ce64@lwn.net>
 <20190731202007.GI4369@sirena.org.uk>
 <20190731172613.32d65ad8@coco.lan>
MIME-Version: 1.0
In-Reply-To: <20190731172613.32d65ad8@coco.lan>
X-Cookie: FEELINGS are cascading over me!!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_133726_899256_4CE98AFF 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dave Kleikamp <shaggy@kernel.org>,
 alsa-devel@alsa-project.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Evgeniy Polyakov <zbr@ioremap.net>,
 linux-cifs@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>,
 Jonathan Corbet <corbet@lwn.net>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
 Evgeniy Dushistov <dushistov@mail.ru>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>, samba-technical@lists.samba.org,
 Liam Girdwood <lgirdwood@gmail.com>, linux-iio@vger.kernel.org,
 linux-spi@vger.kernel.org, Steve French <sfrench@samba.org>,
 Hartmut Knaack <knaack.h@gmx.de>, Jonathan Cameron <jic23@kernel.org>
Content-Type: multipart/mixed; boundary="===============3714740399510256660=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3714740399510256660==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XigHxYirkHk2Kxsx"
Content-Disposition: inline


--XigHxYirkHk2Kxsx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 31, 2019 at 05:26:13PM -0300, Mauro Carvalho Chehab wrote:
> Mark Brown <broonie@kernel.org> escreveu:

> > There were outstanding questions about where it was going to get moved
> > to but if I read the diff correctly it looks like it didn't actually get
> > moved in the end?

> Yeah, it doesn't have the move. My understanding from our discussions
> is that we didn't reach a conclusion.

Yes, that was my understanding too which was why I was surprised to see
this going in.  This is OK then, I'd have acked it.

> In any case, I can send a separate patch with the move part once
> we reach an agreement about what's the best way to proceed (or you
> can do it directly, if you prefer so).

I'm not likely to do anything without someone sending patches, I'm not
clear on the utility of the move with the current division of the
manuals.  I don't know if it makes sense to have an embedded developer's
manual as well?

--XigHxYirkHk2Kxsx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEyBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1B+/cACgkQJNaLcl1U
h9Ccawf2NvrLW0ujC5HwkDxagYC2dfnUGm4OOyP/LcS7ufD9vxwdAh08IDJFyHJv
4skkK8AdqWOxNms4e9NRiQE51vul7GMBtbp3YezYEiaaB3tMTrWe2rHSEp10OQmH
5WnnpB7KKnUS3UBTwvFRzI1mGWz+klXpzy50z3hsX9UXUArVoqyDRtSY0YDF3+7k
UNhXw0y2taeDMGRzZnOTDxQkejK13T42Oo79xbzylHww8x1vVqV2s4xLTqn2zaN4
W0DIoJIGec2Ewe6JPUio9xvsURtWmWOet6jFLRZO9oiO6uJqrvQde50F6siwwFgY
JMTn2OFfPMPUZVF4ugqAE7qxQaHM
=etK7
-----END PGP SIGNATURE-----

--XigHxYirkHk2Kxsx--


--===============3714740399510256660==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3714740399510256660==--

