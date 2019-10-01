Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D3DC325C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 13:22:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ndKb9gjsqFcgOoie8MejkfPV9TF9lwtq9brCA2kXUWo=; b=ER7b0DVOkIFYCYCyoHZempuFh
	PlU/pSsk/F4EK4Fa7sKDFsfaUtKATWhTF/+cRrKFQgxmjSEx+4YGq0WVeKVidhSc8FZt9k3rBRiGC
	9pkG8eferTi2Y2B/Yio01JGoVApuIiFMFHLPQsvRnf8F1566yRxXkSmf6y7ogcky+kESC555Ky/bN
	p1U5Dunpt5PULEcBde3K+L03Zvyy6IxzCpER0fPDKaQ0TJqLZ2CCqkxJk8JzqB+MQJamp4WOi7fJJ
	5V72rh4I7gFb3lgx5QF47GFSIjMsS3nMas7Qoya0ENkkv7j6aVnO4DFQ7CI0ch2UNRjdWj1Julsw1
	QZRSkiK6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFGEX-0008Sh-Ej; Tue, 01 Oct 2019 11:22:21 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFGEH-0008OT-GJ
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 11:22:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7heQPGkIVbEFXhU3j/wrPl6TKVDDlgqYAUYzvbl/ugY=; b=iQMAS7INtS2rc5uNSAbs2fFFW
 m0Y8QbxuankG2so1itRjNFr/UV1KO+ApQ1bzmzwAK9JRvpat5Ev88U6AGFj0laAEyAprsmxstN58P
 q669/FzUnY/ztiAnrnxJ6cGX4cdOtxoY8MbCyT0lWquF7XBt9iIjwRYHg1XBbLN45Ih/0=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iFGED-0004Ol-TW; Tue, 01 Oct 2019 11:22:01 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 63663274299F; Tue,  1 Oct 2019 12:22:01 +0100 (BST)
Date: Tue, 1 Oct 2019 12:22:01 +0100
From: Mark Brown <broonie@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v2 07/10] ASoC: samsung: arndale: Add support for WM1811
 CODEC
Message-ID: <20191001112201.GB5618@sirena.co.uk>
References: <20190920130218.32690-1-s.nawrocki@samsung.com>
 <CGME20190920130321eucas1p2efe85adb3df4c546a7d81326b4c75873@eucas1p2.samsung.com>
 <20190920130218.32690-8-s.nawrocki@samsung.com>
MIME-Version: 1.0
In-Reply-To: <20190920130218.32690-8-s.nawrocki@samsung.com>
X-Cookie: Dyslexics have more fnu.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_042205_556930_6F50F2FF 
X-CRM114-Status: UNSURE (   9.52  )
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: multipart/mixed; boundary="===============7869156921419844197=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7869156921419844197==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oC1+HKm2/end4ao3"
Content-Disposition: inline


--oC1+HKm2/end4ao3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 20, 2019 at 03:02:16PM +0200, Sylwester Nawrocki wrote:
> The Arndale boards come with different types of the audio daughter
> board.  In order to support the WM1811 one we add new definition of
> an ASoC card which will be registered when the driver matches on
> "samsung,arndale-wm1811" compatible.  There is no runtime detection of
> the audio daughter board type at the moment, compatible string of the
> audio card needs to be adjusted in DT, e.g. by the bootloader,
> depending on actual audio board (CODEC) used.

This doesn't apply against current code, please check and resend.

--oC1+HKm2/end4ao3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2TNtgACgkQJNaLcl1U
h9AYyAf/cMh/RnJSb91Y7ASAzq4JnJLv6QETGdT6/F2YvFYHwLw+XV88qB33VsOC
L9Xn5gOJxnSo/ewhwjmL2MyE8c7BOVuw7DUzg0hBhcmvFCb/AqZstgmedz0xWn4X
jaDpSyvvkCINxkOfmGc/7LFulw9q8tXAyLiBVKcvaqUiUXJwETSDJ1VSZVm12Fnk
lsLUyL+fE1bOUxBEwJhv3FiiUAyVj13mVfPN4xEWVY0JJHoe+YcN+HrYfHVcCwPo
vEVsnqVg4TV0ziGgzjW8nW4aHH6doqdnsojCOunjsTPhMqAVFwoTRF7xnSQgyFSJ
YPG6Fg/jY/DKErg6HcpOgX0em+1s+w==
=G3VW
-----END PGP SIGNATURE-----

--oC1+HKm2/end4ao3--


--===============7869156921419844197==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7869156921419844197==--

