Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E59D3227
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:35:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jwiJi0ITYWfmWoQHSD4OXq4M6ilmRr4YoqaoBVP+ZWM=; b=SKHPAyskFNWr+2pC5QevHMItA
	IST3AeqypDCY/oUhNcDKqFfmmI8AYfuZLDJcPQNTpAM6i4tn/DD7/G1gI1P+SVs+sl9hLJOVe0kkZ
	UrX11H6QiT54qvKUcpFDIsLRebJLuV6kfUSe3VguOy1S332XPP1PQ6orkft+PElcL6XomMyW/U045
	IUbCJNFSwoEe89Y3FaTzkqgarTVG7d5Iuf1o7S9oDI1VsoYNx9CfzLa1Xr2Ehdp88d0rhJsG/XiDq
	3GJraMs+g6zwR6BWJ5JQBDwizwF5KAF/EybYI/KciHi2Gq4ZLoER/6GzfbwnKvuH1q9akmi4LjXNM
	mw2cFKQeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIf9t-0005B7-82; Thu, 10 Oct 2019 20:35:37 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIf9l-00057r-Ij
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:35:31 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 46q2s74MH7z9s7T;
 Fri, 11 Oct 2019 07:35:22 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1570739724;
 bh=2iGd5ROkda3Y6J2MmH/+8mopajYGf+t5o0Gi5NzAir4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GAZBtPvkT4x2lVX1/F51NL9iqh/G9zECJz1ThPyE3Am9vWs6VtkB2cz5EMm++Ld0b
 XDtvZC8nUDjsxxp8CG/eg29+6KhKCBXBOSwBH9tDMHmEFok+UVzPLqWDSwWnIbrJob
 ZzN0+IqBWa/+9ANOsYUeW3Lux87vC0OLmcpukWZluhKaC5SQQwIw/oy01qshO0ji2P
 Y5aL1/DeLKNGHifZ75bJ5FSdTDaeOOPpYvOi8t/dR/hvjFc4LCGbhsI4I94sppyZeX
 3MSrYMyJB1zUt7fG7zFASr8SfxqKHmognaHXWbsQXK6O6O2WDtqqZ+HupiFSv2LO3p
 vM3fjivBa2P3A==
Date: Fri, 11 Oct 2019 07:35:15 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] MAINTAINERS: Remove Simon as Renesas SoC Co-Maintainer
Message-ID: <20191011073515.2933918c@canb.auug.org.au>
In-Reply-To: <20191010123046.15291-1-geert+renesas@glider.be>
References: <20191010123046.15291-1-geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_133529_886501_02B48823 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Simon Horman <horms@verge.net.au>,
 Olof Johansson <olof@lixom.net>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6364634113133375172=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============6364634113133375172==
Content-Type: multipart/signed; boundary="Sig_/V3S_2M9Xo6krU8dWBzoccDj";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/V3S_2M9Xo6krU8dWBzoccDj
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Geert,

On Thu, 10 Oct 2019 14:30:46 +0200 Geert Uytterhoeven <geert+renesas@glider=
.be> wrote:
>
> At the end of the v5.3 upstream kernel development cycle, Simon stepped
> down from his role as Renesas SoC maintainer.
>=20
> Remove his maintainership, git repository, and branch from the
> MAINTAINERS file, and add an entry to the CREDITS file to honor his
> work.
>=20
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

So, I will remove Simon's Renesas tree from linux-next and rename the
renesas-geert tree to be renesas, OK?

--=20
Cheers,
Stephen Rothwell

--Sig_/V3S_2M9Xo6krU8dWBzoccDj
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl2flgMACgkQAVBC80lX
0Gz6jggAkWH/aV4Ww6HxXnXq0XbwNVDhJTIfgpJ61ST9eggCpm1c3p4KHKvkd9s0
JLpzxz4Z/Yx9WkuDbHmRgnIoWu5U7AoJt6OfU0N3S8sciHM7OhuS5CbtZDusADXh
oFKDnFgnu+/c1onbP5to9IHSHzRtQm9cX72LfHJilKcgN94th7E6aRo/iouS9VMB
K0XFx+YHgqlKglpzvcT52G1jT10r+nfi30g/FqGMWB91PfPEoZDWTqg9ldcwMJiq
NpTqOMO+QGCe0rsZbvj/n9JI4kvIVrk4E9lFK1oStJfkqfDWAyPHlqTCWWxuLvxJ
ccioAcApaMOtA+AjwEMyv+nIFfr0mw==
=qwbp
-----END PGP SIGNATURE-----

--Sig_/V3S_2M9Xo6krU8dWBzoccDj--


--===============6364634113133375172==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6364634113133375172==--

