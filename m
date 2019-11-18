Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8436B1004D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:57:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IdnP/Q7Ee4+kFRGJCO1/BVHLxRT4iXXwQwXmKRZ9qXo=; b=VYXNQGxTQ4IhoxRobHtgtQGI3
	RtcCLKND/Fji5Et13vZArmO72WdrnJlnVXfkAhT3JpFl2y/GaNMdYi+bsJ9YnVRQCvGHRGEJxtRJE
	DmnSoU9d2Xz6gHpVE0HRM9wAiRMCm28LWAKuIrNBN7FpCytfBHGD1ZpEB/qxw7ydEZQjMfhDH5nt+
	M6Q+VStni/MBsgzkiJgXxQ9YmvylFnXKa7mELo0mZL3nsOVAUKewalpZM1mol7r43B850uKhGRts8
	Ukh9v2Tk70C7vokjexI4HxozBQOSwXCeeTCEPrtjxUaqKXaIQDZAgiIht5VLTNFGHWJMmYjVhA6Px
	ZweDljAGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfei-00022C-ME; Mon, 18 Nov 2019 11:57:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWfeZ-00021b-29; Mon, 18 Nov 2019 11:57:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8D6E41FB;
 Mon, 18 Nov 2019 03:57:07 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F006A3F6C4;
 Mon, 18 Nov 2019 03:57:06 -0800 (PST)
Date: Mon, 18 Nov 2019 11:57:05 +0000
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 1/2] PCI: rockchip: Make some regulators non-optional
Message-ID: <20191118115705.GB9761@sirena.org.uk>
References: <1eebc002101931012d337cda23d18f85b0326361.1573908530.git.robin.murphy@arm.com>
MIME-Version: 1.0
In-Reply-To: <1eebc002101931012d337cda23d18f85b0326361.1573908530.git.robin.murphy@arm.com>
X-Cookie: no maintenance:
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_035711_147926_D9B75C2C 
X-CRM114-Status: UNSURE (   9.91  )
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
Cc: lorenzo.pieralisi@arm.com, heiko@sntech.de, linux-pci@vger.kernel.org,
 shawn.lin@rock-chips.com, lgirdwood@gmail.com,
 linux-rockchip@lists.infradead.org, bhelgaas@google.com, andrew.murray@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2259580119196998288=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2259580119196998288==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rS8CxjVDS/+yyDmU"
Content-Disposition: inline


--rS8CxjVDS/+yyDmU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 16, 2019 at 12:54:19PM +0000, Robin Murphy wrote:
> The 0V9 and 1V8 supplies power the PCIe block in the SoC itself, and
> are thus fundamental to PCIe being usable at all. As such, it makes
> sense to treat them as non-optional and rely on dummy regulators if
> not explicitly described.

Reviewed-by: Mark Brown <broonie@kernel.org>

This not only makes sense it's a fix.  regulator_get_optional() should
only be used if the supply may be physically absent (eg, when the
feature can be left unpowered or where there's an option to switch in an
internal regualtor). =20

--rS8CxjVDS/+yyDmU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3ShxAACgkQJNaLcl1U
h9DCtgf/RQHTCds9GoZ1Sj3Tl0J5+R70EQ9c6ISqtLqjuDF/emFg+BU55Dke2NTj
0eNey3v6n5wVJjD9wSyJ8+WVnMtlSAY7LT7tyMmZGt9PNzzJbFZwiF+7ep/Na16w
5+mt+ntFxabbeb1pGl8G/A8nF8j5AjrMmTYwRBXiF/kPKyZn2HjDknuIX+pbDmvB
vwb00AIe6ffnIBIyjuAz9GKdZWhXmrFJ0zhTjXJX3FDVWEZF6opRvssMoyT+f3Dp
MwheEYpDTqA+EpAqj7MgKTYM4aXQGLpeGq58FnYc0VJYc/ste4D2jT0hwLdPVhju
VKbmII5/jnkdEF1IJ73y1lbEXMF8Hg==
=lbFC
-----END PGP SIGNATURE-----

--rS8CxjVDS/+yyDmU--


--===============2259580119196998288==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2259580119196998288==--

