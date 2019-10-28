Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F37E7A08
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 21:24:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w1VUdq5C0Yh2zVxXbIFjRIQZKKwRBQi1WZgeEo084zk=; b=Jo0jo8PqmzC/IIq2/s4c4UURr
	/ZzFIv2OouO8zGV41Msa4E3DFYgMG7st3u9mF/SOzekfmwYV/apOm70Rcg/vohAF0+wmg01qFh5Wl
	LESZ+TxrwWVIohTaaFZw+qQCcmPmGfquxC3XimaiR7DAVEeTSlG9Rob2ysDYT0es6N50RxYAMgggX
	qJ2rQcGN++v95I3KLXHz+u8RHnj3pk8xTfP1REcVt3fRXPuZ1E7y2m/PAWOz4cYI9ujw81ciUnv/R
	YHJXTBiK//ePkyKgAy029FCpOpL5LjyW7wsIOHZq6HOhcsW67Ur7P9mcMoX6LEZ8Sap0IhuSnnCYB
	Hp2TN6qPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPBYZ-000611-EJ; Mon, 28 Oct 2019 20:24:03 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPBYM-00060R-MF
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 20:23:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hM5PVIIqqVq5fwywAG6+qMv33PfDYrlxmKHuPbTQ250=; b=BvxYLSFlN4uSU6TP6JH49MaHF
 rhVAF/Inqm/8dPGMCCkVFs4bY78XCNPLxHgSlAJ38ziryR9uineNgBGFBFCMmrKP+bZkPcE4CBteh
 clB4Jz1x70+eO5daDc9K2W0TrI/Tnclr0ZJIEhDMHS7sL57Vo1Mu/sJdoJYa7I1NtFUDM=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iPBYJ-0000aD-FG; Mon, 28 Oct 2019 20:23:47 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 75BFD27403EE; Mon, 28 Oct 2019 20:23:46 +0000 (GMT)
Date: Mon, 28 Oct 2019 20:23:46 +0000
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: next/master boot: 257 boots: 8 failed, 237 passed with 8
 offline, 2 untried/unknown, 2 conflicts (next-20191028)
Message-ID: <20191028202346.GJ5015@sirena.co.uk>
References: <5db7032c.1c69fb81.888b0.b521@mx.google.com>
 <20191028174857.GG5015@sirena.co.uk> <20191028184019.GR571@minitux>
 <20191028191121.GH5015@sirena.co.uk> <20191028200219.GS571@minitux>
 <20191028201418.GA8317@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20191028201418.GA8317@willie-the-truck>
X-Cookie: The Moral Majority is neither.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_132350_738368_83F63D57 
X-CRM114-Status: UNSURE (   8.81  )
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kernel-build-reports@lists.linaro.org, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 linux-next@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8769178711326213811=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8769178711326213811==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MzdA25v054BPvyZa"
Content-Disposition: inline


--MzdA25v054BPvyZa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 28, 2019 at 08:14:18PM +0000, Will Deacon wrote:

> Hmm. Is this a recent thing? Neither kpti nor the snapdragon 820 are

It's in mainline, don't seem to have any results from Bjorn's lab for
stable.

> particular new. Might be worth checking that CONFIG_QCOM_FALKOR_ERRATUM_1003
> is enabled and getting patched in at runtime -- we had hardware issues
> during kpti development with this CPU.

It's enabled in defconfig:

	https://storage.kernelci.org/next/master/next-20191028/arm64/defconfig/gcc-8/kernel.config

but I can't see any sign that it's been announced in the boot log:

	https://storage.kernelci.org/next/master/next-20191028/arm64/defconfig/gcc-8/lab-bjorn/boot-apq8096-db820c.html

so that might be it.

--MzdA25v054BPvyZa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl23TlEACgkQJNaLcl1U
h9D4YQf/R7oiiKxoyTMcJZqf4+ByFkIfsceWfH/DEWTi6HliacqU29h9sdfiPbKR
/0ugF+thK7yv3XsVF8Lg0Aq6zXjZal8cQvaB5oB1gPic5T+eSLMgeTYQ/UKWsNgm
iGUcAtPlCcg0/qiR57niJ7mfsPRTWslow1a9D/f1Ud8APQ8JHCLipD1KsE/Ek8oQ
SRFWsqkG0BZwZMPlKaQ5Yus+sdu70JJ3e5tS8H+btjgjIhywI2YpFsBcrhRsoHCk
I5z6bOkVXnKI6p0z3SN+SCKLoONqvYcZHps9b5sGcWPPwmzIv2dY+/YSLlAdnFY3
5D1Ls44JbkZ8lNO1snUDwI8TrFJXxw==
=sP0T
-----END PGP SIGNATURE-----

--MzdA25v054BPvyZa--


--===============8769178711326213811==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8769178711326213811==--

