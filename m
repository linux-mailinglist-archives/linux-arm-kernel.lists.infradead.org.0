Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45850185565
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 11:38:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1C/8oy/os57Xb2dQXzH1QahdkTeiUP2dVss2zbJ1HlY=; b=cqe
	uB7YD43WU5WJRh8XXhteB+ndOuRMjj0wetArJOiUGF6Qkiv4DZYxxV9zABTwjQ3uuIGrEP/ey03oM
	68Sv/taAqE4XuVINvmL9b3adHeCbPJBurCk2QM9l9AucGJrbNj7ZXNfEHvhZi41+N2jVTVkoo3O9l
	PHeLFRNCAOhZ84Z0wkkaEif5OLaZOTdXbR97NYQUSmxOFy2UqaRR2flanO3DlIyxH9pgI57WQGX74
	yhgWZZTK6XHSRkM4TjjGfsu+brIQIi2OFiKjmZWus2+ioqGjGjW1vLdOGrLcrS6fcsXWGXxugyRqx
	u+duoV4pR57u9/K1XjjcF/UCUpRvnVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD4Ay-0002ot-E8; Sat, 14 Mar 2020 10:37:52 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD4Ar-0002oU-NE
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 10:37:47 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 48ffCQ440Bz9sP7;
 Sat, 14 Mar 2020 21:37:38 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1584182261;
 bh=/+k6rMtfVfK26MXBdszOPziWnmCG+r5GGKB2pVEsbpY=;
 h=Date:From:To:Cc:Subject:From;
 b=F4F6yKEhjPWHgccBmq1kLf/YDYSYi8gjtkHGV0auAGleFaJ5u4h9Gc7B7B1STrqPf
 xub17n//c9KiqMCpze6X0oACr6OO6/j2q1b04ydZJD83rNqCgxQjjA0AUQna3P7tZB
 7bOjq3FRcyEmi4KMEi4JN9oreilv1G8cSkUleA96KZJm/f06pMnN+qBBms7tG6z0yd
 ZtxXU7UDm43hwk6KBDhFmwbXq3wBK3Aa9N/DhjV4KJo7zaL/w2qG1kFuZasvI+uOYJ
 G/YKZ1AtYxoTceJI1Ank30X9yc/OcVNL+RqUfCKacvuZwCRg05yA6HtsUHrnP8tC5w
 JfHEuPkAETI5w==
Date: Sat, 14 Mar 2020 21:37:36 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: Fixes tags need some work in the mvebu tree
Message-ID: <20200314213736.2d5822ca@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_033745_956806_EBB32452 
X-CRM114-Status: UNSURE (   6.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Tomasz Maciej Nowak <tmn505@gmail.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============4590120280573894137=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============4590120280573894137==
Content-Type: multipart/signed; boundary="Sig_/i+LuZgULGyZFMMRwKAiHv94";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/i+LuZgULGyZFMMRwKAiHv94
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

n commit

  17ac1b98b905 ("arm64: dts: marvell: build ESPRESSObin variants")

Fixes tag

  Fixes: 447b878935 ("arm64: dts: marvell: add ESPRESSObin variants")

has these problem(s):

  - SHA1 should be at least 12 digits long

In commit

  bb771464c19a ("arm64: dts: marvell: espressobin: indicate dts version")

Fixes tag

  Fixes: 447b878935 ("arm64: dts: marvell: add ESPRESSObin variants")

has these problem(s):

  - SHA1 should be at least 12 digits long

Can be fixed by setting core.abbrev to 12 (or more) or (for git v2.11
or later) just making sure it is not set (or set to "auto").

--=20
Cheers,
Stephen Rothwell

--Sig_/i+LuZgULGyZFMMRwKAiHv94
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl5ss/AACgkQAVBC80lX
0GzZigf/TfxLvYTBHpWVRbrTEqZTg/S8iCOlIU8iyzim4H9BHoMaAU1WPIsZXXaZ
VlWqW41G5cjEGIZjReq88DEBnhwJ/2l4klyUZRVKhoulFXQK8DyfXXKoRfzkG+KF
iZd7e7CeqQynRprp31Vqs8BtyIXcZeNItm+vx/cO8OIR/827cFmz1bqHfu7KN8Uk
Lr3D8OJPE1geI2i9OKEO7pLynrTS6dETF1TZbHR5FSqiVm5qwu+7xbZrHazWb2Qh
sgZo2P5kT1lpGOyyaNfNqBQzqgHgNoBOD+PAnzsatk427RuQaoe8dJbOOSLGfFNh
feWZV5Pvgtiuu6SQlrLUdi80fPvxjQ==
=gzaJ
-----END PGP SIGNATURE-----

--Sig_/i+LuZgULGyZFMMRwKAiHv94--


--===============4590120280573894137==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4590120280573894137==--

