Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 705A7E20C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 18:38:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eUaF4Vmqk5jrPPwrFbMm+0IMG53rmMPJ7nASPHMpxi0=; b=S8mFjcRwhhLp/2HbJoZxrzcKC
	f67MKfkNkGY3gUa5KlOoZT8zImK5eqzeM0hHvuZBoKdVIvDkrQ/E33Hf0ZpX+BMYFmWrNYBu/ySLD
	etjLcqx51HuT5mAhFlVdc2fmLPuNf8I/9hZICc/40RbjFP0RoqdNZTAVhNdL+TrkC1JX7l5s+E8wF
	E1uqfuksP8hTQLcvvYeArLo5tu/jsolY09WENOk+PtwzVbHydWnxpMzTRjhL9ekBbZW8rGABxOi4J
	9qR1m1ls2D3fatmQ9GrGKb3mVIFTxUaaBtaqK/vwkifK4H8R1I8+I6snn8vRvEpK32Eyiv8FaqCHP
	BcLLmA5Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNJeI-00013j-TK; Wed, 23 Oct 2019 16:38:14 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJd8-0008SW-Cv
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 16:37:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m700Ovhtawx1D7xYGjJcWREMnvuFfL4T8auLxTc4g+o=; b=tVW+N1CGFWe7AqjwhhUwObc5T
 4DcO3owdYhBJ4EIo45+VMPO/QapuVR8eKr7Hk4KYvWTFDygVNHMgTfW2vVYJf4451ljrE1z7fnQGU
 v2h/cr+LcMpU9LhKonteQt9Mc7RpjlboPdAiJmpHZKMCFJhUOm0rhoqvgfT6tteSrf55k=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iNJd3-0000wd-He; Wed, 23 Oct 2019 16:36:57 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 0F4AA2743021; Wed, 23 Oct 2019 17:36:57 +0100 (BST)
Date: Wed, 23 Oct 2019 17:36:56 +0100
From: Mark Brown <broonie@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] cpufreq: s3c64xx: Remove pointless NULL check in
 s3c64xx_cpufreq_driver_init
Message-ID: <20191023163656.GH5723@sirena.co.uk>
References: <20191023000906.14374-1-natechancellor@gmail.com>
 <20191023032302.tu5nkvulo2yoctgr@vireshk-i7>
 <20191023104304.GA5723@sirena.co.uk>
 <20191023162628.GA10997@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
In-Reply-To: <20191023162628.GA10997@ubuntu-m2-xlarge-x86>
X-Cookie: MMM-MM!!  So THIS is BIO-NEBULATION!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_093702_557433_8BD6F90D 
X-CRM114-Status: UNSURE (   9.81  )
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, clang-built-linux@googlegroups.com,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3656207073354226378=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3656207073354226378==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/Gk0KcsbyUMelFU1"
Content-Disposition: inline


--/Gk0KcsbyUMelFU1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 23, 2019 at 09:26:28AM -0700, Nathan Chancellor wrote:
> On Wed, Oct 23, 2019 at 11:43:04AM +0100, Mark Brown wrote:

> > The driver should also have supported s3c6400 as well.

> Kconfig says otherwise, unless I am missing something.

> config ARM_S3C64XX_CPUFREQ
>         bool "Samsung S3C64XX"
>         depends on CPU_S3C6410
>         default y
>         help
>           This adds the CPUFreq driver for Samsung S3C6410 SoC.
>=20
>           If in doubt, say N.

Note the XX in the config option.

--/Gk0KcsbyUMelFU1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2wgagACgkQJNaLcl1U
h9B+kgf/Tu4Mcdc2QLhbFdhdn07a8/luddZop3Dn6jL3SW5BZhP4E4UY9ekG3fTz
CKU0uGyVB8qUYZKlNQIgwWmBghGl9HeqKuLUGEdsDcOxVxccnSJYTMk2ZNLz6IK9
lH0wfeiXPIV7wguJCqAkkVZVfxdFZcKoQx00n6rTWjh7Py5qzuJtzwf/DTaDGsjC
F5nqTo4vdQQSNm6WSAEX/I629qmL3Yd/ogB+jUVFYvcqxozLMcuae+CP5Nu8MH8T
w5LrxCUugVJnkaUm6XUkeO29V9d2qmA3f9YU9BmyAm8caPdBABp5cjciu0X4sSCk
03ZCDlb+0oZqbtMSlcjVKXin63aMOA==
=JqnS
-----END PGP SIGNATURE-----

--/Gk0KcsbyUMelFU1--


--===============3656207073354226378==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3656207073354226378==--

