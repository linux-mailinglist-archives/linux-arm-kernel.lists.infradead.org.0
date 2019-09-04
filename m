Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D268A951A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 23:25:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=j8L+3b1oVSvfVlLh0olaXE1yBWoBRVEa01Lt9qdgFtc=; b=Zzp
	zxTVZDdH1JH+0V+Zcu/Ldxi1rpQbwCOj6f8NF8TsBl9h9CdEEkClL4hVXM2HJwSaevisV20Gbw+P+
	Cop90HfyZ96pHWOC7Enub1SiTF/FLD7wEThpWbTBjXqO7Ssw9CBc1cYhYQEaUnAlIYJaubXHliWZn
	6veXuybOeKou0wxXn/SSuLZzV66v4s2YBrvYpHfpds1SslurZ8dgPIPkg3548fnc8Yw5dwx/UTFgt
	dTj1hfkRoIyNJtVcjuvHN8ouxV4PZz/wxakfuJGNX8CmJiMoudE0aN5Hr7f+/DQOtmRy6JxJRreWP
	FbsKQN++D2kwduUDgWUdDrN/0cZD/Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5cm5-0001lK-GX; Wed, 04 Sep 2019 21:25:09 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5cls-0001kZ-0N
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 21:24:57 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 46Nxfr6zCGz9s7T;
 Thu,  5 Sep 2019 07:24:52 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1567632293;
 bh=eNW/ajGWlMGT2zVfiq0xeHOgrXfvOpoxaZYav5xwi7s=;
 h=Date:From:To:Cc:Subject:From;
 b=GnOq1I+YiwGfEt5b+CaMtK1jV7cV1UguKjuIqk+43im1Ay4a0xZuowEbS/bAhBBPQ
 IVwOHC4K8wnLEh+4zf0qvY+OY7dYtWiZ2pmuOMVxPcXCGkI3LGvEPb6DKRivA4UGq5
 7WtfYn+WVtzFO7bJo65mAfZwPEp/851Z4tnyqHWVJDZdh/SR/OjhGdbKRJtq6R9Brv
 Xep3bKi3wlGTK/upV1tL76sigogceX/ywgMTgenjCIo0us6o3WeXfezGyxARBeHRFn
 xRJTODbKuKZRQ8mvlpmT9Xn+3tdT236U8P2c5HWWe0o+7rbQbxsjLCn4bheEOlO5fs
 4TF1XwFGPgN5g==
Date: Thu, 5 Sep 2019 07:24:43 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: Fixes tag needs some work in the arm-soc tree
Message-ID: <20190905072443.3ad56568@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_142456_393667_21BAE8D4 
X-CRM114-Status: UNSURE (   6.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: multipart/mixed; boundary="===============8567811393258288253=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============8567811393258288253==
Content-Type: multipart/signed; boundary="Sig_/p+6iuOX35cArZ+.jsRTBokb";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/p+6iuOX35cArZ+.jsRTBokb
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

In commit

  ca33f735b119 ("arm64: dts: bitmain: Modify pin controller memory map")

Fixes tag

  Fixes: af2ff87de413 ("arm64: dts: bitmain: Add pinctrl support for BM1880=
 SoC")

has these problem(s):

  - Target SHA1 does not exist

Did you mean

Fixes: c1294fb5cb78 ("arm64: dts: bitmain: Add pinctrl support for BM1880 S=
oC")

--=20
Cheers,
Stephen Rothwell

--Sig_/p+6iuOX35cArZ+.jsRTBokb
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl1wK5sACgkQAVBC80lX
0GzdrggAg3vj2a2Ve+Vo8eCAp+w/f3bjePQJwGUdAXx2cgmb7och0Ai50pxh9ZyD
eNR5ZWurqd/7OynZCAD/wjtuywU9I5XsEuJIKcR/NLCpMA6tYUsvG0MLdqKrDhsJ
9mP/LI3tXmW/mMhFEtNmwa3aUhQYa/pCddND+Usj5XucunQymGb+Sfbbcsx4I2kX
pKn9uyBt59wu1L0KLL3Ztmmxazb6cI9Gl5rxZCNBtlkIsV62OGTBMUkBQCEeBRM4
Pi5KZn90HZECluYKw8unfrmF4jodLSO+Zi8nNJRJBEPLX9+iE4S6UgBQ5davaBSY
Y6Z7tuQOvr+pjQ5Xemo9Id5ZKqU1pg==
=pIkX
-----END PGP SIGNATURE-----

--Sig_/p+6iuOX35cArZ+.jsRTBokb--


--===============8567811393258288253==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8567811393258288253==--

