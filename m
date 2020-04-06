Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8610519F522
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 13:50:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ADThvGeNCr0YIrjvhXNDdzN/Dei71w7ydcSDD96NFYA=; b=NIvwpxlneWd9m2YPDluTeabBJ
	pRNbozv6S+Mn//+84XzKqnsm/JIwSPom6gA/ZYlYLDh1rDazJUuuu9YvfPROnd0UOP+XO2lUlJVK2
	I3cTFrwfslvPLCBi0EnN8LYPE6IDkyk6OtQlLgrJQTiKgOJeUd7w7FXZOUAHWuP3IPJpNV/NCTi1S
	UQUFg+uQMydJ1jaEZ1QoMY7sCWVtyslf2Kbo7Pkxa+WIKhCpJm4+Pcdnz7p5n/0Zu+ubQ0CF7ye5D
	R7Cy/QEAQYF2C09fSt0jO5tPSLqALd7tVHnhz4spLcaNd97EKYxzNogZ7y/T2bqu6hZ6/cS2yG9c5
	1RfOCa/uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLQGg-00048i-7j; Mon, 06 Apr 2020 11:50:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLQGZ-0003sM-99; Mon, 06 Apr 2020 11:50:12 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4F841206F8;
 Mon,  6 Apr 2020 11:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586173810;
 bh=T8JPB2G201IEXtY9alosGKryKAmkDfl6bXQtj/eFyw0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qvyM70Aitm0A8bkQA9KFhhF+YBMwVWKMlbAXpGvIlOPB5IymIJfiYVSv8iP4QkML/
 lQbPiycMFY5IpuJ8pTonEj1ZtW1CKB1V0TAUX7A3Udswogrt1vu4q0RGwwwsVO7D7/
 +pX6sL+5s606/Oy82X+VJEoRkXsS12NDjvAwn6bo=
Date: Mon, 6 Apr 2020 12:50:08 +0100
From: Mark Brown <broonie@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: sound: convert rockchip spdif
 bindings to yaml
Message-ID: <20200406115008.GA7650@sirena.org.uk>
References: <20200404115225.4314-1-jbx6244@gmail.com>
 <20200406110703.GA6837@sirena.org.uk>
MIME-Version: 1.0
In-Reply-To: <20200406110703.GA6837@sirena.org.uk>
X-Cookie: Ahead warp factor one, Mr. Sulu.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_045011_360391_75D4FC02 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6691943457988277992=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6691943457988277992==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Nq2Wo0NMKNjxTN9z"
Content-Disposition: inline


--Nq2Wo0NMKNjxTN9z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 06, 2020 at 12:07:03PM +0100, Mark Brown wrote:
> On Sat, Apr 04, 2020 at 01:52:23PM +0200, Johan Jonker wrote:
> > Current dts files with 'spdif' nodes are manually verified.
> > In order to automate this process rockchip-spdif.txt
> > has to be converted to yaml.
>=20
> Please don't send content free pings and please allow a reasonable time
> for review.  People get busy, go on holiday, attend conferences and so=20

Sorry, I just noticed that there are actually some changes in this
version.

> Please submit patches using subject lines reflecting the style for the
> subsystem, this makes it easier for people to identify relevant patches.
> Look at what existing commits in the area you're changing are doing and
> make sure your subject lines visually resemble what they're doing.
> There's no need to resubmit to fix this alone.

This bit still applies though.

--Nq2Wo0NMKNjxTN9z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6LF28ACgkQJNaLcl1U
h9BQDwf/TLMzjvaOS/XrkaDPT2V2JBzzwos/AckUmEy1bGBb3gFmfuV5mHpZFfTM
f1svscqWp5VgXssq6EGCwZnUpmyGjo1AcJTq1aYCAgXa65a7c8D8QS2WwzYlFeFQ
NMTO/Vd5q/9qjreQSvqWCXByFF1lSaNX3LOq4F1b8wEloSjFUv33W4AgewOq8g6P
evxzb1IsiIUv9CJsOgz/cPAud4FseYOuh4H1L+TqigrDd4z1i9nUXeluSvmswf0k
WJGHHvU2xxLjFicbQeJrG5VyXHSELl6JRdbojGFPksD2SKTnHXl3+/mLDWHYzFW4
4YhxljCFCaRnx+ofEiOsmPEjt/HEOQ==
=y6jt
-----END PGP SIGNATURE-----

--Nq2Wo0NMKNjxTN9z--


--===============6691943457988277992==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6691943457988277992==--

