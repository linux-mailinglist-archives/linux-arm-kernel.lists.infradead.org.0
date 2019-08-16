Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C548FDAC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 10:21:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MDQ9/THjfUj51/nalBi3z6VwqGcKyh9PqSqdYZUTj+c=; b=Rg6JNXkJDVS3Mqd3XRFsD/+JT
	kle1C2lzVxKCmt1FF4vBv5wQRvd147neVyL1+UrQutDeTALmFnHCWo606/cWCOMQhcSg0ni4wamLS
	ybTZNZrdbi3xuINfe86rfAMTFstWook31vNUjhcNLyWbShX1M6+qe//l6v7jm7TGwYrBNN8YCzgtQ
	ifjEL1JIAB/4iqxpJ/PJuAAb1z/ixSj3l0do/GJWtZEfb8/yaiNDofqC6I7KRv6W4AQiIovWdVIYc
	ZfYlQorF0wczkcZCbH8WgY9duOM801qBXy69SePeAi9Yv/hg7YJJ9uqEJ7QMemmfupeI8h6lAzhPI
	p9ZuV6Mzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyXUQ-000244-Dz; Fri, 16 Aug 2019 08:21:38 +0000
Received: from letterbox.kde.org ([46.43.1.242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyXU8-00023g-Vq
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 08:21:22 +0000
Received: from archbox.localdomain (unknown [203.187.238.17])
 (Authenticated sender: bshah)
 by letterbox.kde.org (Postfix) with ESMTPSA id 8FF8528AA7C;
 Fri, 16 Aug 2019 09:21:17 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kde.org; s=users;
 t=1565943678; bh=Fq/JAj2DMh5WajhSajiSBS2R4HbCSthz3JemWQBtydg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OtmIbVxJwwcw6KxbEh03BicruwOl1HuQRNp/YGd4t/srRWSJC8O4SEroVIJqQyOYQ
 T3PSedJzn3/9EGnfjq3ZkY97GxxWfC7LneC3xZ663dyWNDlhcV9tHkvhusMb5V8zqB
 xhKUjj3FVPgV7BgCtppVrAVUOuqBPthstefPURWuO2oRyJNTPuY7NYn2wF9aRSXpff
 YgHtM/n2AQfY4OQhmdYUilcsqN7YDSsjkgIJkQKJEoYcaNd4l2UBA9TOrgKrrrgtni
 7F3yDqRw6pohzzV/IHEyYrBEqhTsnAReg/JcrBk2QvY02mfvOfxAWCkpunob7zFwLH
 /jQo/n1QgEXbQ==
Date: Fri, 16 Aug 2019 13:51:14 +0530
From: Bhushan Shah <bshah@kde.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH v2 3/3] arm64: allwinner: h6: add i2c0 node in PineH64
Message-ID: <20190816082114.GA18236@pyxis>
References: <20190811090503.32396-1-bshah@kde.org>
 <20190816064710.18280-1-bshah@kde.org>
 <20190816064710.18280-4-bshah@kde.org>
 <20190816075211.xaq54q2cdniwjpp3@flea>
MIME-Version: 1.0
In-Reply-To: <20190816075211.xaq54q2cdniwjpp3@flea>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_012121_304454_52057612 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.43.1.242 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Wolfram Sang <wsa@the-dreams.de>,
 Gregory CLEMENT <gregory.clement@bootlin.com>, Bhushan Shah <bshah@kde.org>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============8936380087881982579=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8936380087881982579==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6c2NcOVqGQ03X4Wi"
Content-Disposition: inline


--6c2NcOVqGQ03X4Wi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 16, 2019 at 09:52:11AM +0200, Maxime Ripard wrote:
> > +/* This i2c interface is exposed on PI-2 BUS, Pin 3 (I2C_SDA) and 5 (I=
2C_SCL) */
> > +&i2c0 {
> > +	status =3D "disabled";
> > +};
>=20
> This property is set to disabled in the DTSI already

I added this node here with disabled status due to comment from wens in
previous revision, main reason being that serves as reference/pointer to
people looking at how to enable i2c0.

I can remove it if you prefer.


--=20
Bhushan Shah
http://blog.bshah.in
IRC Nick : bshah on Freenode
GPG key fingerprint : 0AAC 775B B643 7A8D 9AF7 A3AC FE07 8411 7FBC E11D

--6c2NcOVqGQ03X4Wi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEs8s2ZVJUC+Bu6a2XEZaMRJKMrvwFAl1WZ3IACgkQEZaMRJKM
rvzmrQgAs4UbPI/OrKjksQjR9SX73B9grk5BFXC1ueeuEriMeFJmXNCDe8p8TKOj
5uuflxKRw958jtYLvMoc9Z+AQwJZG2oBjzP0X7s9aJAcXIKulQ9NIW6eQU7ZoiZD
2F5Nwb8iYYq8v7OYd+t5I7yGzq/olO/tYvs2eIpPPHQDM7NqzYU+FLi4JcB8UUkL
Mp7h9MrMtNQoY149/3F9QfaFyU77C3rirD0xqf59Lf4e+UVyk8u/eeYzMFemA7br
5rJg+jDbOpJzb6Jn9bw8MMM9TKWs0rW8WyLy0xabATSNB6XEPCyCd/WxH+XzRP8c
wA+Kb80TXdmtsgssKa1+/Llt/AYWew==
=FgLh
-----END PGP SIGNATURE-----

--6c2NcOVqGQ03X4Wi--


--===============8936380087881982579==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8936380087881982579==--

