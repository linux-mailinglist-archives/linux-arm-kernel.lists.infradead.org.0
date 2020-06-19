Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64719200A4B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 15:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TGsf1K0fO4z0DAkqAoS5AfG43x7rBznhRCzCvetVtZ4=; b=epwyT/MJDIzPnzFJc6862HSU4
	S3805glyhp+CHXkLj0DcQhNgpuB/+89AnpNEp1g0PIT+k4Iq9hNqE6k2ihupB0NUdPhx96n76nfAD
	2x+qRLPcBcaQ/faDeylpuqADT2sKq4UJ9xUOxkWKvGHfmhtyHQs/qPrwSQktxskJnCR4j+NB23yy/
	S7Hrp4QYJbokMzN5NyY6wTb5YcA/E1/Bstu/NOBZ6wikLcNKzjY3LzmhHeG9+e6sQlvxMseqk4WAD
	SJP6B4SDQO/yaMA/+N252/YZVdRzu/+0ujdNNKHGlk4ukti/vPDbPgUH13KelfBANphTZpvoszY7u
	3JS3cjKiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmHCo-0002Wg-Uz; Fri, 19 Jun 2020 13:37:18 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmHCe-0002VN-Cz; Fri, 19 Jun 2020 13:37:09 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 863BA1C0BD2; Fri, 19 Jun 2020 15:28:10 +0200 (CEST)
Date: Fri, 19 Jun 2020 15:28:10 +0200
From: Pavel Machek <pavel@denx.de>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH AUTOSEL 4.19 047/172] ASoC: meson: add missing free_irq()
 in error path
Message-ID: <20200619132810.GA1345@amd>
References: <20200618012218.607130-1-sashal@kernel.org>
 <20200618012218.607130-47-sashal@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200618012218.607130-47-sashal@kernel.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_063708_583342_06124788 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, "Pavel Machek \(CIP\)" <pavel@denx.de>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: multipart/mixed; boundary="===============4524383279580853948=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4524383279580853948==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="wRRV7LY7NUeQGEoC"
Content-Disposition: inline


--wRRV7LY7NUeQGEoC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> From: "Pavel Machek (CIP)" <pavel@denx.de>
>=20
> [ Upstream commit 3b8a299a58b2afce464ae11324b59dcf0f1d10a7 ]
>=20
> free_irq() is missing in case of error, fix that.
>=20
> Signed-off-by: Pavel Machek (CIP) <pavel@denx.de>
> Reviewed-by: Jerome Brunet <jbrunet@baylibre.com>
>=20
> Link: https://lore.kernel.org/r/20200606153103.GA17905@amd
> Signed-off-by: Mark Brown <broonie@kernel.org>

Notice that the bug this fixes is theoretical (found by code review)
and the fix itself was not tested by me as I don't have the hardware.

It may be good idea to for mainline to test the change a bit...

Best regards,
							Pavel
						=09
--=20
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany

--wRRV7LY7NUeQGEoC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl7svWoACgkQMOfwapXb+vKgPwCfatdZSXBo7eyLKEUcWoN1nKrh
K8kAn2+x3sAUwlj/zrlpo9y3mh1nlBDY
=nSQo
-----END PGP SIGNATURE-----

--wRRV7LY7NUeQGEoC--


--===============4524383279580853948==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4524383279580853948==--

