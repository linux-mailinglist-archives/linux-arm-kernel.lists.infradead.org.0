Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBA9F78E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 17:36:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pSS1fVt2ocBDI1b16tQfU7th/NvIaFIqP/vPlmdAMvU=; b=nejGI9x7Qsj618fLxHc5YlhTK
	ZxjoM110U+Y3YOChVV3sA8cNClqBucnrGVuE8UOOOz5kKjHP+8AxNfjQMqP26Pbj4PKCrm1OV8gvm
	aBW+sREIUsnJqXp2YggEVxzxvcSEIT35pttU8x8GUJ2KTERPa3TiwhJFpHnLVWg6fF0AB50fXoSOU
	H28XYodlfGYcHVeeSq84sM884JFgVGKeA9KXp6GCPjeSiZL8Pj5sUIcYa794Awx7U1MzeVSbx2AV5
	W7A18XurCT2aHpdlCBfAsOQe+HzmhWajqvdfXpBTgJpYceSIBWUa7DEp5qPwgaeKqwJropLPwFV/1
	PtqU4g4FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUCgL-00061H-W1; Mon, 11 Nov 2019 16:36:50 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUCgA-0005yQ-Aa
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 16:36:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ysh8iLASKNMvvIk81nuKjJQ5Ep+vyf8gCTkpYfjCNPo=; b=uKDt/xQYNwu2/K3qErpdOaR95
 zsaWOggnMBI9fyTuaevWMHWIGpNx5Gg8dLBRAC59mp5nZrTD83iV47I0qiBqIPrm7UZ/yZM8FDvHs
 8IkxIBi+TCga0RYn581U0VY0tZ+/22uZ8OSWZ0vl5fBRY9EGh2/q+adFtUOcK+BhPY15k=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iUCg3-0004zh-9e; Mon, 11 Nov 2019 16:36:31 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 26C3727429EB; Mon, 11 Nov 2019 16:36:30 +0000 (GMT)
Date: Mon, 11 Nov 2019 16:36:30 +0000
From: Mark Brown <broonie@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v8 3/4] arm64: Don't use KPTI where we have E0PD
Message-ID: <20191111163630.GB4264@sirena.co.uk>
References: <20191108170116.32105-1-broonie@kernel.org>
 <20191108170116.32105-4-broonie@kernel.org>
 <5d846391-8d16-4b85-a83f-b48e636e2834@arm.com>
MIME-Version: 1.0
In-Reply-To: <5d846391-8d16-4b85-a83f-b48e636e2834@arm.com>
X-Cookie: A lie in time saves nine.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_083638_364567_665605FA 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4224507007670465398=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4224507007670465398==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="K8nIJk4ghYZn606h"
Content-Disposition: inline


--K8nIJk4ghYZn606h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 11, 2019 at 02:36:34PM +0000, Suzuki K Poulose wrote:
> On 08/11/2019 17:01, Mark Brown wrote:

> > +	/*
> > +	 * E0PD does a similar job to KPTI so can be used instead
> > +	 * where available. This will only run before the cpufeature

> s/This will only run/This will run/ ?

Both with and without patch 4 we only check this when cpucaps aren't
ready - with just this patch this is done in arm64_kernel_use_ng_mappings()
where it has a check for caps being ready prior to checking if KASLR
requirs KPTI, or otherwise the checks are from the cpufeature code while
it's running.  With patch 4 it's only called from the cpufeature code or
=66rom the early init check.

--K8nIJk4ghYZn606h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3Jjg0ACgkQJNaLcl1U
h9DxsQf+NE/9BgMos2F0h+ZFRdPU8r40/lln4l9Kw4bisxWoDfV80E1cJB2N1qi2
ZDxABYppeY3bxmlcUKmAYOEef1ThVZkOxTbscepk9TyRft3UlGdrsRwbJL+KrwZi
hja4Y/URSzmR0recbsyqTY+ZucdLdBsgVcuakm12d5GD1NtMJ2aTcBl/ir31wUhi
Sj2KhnGOKdfxh26OWwLPzAyLy4UlpY1IBK5nwVUj7rFmmXhBbQfSffEPjVUQyZEz
pC3qUOoXqi+Xe/WyBW7F7Spr5JYFsZmJILxg5VfRxy4nLW88zNlldiL6ESVG4uYT
MPHxiljlD0pu30JnaHSb3JdaaUqddg==
=SdFx
-----END PGP SIGNATURE-----

--K8nIJk4ghYZn606h--


--===============4224507007670465398==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4224507007670465398==--

