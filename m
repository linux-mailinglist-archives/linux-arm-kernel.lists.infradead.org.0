Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E99E3B3C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 20:44:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2A7NNf/V/CtG9KHmhEA1c9yJJGB5NPNo00iHrE1ZTSU=; b=ocmufKMIG30t4AOXDWI3ip79w
	hT/NPuHP969jx7HUR6+MrJvw4XAINMwZ5ehCw3nRc0CzHsy1XJSJMVuop4H8GRFLRYRl/wB34Lrfh
	nzADgCOmRjLPtB0wsga2N4975bj0ZM78+h/r/K6Cv/oHnLgK3nlrhUDYhE0xkykXuEQoeRnrO1xnJ
	Q86vy9Ni9u2XKU6YoHHRhiH4acS6fRRi+RUwxRjlre1ywAUCI9+Y7lvS4V4F+rQNre+G5/66yZlU0
	djTM1Zvm+lEoldcJXq5RH0FV64xKAvooW6P926EMElZrXh/mM8T5FTKtjzmLk26cIDdXWrupJS2mD
	7bIBwWrIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNi6O-000863-3P; Thu, 24 Oct 2019 18:44:52 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNi6B-00085e-6R
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 18:44:40 +0000
Received: from localhost (x4d0bc9de.dyn.telefonica.de [77.11.201.222])
 by pokefinder.org (Postfix) with ESMTPSA id 5D9E82C011D;
 Thu, 24 Oct 2019 20:44:38 +0200 (CEST)
Date: Thu, 24 Oct 2019 20:44:37 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH v2] i2c: i2c-stm32f7: remove warning when compiling with
 W=1
Message-ID: <20191024184437.GE1870@kunai>
References: <1571145118-3522-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1571145118-3522-1-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_114439_387002_7BC6D711 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5268134671932930752=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5268134671932930752==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a+b56+3nqLzpiR9O"
Content-Disposition: inline


--a+b56+3nqLzpiR9O
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 15, 2019 at 03:11:58PM +0200, Alain Volmat wrote:
> Remove the following warning:
>=20
> drivers/i2c/busses/i2c-stm32f7.c:315:
> warning: cannot understand function prototype:
> 'struct stm32f7_i2c_spec i2c_specs[] =3D
>=20
> Replace a comment starting with /** by simply /* to avoid having
> it interpreted as a kernel-doc comment.
>=20
> Fixes: aeb068c57214 ("i2c: i2c-stm32f7: add driver")
> Signed-off-by: Alain Volmat <alain.volmat@st.com>

Applied to for-current, thanks!


--a+b56+3nqLzpiR9O
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl2x8RUACgkQFA3kzBSg
Kbbyqw/8D1GESh2wz7RCGgify6hbIO/FgUOUJigLMBvN7ElqmAgJbf23OvTg1zQx
67AJ5QhuUzw3oXySC2ntHIbBvM5pfiJjCp3knOLIrjWCUVZ2KvBPEprieW5tpBj6
sXy+6ZzojJj8vpA6LqmIu/jX0vMo9NBGLUGkWcnkklz0J0k3U+0VzdAUHGvVpJGd
xWUxHGG8q5vJ5Y4t1RDktRj+vraHaV7SZwp5QL5+tD0LDZ1e00pqupVpHL+vEzIj
GPljclhyWiF/fQzBpY4MZWZ2Gpk4ZCJ5aL2oQtY9HTzy3UmPQJAu2ZjfDzAwM2cy
UfX9vpo9Uzg5k3sphhQz8lL35KYeRNj/HHGn4ricMT05G6AnLZ3PvPN3N6XL7dbk
BFnN1xaDmiF0izsXGQQbkpHvywAL/glYaImGZ2B4cKUN58JXavsmFsW6qM1mlrNl
hAFPFwJWffGJRW91lxC++v4LwjkpuypnRghWwy6sllU28/MgBESKnQwDqW4X3hmA
SsUijLNTRUgUWjgbUJ7s0YQ0zOEP/3U0k/Jv8XY8aLRu38fJ5jCxREQinZF6+Ner
G1DvSW9mfisN2HQqV9lWdADiiM5qfDyqJMT+SkSkXuaYqWqn9FNSFNn9bWjVRqut
aTEeMGUPOljpMtVflUPoV6nPF8LhFNXGhKaZqx5RkGQD9blcWaQ=
=yMm2
-----END PGP SIGNATURE-----

--a+b56+3nqLzpiR9O--


--===============5268134671932930752==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5268134671932930752==--

