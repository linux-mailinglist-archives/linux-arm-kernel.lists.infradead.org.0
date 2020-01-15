Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5858613CB36
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 18:44:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5iyaj+9fQ7fIYMWV8R0mx28I8f797nseiBK2J59mWug=; b=KEm4suOUaELt2S+a2l1Kum8cx
	Ww4Gme9JBEnZMc+yvTmY42hYMK9yU0+Zlyo+zBlMqb2NzqNWQcuSe86XDNXyjQ7VKHqzxwkxUW47z
	uSKII7UW7feZTxZo2YJdQ6cK7PmgAGK6l0U+LFaXUbL8esxavjNXnF+NPwnVwCwuu5mYfVfQxFPW6
	3sPJ+6a07YTh9MBldSCQY9i2gV9YB0W1btIh79O4cU9+cfY2UuKx0pbjRI5ldwKioN/RRg7gzXMPo
	YfUMYFV/RtP0/ntJSmjQsgr+NS5JmQKT/+18WVm74BhYZ7NuZ9yehC6uidgYr+gaIQMWUteCa05IT
	HOAtxABXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irmhp-0004F8-OG; Wed, 15 Jan 2020 17:43:49 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irmhe-0004EQ-GC
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 17:43:43 +0000
Received: from localhost (p54B33239.dip0.t-ipconnect.de [84.179.50.57])
 by pokefinder.org (Postfix) with ESMTPSA id D0E572C0742;
 Wed, 15 Jan 2020 18:43:37 +0100 (CET)
Date: Wed, 15 Jan 2020 18:43:37 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 3/4] i2c: highlander: Use proper printk format for
 iomem pointer
Message-ID: <20200115174337.GH1239@ninjato>
References: <1578992765-1418-1-git-send-email-krzk@kernel.org>
 <1578992765-1418-3-git-send-email-krzk@kernel.org>
MIME-Version: 1.0
In-Reply-To: <1578992765-1418-3-git-send-email-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_094338_684552_5954A0CF 
X-CRM114-Status: GOOD (  15.06  )
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
Content-Type: multipart/mixed; boundary="===============2754474161084713773=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2754474161084713773==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rCwQ2Y43eQY6RBgR"
Content-Disposition: inline


--rCwQ2Y43eQY6RBgR
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 14, 2020 at 10:06:04AM +0100, Krzysztof Kozlowski wrote:
> iomem pointers should be printed with pointer format to hide the
> actual value and fix warnings when compiling on 64-bit platform (e.g. with
> COMPILE_TEST):
>=20
>     drivers/i2c/busses/i2c-highlander.c: In function =E2=80=98highlander_=
i2c_smbus_xfer=E2=80=99:
>     drivers/i2c/busses/i2c-highlander.c:325:22: warning:
>         format =E2=80=98%d=E2=80=99 expects argument of type =E2=80=98int=
=E2=80=99,
>         but argument 3 has type =E2=80=98size_t {aka long unsigned int}=
=E2=80=99 [-Wformat=3D]
>=20
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Wrong commit message. buf_len is size_t and not an iomem pointer.

> ---
>=20
> Changes since v1:
> 1. None
> ---
>  drivers/i2c/busses/i2c-highlander.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/i2c/busses/i2c-highlander.c b/drivers/i2c/busses/i2c=
-highlander.c
> index abfe3094c047..803dad70e2a7 100644
> --- a/drivers/i2c/busses/i2c-highlander.c
> +++ b/drivers/i2c/busses/i2c-highlander.c
> @@ -322,7 +322,7 @@ static int highlander_i2c_smbus_xfer(struct i2c_adapt=
er *adap, u16 addr,
>  		tmp |=3D (SMMR_MODE0 | SMMR_MODE1);
>  		break;
>  	default:
> -		dev_err(dev->dev, "unsupported xfer size %d\n", dev->buf_len);
> +		dev_err(dev->dev, "unsupported xfer size %zu\n", dev->buf_len);
>  		return -EINVAL;
>  	}
> =20
> --=20
> 2.7.4
>=20

--rCwQ2Y43eQY6RBgR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl4fT0kACgkQFA3kzBSg
KbbwjhAAk6+rX4a8YIXUi9hKqaLS8QYdLjBJt8KuuQUFUjDSZVwgkuGtOu60Y+ru
AB+/Io9mdeCkPFmL1PNn1kTrQMLmYiu8yuZL1Ppe4PgZN4J5ZAXaqqM8YbYCl7Wn
F+eY2OIgWJakkMSEb6wsEDFtD1OzydFut/0LKNY83IxkL+VNR4WI8IfPLZtTlTWE
Pa1fnN4AuXlfTB6LIWE9J4LWnDOCYjtiJvYu1PePASrFadtm/Al5PBILzYML5ZsM
S3B8kDMYA1k9E0IkPzx1qF0NTlUfrKZ4+QE+9GV5t3ONGIfRXqvsEWCB9BqKqkS1
1gd2cnEbDMDaMBzL1rDrMFE6Kb/E3cMhIxHIxyzx946BHN26RH+ZW7+5+BZ7S0bN
22kOrhei2l5OByVh/8gwftYg2S//DlDX5NnDloaKMlMp4mqcF868okMj0QKlwzTn
jCgrwjXCEiex0aynBAchp87UWCOOjnbdbxm81jw0sAVEASvvydR5wwBxzXYEOkcf
0OfICAwJsusdZEdznYT3jQF8z/mqp87iB1t+ZtdDYbXd7CG+gC6Z6sz1d4yDeIc/
jYkxDykxfklxP04MluX4vcp/btcpZLek1BDZcHeKFz8RY0betjQUSrDd9ybVMO/+
QhmI0MXmKYK8pDo7UMGHAESg43lOKEv168eree4Qido50G0TzFU=
=Z5e7
-----END PGP SIGNATURE-----

--rCwQ2Y43eQY6RBgR--


--===============2754474161084713773==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2754474161084713773==--

