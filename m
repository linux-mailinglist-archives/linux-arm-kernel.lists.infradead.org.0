Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F3F138814
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 20:57:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cZNMXPvBGYuQLNJvAd+yAm5dbvEZ8+Z0LB4bjVG1pSo=; b=QJP
	jhdGvns5uguwDmwx8pCpkPLayohP+MxCiY+I/D7B1GfwBwrAw4rD8d+l1os46eGdgphnB5XVX5qGh
	QVf+bXDRBZxFvD3hOxJ2QkM1n/CfJbcg++vaJbG3mNRIyOlIMXeLzQd6PIdaqF9+E818my1u7kGx2
	sZkrTN8ZrZFmxnUXA0+J/5OIiCWD46psQewtKmYzSyCmRgJxILY+uRIVUgfKDMvDyBdZh8HGVplvf
	I9Q4KJWZLx399RGLuK7e+rSJETsXdKMrDPs94OgUkdFafo+EP6o44LA2pt5wIRkk6NVhiSzSj6rfB
	D6OsOxz9FdrrdDflTe3g3o17sLE3Vnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqjLq-0000kz-AH; Sun, 12 Jan 2020 19:56:46 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqjLg-0000ix-G5
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 19:56:38 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 47wnXl3B0Gz9sPW;
 Mon, 13 Jan 2020 06:56:23 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1578858987;
 bh=JEaFgT13395F8z6RSXB4BOtl0VLZfQth8DbGdBHoACo=;
 h=Date:From:To:Cc:Subject:From;
 b=Cz2xorTD/sU2vA7umeBBu3Acqoo0PutXTtqK0/U3F4ghpBRquhGLSHN0VioS70NkB
 sd7IzVxruSaB9O8wF6v6H7UwY6vBRrZUyfMySd5Rws4BnVNXi/lfY6SfLAcZ5G5sQw
 3WBpxRfr8I4OmN/tpXpKf38Ye6hmjEEGohUUbOm+yEXXSjGIb4UlINklQH6pHfgeg0
 98CXmoDIHKwbL6X+f2dv/PdoQEs8FqiajutZrdI3s8EwBEMdmtbg3uTJKRXajUfkKt
 a4ILcud0/ecz3TVd5+wI/VuSYFCqgcVQL7Fbzzl3dfjPoZBSlHNPXOKxdD6LJpnYO+
 N18w9dfZZlBZw==
Date: Mon, 13 Jan 2020 06:56:22 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: Fixes tag needs some work in the arm-soc tree
Message-ID: <20200113065622.15eb3c87@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_115636_694813_793A7E75 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: multipart/mixed; boundary="===============7384685291982563729=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7384685291982563729==
Content-Type: multipart/signed; boundary="Sig_/=dfYuDVEKiAfgopGaB+pRQ0";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/=dfYuDVEKiAfgopGaB+pRQ0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

n commit

  0ff15a86d0c5 ("ARM: dts: stm32: Add power-supply for DSI panel on stm32f4=
69-disco")

Fixes tag

  Fixes: 18c8866266 ("ARM: dts: stm32: Add display support on stm32f469-dis=
co")

has these problem(s):

  - SHA1 should be at least 12 digits long
    Can be fixed by setting core.abbrev to 12 (or more) or (for git v2.11
    or later) just making sure it is not set (or set to "auto").

Also, please keep the commit message tags together.

--=20
Cheers,
Stephen Rothwell

--Sig_/=dfYuDVEKiAfgopGaB+pRQ0
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl4beeYACgkQAVBC80lX
0Gwj4wgAof2ZXe39HMVp4vHI4FVJ9EfaCK9P1+4weTVebEXYokK1t2rX7VtpkHYd
MOdotYwdVeH3l2f7GUq462vygVU2Cs6LDWpnsT2LxpHUSpvLhEyhoXf+PMiNG5N/
a33sQo3k5M4ErHOWjMeN+3tvH5reX06MbNk1ihgMyYo1JBE+xildptitmQG010bJ
Pa+WSsiGXJPGrLvrjcIrWOfuaXDWunOPnqX2d4LJYUl7Kh1cdawJI4bYt0EdtrYm
7nJTaB9DMW7nZBtZbqLCQsHk+PLgzb0+iCBg+yYCEP91E3O+XYBBYsO/aeBKan+y
PoLERKhsUzuGG39l00SzpcJjf3MUwQ==
=iF0B
-----END PGP SIGNATURE-----

--Sig_/=dfYuDVEKiAfgopGaB+pRQ0--


--===============7384685291982563729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7384685291982563729==--

