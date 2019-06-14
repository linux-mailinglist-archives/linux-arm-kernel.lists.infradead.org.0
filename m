Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEEE467CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 20:45:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=niyhdwDtusYef24Yx9gbi3TDtXr6+ccgevU+1aoyyM0=; b=Fzw
	32ob7rz/blKjnyjydXW16xm2nU55MrVbduzpBRtrBCPb6PQwEUXxr4l1Du/Mx46nxWYjrxZyq6o1d
	ySFWYeaL3AQs6GqD0wuxUVX/cDaSMrnq8of+YfHLgoFw+X64pSdHOpmwCgWciepHVZYzwnSXXjdTI
	FkGTv8jiDBG1NjI1eTH7jhrKi7d5Mp3u2xdzqiLrbwZAwwfOPZMtMmFZWE7BoGDU+KW5/GaNogEpD
	8gClOLH3beUFblCp1E6Wxaw/iSgEX1aPNZbocv/wBT4ZQBVHLSCxWKVyw5JmB+f0TBRFkGJZ/adBY
	BHgqholP1bI9prIGHh+lfJ6zTNWx2vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbrCM-0006th-90; Fri, 14 Jun 2019 18:45:14 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbrC7-0006g0-IG
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 18:45:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GiKDfBho8/XUXhUGfJD7DwCqg1tW1DyGQON1eGDsb/A=; b=fG03Mgbl7FlxxJf+F/JoOm/wv
 QpQA1ojeoHx6SQgpS55Il/Gea7Js8LWMnSWSrsXPX6mej13rZMa5MzJ3NOuBV5XuLjLMoB0Sb/JEu
 clhQ3/qVtSwLNMQ00oSKj6zXMAPYFGoXMXP4xbtu+eF4nrDbWPkmCvd5LpnvfKB6U7l50=;
Received: from [2001:470:1f1d:6b5:7e7a:91ff:fede:4a45]
 (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hbrC4-0000KU-OE; Fri, 14 Jun 2019 18:44:56 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 29CF8440046; Fri, 14 Jun 2019 19:44:56 +0100 (BST)
Date: Fri, 14 Jun 2019 19:44:56 +0100
From: Mark Brown <broonie@kernel.org>
To: Kevin Hilman <khilman@baylibre.com>
Subject: [GIT PULL] ASoC DT bindings for Meson
Message-ID: <20190614184456.GJ5316@sirena.org.uk>
MIME-Version: 1.0
X-Cookie: Editing is a rewording activity.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_114459_744220_513A1DF0 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2756958061665038530=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2756958061665038530==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="U5yJ31ax00IavOwq"
Content-Disposition: inline


--U5yJ31ax00IavOwq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git tags/asoc-tohdmitx

for you to fetch changes up to abdcfc25641c5ba6d63047bec1dc8d3aaa7d4111:

  ASoC: meson: add tohdmitx DT bindings (2019-06-14 19:42:00 +0100)

----------------------------------------------------------------
ASoC: tohdmitx bindings

The patch on this branch adds bindings for tohdmitx, including a header
to be used in DT bindings which needs to be shared with the arm-soc tree
in order to allow system DTs to be merged.

----------------------------------------------------------------
Jerome Brunet (1):
      ASoC: meson: add tohdmitx DT bindings

 .../bindings/sound/amlogic,g12a-tohdmitx.txt       | 55 ++++++++++++++++++++++
 include/dt-bindings/sound/meson-g12a-tohdmitx.h    | 13 +++++
 2 files changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/amlogic,g12a-tohdmitx.txt
 create mode 100644 include/dt-bindings/sound/meson-g12a-tohdmitx.h

--U5yJ31ax00IavOwq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0D6ycACgkQJNaLcl1U
h9BtpAf+M4Elz1y6wRK0UjZzNRNv9iCuJtk8E2qWt38WRsgZZ6kaga/IETafsewo
TpKUdYNtmuvtSub8QgqBLta/yByQmdzYjA07gIea+Urra5XlN9nYdfl4Y56ztrl8
UiOOARHe8RzKc+Ha6lJSRa+x4bh/hZu9LrTKXMvJmRFbSvmKNywwCBZcS/VGijQd
x4EFxLTfhk51zAa2KIGmdue3FgUYRaUaGQI6hw/kj602utw7THecMI8KEeyuHtj9
y41Wkst8XCHS/ZIKq+1TXJnm2GbXEWFmQm3dy+DbLvCXMuuzheJJ2DLWN948ee8P
LRiXqg65kSSt2xG/F5PEfxvXQmB6Vg==
=Aiqn
-----END PGP SIGNATURE-----

--U5yJ31ax00IavOwq--


--===============2756958061665038530==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2756958061665038530==--

