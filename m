Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABD589C3E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 13:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fkaIx/ptzMc4eXD6ZWpMV1BgNnrF2Q6AP0Bl+8AMaaI=; b=axPt6+LhrA5DME1tM+ct8Ypye
	lY6nXeyNy1SNxqaxQ9zxlEAlEm29HTaKmIwofoJQxgxyutygO+rUAvsvmxsUQAStmQFgg3LdF3kiV
	Ud+mmnQzHmr4IjzSRs6xq59rWF/hxVZtiOrxD+H0KmMELYI4iWTNsuLBotOWq+T/Mu4LC/Jvmfm15
	M4/NgzPNBBTBrBw0my0wycbil0AYAEno+ffba2D6OewpJiFa0tEBPje96M6LTUvFaSLWrgzXXslEi
	T7WlrsTs0oU20pSgzdCnSggjFXD6itlNdLmyv+HNG7ACiaV6hmuqlkeCATFEB6hoM+o5LGzufyQ+x
	yPtgJpwNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx85U-00079b-8v; Mon, 12 Aug 2019 11:02:04 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx84k-0006j9-Ms
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 11:01:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jvTQU0/ncqqXZDApf5L3Jww+4/vfyT4p+hACaV7a4bM=; b=kkqMmOPduW+sLbd1PSVVdomcK
 Zkfy5Q6CbT3E9jxZYRj6CawNRtzGVSoW+0Z4abnGmutl7WeeYJFlKlRbNxR0meLNSCeIb378NCWxR
 d3Ms2GYtWOqD6r6VMQWwgNViFFJVaKVhyt8BwRuycxEk8oEo8InmjCfvzIsFF8h8BMOFQ=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hx84W-0000yA-VK; Mon, 12 Aug 2019 11:01:05 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id B6FE127430B7; Mon, 12 Aug 2019 12:01:03 +0100 (BST)
Date: Mon, 12 Aug 2019 12:01:03 +0100
From: Mark Brown <broonie@kernel.org>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v4 0/7] Allwinner H6 SPDIF support
Message-ID: <20190812110103.GD4592@sirena.co.uk>
References: <20190527200627.8635-1-peron.clem@gmail.com>
 <CAJiuCcfUhBxEr=o7VVpPROQZadQh7z1QC0SkWSYt-53Sj3H2qw@mail.gmail.com>
 <CAJiuCcc3_1jZWV7G3+fFQYRZ8b6qcAbnH+K6pkRvww6_D=OMAw@mail.gmail.com>
 <20190715193842.GC4503@sirena.org.uk>
 <CAJiuCceYDnyxRLLLLy6Dn6DLTZ+NmSaUnoX1Vmzvgiy0XvF_Fw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJiuCceYDnyxRLLLLy6Dn6DLTZ+NmSaUnoX1Vmzvgiy0XvF_Fw@mail.gmail.com>
X-Cookie: Decaffeinated coffee?  Just Say No.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_040118_781415_E0717775 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============8498895595746108374=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8498895595746108374==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d01dLTUuW90fS44H"
Content-Disposition: inline


--d01dLTUuW90fS44H
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Aug 10, 2019 at 10:45:23AM +0200, Cl=E9ment P=E9ron wrote:

> Hi,

Please don't top post, reply in line with needed context.  This allows
readers to readily follow the flow of conversation and understand what
you are talking about and also helps ensure that everything in the
discussion is being addressed.

> Sorry, I just discovered that the ASoC patches have been merged into
> the broonie and linus tree in 5.3.

> I'm still quite new in the sending of patches to the Kernel but
> souldn't be a ack or a mail sent to warn the sender when the series
> are accepted?

Not every maintainer will send those, I do but you might find they've
gone into your spam folder if you're using gmail.

--d01dLTUuW90fS44H
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1RRu4ACgkQJNaLcl1U
h9BDaAf+JGgo/qiKbJdNE79u2FwpthOgmKAEpcOVw6Z0Lrx2YvRMtW86kCYYDdmh
La5nF6FUWArR10NnVlhJNeSshE4iSF8iGIBtN/lNJGzb3mprdBrCReGkJzcGoHdI
LnpzXGf+ixSv5om2cqAGZ9a6Wh0l4uNdigwEmH3fNv+K+HT4jdO67g78VFHuaB96
mNlhbXTJ36FtGR6ZNiXjpbzCsRiRwT4r0WtGIoEYO5uPzL3zXV467CbGKmMBpjbD
XlUl7rNzdCRu4eqmnQNVFUcToCt4ZVZYGUZmBrIFS1FW7LVaGQRAjf46gC4WEq/R
Ui9Pyp92dWkr76RNhU29bXkdhz8tcA==
=uNoD
-----END PGP SIGNATURE-----

--d01dLTUuW90fS44H--


--===============8498895595746108374==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8498895595746108374==--

