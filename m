Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC1CAA4E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 15:43:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ss4cNC/zSM020h1ZbbnV2pR//TnoqRk7kueJso9MkyM=; b=LzoCeyCOMfG/7/wHaZDKdWj6o
	HWJuevK9Gy7gG1cOeEn3wFwrF2JaJvY/Sj0PaqhRerB2C2ngJr4EtiXLZG7oZ0QQferghxbmjkvo2
	hqXyEPLOR3W+b3UEreoxLlYbOX3t+udxLUagKP7wL2nHP8u8fchVPbfQMcbR500kfyhovALsk7Ws4
	3jMz0SfHMQivMm/S+ys0uuVt+qKwrAXPLP0U0nn250ErTVjFLR4F2rC2hR4ZEXQhSAelS/Kg5BRqZ
	k8dyMrlqKt4UqLXM6eHvQCNYTZo8WXuK9Yv1YZ9rj8ucnU/IvqPJQgSR4lYCJyD1dXkYbZokhVxh2
	zMHKTbd4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5s3B-0007Gx-S8; Thu, 05 Sep 2019 13:43:50 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5s31-0007GZ-95
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 13:43:40 +0000
Received: from localhost (p54B335F6.dip0.t-ipconnect.de [84.179.53.246])
 by pokefinder.org (Postfix) with ESMTPSA id 881712C00C0;
 Thu,  5 Sep 2019 15:43:38 +0200 (CEST)
Date: Thu, 5 Sep 2019 15:43:38 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 2/2] i2c: qcom-geni: Provide an option to disable DMA
 processing
Message-ID: <20190905134338.GF1157@kunai>
References: <20190905075213.13260-1-lee.jones@linaro.org>
 <20190905075213.13260-2-lee.jones@linaro.org>
 <20190905091800.GD1157@kunai> <20190905092816.GD26880@dell>
MIME-Version: 1.0
In-Reply-To: <20190905092816.GD26880@dell>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_064339_463826_E822218C 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, agross@kernel.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, vkoul@kernel.org,
 alokc@codeaurora.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7483346024457807940=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7483346024457807940==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jkO+KyKz7TfD21mV"
Content-Disposition: inline


--jkO+KyKz7TfD21mV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 05, 2019 at 10:28:16AM +0100, Lee Jones wrote:
> On Thu, 05 Sep 2019, Wolfram Sang wrote:
>=20
> >=20
> > > Fixes: 8bc529b25354 ("soc: qcom: geni: Add support for ACPI")
> >=20
> > Are you sure? From visual inspection, I don't see a correlation between
> > this commit and the fix here.
>=20
> This patch should have been part of the commit, or at the very least,
> part of the set, alluded to above.  Unfortunately, I was carrying
> Bjorn's hack which simply returned early from geni_se_rx_dma_prep()
> with an error, so it masked the issue.

I still don't see why this basic ACPI enabling code (not touching DMA
but only clocks and pinctrl) causes and additional handling for DMA. Am
I overlooking something obvious?


--jkO+KyKz7TfD21mV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1xEQoACgkQFA3kzBSg
KbaP5RAAtJRsAeX9DwqHu6OlUfWtnxeVIUmEceiWZ/k1Ad04csZDAuSKX/zEIIUH
STPHQiXh5QrNJSnU5Wwxu3GmIqY5xO71X2fHKQn+z9hyi6AKrNdxMnTKz9Sq/vlV
sl7qnk8IwyFEVlx6jFF10jw0ca50yv8IT4ErQAC+gUgAeF85T8tlxx66S3943qKe
8Tz9J2dazk4Okf3NZHEm7h/V6WnmxDulwocq+gkm28jfBiusxexwoxiBy83eAYe5
MbCbGD5eYesY24ZE4iJy/lCVspwe0Bgzj+DuBz0x+nwKf59vhQkjx0bV3UuaFH1/
8VgnDGl4ocIdi9kJYRpHmVaKnrr9CcvWssm7YwmTzg7L2Zq2rwRcr+hi4sM+02Qn
9Ki81OVixSgU2b8e+sbhQSh74JIAr6fiVFBBOluaT1SAkYclAzZbMETeCuDHowDB
Sm2tjXkspsahkMM/+Um+X8rQ3xcULWYAckxwlpJPgdVXBOqOHH4fWQfuCvjo+W/p
45UiRjFQQJzDAzzvjQT6cywv+nVxO3so5i3LH2QxdU+teccqtgjkbVJny9G1VdUc
e8JBMtake7qqFdgImuTCOhbqu+9ACQmeKpYVVNSepxX25JMoxr9iDZy1i0W5+pQe
N5vhQJRs0+i0X1IMG6jSuvmffuJJNIF6hI4rmRkg9//l5eHVlAo=
=Fazi
-----END PGP SIGNATURE-----

--jkO+KyKz7TfD21mV--


--===============7483346024457807940==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7483346024457807940==--

