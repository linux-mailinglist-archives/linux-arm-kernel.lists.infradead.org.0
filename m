Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EBAA2682
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 20:53:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZWrb6X6FQcUYWNR8aH1A+EjVzTSxEm4kYBAcuu73vsQ=; b=Y2I6FMPDXj5Eq3sxAGUTsYkUY
	rzIN4xv4yqjY545byzuM0FxzR80+uS7bSqBSLF5g6zPtV/KRAbThr4zFT1OcVFhYaR9OmMvy+lO+c
	En2Fvf+97L5siKD9sUF0Njrs/Y+Aiw0HMHg37wwc4ntJ1H6HgPB+uNFFJL+Nofk+zQfYFvT0IVCnh
	ajN4U8dlJPqsAyHoATtaOBY8p0sB6H+9ywKxdpSCKpeEcucmvQU4MuVS0cRaTRRLdinLu22/OPYnD
	Qnf4id7rEGd87PXm1H5tdBGgUsESnUOvH9nWpFOBcM9BK+i1gcmrgooC+8Bwy/oPRe7Y+z9DBdwN9
	NXo3YFU4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3PXf-0004Pu-Oc; Thu, 29 Aug 2019 18:53:08 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3PXU-0004Op-2z
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 18:52:57 +0000
Received: from localhost (p54B33070.dip0.t-ipconnect.de [84.179.48.112])
 by pokefinder.org (Postfix) with ESMTPSA id 65D502C001C;
 Thu, 29 Aug 2019 20:52:52 +0200 (CEST)
Date: Thu, 29 Aug 2019 20:52:52 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH 1/3] dt-bindings: i2c: bcm2835: Add brcm,bcm2711 compatible
Message-ID: <20190829185251.GD3740@ninjato>
References: <1566925456-5928-1-git-send-email-wahrenst@gmx.net>
 <1566925456-5928-2-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
In-Reply-To: <1566925456-5928-2-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_115256_282154_B2B8BE8E 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Eric Anholt <eric@anholt.net>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4400648218800844429=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4400648218800844429==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="veXX9dWIonWZEC6h"
Content-Disposition: inline


--veXX9dWIonWZEC6h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 27, 2019 at 07:04:14PM +0200, Stefan Wahren wrote:
> Add a new compatible for the BCM2711, which hasn't the clock stretch bug.
>=20
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Reviewed-by: Eric Anholt <eric@anholt.net>
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied to for-next, thanks!


--veXX9dWIonWZEC6h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1oHwMACgkQFA3kzBSg
KbZRRg//Ryv7Zq+mHMTNa3cr8ox0/gmPrj0BRADdaDUn/V4haoxNg/ItcG0N94zf
rBUXZ1IwcGXQ3AiI+5lmEcj+kAVGRPvN1IYqK6MNGEcIRQq8KO9U1xHYesdORiNh
EQRxyJpjGdxXHSoEduhdHx5CLPTAFScj7xVMBiueVNdJWEXO7RvWIJyAfLQ8uTuG
HUGikkBmOb8aTLRvP5ltNJWKCjaF53MH8mel25KyykhdN+oYfZhxRkkxVLd1pF39
mb6olPxLpPPIODm4iLCC88e6hXY8BB08dne9d73vZI3WSgBr2eNYT0M/5ZzNbRbc
elrzOGUi7aLeRGZDeT6noC/rxEIGSmiKBRdrgOT4oKVvh1SvdkZCEq+TTTodHQ3p
RPlBcgyrJp6NtvrV/AjmSwyWrhU5wxMfGbH2K0ALmndlCWSt19AWhOF2jNWAbqzC
sTnbOi4b1oCPW1fSI7hRf7sHu8QB+CAr6plmPFoGdMqxRW8J9LTvNj3xT4Vegf9z
rCzsucbOn1T0d/R80dnbRAyb5LuYj5hOlZyky1GiN2kqCL0ApQ3FGb4Kcxa700wH
0WLciVQAZJqqAf6SW0by/DTtp1FrGcY8GuBxogw6UbeQzeRZEnT9U7WEpkekMTce
zOgMioM3Hw84yQgo5CVDubafVNBQIJ671UCxmwm1prdXI/c61Gw=
=Wx3G
-----END PGP SIGNATURE-----

--veXX9dWIonWZEC6h--


--===============4400648218800844429==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4400648218800844429==--

