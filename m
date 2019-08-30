Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7D7A376B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 14:59:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6cyo8BicuOeQQ/+seu7U4SiPP/atdTLgd+nSxe+62s4=; b=IKyQ1+a1Dk0U9DBExM9GywnaQ
	rJTJE8WKfdAoZMG5nOwjw6srl62SnYjyjZ8/clLUR6JTNcDwbHDn/SnCvtA/XKVNWY+fopRB4fv14
	lcbgKz+AwbqnGCF3JnAJ3O3tKAtU0w7CuWIir3jo9dZJJknFUoC3JzuhMmBPG0VZSfGgLDqehwb4Y
	0JpahLsBwpD3SCsYEe6KCWKDPtEUfmYTcXoOAKNGBo+ndUjQxd5RghX/9BFHL6djU7m2AO6tr7pVt
	w2U1unBu8bhKmGO/Z3BqGhZUgk0Esio4pidm8J3k6R3x/C3BFeqoTCh0CbAxyRcGVTYgYIEZmzlqY
	BZ1hSua1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3gVQ-00080f-A5; Fri, 30 Aug 2019 12:59:56 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3gUI-0007Q1-3i
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 12:58:47 +0000
Received: from localhost (p54B335BE.dip0.t-ipconnect.de [84.179.53.190])
 by pokefinder.org (Postfix) with ESMTPSA id 5A9932C0095;
 Fri, 30 Aug 2019 14:58:45 +0200 (CEST)
Date: Fri, 30 Aug 2019 14:58:45 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Subject: Re: [PATCH v1 1/2] i2c: iproc: Stop advertising support of SMBUS
 quick cmd
Message-ID: <20190830125844.GD2870@ninjato>
References: <1565235473-28461-1-git-send-email-rayagonda.kokatanur@broadcom.com>
 <1565235473-28461-2-git-send-email-rayagonda.kokatanur@broadcom.com>
MIME-Version: 1.0
In-Reply-To: <1565235473-28461-2-git-send-email-rayagonda.kokatanur@broadcom.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_055846_328395_17551BCE 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lori Hikichi <lori.hikichi@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-i2c@vger.kernel.org, Ray Jui <ray.jui@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4122861188855122164=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4122861188855122164==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Km1U/tdNT/EmXiR1"
Content-Disposition: inline


--Km1U/tdNT/EmXiR1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 08, 2019 at 09:07:52AM +0530, Rayagonda Kokatanur wrote:
> From: Lori Hikichi <lori.hikichi@broadcom.com>
>=20
> The driver does not support the SMBUS Quick command so remove the
> flag that indicates that level of support.
> By default the i2c_detect tool uses the quick command to try and
> detect devices at some bus addresses.  If the quick command is used
> then we will not detect the device, even though it is present.
>=20
> Fixes: e6e5dd3566e0 (i2c: iproc: Add Broadcom iProc I2C Driver)
>=20
> Signed-off-by: Lori Hikichi <lori.hikichi@broadcom.com>
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>

Applied to for-current, thanks!


--Km1U/tdNT/EmXiR1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1pHYQACgkQFA3kzBSg
KbYqPw/+L16sbeg6ZouyXIds6l9vBvd5ZpyTng7F7EMmGA5qkOQ7Dxk5gtWfW7xL
edvDOfUZOeQRw8IAJBTxUDl8Brg3UBnD16skm0aiOlwCFoyrDmCBQ3/BX6q1mFOF
nbhX0YZRzK+h45anQVsOJ7td7A1F+29EwBu39CZDCbcHzbLmYbOi6/jem4eXZK5I
r3Mk+DhvQtGeDEQEHE92b3WlUGNTVZswssk/OhF/r0Wzc890BYO6/aK2Ux8oFTnw
0mf02w49uhjub9+qeX5yq8vKFD1UyYC5wI6QOWJtuJyj9pXcigzA29T628PjShjI
wlHpGxoVEvzvdi6Ho6wlXwwiz3yNLRT/Hn4fsVDd3os3oHJ8NmFCJqMZMWZv5tyv
d9CLV9FCW9aCMiEyTcHNhwNVSrig++NVYcZcwpAYZyVqIC8s9QWelBMk2veog66K
wjreG6p9d5EZXV2y1Uowff31ZUMWColTayrYXMY4u+Gk2y3MuCunH85oFfH2MLEQ
w6+FS6VVysmJ0YkugyodtVyKIsyYGRcatEYPF1U7MrP67lJLHYw2dnP1JhgrHkx6
wqmMths0bmxu1xu234RD+IeGfZyM7/EqpKH2mSmGXy1Nu6hdBMZm4XNMEFXDlqO7
ruZiI7elM4XeMAZppEoW84Ja9HQrvqM2a2KmVXBpORQP2JBghqY=
=rbvx
-----END PGP SIGNATURE-----

--Km1U/tdNT/EmXiR1--


--===============4122861188855122164==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4122861188855122164==--

