Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F03EFE2137
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 18:59:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mN62W1uV4j39Hg0XpM7x7CvaAuFrwl9NW4Y+80l6rPo=; b=GAdal/AiiPwNrTnyUSGEfvn1J
	P1dyP54c/F0ybL7Jtu8aLnf6fukhPUPMkoa7UkNhl8+LzzPmxzr8/FIcKtqc0cL4Jcl5icYyToQR1
	s6P6pjWIKf8zvXAz+0PEYfnk7S3nyPRdDgFp3OdvEzQEXX+jV75e3QJ4ZlEY+ydnB8G3oBBqUuwfv
	/fCVunaJwbl8KMsoYnVCsVIuak/XAYL5ZbftUB0v3FBJDzP2ZA84w5F9cqKOttGNgbX0CtPk9HIfD
	3SodAIKpVSWdxFLIEkSkVHVyhBbP4I4kq4pVPj4r2GoyjcznkMKXwSwP9tWIM1Pttd+6hYMZwiKGB
	dvajfOhdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNJzG-0003h8-6H; Wed, 23 Oct 2019 16:59:54 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJyp-0003WC-TO
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 16:59:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XrIyTUIIcwGweoXzbiGvqpSOVSltHgzWrBHeN+yMKhA=; b=luoGGER/eGCXKNWHKBECwxZ9x
 sLCfmNfX4bnSYny15P6DcWr3vzki1ED12Zzs26AainIOjMYSGefPYltHf2uBBfJJzVcOV+gTYjaVQ
 4ybUzVgt6iWL9sNjMtyTB93lLR3o6t9ffzuOhla/Yu9gsa8LwoPh2pfc7v6I/psgmtLN8=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iNJym-0000zH-4P; Wed, 23 Oct 2019 16:59:24 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 50EF62743021; Wed, 23 Oct 2019 17:59:23 +0100 (BST)
Date: Wed, 23 Oct 2019 17:59:23 +0100
From: Mark Brown <broonie@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] cpufreq: s3c64xx: Remove pointless NULL check in
 s3c64xx_cpufreq_driver_init
Message-ID: <20191023165923.GL5723@sirena.co.uk>
References: <20191023000906.14374-1-natechancellor@gmail.com>
 <20191023032302.tu5nkvulo2yoctgr@vireshk-i7>
 <20191023104304.GA5723@sirena.co.uk>
 <20191023162628.GA10997@ubuntu-m2-xlarge-x86>
 <20191023163656.GH5723@sirena.co.uk>
 <20191023165417.GA15082@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
In-Reply-To: <20191023165417.GA15082@ubuntu-m2-xlarge-x86>
X-Cookie: MMM-MM!!  So THIS is BIO-NEBULATION!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_095927_960469_EEB9DDCE 
X-CRM114-Status: GOOD (  11.00  )
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
Content-Type: multipart/mixed; boundary="===============3760892163427318221=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3760892163427318221==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AQNmCumFClRcGgHG"
Content-Disposition: inline


--AQNmCumFClRcGgHG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 23, 2019 at 09:54:17AM -0700, Nathan Chancellor wrote:
> On Wed, Oct 23, 2019 at 05:36:56PM +0100, Mark Brown wrote:
> > On Wed, Oct 23, 2019 at 09:26:28AM -0700, Nathan Chancellor wrote:
> > > On Wed, Oct 23, 2019 at 11:43:04AM +0100, Mark Brown wrote:

> > > > The driver should also have supported s3c6400 as well.

> > > Kconfig says otherwise, unless I am missing something.

> > Note the XX in the config option.

> But what about the depends and the help text?

Viresh asked why the driver was written with s3c6410 support optional.
I explained that the reason that it was written this way was to
accomodate s3c6400 support.

--AQNmCumFClRcGgHG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2whuoACgkQJNaLcl1U
h9D5XQf8DtCAVE+KWRLKQff+e0eoyrmuOH64fFlBCM0iJFytXmKaO6yq/o7FQjcx
9CLRRHMdyzXLnTiVGkmkhsVGuAOJPCM+tTjYr/fHoq83Y3cKVSpWnOre95Z52OBa
qkawCaJ6i1XrXY0hznOXDb48gQuKG7kecSLaKxGvskoYpI6csEoqeTU/jUKTSMqr
GGa5Kdcp4LNd77ZbOWg4TRzUVj9BdcU59SFkOSPB+eA9O/Lers0oGENcu59MrxXF
wgJnuQnwnJIv7liRZDk0/z6lSLWqIq32C/nm+AKUrQrD3obXhzvyZnigHpn/hwfV
tEmawktj1/+nJxfhTt1gh0vRlbhiyw==
=wsTD
-----END PGP SIGNATURE-----

--AQNmCumFClRcGgHG--


--===============3760892163427318221==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3760892163427318221==--

