Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C861AFE88
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 00:12:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=207JyvWQmiKg4OsbgcfQ/rOXnlcqBGQ1fOMniw7XKj0=; b=CHj
	EFGvUx64JbjiGVggba26XwrAiyPQRL9FUNbJShtl2nkGXcmlQXkaYEzhKgHJHpFfByX9luIkz5LMu
	o3ZhmNnsnfzxjtOTlQbK2K8eD/VVoNX3UEN7fFD3wXfGNb2dFXGCDbzOwE6fWGWVhtIPrnP4vPtT4
	XUKGm9lkyhMZp91NuBlcKYtU3sbYnLoRDqOMCYYgzaEteiiC0L2o9u5kR3NXovUyzNPB7UWwjbqO5
	li7dN5YceDeRylIo6HrO8d0IA4G8yVoDNTiuCx8p8tZFT/d2j6OWWGfRW0rdIHWnuZ3D4L38ylvKH
	sFgHCnGhcwCYns47Kkygc4z5RS5byFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQIAf-0003r2-TE; Sun, 19 Apr 2020 22:12:13 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQIAZ-0003qS-Cn
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 22:12:08 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4953w04FmTz9s71;
 Mon, 20 Apr 2020 08:12:00 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1587334322;
 bh=KvhFCJYfDZoBnVP8jcXi4CgpSpt8Lzp3DJo0iaxWN80=;
 h=Date:From:To:Cc:Subject:From;
 b=siLGayARt+MBKjkZ5Jmgyh9l2pWtUdWUTmFz5zo+8AV/ep7KIfy06zHFdXc5TcBGj
 9n20Pv5h4sXX+Z4qz0YhUUjqmzBhtBcC7LM90oPcTU76Z8SrBsmmOqWvGjjzePVP+0
 eG5NZvAxB76vynmtIbJK7njfY+pkBdfZknfAT1+hkpENaOqBdyZNjSHa3mmYvL9bn7
 54bSABkCfi3cN5zqffatHJNJeZvB3gbQAa+NsS6BiKDW5sMJaR+aOJ1n9ty39b76bg
 wCBr/zmLSUoD5Al8YpnwSH0NccmmXSGxqdyi/9I7OmXhS1Gjrxa5uWi/dIiV4g4YE5
 NBNe61EmlgJhw==
Date: Mon, 20 Apr 2020 08:11:54 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: Signed-off-by missing for commit in the arm-soc tree
Message-ID: <20200420081154.597ffa59@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_151207_687713_EE0956DD 
X-CRM114-Status: UNSURE (   6.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tony Lindgren <tony@atomide.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============2844722622410482104=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============2844722622410482104==
Content-Type: multipart/signed; boundary="Sig_/sspffptTDF_lIfEfrtjUcUs";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/sspffptTDF_lIfEfrtjUcUs
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Commit

  512e8d40f91d ("ARM: dts: OMAP3: disable RNG on N950/N9")

is missing a Signed-off-by from its committer.

--=20
Cheers,
Stephen Rothwell

--Sig_/sspffptTDF_lIfEfrtjUcUs
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl6czKoACgkQAVBC80lX
0GyN8Af/Wz3VGXqNgOg4ZhnsiK6AXgTZ64tZDA0j9tfbOM8yeyrzq78ISQv9oJ2d
RJLzgqVI5jbBAkmBton7lOqeUjCNN9JYbs6OPLMW1YLbWj3f8kZzE5k+NMdYwmrf
XkSv9bgaiCUbIwOr4ELqQD+sNOOBHbdUGlijHI3K6zMT8fIfstay5NQvOVlJGtGX
JfTcwtMJISHm15Hr1tTVaKlTtkIt9WpcBHjCPNBjxuipwgxTo4tCm1FrLzH04Ser
vj0WXz3WT8zZQwTCcBFEWUPT9sminSu6BIB0o30J/YY43AlR+8ArHtuxqryEPgyy
zjqk8CAWxnwJjiwHdEDz/KxdB5kgfQ==
=IwOw
-----END PGP SIGNATURE-----

--Sig_/sspffptTDF_lIfEfrtjUcUs--


--===============2844722622410482104==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2844722622410482104==--

