Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 499637C5A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 17:09:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TqZMO6eMPq0GahQpvU6sYgLO1ZwbFR3oeQVC9sJvJJ4=; b=FxvL1V5TZjmGTUic3S4uFtx+l
	FhsJxEf/+Rg9PhHURy0OI31egXKL+IH5a5PkLEvSRAroTbdLxzHHmbXkI+h3XPi/ABl/Q2ULnV5UH
	irerqwzvZs4MauWNp55Z9QyJKYQzOx76GZ43mB2YJzsFggoWQV9Rb9mfUKLZgJF6fvtBv+BMBInqn
	nZUkBeD9u5+S2ttpgMKEA2MRIOZcn3GtvuSaJsAJ1KQuee0kVWndvSoP2LgEyP+FXcSQ6DV1AEmVe
	8+mGRftma3WBf2dWSgUvZSroSPOSBxXdNvYyKBgiwnHsJ2hsI0eCx+y0Cm/XL6SqrphDvOcKVVT7j
	2HpMcQKaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqEG-0000Zp-Iv; Wed, 31 Jul 2019 15:09:24 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqE9-0000Yk-7X
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 15:09:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oE86iyCkFuLdAx6C70a2YwJmuXxGxpk5g7N4UAbsvzE=; b=wHDqWLMByHptQ4N7z6SasEO5X
 4copLTwIubUmlYDSJkhfbbEj0sJiRUhf5euHlBGvJm5djjtQV/BBd9X4SFZJgTnbUgeP96ZFhKxgn
 rZ+XLwf992Kb6ujYAe5tL3y1XbkzkTGqFvlzHgSioPn1KYI5ECqmEGj0v+wOUi9o+H5bs=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hsqE3-0002Uq-24; Wed, 31 Jul 2019 15:09:11 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id EB8542742C99; Wed, 31 Jul 2019 16:09:09 +0100 (BST)
Date: Wed, 31 Jul 2019 16:09:09 +0100
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77995: draak: Fix backlight
 regulator name
Message-ID: <20190731150909.GD4369@sirena.org.uk>
References: <20190731073744.13963-1-geert+renesas@glider.be>
 <20190731074801.5706-1-geert+renesas@glider.be>
 <20190731081209.GA5080@pendragon.ideasonboard.com>
 <CAMuHMdV9MEYP97_6RFhmbGGB8uY-Pi8S9q+m+XMmHzKHcibJwQ@mail.gmail.com>
 <CAL_JsqJWJ+o6t2Wb162h7Xz98L=WPSi4une-EC0HfoRiWLmKWA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJWJ+o6t2Wb162h7Xz98L=WPSi4une-EC0HfoRiWLmKWA@mail.gmail.com>
X-Cookie: FEELINGS are cascading over me!!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_080917_279808_BDD4A5F9 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Johan Hovold <johan@kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms@verge.net.au>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: multipart/mixed; boundary="===============4506328383128135741=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4506328383128135741==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eqp4TxRxnD4KrmFZ"
Content-Disposition: inline


--eqp4TxRxnD4KrmFZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 31, 2019 at 08:47:38AM -0600, Rob Herring wrote:

> As long as we have a consistent base name that we can match schema
> with, then I'm happy. But for regulators, we have a lot of node names
> like 'buck1', 'LDO2', etc.

Those are all types of regulator (LDOs and DCDCs are the main types of
voltage regulator, and buck is another term for DCDC).

I'm still not clear what meaningful effect any of this node name stuff
has :(

--eqp4TxRxnD4KrmFZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1BrxUACgkQJNaLcl1U
h9AL3Af/aUeFtao+e3RZByp0wSj7o2Wf/AP0GdZxNpNL9iEZiwzVlcZd9MsJbVHk
1DP61c59GBTfKy8SkLx9HlcIo7MO2V8WDFeX7Sl3ojtW72ubXNBYtPf5KW6Yfdll
s+16xROordrMpe1Z8P0m7DHBQeAuuipy9nYlXbFpyoBdjNykpxFbmfhTPrAIlql0
I4Q8mXVpT927dY3WbAE0ZiyXJFddNZX+v7hB313W3fJ4a5fsjvLSTblVfEMt2NfN
szEd8oXIFXN1WzyN52COod3M7gUTFQL4eH3l+aEDsppj+gcpFcfkAmtoRACVXKo0
5GJeJci6PurEp+MbiVZw3KNvl/24/A==
=upRn
-----END PGP SIGNATURE-----

--eqp4TxRxnD4KrmFZ--


--===============4506328383128135741==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4506328383128135741==--

