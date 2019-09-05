Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A5DAA502
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 15:50:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7Wb1V2zrtPFfHrQAWJPV5TqPxCUlurs2L2P4hT9/v/8=; b=Tg+Uh1FQNnEhbD60I2JtYjnEB
	pQ8Zt6kwsIguAGz5qQh5hL8G0BCaH0bIZwHbmCMeGD0Yri15EynCJ8ef1QUhZPuhbyReejtyDHT+/
	hsXp7DOJeAlBxiuh+BOWEPjlYfEgOTLtU1FT0Gi4R+q4XBbE+NX0Gz1pHoTLF5f7jvVfv1elm3SW1
	ZQhypBXgmm7aqFwVksN2MyHQggkQ53svBgfjWExNIv6xbv+0zsr+KGcFNRD/EIgo78ZMR0k+vMtp+
	mtVqKwWb7XLpTrNQLuPaJrF1HK+47J5xyGkFkudNJbYdL1RHvmDcZO+TjFqrAAJHm4J6T0W440aTj
	FUnUjYZCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5s93-0000ib-1J; Thu, 05 Sep 2019 13:49:53 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5s8s-0000iA-GG
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 13:49:43 +0000
Received: from localhost (p54B335F6.dip0.t-ipconnect.de [84.179.53.246])
 by pokefinder.org (Postfix) with ESMTPSA id AC7102C00C0;
 Thu,  5 Sep 2019 15:49:41 +0200 (CEST)
Date: Thu, 5 Sep 2019 15:49:41 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 1/1] i2c: qcom-geni: Provide an option to disable DMA
 processing
Message-ID: <20190905134941.GG1157@kunai>
References: <20190905102247.27583-1-lee.jones@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20190905102247.27583-1-lee.jones@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_064942_691736_3C19FD3A 
X-CRM114-Status: GOOD (  13.09  )
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
 linux-kernel@vger.kernel.org, agross@kernel.org, robh+dt@kernel.org,
 bjorn.andersson@linaro.org, vkoul@kernel.org, alokc@codeaurora.org,
 linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1034517553058488716=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1034517553058488716==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jt0yj30bxbg11sci"
Content-Disposition: inline


--jt0yj30bxbg11sci
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Lee,

I understand you are in a hurry, but please double check before
sending...

On Thu, Sep 05, 2019 at 11:22:47AM +0100, Lee Jones wrote:
> We have a production-level laptop (Lenovo Yoga C630) which is exhibiting
> a rather horrific bug.  When I2C HID devices are being scanned for at
> boot-time the QCom Geni based I2C (Serial Engine) attempts to use DMA.
> When it does, the laptop reboots and the user never sees the OS.
>=20
> The beautiful thing about this approach is that, *if* the Geni SE DMA
> ever starts working, we can remove the C code and any old properties
> left in older DTs just become NOOP.  Older kernels with newer DTs (less
> of a priority) *still* will not work - but they do not work now anyway.

=2E.. becasue this paragraph doesn't fit anymore. Needs to be reworded.

>=20
> Fixes: 8bc529b25354 ("soc: qcom: geni: Add support for ACPI")

As said in the other thread, I don't get it, but this is not a show
stopper for me.

> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> Reviewed-by: Vinod Koul <vkoul@kernel.org>

I'd like Vinod to resend his review. Because IMO the change since v2 was
not trivial, so the old rev-by has to be dropped.

Other than that, the code looks good to me!

Regards,

   Wolfram


--jt0yj30bxbg11sci
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1xEnUACgkQFA3kzBSg
KbZADQ//bVc8JLCde99ZKqUN8Y09DkUCfN9nWo2ec5DwxFmDGC8HdJ6mtz50/MLV
jBJDWvml349aU4YwpmGf5ON51GWxey0iWmJ0Fo/km09XZp3JVHObxS+66M1y7p34
T60tKi6kct3QpVwT+jaqMimTvGDGY6W78cG/GCVErlFbthDEEeDfPzy1iuU0D/OW
j/rdRGz6Q8VlN2CvN6EPPn9njVwBQBIgsSAGeUULgGxb6dUs9oVp6CbRvPQMzwPV
7sPJzdV5bZ5YPWRaExFUiR6AfCkeDtJwK26jWKVVVLh2Xfc+FMSJ/pOQrQfzoGDA
Dv50xlVGa3oQV3zeyHzOIFhUZpjsTChbfzVNSt0GGzgYlc09U3ltyWZBR6iEyPfm
00x/oA1oyMjLpsaOq3xf5+AP7+PScfvB0910iujc+nPd2agCZRRDtl8hCmCiisBK
W2RB7RnLd3ZKf09bqU0xwkMNUXHSllk0bZK27lxdGFXIK8XCRjf9SJ6bQe1jvXWO
P5FG1/PuaQIjh8l7u2t15uFpzISvYvKAhypuSpV1Sbgc9fOfZSlbo20SrVkYAmd1
Y2JcfmTJBjlmRfpyXoVEzOGJclp1AlyrFQd955dzl/LAVBUdvDlHLaFkZ1molQF4
Ou0LwmX7yn69/N//1QKohUFuLjAkW+tJHd17zYtqMF/HAPcmZl0=
=pZZv
-----END PGP SIGNATURE-----

--jt0yj30bxbg11sci--


--===============1034517553058488716==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1034517553058488716==--

