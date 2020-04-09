Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC3A1A32DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 12:54:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CaDM/S9Nq99YSChFalgDRYNGNBkSWs9WQdhtmbDrmMs=; b=CPRpveVfcREoXRTQ/Xr6plCob
	GHEpXFAg5+XAGwYtEXyKRtaiy/I0fS/h1eJgtzvNFkuQlgqcPdAUBwZwlDjJcHGnQpzZwlLufaMSw
	WUFEsPqjZK35NoGrT3+22tOk6xzP7/2gRnqx21AVgdvhTXUYx7ZflcTVJQQHosMUXnyyV02c2+YKa
	xLnKPbV4klmPh2rxZoolk5HKjBcAHtsiLXCc521uJHNg86ffCPGdQm2IWKaGHIJsLOcvv+uPaeMzp
	UgiL64GUm5G5m5j/LkLY/Dhu7P96Goqh5qHm2GV3iMQTK5t9hgzBsehXsugUCUoELJlEBcCu6IRwe
	8SSIVSi3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMUor-0003iw-UK; Thu, 09 Apr 2020 10:54:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMUoj-0003hx-FO
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 10:53:54 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 29C1320857;
 Thu,  9 Apr 2020 10:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586429628;
 bh=BZVpag0qQETEDSuxALqBEW3mh5PAYg0YPSQ6u6hT+os=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tTiZNE4MZTrKG51Y9OasNhBTM4o2bQLbPf4Wf7/YAQELzNOT+AZAkgn2K0xhT4IA2
 HuyI4p0Y0c92dYiCkVqvymJQgjD6EbHBHAoaHwPXk/+7v+O7zifx1qUnqixV55VStn
 4PNGjE29VSHGt8vR/xAWJjchP4WQ81ol1wBUKig8=
Date: Thu, 9 Apr 2020 11:53:46 +0100
From: Mark Brown <broonie@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2 07/10] clk: Allow the common clk framework to be
 selectable
Message-ID: <20200409105346.GC5399@sirena.org.uk>
References: <20200409064416.83340-1-sboyd@kernel.org>
 <20200409064416.83340-8-sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200409064416.83340-8-sboyd@kernel.org>
X-Cookie: HUGH BEAUMONT died in 1982!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_035353_531314_99C3DC0C 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rich Felker <dalias@libc.org>, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Arnd Bergmann <arnd@arndb.de>, linux-sh@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Jiaxun Yang <jiaxun.yang@flygoat.com>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 linux-m68k@lists.linux-m68k.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Mark Salter <msalter@redhat.com>,
 Russell King <linux@armlinux.org.uk>, linux-mips@vger.kernel.org,
 Guan Xuetao <gxt@pku.edu.cn>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-c6x-dev@linux-c6x.org
Content-Type: multipart/mixed; boundary="===============0466445830535954643=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0466445830535954643==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8X7/QrJGcKSMr1RN"
Content-Disposition: inline


--8X7/QrJGcKSMr1RN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 08, 2020 at 11:44:13PM -0700, Stephen Boyd wrote:
> Enable build testing and configuration control of the common clk
> framework so that more code coverage and testing can be done on the
> common clk framework across various architectures. This also nicely
> removes the requirement that architectures must select the framework
> when they don't use it in architecture code.

Reviwed-by: Mark Brown <broonie@kernel.org>

--8X7/QrJGcKSMr1RN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6O/rkACgkQJNaLcl1U
h9C8bAf/SJkvvbTRmpOunw3fAHei1NkJ2RUZ/Ax5l+NwzvC+fSezjkGHKH+2LVOV
6vTimPH4EKoGc/4RRBVRSrlp20QY/mz4/7+/Ojsrfp9KsWdcH167Zd26sYP3kSy2
8jxnHBccoWJ8B9p9YVYslrMb0+y1mjnfLOsBioILN1wa6R2vuv7/JXuu1FmaeYLl
geaZWL7Aw8Knj421ywLqEbg57Zd7M/2ei5gI/plDWIS+UoeuPPPhsUCVkza76DOE
pyvpA21x2ceFOmCTq0O5O2a/WlM8xwfklNLML6wx3NSS02WWiqnAbMS3sZ9Adk50
k7m1LMdfWu/q1CQwp58kVOsZJVWZ4g==
=+bDI
-----END PGP SIGNATURE-----

--8X7/QrJGcKSMr1RN--


--===============0466445830535954643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0466445830535954643==--

