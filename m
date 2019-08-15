Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E367A8E8D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 12:11:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NoVpF/HE4UMU2NzZIeepDmEpkIDRluF1EGrE9PJYGng=; b=kQ2
	W5U4G9yH88R/pgdTY/iRWitKOUUC5mk5oFhXLrpX8P8YmMoIcn6nyANaZeMNZ2nK0pPumqKqSJkYf
	lJnb87ThEO48n4Lnnbxh8Yk2eDob9GQeg6/4eMCBj9WuGpiH4dsEYFBuGQ/icdRa/q9jLX/ile8OL
	53yaFQyCpAR7jZdBbaF4Is+rNuQdvGwLSLftVbH48Nv2LA0ZI1aoQ4jFYMVj6V/39Xq7ubV3arXZV
	CX0AvPG1iZud7oJqV+5n4PEqM8U5vMDe4aw+3hPQI5AxQ6gFokHA5tq0OwCjcz/m18DFq4UGXQDf7
	qlOkos0zFqLAA6NYzIx48ctr+pIlv0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyCj9-0007uf-Ig; Thu, 15 Aug 2019 10:11:27 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyCiu-0007tU-D1
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 10:11:13 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 468Mfd0wT4z9sN1;
 Thu, 15 Aug 2019 20:11:04 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1565863866;
 bh=FXkZV2wQC0ooyLnCRgInG5DeilSuwNCCOEw8zxf7GgE=;
 h=Date:From:To:Cc:Subject:From;
 b=dxGYEt8vCSvJvuIVQFzN3KoDrXh3gvsTWXAVsi1E4zSEAyToy9/kdXcXLxhfRpQCc
 Ni/bTRzWzx9XqOiv3xqMneJL4X1157GYw3jcsW40TU5Doe5P9N1lwsqOBBtTg7aXIr
 lcfUBIjujP2nrQCYSNaoAD1PsUadtMT1NkJI4+ZROlAS7OEAhi50OK8U3ExYzfx0wy
 eHuDZCpxuiVOoTHTmU4R7+IHz5cEI12gySUkKqovlLKdTyxSI9PYEr64JYMtNZZkyc
 5XK6W7VTdrSZK0sk+eGqc3GGw6qH05Ua8/QrfMFNK1eUaEmPlEemth8WqHbNJspnK4
 B+Bp+RK1qYN0Q==
Date: Thu, 15 Aug 2019 20:10:30 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: Fixes tag needs some work in the arm-soc tree
Message-ID: <20190815201030.7e726870@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_031112_675573_88811305 
X-CRM114-Status: UNSURE (   6.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nicholas Mc Guire <hofrat@osadl.org>
Content-Type: multipart/mixed; boundary="===============2861445223483672674=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============2861445223483672674==
Content-Type: multipart/signed; boundary="Sig_/NoG8Uo78I3L8Gembp_iLP=x";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/NoG8Uo78I3L8Gembp_iLP=x
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

In commit

  dbc3c6295195 ("ARM: ux500: add missing of_node_put()")

Fixes tag

  Fixes: commit 18a992787896 ("ARM: ux500: move soc_id driver to drivers/so=
c")

has these problem(s):

  - leading word 'commit' unexpected

--=20
Cheers,
Stephen Rothwell

--Sig_/NoG8Uo78I3L8Gembp_iLP=x
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl1VL5YACgkQAVBC80lX
0GxZSQgAnFlqIQmlXx2RIttBQD+FbFSeImwmT8SSc/DWZdoo6kvZjXu+6Dzzz7UN
e1hlfEtDhDYEkG4fWYYrtFw7zueWk5qXBrG6qrfxnAPUBD2UgmLdnpupSsupMjoh
ssq1z4c9882EzFYW0HKZgUq6PtrgU/zDYzAvB1m6nyPGH/EtXWRjGAgzJwngXFSI
KYpraA+MwxikxpjBypBdLnAqYnYB+zJKvYjxBAf9qomARYPm7wmJILKyfYre1S82
HMTnsR0czqf9m/nYnn0RJhG56ob3EjfWfZtMFKgeO0HvwcRh9QSCsYBSV2RpevPe
7fMDpyQcEmQvi1kT4raGhPvLtyX/+Q==
=USk1
-----END PGP SIGNATURE-----

--Sig_/NoG8Uo78I3L8Gembp_iLP=x--


--===============2861445223483672674==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2861445223483672674==--

