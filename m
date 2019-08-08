Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1ACB863E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 16:07:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lCMgMunJVenlXZmhMeZ8n3WS2sxAN+btvZNgTfYoBBc=; b=gAeoAdmxP5qPTy3Hh41LMAqdk
	2V2a3u7EW3dGnmY6/co6L/b6q/cuGRG/4KYOb3yk6aquygfMco9N5EFRyzvPZfPKhH1Q1QGjEpkky
	F6+OTaBGmuruARbJ8ownNOEmQeus8cDj61yc9pDlrrtsB8RVEGn5pQqG1iFNyafD07WwJ6ubDqcOF
	jSDhaAayEXojeIYiNRmfw8bjislEpfxQRZoyQ+hyviTwFDbBkBDoXDvBWJ8Fe7WXFENAl3ItpAZGT
	nSh7k7NUFsTudaj6WpMRWjxbOWgpbkCdX23Amk0ORvhn0PkUvUbOeEfpxaPKpjSBFJeIstErjnF2e
	feW+hiEow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvj4t-0006Cf-GD; Thu, 08 Aug 2019 14:07:39 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvj4i-0006C0-2Y
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 14:07:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gQdS3Zv3TLS1aTCb741O+yvlJZ0kyEmR5RGpHCriacE=; b=wh4IdjnNSk1Fiu7BeCBizEcVS
 ySLIA0GV3WWHIDmr4XbS56l6l4SwYe/LwmKki9o70gzi0KR/eqRdJXYL+f4Y6cJq1nMlSWRLb62LT
 ECxor10kY5Rw4p+3FtmRmG3b6Rkpfw12qsPxWMnwCSQuszeTwqSQgFgRTmYQJFEo3i0qE=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hvj4f-000355-U0; Thu, 08 Aug 2019 14:07:25 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 2EC052742B42; Thu,  8 Aug 2019 15:07:25 +0100 (BST)
Date: Thu, 8 Aug 2019 15:07:25 +0100
From: Mark Brown <broonie@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>, will@kernel.org,
 catalin.marinas@arm.com
Subject: Re: [PATCH v3] arm64: Clarify when cpu_enable() is called
Message-ID: <20190808140725.GI3795@sirena.co.uk>
References: <20190808140554.13212-1-broonie@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20190808140554.13212-1-broonie@kernel.org>
X-Cookie: I think we're in trouble.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_070728_114814_C204737E 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: multipart/mixed; boundary="===============0252313068763924887=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0252313068763924887==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+PbGPm1eXpwOoWkI"
Content-Disposition: inline


--+PbGPm1eXpwOoWkI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 08, 2019 at 03:05:54PM +0100, Mark Brown wrote:
> Strengthen the wording in the documentation for cpu_enable() to make it
> more obvious to readers not already familiar with the code when the core
> will call this callback and that this is intentional.
>=20
> Signed-off-by: Mark Brown <broonie@kernel.org>

Missed this at the bottom of Suzuki's mail sorry:

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

--+PbGPm1eXpwOoWkI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1MLJwACgkQJNaLcl1U
h9CLqgf/Yxe+97BG6Gfxd/+nc15p7ZL47DJpwG1Y7eI+GdHkf/7PY/bm83m/QuRj
pgPEAs6TN+dgueOnV0zE6Lk+poxREqDRmi13XLHaWi26IvJqL1ZEyyur6mZdP3TD
6sUW7BcVcoslzDUSG7WCZU8LgE1i/bu+tJu29JX7FXYJHiePBdaFWGT1drKSUBer
c2ugD4yxkCD1Z2rXddqBVwkIQWA2TqSYL4okfeJ97600bP2O1go0RPc2oh/ehb0u
lRPBthD73lO33Yw+CsgSdqSNcqucyQvPnmuxI943drhZorxmzKAaMlUSvIPDiYcL
3UCLAv+pdK4kwomR2itPIj9F9bAmvg==
=+DrQ
-----END PGP SIGNATURE-----

--+PbGPm1eXpwOoWkI--


--===============0252313068763924887==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0252313068763924887==--

