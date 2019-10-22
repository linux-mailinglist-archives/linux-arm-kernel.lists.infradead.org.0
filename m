Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDBEE0933
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:38:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SRtWv0qZWYX3xyq/7KbjaFiBvFBUnozT4nkF+X7lRfU=; b=iBQCpfRhnEpl2aYXmKYAxtBq/
	exPK6PJScwxgiomMrRs4Jx2rrnAY9UyA6TcQgdGJiQPZOaNNqEnmgLG564YB19TMHQunnHmiPLFC2
	/uZMn0bBY75NmP8P6s0U5p4cKroXd5uXEo5xOsoJlMFO6rVnM6Vf3SG3RMaodVV6ti1TUdCJVeoem
	UodmkzPxKUAbhghlB88RGD5na6Kd6M7ZOzgotqC9uSqkwoNiUfovpTImMJDA8QNvYLORseXv6dVqq
	pYeOmEdhqKC5AIry8ybZ+FtL3SocQVllytNzfokfmYG/tAmXlHQn+ZtVoi3BM3TDYT/Xnglmu0mwC
	Aqq4xKEkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMxAv-0006XV-OI; Tue, 22 Oct 2019 16:38:25 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMxAN-0006Hi-1A
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:37:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yEWjUh9HRZLx9XZTRlNwU0IyHfWYaOjUVBl6LKXoSGg=; b=eujbdbr8i14aLx7d16qzSg84a
 Fy/kXsYQnk8/XUTrW2u/qw/hMLvFjm4w0Q7lg5KpxbaI0CCxIsw/f0PdaQNCOdA7TGUyxoYsIrW1R
 JoNZO8dYJgUf5Adtu5cTcRIOQ7VA6XlRBx1INaHuA17pBD98PhJGENc8UqV4BbNuFsTDo=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iMxAK-00073S-Fl; Tue, 22 Oct 2019 16:37:48 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id ED5112743259; Tue, 22 Oct 2019 17:37:47 +0100 (BST)
Date: Tue, 22 Oct 2019 17:37:47 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 19/46] ARM: pxa: hx4700: use gpio descriptors for audio
Message-ID: <20191022163747.GQ5554@sirena.co.uk>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-19-arnd@arndb.de>
MIME-Version: 1.0
In-Reply-To: <20191018154201.1276638-19-arnd@arndb.de>
X-Cookie: Whip it, whip it good!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_093751_097168_FD94EF85 
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
 Daniel Mack <daniel@zonque.org>, Philipp Zabel <philipp.zabel@gmail.com>,
 Paul Parsons <lost.distance@yahoo.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8053579163294188077=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8053579163294188077==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lG9v85r552aFjg4G"
Content-Disposition: inline


--lG9v85r552aFjg4G
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 18, 2019 at 05:41:34PM +0200, Arnd Bergmann wrote:
> The audio driver should not use a hardwired gpio number
> from the header. Change it to use a lookup table.

Acked-by: Mark Brown <broonie@kernel.org>

--lG9v85r552aFjg4G
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2vMFsACgkQJNaLcl1U
h9AyrAf+PEou8xICUpA4tJXD4/V65hYlHwHijqpdDNIb8z17mM77HkKGZt59II8h
yPCGMI+KNeqAj3bhR7kC6pGAdJ0O2EPBV27wvfg7qdsZ4tTLkKDKRpU+Ub3BawaV
Y+hcM8ovqmbJV9E/1jiwUl29KVvbCbMSjupVbL8YpxA5uK4hLUfPi2W0fuC92wxB
riKv3rnc0+qfsjc2nZBAQ+A16BA6pQZYOi62Nk8aTosPva2zP6kIPXjwnRmKahZw
gfsjwsHCKgOA4qu1FQSNkw/p/D1SFXSl5Y9CVT4SZoJhJSBQ7sE7UsxiV/+2cd8g
dq6oYdPGaAueZLaZTJz0Xru8jPwafQ==
=hKIE
-----END PGP SIGNATURE-----

--lG9v85r552aFjg4G--


--===============8053579163294188077==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8053579163294188077==--

