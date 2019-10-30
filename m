Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36ABEE9BE1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 13:54:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CrkkCDXmntVi1iToNgDGVrHHpmdZALXcySpMQMuZBf4=; b=eh6pZUUgWLzk03an6jYcaRMor
	enPBEWeYSbRWz33SvkY7hJ60p9efzQYxv76yy9KACqriPX8O/r0O0Zh9qKSGFubyHc/MwPW1E7Bwz
	3aJ28xj/s74DuUyfbTuM/C5OHE56WT5vK176bPBjbhTSpq3aqpsoPu7oSva4X9kOMSPnfu24z4kDF
	HAStvbH7zPM4l9mz5iVONDkhva2IDST4yefz+4PoJ0KsSPZwW4IyMdi8fsUNq/s0hOizGjhFDsjin
	k0akrH3YyA9D7nxL/eqtKU2hBNXYa2UKDhqva/PQyY+Z3iowo9n20vHINTTvoQzZSBiPE9AhApfKK
	AEEsBvxwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPnUp-0002l1-Uw; Wed, 30 Oct 2019 12:54:44 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPnUc-0002k9-EG
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 12:54:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zqDt+J65pdt+mcuxXKppq1q9yEUulu6GpUcWgHGXStY=; b=ZX6P8xVeE259E78Xke6omyeU0
 S54nXSqgMbPK0zRoYodN7b0A3hzE1W294dWxbR+S6LAR6dhl381mS98nl7xgNaKgJzTNfdt10K2iZ
 f5GkLE9e5PRc1XsQ7oNZH0Skq6x+HxT336ppmEWLLoGbsBcLxJbmpRD2Dq0ppKKuWY61Y=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iPnUZ-0004ze-SU; Wed, 30 Oct 2019 12:54:27 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 0F8D027420F4; Wed, 30 Oct 2019 12:54:26 +0000 (GMT)
Date: Wed, 30 Oct 2019 12:54:26 +0000
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v4 0/4] E0PD support
Message-ID: <20191030125426.GE7218@sirena.co.uk>
References: <20191024214207.20588-1-broonie@kernel.org>
 <20191030122631.GC10294@arrakis.emea.arm.com>
MIME-Version: 1.0
In-Reply-To: <20191030122631.GC10294@arrakis.emea.arm.com>
X-Cookie: Celebrity voices impersonated.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_055430_482687_E52EFA16 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <Suzuki.Poulose@arm.com>
Content-Type: multipart/mixed; boundary="===============4242564970291681298=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4242564970291681298==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nHwqXXcoX0o6fKCv"
Content-Disposition: inline


--nHwqXXcoX0o6fKCv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 30, 2019 at 12:26:32PM +0000, Catalin Marinas wrote:

> The patches look fine to me and I'm planning to queue them (with the
> additional changes I mentioned on patch 4, I can do them locally).

Oh, thanks!  I'll skip reposting my updates for now then to cut down on
mail volume.

--nHwqXXcoX0o6fKCv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl25iAIACgkQJNaLcl1U
h9CYHwf9FNzGKSQjEtZcboASKh6yCO08Kv2DiovrTMxgB5xoiLToWpp9siyCSBEb
soMrc1KJiYrJUgnm8eImJRc+W1tgd48lF1eHKWe6iBpI7/0/ATHOnExW6JkuH0Mz
atjGACRZ/RPn72MYO/iGqwmGDV+QeXVRPyyY8AIuv36pDfjiKbo7pvgPB6D3B8Bk
XjzSjRwPeTMQqz0dAHRkoeCV/Fmise7CPPDCBsw2BftdGNysF/WQkBzl/UBgQsrX
d//ZJM5fxTwyvR0RL8t7Zt4HFquOc2Tyx9eJfmQI1XaBA9HlJJBsiNVBD5zMiOIw
eo4y/PWS8EmE0nWMAOc3k8ScTt+G4g==
=SeIt
-----END PGP SIGNATURE-----

--nHwqXXcoX0o6fKCv--


--===============4242564970291681298==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4242564970291681298==--

