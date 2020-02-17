Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C12C161583
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 16:06:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OspU+WhwZgHUFW7K2z0asVL/mFnb3Qv6CSh3+7NGDhc=; b=p4D5sWNALHvGKfArrKh2MpkZS
	eSOC6AKHgcnFnXhnOPdUGQrAwEM9i7uzK33uWMddPKa4ddgJ1txD4OItCpBaiF0nOyuRFggGZwZbC
	7sok78TrL5oHiau3eZoyYls+Nyxb5MaPqNm1RlHkfAR/TQJT5CNCpqa2aG8A5LKUpZI54s4xEYshF
	jbGZnh/Tw3JkEm3mUphgB5/DBaoWpUOA94pPuVhQ6AddaZbaLiWvQAIN2RhetkzkNxzXh3NHUXIHu
	gtFIzSgZwr9+PKULX3q73s8URfz2WNtEzPipsupf4319g5BGhm6KvnQu5EKmx8iVROhXDA/23zTEE
	GiU9/POSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3hyI-0002CA-RV; Mon, 17 Feb 2020 15:06:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3hy9-0002BP-6N
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 15:05:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 76B05106F;
 Mon, 17 Feb 2020 07:05:54 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EEE463F703;
 Mon, 17 Feb 2020 07:05:53 -0800 (PST)
Date: Mon, 17 Feb 2020 15:05:52 +0000
From: Mark Brown <broonie@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [RFC PATCH 07/34] ASoC: sun8i-codec: Remove extraneous widgets
Message-ID: <20200217150552.GI9304@sirena.org.uk>
References: <20200217064250.15516-8-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200217064250.15516-8-samuel@sholland.org>
X-Cookie: There was a phone call for you.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_070557_279486_841A7F9E 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 =?iso-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@free-electrons.com>,
 stable@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4076693206894745125=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4076693206894745125==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="e5GLnnZ8mDMEwH4V"
Content-Disposition: inline


--e5GLnnZ8mDMEwH4V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 17, 2020 at 12:42:23AM -0600, Samuel Holland wrote:
> This driver is for the digital part of the codec, which has no
> microphone input. These widgets look like they were copied from
> sun4i-codec. Since they do not belong here, remove them.
>=20
> Cc: stable@kernel.org
> Fixes: eda85d1fee05 ("ASoC: sun8i-codec: Add ADC support for a33")

This is a cleanup, why send it to stable?

--e5GLnnZ8mDMEwH4V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5Kq88ACgkQJNaLcl1U
h9AO/wf+MRxer75LjO64950mSzyZv03H08zeydq4EqDjAfmEz4SKcz7U2c4saLDV
rnK6SSDhIk+37PQH7f3K1vOkeS2vbdZ4jLlfv37BZM8W4Gjvmskw55ALcWYyEJUT
NLbZapLoOL+r6G0jTNchN/Y9RxH02zUZjpaCkAu8pYQJ4H9uj4Tmo2ma08gsKe6Z
5hJJGjVeiJMF7vekIeY6qzV44uWDXL2fEkP41L05NPQBA3bPzo0E35uJEz+q2aZC
6M7cH9ezGYL4AtEJIFqzZnIUcQxVZkLHG/zpMqY4bxC1xFmNihLDzqi7HKQtGOEF
NTKdQfX3VCJwv2632jbbdyiKMpeIUg==
=zg40
-----END PGP SIGNATURE-----

--e5GLnnZ8mDMEwH4V--


--===============4076693206894745125==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4076693206894745125==--

