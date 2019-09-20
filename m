Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BA8B8EA7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 12:51:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2fblh6WfoAp64JIBi1/J2BldHMXuEWIxfhsWa2E8w+Y=; b=CuILUB/LwOMRN4SBgoxSjIsQP
	kQpuANvOBxm6r2zi6tWZZETSWMGNdfKaQ1xcqE8gQvtN5t9PXa3J3+ZFyLU7Ebk4IvZHKbLEkT8FQ
	W84fG6yNSeE/xNx4PJA8hwYNiRUGHzkFioK3nCrKLeTFsq/KNhDK4k5QpIcIHb3nxgAyMN7NEe1c9
	1Ob6c9fquedRWjgYto6PT7gRU01Z+fP1hGj2oViG8VMOpAwaHkeM9zGsZAPpD2Iia5x+Yp7PEoe8r
	lD9+c6aZkbcyMeBs8JRJDxsawTejZFTEFaOBiq/wLjQUL1/x3WrD/nRgnARLyxCYhyUHPjiHAvUtL
	xs/bxBLvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBGVN-0004jw-3R; Fri, 20 Sep 2019 10:51:13 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBGVE-0004jS-VT
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 10:51:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PUcLIbaqeuHnXeQutdJgdyi+R4Jz8eNeOWDcF4uPM0s=; b=aBXsyIzsozo5Obmv7v1aptdjR
 Xcx06QOq2bnCWdgDkLSNDxf3bzFr2rX6ntaGY60wWiyibyFN/TnZkD8ISsFxQmheMgXOR10d8oFJw
 ydT4mamHbCCjbsFGav4f98ngoev76Gd623LBbaKTV8BOUtdOO+u1tJIRpkCuGhhOcfvLA=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iBGVC-0001ZW-Vr; Fri, 20 Sep 2019 10:51:03 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 1020D274293C; Fri, 20 Sep 2019 11:51:01 +0100 (BST)
Date: Fri, 20 Sep 2019 11:51:01 +0100
From: Mark Brown <broonie@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] spi: atmel: Fix crash when using more than 4 gpio CS
Message-ID: <20190920105101.GA3822@sirena.co.uk>
References: <20190919153847.7179-1-gregory.clement@bootlin.com>
 <20190919160315.GQ3642@sirena.co.uk>
 <20190919172350.GZ21254@piout.net>
MIME-Version: 1.0
In-Reply-To: <20190919172350.GZ21254@piout.net>
X-Cookie: Stay away from hurricanes for a while.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_035105_023484_E71A7438 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6412590132220795549=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6412590132220795549==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="G4iJoqBmSsgzjUCe"
Content-Disposition: inline


--G4iJoqBmSsgzjUCe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 19, 2019 at 07:23:50PM +0200, Alexandre Belloni wrote:
> On 19/09/2019 17:03:15+0100, Mark Brown wrote:

> > This is going to break any system where we use both a GPIO chip select
> > and chip select 0.  Ideally we'd try to figure out an unused chip select
> > to use here...

> The point is that this use case is already broken and this patch fixes
> the crash and is easily backportable.

> Fixing the CS + gpio CS should probably be done in a separate patch.

If the GPIO is overlaid on any of the existing slots (except GPIO 0)
then it'll cause GPIO 0 to start toggling.  I'm not convinced that the
code doesn't currently support that.

--G4iJoqBmSsgzjUCe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2ErxQACgkQJNaLcl1U
h9C4OAf9FfyzqjxlHkt3ntI6EvTAyZw0LS08pAM3Y9UgSh+9oAHuivVW0ZQ55DFO
IXeXuTGoNbS0doU2lJfCc4/mRGV0SLFkdf9Oa8OHBVnHjtYo7iHhWLuGfwVr6YOr
CqDSofMpphdzsQxhZ8xTycUYjC5ZrJ2Zd31CddLcCZNWRM1HsLN89XXVQ2HclVhi
dVhOkAiGJ3Cy4AeXky7/UNCJbKJfeQQvhSy8Dn+LOqbPrglKDh4xwbfTVUMChBH4
IjFd5De9X/Y5GP1Mqbr7dDz/3fVFbH8bb4jAuaWBJiO2tNkeE4WRKoTSG3BBp9EM
HhAPo7EorLaMmfC1Id2HdhxFrNrNIQ==
=40sX
-----END PGP SIGNATURE-----

--G4iJoqBmSsgzjUCe--


--===============6412590132220795549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6412590132220795549==--

