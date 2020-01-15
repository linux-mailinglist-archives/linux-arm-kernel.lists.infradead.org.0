Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FB213CDDC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 21:11:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n1QNy6on6XKWZtVxOqVCu32K4KAhiSHgSunPZ8trwlw=; b=j5Qeb0T8ITnQJpDtzaDTvqJS0
	2YEy5bHVEJ0YkFm8t17pGpnsxrqxvb4a17iAUE7VySXJzw4Bezeyhfgy+JXB63NzeqHN54pGkU7bv
	Nw4L7U9xjy2GIlwWZ+YB5fNLRZVDqqcwxndiyoRFiW/WMk0gSi2hwfOa3wthUcwbH6qeSIgjwO2FA
	/3Ub67yBQMop75CGpF1zsDZsnDz9FjJ7vi6Eu64rpL9p5HQuQEaUmz4VIbFz1sW1r6ACC1Ss7QirE
	CH663BjbIqLLRAzB2YuXu1bxeLnkdZEC+vbZqXp/dO5cbit+BEhxvu2zVr7GVPHmqWb5aCPp1zlkl
	4eHNihgFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irp0u-0002TA-8Y; Wed, 15 Jan 2020 20:11:40 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irp0d-0002Rp-Kp
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 20:11:29 +0000
Received: from localhost (p54B33239.dip0.t-ipconnect.de [84.179.50.57])
 by pokefinder.org (Postfix) with ESMTPSA id D13B82C39C2;
 Wed, 15 Jan 2020 21:11:22 +0100 (CET)
Date: Wed, 15 Jan 2020 21:11:22 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3 1/3] i2c: pmcmsp: Use proper printk format for
 resource_size_t
Message-ID: <20200115201122.GD23789@ninjato>
References: <20200115200250.10849-1-krzk@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200115200250.10849-1-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_121123_831138_49813F9A 
X-CRM114-Status: UNSURE (   7.73  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Jean Delvare <jdelvare@suse.de>,
 Vladimir Zapolskiy <vz@mleia.com>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, linux-i2c@vger.kernel.org,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5489370314822027241=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5489370314822027241==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n2Pv11Ogg/Ox8ay5"
Content-Disposition: inline


--n2Pv11Ogg/Ox8ay5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 15, 2020 at 09:02:48PM +0100, Krzysztof Kozlowski wrote:
> resource_size_t should be printed with its own size-independent format
> to fix warnings when compiling on 64-bit platform (e.g. with
> COMPILE_TEST):
>=20
>     drivers/i2c/busses/i2c-pmcmsp.c: In function =E2=80=98pmcmsptwi_probe=
=E2=80=99:
>     drivers/i2c/busses/i2c-pmcmsp.c:276:25: warning:
>         format =E2=80=98%x=E2=80=99 expects argument of type =E2=80=98uns=
igned int=E2=80=99,
>         but argument 3 has type =E2=80=98resource_size_t {aka long long u=
nsigned int}=E2=80=99 [-Wformat=3D]
>=20
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>=20

Applied to for-next, thanks!


--n2Pv11Ogg/Ox8ay5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl4fceUACgkQFA3kzBSg
Kbaqsw//fd/tBuZAf0ECoBh5tOS9OHNnch60MhHR1/66F+fZJu0d51QyirtYSeXI
9E+eS4MHn3Eoa7MpuNFG+6P16VaecghOOWNFp9mCqboutGRU0UiF32qicCmYRx7d
TiMiILh67d8Y9+WcPqRIOtEjjrGWLIqSYXC1nEz7fNEOQ4/5NU1cj73GFjd1Oc4e
IEjeRYzxg6nnS46q3CT94gFERxTb/x4Z+r5WFMSlkDtOZMpYjlQSplazQyn7eLIZ
Af/okYkrexFsh5xayYRldbHWUK9pHky1nlj+K8EbnRIoc+imM7q7opOlhWJMnGBT
0pj+33JTYTIKuKPUtoReM8yvTST63SUpjCC6vZTu+verAZvzXX2dvXfzq55rDknr
U5c6+/PMUf17A3/XPzWcaBR/00L7B0MoLRVRICAAtLSnXOg1RJW07Xc+ichmgFNU
05X1eUWWI5pIpZjbpVxLyNk/ta2J4lG76LEW/79/ieU7P7GVcZAFKHloTvHBfNVQ
PqWxuAAlwdHQl6eG7gwJD4lv53OK0MLVHPXR//XiiKQNIoGxmQUoj4O8oZ4wrspi
tFB261pBx8FNc5ioqfL3WJh798KX/XEKGBAizj6cRhHC/Y/6WXs6QKk8gqjyDIZK
uF1TH08xWErH1MxiwUy37wMIzH0rlDFs2JHQGgJd4QDq4qc0lns=
=QP0H
-----END PGP SIGNATURE-----

--n2Pv11Ogg/Ox8ay5--


--===============5489370314822027241==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5489370314822027241==--

