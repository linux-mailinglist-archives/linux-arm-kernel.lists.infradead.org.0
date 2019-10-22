Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F460E0949
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:40:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GiE/7h2berf+O8fvlE1L/0k+tWEn92PgsIExKbIl7aw=; b=sf+HlqEZgIJnZ3pt9tszkl4Wn
	rLg4SlPK0EVvxfAUqewT5ZGjMHq/BQgv6zjWdh0SEZwBdZOZ997tf6IAlcEEkPeyxyVUdI8+ZmHMA
	Mpk+A/g6ye9vG8DDNHWdqx8gb99bHtApzuI8e6RJZUwT8JmVeoB8ZZWw/JDV06AVD4ZuAsy7Meb2a
	3AQBu+LLrubO9rCA57RabErEksoYb9iV0QlC5DMqIYSArny25hiVKQqv9zNaEBUjU8RlqCi+uH/To
	LnUHlrNp5uqIiDxoMycunTclczTJxo5iL3F3QKkNBJfDx7UdEYMrbDsxxji2F70lKELCaQD2dpPEO
	LgY2nchdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMxCP-0007zx-Ue; Tue, 22 Oct 2019 16:39:57 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMxBk-0007ao-QA
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:39:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oA1KbQ+iL4lJATXS+Rqeu+8Px+PrmA76Q7yx0VphYaw=; b=V6tU+o2WhZ+Gvunqxu1pwYPXC
 qlrlBZyT944wbkAHtEbGIryATy9jVaQoJddFATuvTLvFSr8SYTEXyz+Fxu7W7ExD8kCkXfzwiXEKx
 /lppA2ah0Y2pgZ0Uon3QdL92ifyOZkKPfEfefYZJONXGT5xuAKf0jFnoVu0NpIpfCA360=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iMxBi-00074O-E1; Tue, 22 Oct 2019 16:39:14 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id DCD5C2743259; Tue, 22 Oct 2019 17:39:13 +0100 (BST)
Date: Tue, 22 Oct 2019 17:39:13 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 30/46] SoC: pxa: use pdev resource for FIFO regs
Message-ID: <20191022163913.GV5554@sirena.co.uk>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-30-arnd@arndb.de>
MIME-Version: 1.0
In-Reply-To: <20191018154201.1276638-30-arnd@arndb.de>
X-Cookie: Whip it, whip it good!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_093916_927092_50E9D942 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: alsa-devel@alsa-project.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0534987115821660031=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0534987115821660031==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gYb7txo4D4wAJl1C"
Content-Disposition: inline


--gYb7txo4D4wAJl1C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 18, 2019 at 05:41:45PM +0200, Arnd Bergmann wrote:
> The driver currently takes the hardwired FIFO address from
> a header file that we want to eliminate. Change it to use
> the mmio resource instead and stop including the heare.

Acked-by: Mark Brown <broonie@kernel.org>

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--gYb7txo4D4wAJl1C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2vMLEACgkQJNaLcl1U
h9B4BAf+Nigk17USU9kJexq9HKaYufhu9ucbNDUZLT0gHczwHLubKDwFnz4+gbh5
pUlTULZnfpE0LXEGKSAR5sdY8XbPEQ/mZfwzWFYsmNj/kA0X/H36jS5+kGtFZUpl
2BuiFzUmWYqAo/oBVD2Eprt+OgkO18z/7ftvbs4VcNoQaGU4hZNm+ccBnB/KS0UK
6qPnSD640/Tr3lCHDIfhte9DJ2B1W8Rxiv8J0zvpXQhUGn2AyRPWal+8bBFyg6wb
QdOdpouPKeQV+9azp5dam2tL6qzo9eLSHj3ZMjacGJkEfOfmLSPSSe8EVAMknjrb
uHHkt8gIg41WbFX7zBCEMKsRiRA0gg==
=1IWc
-----END PGP SIGNATURE-----

--gYb7txo4D4wAJl1C--


--===============0534987115821660031==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0534987115821660031==--

