Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76965BBB54
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 20:26:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uLtzMef1F+ZoYcgVsm3/XObVDoxNk+sCVzn2NYGemmY=; b=fwE4BApi5waxW7R37bxmm/LEc
	mpkFv2Q4GDYeep1PDszyy5uux+Dv26j04a6KfJIZPejJbFuBQJJ/kVz1RQO0RMKeXVZTEnF6gActE
	TMVpBIu/JRnXmVynOctT3f/Dx5YVhWofHwudZWuMUAbvFS4UNA7rhJaN8rZ+ZNhOfwLdbwr0nwp7u
	L6+dFa6mVaG2tKBirt2UGlz+OUUTV/KiRMv3+SkcnIQa2WA+ybL+/RyeZU4TaAEzp4QqZf+J0yNXi
	DkjJ5Uat3f8PYp2MPohhP4GPNXcw5KNs/ItPZrDOvzwvgKiktxt8WhKpQNRXks0tpqHdxYxf5tJOS
	cFjZr+Dow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCT2u-00023T-O1; Mon, 23 Sep 2019 18:26:48 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCT2k-00022J-39
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 18:26:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zw+H0cLzv/wwqoCNPLuepePG6BXzshdDMwI7nmGluWE=; b=fKjhg1afHN0bskjgwyq9Io5Cu
 Uy0KP8nn8p8ohmwBpELJ9JE/+fVoxTyba9bySGimHT6golLOxvZ0pAbFoNxr9uKGSvSA5BIxMtEXm
 yzngWO3G+0KzgEAjcKOxDl9W86UWTmdQi6InLrl40Pfi9MGte/6+khTJKabJteeX0bAb8=;
Received: from [12.157.10.114] (helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1iCT2X-0004Xp-9o; Mon, 23 Sep 2019 18:26:25 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 46260D01F26; Mon, 23 Sep 2019 19:26:23 +0100 (BST)
Date: Mon, 23 Sep 2019 11:26:23 -0700
From: Mark Brown <broonie@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH trivial] sound: Fix Kconfig indentation
Message-ID: <20190923182623.GX2036@sirena.org.uk>
References: <20190923154547.26532-1-krzk@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20190923154547.26532-1-krzk@kernel.org>
X-Cookie: Be careful!  UGLY strikes 9 out of 10!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_112638_140951_B6134DC4 
X-CRM114-Status: UNSURE (   6.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Cezary Rojewski <cezary.rojewski@intel.com>, Jiri Kosina <trivial@kernel.org>,
 alsa-devel@alsa-project.org, Jie Yang <yang.jie@linux.intel.com>,
 Takashi Iwai <tiwai@suse.com>, Clemens Ladisch <clemens@ladisch.de>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 linux-arm-kernel@lists.infradead.org, Jaroslav Kysela <perex@perex.cz>,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0108491852809864894=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0108491852809864894==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AaroDtM9M79Ffl67"
Content-Disposition: inline


--AaroDtM9M79Ffl67
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Sep 23, 2019 at 05:45:47PM +0200, Krzysztof Kozlowski wrote:
> Adjust indentation from spaces to tab (+optional two spaces) as in
> coding style with command like:
>     $ sed -e 's/^        /\t/' -i */Kconfig

Acked-by: Mark Brown <broonie@kernel.org>

--AaroDtM9M79Ffl67
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2JDk4ACgkQJNaLcl1U
h9AK3Af/Tumh0ikqpRGJ0LZQlwnZL1S5vUwKQexSehpfKUrROssuMuDooB4KfBpz
ADosYAcnRlbfTq0/WyLAbhOUUYfA11tff0W8JqcdhWDupk+DWkHGiSgARTy18/fx
QQIiYsgO/MAiMJLVUS8Qm55ro7At6IGI6nGxDUtLowI/2OBxRrIXLlik9szhF9UL
hfh0nRX4R2gIj33W/MuTWPLiRf2SUAvK95Z7+0QoiCMAwY+d4NKkjNTdqCKJWfeK
FRBvFxRrd7KWIVq41QLWFp7FX3+fPEMhi2Setm0a7XVTszCKb09uxOIIKNJ8JwDv
vOR6rMrZvaRkVnVT+BsW5n9HY6OksQ==
=gZw4
-----END PGP SIGNATURE-----

--AaroDtM9M79Ffl67--


--===============0108491852809864894==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0108491852809864894==--

