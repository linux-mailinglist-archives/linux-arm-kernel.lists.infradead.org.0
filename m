Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79091E0934
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:38:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vswXXMRsg+i3m3UOG5ObRDcAhu3T3kqh/ZGLHOPeSqk=; b=mdYyq/99V7P6TIaOjlfnJZlJ+
	rSL42rSR9NnoWOol28bZWohuoI2JoHFFBdpsQD9M20KteXCDAZW6gg0PH92YMNRICwKWkPt5BxN+l
	M7+P9UBP57e6AZurM1PK44Y8NsAqSRUYKYMdP4AhLvpm+ol9nhjMm+dgFPumbr1c6EaK7hC3ejgjH
	Vq6curhxv7bMyHidwBzrrfexYycsNhEFhsYei7YC/Y9BI8WAy3b/WvezqOxIh7swNYb0qBPdqhcZK
	L1FP5ZMGzmwiffOtToXR3GkYh3aJY4fXIoYLrIYcQ4EUYFVD/gLwNZHGLJByertqy3blYVlALmTmV
	hYtt8Hosw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMxBF-0006rW-I0; Tue, 22 Oct 2019 16:38:45 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMxAb-0006T9-6B
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:38:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9/fvYnIL7LfXM+M3n0vReAsqZf3TBvnkJHO/5fj3JO0=; b=CoarkaARHMkWh9bAgIzemxZsR
 ZvzmzF5YtXG46kMDc4mq8Elq4v2Ls1Ksi/5d0fJ6wJKXvnPpN8U2VLyNJkUidbNWi4BxmYBYFdmOF
 n65S189GFbYRke3uf//1BK3EiXaZQdS65jWEunJuTsODPGypUvSDx8gwF1rjAgkf9WshY=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iMxAY-00073e-Kl; Tue, 22 Oct 2019 16:38:02 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 20D842743259; Tue, 22 Oct 2019 17:38:02 +0100 (BST)
Date: Tue, 22 Oct 2019 17:38:02 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 21/46] ARM: pxa: spitz: use gpio descriptors for audio
Message-ID: <20191022163802.GR5554@sirena.co.uk>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-21-arnd@arndb.de>
MIME-Version: 1.0
In-Reply-To: <20191018154201.1276638-21-arnd@arndb.de>
X-Cookie: Whip it, whip it good!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_093805_279504_8392888F 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============1192885365636667327=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1192885365636667327==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jTlsQtO0VwrbBARu"
Content-Disposition: inline


--jTlsQtO0VwrbBARu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 18, 2019 at 05:41:36PM +0200, Arnd Bergmann wrote:
> The audio driver should not use a hardwired gpio number
> from the header. Change it to use a lookup table.

Acked-by: Mark Brown <broonie@kernel.org>

--jTlsQtO0VwrbBARu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2vMGkACgkQJNaLcl1U
h9BZoAf/byNOVvP8AyVc+q40jXPdmEx1BeW+W+mdkphAUOlrJ8L7ofKVxME7W4jz
lCcZv3svPKXE4Tuv1b8Ua+cFGKl37CIRLQJnpXajrmm5699mqaovyUu6BZXJS9mn
jZvyjEMHS3N2WrMeIZ79cdLjPYLX4ruUhzC0F/gsKPIgHVl9Rt1eJYBGzkTuImWm
yG4Uda6MUVs46UNkpIcT2WWBf72YHWoo2uzy81R+2NX+Hsc4vx1ocJS2VJoDJWPe
yLvJBZlDtnrq1S2F1HMJaK8H86GAT1vNK6FjyrOtDQfpvdqNFCm0oTcyqpn7DvLV
CuSqfIOGxomBEe6WRIVMGaPQ9mKR+w==
=QbX5
-----END PGP SIGNATURE-----

--jTlsQtO0VwrbBARu--


--===============1192885365636667327==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1192885365636667327==--

