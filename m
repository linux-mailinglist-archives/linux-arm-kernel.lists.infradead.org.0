Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F8CB1D19
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 14:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AONUh2Hf0JRqKa5nLQod7xl+UNPbGAepv9ZGw5tG3JA=; b=CZH/eVpX3xnAkx3QNEd2UyBLn
	C5hSzcVq0o4aoinF7Kf+EHDr3I2cZSNa+iRl/B49bn99SYgWLxOCYyL8vL5BlP6td9RZ1OXC0O5GO
	sAYqJOjAjkcZk5aUPIilVFUnAJTuUH4YuZcMYKn1rZkxyRA6lSL3I5MbguvtilAX7MJPtGBOoI0M+
	jvwkibxz83Wj3gVYgtg9l5UPFI8WSFwaewSXk1usE2R5miV1wMhiBImP9+gwdAy6s5c6bPJNaNuBW
	jVDyobH+dan4rj6nZCZyyo8Bw3sFILP4bycaJJeBchbk0L9MJFvMRfzL9IwJFP1Rj4CdN6rP3mJEj
	e9VddXn1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8kQ0-0006qU-8M; Fri, 13 Sep 2019 12:11:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8kPk-0006q1-Aa
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 12:11:01 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 07D4E2084F;
 Fri, 13 Sep 2019 12:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568376659;
 bh=FImV5Wq2wnlVDJQJ0cPRAqO4Ulwuut3JipAbAXiZP/Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LnQgWi3zVU/eEwNcUziGBkjZME18TnXuqtb7uosH8tcwnufrV6XXCx8ZL/tsLjC7X
 EvDZ6H3PzoDi6AmxufMmOPqZ/0TH9TxDCHmNCFI9+wogHCZcdQc815kHrKT5Um9skt
 tL2SggScWfXRqd2wGNzP4qMbfBHkUFbeA/0jQUHA=
Date: Fri, 13 Sep 2019 14:10:56 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH 9/9] sunxi_defconfig: add new crypto options
Message-ID: <20190913121056.h2iotti6dzpsp6lx@localhost.localdomain>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
 <20190906184551.17858-10-clabbe.montjoie@gmail.com>
 <20190907040353.hrz7gmqgzpfpo4xj@flea> <20190913081555.GA22538@Red>
MIME-Version: 1.0
In-Reply-To: <20190913081555.GA22538@Red>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_051100_388667_65B0D9C0 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8721399174908621033=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8721399174908621033==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ffgt2cjw56vmabzb"
Content-Disposition: inline


--ffgt2cjw56vmabzb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 13, 2019 at 10:15:55AM +0200, Corentin Labbe wrote:
> On Sat, Sep 07, 2019 at 07:03:53AM +0300, Maxime Ripard wrote:
> > On Fri, Sep 06, 2019 at 08:45:51PM +0200, Corentin Labbe wrote:
> > > This patch adds the new allwinner crypto configs to sunxi_defconfig
> > >
> > > Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > > ---
> > >  arch/arm/configs/sunxi_defconfig | 2 ++
> > >  1 file changed, 2 insertions(+)
> >=20
> > Can you also enable it in arm64's defconfig as a module?
> >=20
>
> Does you prefer adding a Kconfig "DEFAULT m if ARCH_SUNXI" which
> permit to not touch any defconfig ?

It's not the preferred solution, unfortunately

Maxime
--ffgt2cjw56vmabzb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXXuHUAAKCRDj7w1vZxhR
xVj6AQCte0LxsckHRmuiUFmI2uusqYR7WoJJUQuHpsZznP2FkQEArHYCXAXLwf4v
eUq+1BJhz/6J08UKnz6F1MN145U+fA4=
=du6r
-----END PGP SIGNATURE-----

--ffgt2cjw56vmabzb--


--===============8721399174908621033==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8721399174908621033==--

