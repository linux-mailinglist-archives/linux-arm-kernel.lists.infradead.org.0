Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9911D31B96
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 13:40:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W78xu6FLRtraAwC27u4g2if2SflVU3zzBV+uZpsOnwk=; b=n6f38qagtratwz3SPVimIMZgP
	ZCkEPQ9iiu4f8WabNJNruobix4lgyCnDI0VCkn2g0lVuP1b4rqdpG/4osAVB86hGS7PR8ngcEwDZa
	MlJclQblW/OM/NRwdA76OV48LJlvy/auZSSFk3mtzOsZ0mC1JO5AJXpMPMKH+Dd+e2VAlWLpYPT0Z
	RDen/SV+ixzRhE+MxMX6vEnUC7HqjYh7n3SBP1XcsyUDRuEQV+ojZTi8SL8JV08Yqq2hujsc3S+53
	5BHdUG0EoYiQspHdXv3tm408QTQ8ayDJ8u5H2MDcFX9M71KFCMSVGhE6176tFCrXXlF1acLZxrI43
	jOkJTtKMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX2N8-0006Po-AF; Sat, 01 Jun 2019 11:40:26 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX2N0-0006DY-HY
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 11:40:20 +0000
Received: from localhost (unknown [91.64.182.124])
 by pokefinder.org (Postfix) with ESMTPSA id 280422C54BC;
 Sat,  1 Jun 2019 13:40:14 +0200 (CEST)
Date: Sat, 1 Jun 2019 13:40:13 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 5/8] MAINTAINERS: add I2C DT bindings to Rockchip platform
Message-ID: <20190601114013.GB1993@kunai>
References: <20190521082137.2889-1-wsa@the-dreams.de>
 <20190521082137.2889-6-wsa@the-dreams.de> <2847662.8Nn05j9K3f@phil>
MIME-Version: 1.0
In-Reply-To: <2847662.8Nn05j9K3f@phil>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_044018_732770_DB5AA007 
X-CRM114-Status: UNSURE (   6.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6462828992298005958=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6462828992298005958==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EuxKj2iCbKjpUGkD"
Content-Disposition: inline


--EuxKj2iCbKjpUGkD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> not sure if you want me to apply this or just want to pick it up
> yourself (I don't have a hard preference here). In any case, if you
> want to pick it up, it is obviously

I wrote in the cover-letter that I prefer individual trees, but it was
obviously a bad place to put this information :) I applied all of them
now to my tree.


--EuxKj2iCbKjpUGkD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAlzyZB0ACgkQFA3kzBSg
Kba11Q/5AV9hlZwLtWZWE/tE2Uv19SMgNFUfEG77ztCK9v7CC8Q7R25f4Apo874p
q0dpNtr+s6B1e0RitDSIWcLIq5rselMu0pAreLoVYQg26JFDgycX7CC4g44yP//z
acFmPlvFCbV0PxruHdHj8cW68q1d8zKxz74ovjhmulXxFGSsHv6jpCDPGMi0naZ1
ZcGBzJSQ9G9niEFBghCganhjQijT8qkkHEQeo1TbZpk2Lttg9MsYKy8kis7m8Poo
tHPUl+PxtaweRqyMaiqpST5EIM4w/EMpghsvYte89XatCX+cXlxIfj6Cng19rIgl
zPeYw2Iz8caf5ZzenoJeNl9GluoiCoNkgzQ44ebKY9+bgsxj0da5m6vBjLwFdjHC
FUKENYNt8KZOIGV5Mlzkf1j/baeqCdjYB+BbZY4yIjk806pIGnLxXh1z7tTAQUaS
VlQ2VQBfhuRMIsRJ/fpcKzUwqIehaUV2CjuCbbcpjdl+vlmHEIxMOYzFzTO61UD3
seILueIOKuTLtqGEusyaYq6qlpEgxumHXnshTHQsZgJudqwWSKFwWsIcnkTEiHRg
d3+u/L4ddYbuLcqmcFedIGD+EwAJDOIqLGnsQtHZNSk1ZKBdDIB/rnv9lsm08hC8
te4hoVIU2/hQFSg1h5Ag5ptj1IAVmVlaH+qAkZrHvye85jpih1A=
=jkah
-----END PGP SIGNATURE-----

--EuxKj2iCbKjpUGkD--


--===============6462828992298005958==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6462828992298005958==--

