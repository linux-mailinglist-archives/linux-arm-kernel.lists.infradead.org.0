Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B277BE79
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 12:39:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zaYTzB6Y0MKexfitpbBzC0FGYRlgfOr0gHSTWXMIhGw=; b=gv8JXO5UevF/qr7fDWDr73kNq
	DcMY+H0r6FD3BFwy5JX/u4IG6aAVxR1++rnEGZoHOfEbg6X4j93jhLhf9fLholwKSZ4KLPL+W77MX
	NUJvjETXJosMqY9Kuwrs6HHwf71vDP7etOfn+u7tEAtL+j+4VZdv53M61uNOPYSBCuAOkkJQD0Y/6
	/B1upWjGcC0StbHHnTCh6C8274RHmSIp/nSbLAfX5XfN6uaS6phFUNWtQ1KL8qtEqebJPQ1JpNU4m
	wF195/iaimqHqGbB6Xcanygj3CPzhy0eO+aYLHJUovpuVWTdlipgEU0AwWVN61c75cDu2gUmT7XsA
	BWfSx6mVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsm1L-0007UE-4t; Wed, 31 Jul 2019 10:39:47 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsm1E-0007Tt-U3
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 10:39:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C/KT1hT4oXpqxVh5zbKW+GHQjIlT7bZxH5ote1WIcA4=; b=efzP6b1srZQm82oYZZYuGdpoh
 i0Xt4rWNTeQy9uGuVZBzxjgBCPlBc1pednQz2GhlreqWgcM9nAkmGOpl0zB9aKwHImN2bRu+luAJi
 +1XW5K5Om06dPWc+FQ9UcytGd9G4cK+lvohEL+eAk9kf/UJievZjOMSXXld9nXY7Bo5Lk=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hsm19-0001fk-Rn; Wed, 31 Jul 2019 10:39:35 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id E39762742C99; Wed, 31 Jul 2019 11:39:34 +0100 (BST)
Date: Wed, 31 Jul 2019 11:39:34 +0100
From: Mark Brown <broonie@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: next/master boot: 265 boots: 17 failed, 184 passed with 64
 offline (next-20190730)
Message-ID: <20190731103934.GA4369@sirena.org.uk>
References: <5d403574.1c69fb81.14163.65d3@mx.google.com>
 <20190730134115.GE4264@sirena.org.uk>
 <CACRpkdYevQiwW8iED8_qBo5yCcj5yCGrM76Lu3MyrU6Vy4HoNg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACRpkdYevQiwW8iED8_qBo5yCcj5yCGrM76Lu3MyrU6Vy4HoNg@mail.gmail.com>
X-Cookie: FEELINGS are cascading over me!!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_033940_974352_F545D9A0 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kernel Build Reports Mailman List <kernel-build-reports@lists.linaro.org>,
 Timur Tabi <timur@codeaurora.org>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Stephen Boyd <swboyd@chromium.org>, Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2171868610566695077=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2171868610566695077==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xHFwDpU9dbj6ez1V"
Content-Disposition: inline


--xHFwDpU9dbj6ez1V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 31, 2019 at 10:48:38AM +0200, Linus Walleij wrote:
> On Tue, Jul 30, 2019 at 3:41 PM Mark Brown <broonie@kernel.org> wrote:

> > Today's -next fails to boot on QDF2400 systems:

> Is this a devicetree or ACPI system? Which devicetree in that case?
> If it is ACPI I assume one had to look into DSDTs?

You can see from the linked logs it's an ACPI system, the ACPI code
announces it during boot.

> Aha. I think this only worked out of chance before.

> What the Qualcomm driver does is exploit that .init_valid_mask() gets called
> even if .need_valid_mask in gpio_chip is not set to true,
> and this is why the bug appears in
> msm_gpio_init_valid_mask(), I'm pretty much sure it is the
> bitmap_zero(chip->valid_mask, max_gpios);
> call towards the end of the function that gets turned
> into:
> 08:56:36.114798  [    4.433713]  __memset+0x80/0x188

> And this causes the crash.

Should init_valid_mask() be being called if need_valid_mask() is false?

> Apparently this only happens on ACPI systems because I tested it
> myself on a DT system.

Might also depend on the particular DT the system has?

> So if OF and ACPI is activated at the same time (can that happen?)

Not really.  There is a stub DT used to pass ACPI to the kernel.

--xHFwDpU9dbj6ez1V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1Bb+MACgkQJNaLcl1U
h9ByIgf8DHz6iRIX05wFzvia+rX0aOecktzNJkxEnDYqoBOKzoJhcLkp/QxqcpuJ
QagvAq7fbOayBEVjobfVwSXEbP70CipP/UGnbu7tX4rT9aOYaazfT193dIheaRvS
6swduftOOK1kOej0UqFVg9bzjwPa6b9gMkez0YIB4W3qt7cOMyzo5LgtcKEX/Xym
D62bNWzoh5crKjL7e8e/DxPpOL66VH88kHd8p57Z0ZZpWqHPknk6R6o2meivvL/i
Pi+F1GTdgbmaRy3XDFgPwPkO2zgtOKC9WmKKniyXuSas9zSSWVSimapeVjiDRGR4
6s0bMCxoexMQJodsILIUOwo0rYr9+Q==
=fz3c
-----END PGP SIGNATURE-----

--xHFwDpU9dbj6ez1V--


--===============2171868610566695077==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2171868610566695077==--

