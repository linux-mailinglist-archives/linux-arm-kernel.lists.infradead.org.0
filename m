Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E09D4FE3F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 00:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yWbltf1u470B6Kz078kPHuZB+sLMCxGcCAIKlR72WQU=; b=QQB
	d3ag6RGTta1qn2qE0tCHFYGUZv6orrFSLGfvM3Hro8GRqHaZI18A1VwHnw8k+Dboo1Vt6VwQE2kBa
	Qt9qhTmsFO3ZRRyiYhgjcHMEYc0sPo2uxM6mnP4eZqSLCBAUDlhahXIjM0p9JNjXwsHvMcmqoiEMe
	lmtUErmK/G22nPQ3YzPaSNsrwxOzwdcZk4I7J3WP+VG03y8WwcIe7bymSlAuTUcx8hU+ioSlGmkP4
	KfyoEv+355SFrwuWKfkB8hzfgGtRB2mrtlVWZop+z+VyoUgPq1CzISes+5lFtbVQrnN27277FVFi8
	vZtNJyikdU21ADDqaY5AKvhMhsjfrvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfBOX-0006BO-Rj; Sun, 23 Jun 2019 22:55:33 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfBOE-0006Aq-W1
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 22:55:16 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45X76d2fsSz9sND;
 Mon, 24 Jun 2019 08:55:05 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1561330508;
 bh=CfQNGmyRCYuEzDMKXQ9cnOE6ZWSd1jrKEmYS1i0ftMY=;
 h=Date:From:To:Cc:Subject:From;
 b=OPPnWLest3qGwfakF/bUj22KshAxAKvJEZ0TvgYF5uvuSBZGz/y6stgy+9T9dbQbR
 Q6TxIhic6rQNA3YkEEUzDlY9HLwZoY7in3lpLZXOHuZ4ou63g1TVccUu5L6ATd6iup
 n+4FXtfPBWEWphTMfMcZGy9/GKOoEkdpPfauvfsknPMGWwRkggdulx3z5UxoFXAPMj
 u637IiT4Zw+C/33wHl4r1qLk53b3xh0cPHvl5BNzGZlOiifsAUyhaBkWqqi9CTzODp
 +SPxnLIjZs+nAFzHIj0jTqkFq+0MkcjMnnErRverJJdvM6c5GljDY0BrVrg/gWhV8w
 W09yR2nk+4Ykw==
Date: Mon, 24 Jun 2019 08:54:58 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: manual merge of the arm-soc tree with Linus' tree
Message-ID: <20190624085444.7b4a01a5@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_155515_302046_53A63F88 
X-CRM114-Status: UNSURE (   7.08  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>
Content-Type: multipart/mixed; boundary="===============6900997633679359170=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============6900997633679359170==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/TvkKorMsiA0+QoO2/asEuNP"; protocol="application/pgp-signature"

--Sig_/TvkKorMsiA0+QoO2/asEuNP
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the arm-soc tree got a conflict in:

  arch/arm/include/debug/netx.S

between commit:

  d2912cb15bdd ("treewide: Replace GPLv2 boilerplate/reference with SPDX - =
rule 500")

from Linus' tree and commit:

  ceb02dcf676f ("ARM: delete netx machine")

from the arm-soc tree.

I fixed it up (I just removed the file) and can carry the fix as
necessary. This is now fixed as far as linux-next is concerned, but any
non trivial conflicts should be mentioned to your upstream maintainer
when your tree is submitted for merging.  You may also want to consider
cooperating with the maintainer of the conflicting tree to minimise any
particularly complex conflicts.

--=20
Cheers,
Stephen Rothwell

--Sig_/TvkKorMsiA0+QoO2/asEuNP
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl0QA0IACgkQAVBC80lX
0GwUQwf/cvz09njduHbXOnvqgqpXjuwRlTlJVpRWy9/ThE0Q4jDgn7nlVqGXWJyV
sHC6yPf5D3d4VWbcXhEt6rj1Nu5FiSUvPfS+4FGHpvCXQ76sDZIr2nMms6Y9kJ31
D7wyipX+LWmd7LsTLGq06X0LMZbVEg5g8SjK/bvc4nzhM8yLhMazzFHh1fAYXG6n
Vv7/KyDmUDosCC+Pas2adNx0XwyU5vWjAC9znJsMrZW/057g13iohKR67nImJKpw
RB3SU6LPR1dpWHCtVbnlJjRZyXC3RccdkMDntccB+E8Sx3c/czVyCbm/nUmd4Uka
zYJOk+AQkp3YtXBhcxQ1mjoy/1GMnA==
=vLqH
-----END PGP SIGNATURE-----

--Sig_/TvkKorMsiA0+QoO2/asEuNP--


--===============6900997633679359170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6900997633679359170==--

