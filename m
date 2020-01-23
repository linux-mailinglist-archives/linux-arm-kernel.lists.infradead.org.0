Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A55146620
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 11:59:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LzaSLAkuk/cKe4gbhRvQGLYm8aXQJwIsPrlZk5RicGM=; b=rCr/XqhkYeJvVRNuWRbIxdzDJ
	uBNixSYuov+zp2eLh4DwOwBl1iKTu42qX1M1/w5KbkKRulPqGJB9OruNJzFw3FMObEVUoq9QhpXwk
	LBvlyBEdFAcycp1m0hEfWOGz8w2S7ciornuJFu1CiWF7ZHbVeeytrl1eei0WBxV1kT9kC5Ezdp6U7
	fyiw2Eo/IY3vRSkF5Fs2kGm3mvkbaEO6sx+H54BdZRoeuqhN954nGZS1CkUkVnocw59FjXLLxrKKW
	YNy1PJVNm6A/Xv2JrT65X17dA896iqj+COMgOCb29gjKV9Rml+TlK3QulCnFmPyXG2E0mxLKkPcMG
	40hW8eYRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuaCn-0007AJ-SO; Thu, 23 Jan 2020 10:59:21 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuaCb-00078x-Rv
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 10:59:11 +0000
Received: from localhost (p54B335E9.dip0.t-ipconnect.de [84.179.53.233])
 by pokefinder.org (Postfix) with ESMTPSA id C8C832C00DA;
 Thu, 23 Jan 2020 11:59:08 +0100 (CET)
Date: Thu, 23 Jan 2020 11:59:08 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 1/2] i2c: Enable compile testing for some of drivers
Message-ID: <20200123105908.GE1105@ninjato>
References: <1578384779-15487-1-git-send-email-krzk@kernel.org>
MIME-Version: 1.0
In-Reply-To: <1578384779-15487-1-git-send-email-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_025910_058898_8CFA94C3 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Greg KH <greg@kroah.com>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, linux-i2c@vger.kernel.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, Jean Delvare <jdelvare@suse.de>
Content-Type: multipart/mixed; boundary="===============0029081815602337610=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0029081815602337610==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zjcmjzIkjQU2rmur"
Content-Disposition: inline


--zjcmjzIkjQU2rmur
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 07, 2020 at 09:12:58AM +0100, Krzysztof Kozlowski wrote:
> Some of the I2C bus drivers can be compile tested to increase build
> coverage.  This requires also:
> 1. Adding dependencies on COMMON_CLK for BCM2835 and Meson I2C
>    controllers,
> 2. Adding 'if' conditional to 'default y' so they will not get enabled
>    by default on all other architectures,
> 3. Limiting few compile test options to supported architectures (which
>    provide the readsX()/writesX() primitives).
>=20
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>=20

Applied to for-next with the zx chunk removed, thanks!


--zjcmjzIkjQU2rmur
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl4pfHgACgkQFA3kzBSg
KbYnrg/9HyJVjx09jFKG5CydmnTSMXzOKZ7M9Ck+0pdZwsLKttoMrJjFabpiqykr
A7AOaTgkaQQLK79xHuVHwu5bYCzwVtRBElFNQzwYyFmeIfAd2Cf2LoMBzOC0T7DP
/nMkU+2PEmeTSZtDuBLLNrckEpw0gcbaXZhLrWIcXaZHpglbonZxa/2DJSEfpLj2
Z5rpZ17O4X20GEjJ6cunddM7mmNFmoB6I/kYsaOsOmrR0xCXVV+j+IPArvvCj0hQ
8+LNK/KredOVKemDkXjdYPUXry3l56jTCbiOHumuKCKFL/+bskmvjVhmg7mMaCHd
fHi3n2/UQFxTinDSWQjQTcd85HQkQIuIK0FAqRhAP3illfHaEZ/Vmt0Yh5+dnutu
RUkzlrx17lbmOjChb5SJ1Sc7AbJiXT4N/6q3ZmaJv+S+Aa3imwcXmJIDtFzVJd3T
Q/7noIG4fWOfp+d8ajt3lTJSq0r6eWZjMSAU/gxmG3RYZNikLTpNFcn4gBIIRfzK
Um1pj+g6leb7Wp2wOS/ONBMdDkLCRgBv9nhhlvQgPfR8me2iJh9ndJFFRWFWxzQc
v8hEuez1m9rPVG77Kg7CTdIUJcxzjziEP8kTmtlfXB0nfbhG7+XWUsIYeCPnJFqs
je7itrWyURZUNEZePmRyCRAu2EAwxTy+BIYg68e0WuwfN/CNpXY=
=RIMX
-----END PGP SIGNATURE-----

--zjcmjzIkjQU2rmur--


--===============0029081815602337610==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0029081815602337610==--

