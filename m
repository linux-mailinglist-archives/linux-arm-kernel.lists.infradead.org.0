Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8928E0940
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:39:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WDXthqLAB0jvfQYWY2iLul+Klgy83/e+/4E/eP/nhcs=; b=QG0Uj/7re8WGFwKhfQuk96dtS
	CNShQD5Hhw3ar2ve7Tn0WzycFSDzVYM/iTfUC08pWhK1bfKWxvMJME110CcUz6s/TQUhamq0Ysdcq
	vbGMt9CHuuF7qxXMh4TalG8qTBZ63N+O3MNVm7knqXXCRavSq/MiqMONn5CbKcgZotbzej95URllO
	bpwCTymgZc2h4L5x6j0K9iOSAREbG/+MSSWmnyBrMkNZFfjzpGYJ/yaZ4rbUV0V2DGv+e1I8fGhOd
	AGlLpfqKCnEguDkxysoNtdOZbwAV4tHqYDzTvK7PylIIjdcIx8mc1KLBoQ0N0v0IMjO+10Iic68Yl
	lBJHWMYGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMxC8-0007iA-MC; Tue, 22 Oct 2019 16:39:40 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMxBU-0007ML-0K
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:39:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Oh88TdIVwomXyqjDgrD03dKXu9TTl8Lvlp/IGQhs5uw=; b=LSW1HEZCZm9pDFMe606YRrM0S
 +75xL9xLQ0Mdnl4kGlDA95WS5lkCzyihsB3yV/gQYe35SBGkMDrSljMusL38h46axGYQ5fUnwOcUO
 ZgnfRMr5EFmZdO/4zCelANLkSmfRrzn7kJ+bGeKv8OkU18WMWh2IucRUHV2h0RAUbi4Vk=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iMxBR-00074D-IX; Tue, 22 Oct 2019 16:38:57 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id D79D42743259; Tue, 22 Oct 2019 17:38:56 +0100 (BST)
Date: Tue, 22 Oct 2019 17:38:56 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 24/46] ARM: pxa: magician: use platform driver for audio
Message-ID: <20191022163856.GU5554@sirena.co.uk>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-24-arnd@arndb.de>
MIME-Version: 1.0
In-Reply-To: <20191018154201.1276638-24-arnd@arndb.de>
X-Cookie: Whip it, whip it good!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_093900_226374_F6A88A54 
X-CRM114-Status: UNSURE (   9.97  )
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
Content-Type: multipart/mixed; boundary="===============5710294546359471485=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5710294546359471485==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TVVcQco/7vcH19KK"
Content-Disposition: inline


--TVVcQco/7vcH19KK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 18, 2019 at 05:41:39PM +0200, Arnd Bergmann wrote:
> The magician audio driver creates a codec device and gets
> data from a board specific header file, both of which is
> a bit suspicious. Move these into the board file itself,
> using a gpio lookup table.

Acked-by: Mark Brown <broonie@kernel.org>

--TVVcQco/7vcH19KK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2vMKAACgkQJNaLcl1U
h9Cafwf+IMs9u3JG7wwFGnBDA4ojo/c0GOly2J9qruoKDijxJlyOzNvP4v4EoarL
O+4UcvUiFTB4Ju5s+obbJGO3MU0uuMM8lGcgK7qmiZ0hly1jukKegk4whw3z+cyr
xx5ek42aS5EmkfBVd9nErG/x062u145i53UtDLyCeCxJHmv9vy5Z/8GJpk9NyeyS
ZsqGoud0yh0X8Llz0G85Ok4ziRCvtw0HzS8GLGXuxZsnPgIACxHBAy5tYT3KlePN
EpBXQTKHS5WEsQ5kFWG/Kux+GrufCEFe+kAvIcYbZQxqD0R9hFuwiw2RQ/EGwX7v
TFQvoO2AhUmcr/eD/5QT56wssTj1nQ==
=1xnE
-----END PGP SIGNATURE-----

--TVVcQco/7vcH19KK--


--===============5710294546359471485==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5710294546359471485==--

