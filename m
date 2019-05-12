Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F1D1AD54
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 19:06:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XCzFdlHFwT5aUeM1MKmiJDxSqdn3Xho/Dvxx+yg09ZU=; b=cD1Gf735qDfEIAh5VT/+ss7pB
	ZL0hu4UCF0es19kERCdhzwiuPQG4KSL12rIM3iYiAFHQbGIN9HU1FyS2PWkCYLJmvIP4Q02Hf4zck
	T5vuB5nfIBrjgHtcZ+7DxyO6RTrcgSXf3iSwkt/3ls2q0qg0joZFKbUbcIDHvmy3PisaQbh4/hKSP
	RlDuluISjkIZqlJlrjIvrYSaNyBm8chpv05pCa/7fSp2A4rxUBbsbIwN/O/HZ8MMj4rCvYgdT/7mY
	BkZeDRv87XFlXrwYZBvrSwBSqlL+o8bdbqBljA7ezoeUXXjATVqh1FXmQ0nKr7WgbW9GrVRu975g5
	SzazT+D8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPrvR-0000XU-Tz; Sun, 12 May 2019 17:06:13 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPrv2-0008Pt-Dj
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 17:05:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=01m3A/Y96dMVi6jTGfgljQjDaC0yvjKoGzz4EJpMfPs=; b=jTRdt4HhtnJjJHafp1MIflgZ8
 DZNUAtSsEZnlic7cY43AZUWFfqne/30nLvtlhzq+5gLB7NCZVftCdhuPDJGwaTEwGgQ385E7Oxy6z
 ejT7lGh7gJceE/BG8tR/752ua5O1uQ3VB0PdZAl8F4cgWquXy+a85ZE9YD+VG0yBo5hm4=;
Received: from [81.145.206.43] (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hPruu-00044n-A0; Sun, 12 May 2019 17:05:40 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id BEB6F44006E; Sun, 12 May 2019 10:17:53 +0100 (BST)
Date: Sun, 12 May 2019 18:17:53 +0900
From: Mark Brown <broonie@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v3 08/14] dt-bindings: spi: imx: add new i.mx6ul
 compatible name
Message-ID: <20190512091753.GR21483@sirena.org.uk>
References: <1557249513-4903-1-git-send-email-yibin.gong@nxp.com>
 <1557249513-4903-9-git-send-email-yibin.gong@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1557249513-4903-9-git-send-email-yibin.gong@nxp.com>
X-Cookie: HOST SYSTEM RESPONDING, PROBABLY UP...
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_100548_603528_62475BB7 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "robh@kernel.org" <robh@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "plyatov@gmail.com" <plyatov@gmail.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: multipart/mixed; boundary="===============0949542631265269247=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0949542631265269247==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7UIJfHqpdi+oBJdT"
Content-Disposition: inline


--7UIJfHqpdi+oBJdT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 07, 2019 at 09:16:25AM +0000, Robin Gong wrote:
> ERR009165 fixed from i.mx6ul, add its compatible name.
>=20
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>

Acked-by: Mark Brown <broonie@kernel.org>

Please use subject lines matching the style for the subsystem.  This
makes it easier for people to identify relevant patches.

--7UIJfHqpdi+oBJdT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzX5MEACgkQJNaLcl1U
h9DdIAf/X2qeVaCSbFh1puBpR4faa0Kk6jowtA52t44qC/EzFms+BOzR9IEV5IEl
CMfUXrocjbJGM9ubz9YDaTcdp1hfJPXjfpkkFfnYubbnPeIR7gH5JQVDb9k21Q4q
DQ3x92Ldeq94CS1/5udatrzwOwnPwzayg+jnMrXg8piLbxdaJND8cxuvCdcr5be2
7TCvW2RvUU1RCVLa3RlgTrfPDPx5DMHEvrNihyLa9MBeWBqvL4w/amqfgFefglJo
oymv3ABjbEAWv31Gl/ZsvQsU3CAFv/pLy9C5MSysjtK9jJA2HZXzDCn+kPYwu7ul
XGAR6UEeIZ8LBryhYFFLGTrT89O+fQ==
=5tdn
-----END PGP SIGNATURE-----

--7UIJfHqpdi+oBJdT--


--===============0949542631265269247==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0949542631265269247==--

