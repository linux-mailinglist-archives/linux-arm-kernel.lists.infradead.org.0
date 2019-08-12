Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A938A4C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 19:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+Gc2NMcyItEvEU9vpWKsdx+8uIE3oKWK8sJcWh9kjuw=; b=KKofnGzmvQFDzcMGOrYWVrkcU
	HfRjxDd7eSebIV9sNUx6ySZ/5aZbawQ0TitoO6mzmKsfqU1RwxYLg9zXKAZQd0n46DfDdzFL+qevj
	D7fD0h7lgbbulqCuGpjsGiB8g4ZgxHWBzGaTn/5XNrZjcvDbUP+5lrTAHn3b4zlpqkaLSwpMmArKP
	AZGEzwkikGse3pTZnHOE/JZU9hXK4RAB/R95RmDy2Ejd9s3R26z/WQTUO3POJLogSmgo/I3mDPN+o
	fNYdUO2veRzFRLXFEehKsZq5MlafSE+4e6hHF1pjYAs3hFuyYwQO30f3OQ2Bc89NXXP3mM3JwYGda
	i4eecU23Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxEG5-00038A-KD; Mon, 12 Aug 2019 17:37:25 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxEFu-00037h-6m
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 17:37:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jMh85WQgxIdcz7yd1BWSn2ujSLN3yCFWRbvzn04j/60=; b=tGt0eNbG4+SkPkLXOUgPm4pKy
 WVySWGw3MzdYRSARCh6IKpb09zogVVtk3jSkDv2lQ9tQi95flP7s+UlKxq6JyowqW9pG8QO3hpW2K
 HtOe67xFnI/GoiriCY0pHL1UQyccdnNry3AgcOJcT2hPCt9mXOI22GwO+GDARxuAAuu58=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hxEFs-0002Ty-I9; Mon, 12 Aug 2019 17:37:12 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 9E08E2740CBD; Mon, 12 Aug 2019 18:37:11 +0100 (BST)
Date: Mon, 12 Aug 2019 18:37:11 +0100
From: Mark Brown <broonie@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>
Subject: Re: next/master boot: 254 boots: 11 failed, 227 passed with 16
 offline (v5.3-rc4-5755-g8e72ac275c63)
Message-ID: <20190812173711.GN4592@sirena.co.uk>
References: <5d519859.1c69fb81.531c0.088a@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <5d519859.1c69fb81.531c0.088a@mx.google.com>
X-Cookie: Decaffeinated coffee?  Just Say No.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_103714_247469_48284B8B 
X-CRM114-Status: UNSURE (   7.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-msm@vger.kernel.org, linux-next@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
Content-Type: multipart/mixed; boundary="===============8142021710045312026=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8142021710045312026==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6yHiY5vv/BiPjcMt"
Content-Disposition: inline


--6yHiY5vv/BiPjcMt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 12, 2019 at 09:48:25AM -0700, kernelci.org bot wrote:

Today's -next fails to boot on qcs404-evb-4k:

> arm64:
>     defconfig:
>         gcc-8:

The boot appears to suddenly drop into a bootloader near the end of
boot:

05:14:44.500307  [    1.886858] Key type dns_resolver registered
05:14:44.500345  [    1.892544] registered taskstats version 1
05:14:44.500382  [    1.895502] Loading compiled-in X.509 certificates
05:14:44.515903  [    1.916067] hctosys: unable to open rtc device (rtc0)
05:14:51.562124 =20
05:14:51.562251  Format: Log Type - Time(microsec) - Message - Optional Info
05:14:51.562306  Log Type: B - Since Boot(Power On Reset),  D - Delta,  S -=
 Statistic
05:14:51.562383  S - QC_IMAGE_VERSION_STRING=3DBOOT.XF.0.1-00080-QCS405LZB-2
05:14:51.562427  S - IMAGE_VARIANT_STRING=3DQcs405LA

--6yHiY5vv/BiPjcMt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1Ro8YACgkQJNaLcl1U
h9DSZQf/bKwhCQ1C3b2g6D9QdwqB6vbUt9Wg0E/+9Th2rg+WR98nT9yHXhzYLpPP
8KF1isnSnh1bQMivHodQzHRjgKqexOsG7WNI79x1XQbsqURFcIwNm2UFIJq5gkXF
9Y1YedRKyy+pUT17WRNRpZk1lV9r+LTND8IObYOzRU9rZxCpA5wXSGVz3imh+VL5
eXcublPQWwRUSccn479DylpZQSzCnSUtHVCwDN/ti09FXIa401d/Zpije+9NqJjb
+kycjvuSQK0hfdI4U2WlNivIlqqVakvx6ihtvRQaIbhXgkboIjfeLRv6Au5+olWx
2vEU0ix+a1mUYvvMiLtJFwkbSALDyw==
=FI7D
-----END PGP SIGNATURE-----

--6yHiY5vv/BiPjcMt--


--===============8142021710045312026==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8142021710045312026==--

