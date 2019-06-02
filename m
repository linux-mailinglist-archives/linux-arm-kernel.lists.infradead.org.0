Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C67F63258A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 00:24:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Z951IXaqjPNjvm0ueoB3Azj1Gz48d3h7jIXCTtvhJ9Q=; b=kjH
	vBEJzI/Y8os6e/toK0Sf8AmplQm/CIGQYGL3RVgL+um6M9vOGC1Q+5laIpyuEmM39B8Mude5asasq
	2yEk8/NPlE3GjfgB8q2YOZTsvyqgzMWREu49YNhtFGCKvcMeTLMp1XSEETCE8Yp8/72P+dWcep/7a
	qeyU6hqlA4M3tinx7ymP+laGemi/6Z8fCjgF/ZlL5gIUGXpifIscEVyw3ai4H5VZC9G+EP32ayBvu
	nuNNoTCOvLOVVVp7XnHUOLEyRNN/qqbYfRour9PlykMRShwf7tKn1Rg2RjP1Uk4H4RIhf1p8s5xWS
	98lAD+BttQQ5tRlHYku81Sa2hMS65MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXYtY-0004ru-GX; Sun, 02 Jun 2019 22:24:04 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXYtR-0004qu-R9
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Jun 2019 22:23:59 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45HCQC3mWzz9s4V;
 Mon,  3 Jun 2019 08:23:47 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1559514231;
 bh=3GmzyEWKR6sT0GjlQg3ibQ7graV3HFHeepqykw+PUCk=;
 h=Date:From:To:Cc:Subject:From;
 b=nsI3B8/krcQ/u1cTL5krKUU0Y2VWIhtjyynbNWfB8+fz6g9NWjKGyo03+KXlUohRJ
 tXvcJYqYauh7i1FVeq6KkRB6J1OIig7QXJdJD213aAVk2OzznhvZVRMBFZsGcv2CQy
 1jqT4yv+K62eBHBiljADmkix1UN94Xg35/c5GTiW2e3dEoJL1FIoKkFnwukc3XyT5k
 sQjNYEAPFxMZDGf8qtwrYbPOnolSjBVluTWB7MaSTr+jH8jrQAs7hg3lp6eMHYQTMt
 Gk6mLuqrEggRl2jnnaA9RdlyXNWNLj/1hySuwQNzjxtmwwdfLgwLP1ku/1kI4Tq9Bk
 GentwIGJbdwtQ==
Date: Mon, 3 Jun 2019 08:23:46 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: unable to fetch the mvebu tree
Message-ID: <20190603082346.7bd1d7a4@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_152358_068213_09FD7198 
X-CRM114-Status: UNSURE (   5.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============4738705737107779314=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============4738705737107779314==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/lo5m9qPDu4oiX33meWAzxx2"; protocol="application/pgp-signature"

--Sig_/lo5m9qPDu4oiX33meWAzxx2
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Tyring to fetch the mvebu tree
(git://git.infradead.org/linux-mvebu.git#for-next) for the past several
days produces this error message:

fatal: Couldn't find remote ref refs/heads/for-next

--=20
Cheers,
Stephen Rothwell

--Sig_/lo5m9qPDu4oiX33meWAzxx2
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlz0THIACgkQAVBC80lX
0Gwsmgf/V9gzhu05NqlOLJkYaYO9nMmyYG530vlRb7UFezZH/01F88EoDHRkPZyX
/vSJV0KJZIII+hQYMpu0yTN2+RQZekxFgyA2cGrW/hqrtu6t4ZU8iJn7jpIUZx3u
BBKKozRC8CkmUvY1tLA338/ynwqtKilIwDzQBJjxcEF/ACeS7lkOqImkozGDVHiQ
+CKDvBkfMCEqNb4Nj5BWcW1MVlFNUBd+8poHvomGY9H47VgNoxx/qDn5EBXPiICX
lfUInXWb1Hfs5X+ZHF476VgJE7GeHeMFhAXp3bdDtjch9cBhjHCP4PHJ0dQxVIsd
BjNDhSQtBECbo4DapXK7m7A3pOIPEg==
=7xX9
-----END PGP SIGNATURE-----

--Sig_/lo5m9qPDu4oiX33meWAzxx2--


--===============4738705737107779314==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4738705737107779314==--

