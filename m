Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3389E1833
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 12:43:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AuHdUEbml3Wh4kgw9wecmJfR32icaUNpYlviF666JuQ=; b=TRnLE7Ni7tRsAIfEBjNTLPbNA
	HoTOI2n2ARNwrhmhB9pv7oNw62GBUQ2adK8duKISWCCHQ7ar6kj5VJA+0C8s5aKuZRYRbUthHQNED
	Cidcv6Wk3sUFjindK2kJKMU3B70AHJ5vrF1dnzZ7FsQMnlnoHT6t/5/Rl3O32RJL7FwdDXR7EU746
	oCzxoKfPQSELlRk2qW3UEwnZn/H64zEt/gohpblwT+ERmMuh9rqBSjRJqDyKVkuL7BI0ZkGxZC12I
	KbT2qUuCUwixUCJdX0e36fO/KrGfnkG0wwoOYshfCZuMaDIkUmSyO/BgwJFjl9nFgrGLhZ3NyoehL
	xWqs6Ly3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNE6r-0004iC-BD; Wed, 23 Oct 2019 10:43:21 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNE6f-0004hp-Gp
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 10:43:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o8+aRiWYArgOfcIQUpcz0HRWYDcLBPfXp8bzXS/M6uk=; b=osCh/jbEew5Dyc2YthYufYOzT
 /wWvYeSc75A8nWZCJhQPtPZQJIPzRLmVMjAZHWDrgPwEE/cD+/tXhLi+RnPHgD+OxlAHWnpdBLkTV
 GlWNDNNzdGUT/gMTgUuVag18SmkkVxCDkpkaaAQASWnWKQnpLoDjBpCmbLBxBwdkDyz48=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iNE6b-0000J4-QS; Wed, 23 Oct 2019 10:43:05 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 0557E2743259; Wed, 23 Oct 2019 11:43:04 +0100 (BST)
Date: Wed, 23 Oct 2019 11:43:04 +0100
From: Mark Brown <broonie@kernel.org>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH] cpufreq: s3c64xx: Remove pointless NULL check in
 s3c64xx_cpufreq_driver_init
Message-ID: <20191023104304.GA5723@sirena.co.uk>
References: <20191023000906.14374-1-natechancellor@gmail.com>
 <20191023032302.tu5nkvulo2yoctgr@vireshk-i7>
MIME-Version: 1.0
In-Reply-To: <20191023032302.tu5nkvulo2yoctgr@vireshk-i7>
X-Cookie: MMM-MM!!  So THIS is BIO-NEBULATION!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_034309_564428_0D5402D9 
X-CRM114-Status: GOOD (  14.50  )
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, clang-built-linux@googlegroups.com,
 Kukjin Kim <kgene@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2062559029543544017=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2062559029543544017==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9amGYk9869ThD9tj"
Content-Disposition: inline


--9amGYk9869ThD9tj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 23, 2019 at 08:53:02AM +0530, Viresh Kumar wrote:
> On 22-10-19, 17:09, Nathan Chancellor wrote:
> > When building with Clang + -Wtautological-pointer-compare:
> >=20
> > drivers/cpufreq/s3c64xx-cpufreq.c:152:6: warning: comparison of array
> > 's3c64xx_freq_table' equal to a null pointer is always false
> > [-Wtautological-pointer-compare]
> >         if (s3c64xx_freq_table =3D=3D NULL) {
> >             ^~~~~~~~~~~~~~~~~~    ~~~~
> > 1 warning generated.
> >=20
> > The definition of s3c64xx_freq_table is surrounded by an ifdef
> > directive for CONFIG_CPU_S3C6410, which is always true for this driver
> > because it depends on it in drivers/cpufreq/Kconfig.arm (and if it
> > weren't, there would be a build error because s3c64xx_freq_table would
> > not be a defined symbol).

> +broonie, who wrote this patch to see his views on why he kept it like
> this.

The driver should also have supported s3c6400 as well.

--9amGYk9869ThD9tj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2wLrMACgkQJNaLcl1U
h9B2ZAf/eQxJSi8vjkh2szC5fpPoxL3PqhhtoNyHk9pyamhKksLnfq8Wfc5cXoYf
m805fFfs10op9oNpI//wwBy+WtmSWx7wFDZx+by2GeKvzPfCqjdXBvUziAtQhq/q
pU4RI10nDISz7KV5+MogDYKIqS86tiaCpprrXQI9B524i1u1TCIiaqoW9EC6eho5
104of9kneV1wM3wKRtz1W9HkOlV+Dnm1rDRWldGriYbd+HAJNhxGe+LNiLubnATf
N3ntYDNTJmhuwc4KWuzOTHQE+5RXi2VBkk599ZoLoNSZhd6M5a4UU896+XYBjvEN
NBjAKyjIVg55uIINznEJ2YtoD+u6qg==
=wd9j
-----END PGP SIGNATURE-----

--9amGYk9869ThD9tj--


--===============2062559029543544017==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2062559029543544017==--

