Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0409E7F7BD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 15:04:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Yb+5whmSCP47AXQUUVrBsu8NaAPzUov2YrF3yjlCB50=; b=uivIESLIVdSYXiIVfWCPP1Yzu
	Op3iYUq5Yi7HpozFHRJGLoqCWzDnukeGfnMCUV92ByNucPFFSgI2tEwwd4Ej9s8bBwCYh5jZwVzsU
	BJC7J+qRQaurrclJexFrBWzLXKjSwtD9TqgF/pKtNBqXbVW0pM5/DSGerMlTYZvgAtXNEHvlhxIh8
	fbRr3AhJtpGWvlipArVt1CCMG9sTycvhkn4OrFPVKmwY3grICjYA9ANAxu7YsKudi5uXKn2CLyjsj
	tAVBkTZe+7howpRXf5DORXKWwspFJyOQxFX68GGT6fJIvE5/5yMtYF8Kskb7b50retk+ImGROrVgp
	t8BwvoZMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htXEB-000643-Nx; Fri, 02 Aug 2019 13:04:11 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htXE4-00063h-9W
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 13:04:06 +0000
Received: by mail-wr1-x441.google.com with SMTP id n4so77182992wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 06:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to;
 bh=4tYADAgGqRhGr5S50MX3nQS4EBniZFY08V7kKLYCB+Y=;
 b=w9ApgwGKeQXLHzJSlYpzr0J2NcxiAJotChgFQe6J1QWac6kYRpk1ch+DrCjSfMI9UQ
 Q+nFyoO7Wo5wQrmhYlu6vw8omI7lm2mwWuTD5ROOS/aDrXJS5gXUaNVzbopQkkJaa5fU
 NmwQ2JvjjuHAH6ubY7aNxvr0oauOkCO4j2+NnYITjlMklgKakyrJVlD584ax1MriNkc5
 rlLrqYk/yYcYi2E4yPuT8WSyEBFb403VR9zSpi9ELx13ixvWQHPZmkZEjAZr76cCeUl5
 xpqHbjriDGvlpcYPs7amqi8V32YpJGcrJyH/Cj2nrLl66mGD14KTmWPZ6iTsS5a2afgu
 f3tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to;
 bh=4tYADAgGqRhGr5S50MX3nQS4EBniZFY08V7kKLYCB+Y=;
 b=EcyTEZ8CINfXSwFSCFkNFB3NIO1xg4jwdkaPXVDy9qiYZ6ZMiAMqlXx3IZWIcuIOG7
 /++ekjStO+t0Zg5TNemmofcilZ66PEF/twEIH9FXYmjRRbanNtDa5nOn+RdXHN+eO5ck
 F4R6sjrsUZx3MfDjxZ6Rpr1cWHqU8Zvmi1weEZ9A+/Rnmnyii9ZwGN5m78sRBmO/n0Q+
 pOG/g84J1BSJ5/icPdszzJ5bx53Fb21eCkZw7ZyYEp0GJltGVLNePdC3l6Cz7WR/QfJW
 DuvBpBlVR0M7lAVEZZJrTb8fq67cuLV6xUeGvwMmMc0OQQT5mDfWfQGgGbKv0qaXcEzf
 GCGg==
X-Gm-Message-State: APjAAAWgpmX6l1rcf89Psqs53HeV6qC9PBfZozmVpohYFYA77LV6vQFy
 voBnI+mdDHYv7fgjD9j4cN68Tw==
X-Google-Smtp-Source: APXvYqxVPcdwCbB5z844xeunow0/PIVbBdDt6vn5NimF225MM4CeGE+dbM3syR3/NaNtlIoN9OZBOA==
X-Received: by 2002:adf:ed8a:: with SMTP id c10mr151680412wro.33.1564751042715; 
 Fri, 02 Aug 2019 06:04:02 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 5sm62349561wmg.42.2019.08.02.06.04.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 02 Aug 2019 06:04:01 -0700 (PDT)
Subject: Re: next/master boot: 265 boots: 17 failed, 184 passed with 64
 offline (next-20190730)
To: Mark Brown <broonie@kernel.org>, khilman@baylibre.com
References: <5d403574.1c69fb81.14163.65d3@mx.google.com>
 <20190730123425.GB4264@sirena.org.uk>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <71c56763-2786-e864-cb34-852a1c830dda@baylibre.com>
Date: Fri, 2 Aug 2019 15:03:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190730123425.GB4264@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_060404_380311_D56A5C2F 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-oxnas@groups.io, linux-next@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
Content-Type: multipart/mixed; boundary="===============8639591012841572858=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8639591012841572858==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="1xEsepQlYxTzZZMYdhZrc2UY4qLKzxJ9Z"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--1xEsepQlYxTzZZMYdhZrc2UY4qLKzxJ9Z
Content-Type: multipart/mixed; boundary="HW9FyrmIe8F3Yah5As3FxUbs2BUGi4652";
 protected-headers="v1"
From: Neil Armstrong <narmstrong@baylibre.com>
To: Mark Brown <broonie@kernel.org>, khilman@baylibre.com
Cc: kernel-build-reports@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-next@vger.kernel.org,
 linux-oxnas@groups.io
Message-ID: <71c56763-2786-e864-cb34-852a1c830dda@baylibre.com>
Subject: Re: next/master boot: 265 boots: 17 failed, 184 passed with 64
 offline (next-20190730)
References: <5d403574.1c69fb81.14163.65d3@mx.google.com>
 <20190730123425.GB4264@sirena.org.uk>
In-Reply-To: <20190730123425.GB4264@sirena.org.uk>

--HW9FyrmIe8F3Yah5As3FxUbs2BUGi4652
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Mark,

On 30/07/2019 14:34, Mark Brown wrote:
> On Tue, Jul 30, 2019 at 05:17:56AM -0700, kernelci.org bot wrote:
>=20
>> Boot Failures Detected:
>>
>> arm:
>>     oxnas_v6_defconfig:
>>         gcc-8:
>>             ox820-cloudengines-pogoplug-series-3: 1 failed lab
>=20
> For some time now -next and mainline have been failing to boot on
> Pogoplug 3 with the oxnas_v6_defconfig, the kernel seems to start fine
> but fails to parse the ramdisk it's passed:
>=20
> 08:50:02.086589  <6>[    7.719854] IP-Config: Complete:
> 08:50:02.087213  <6>[    7.723330]      device=3Deth0, hwaddr=3D0a:a2:8=
9:27:10:1b, ipaddr=3D10.201.4.144, mask=3D255.255.0.0, gw=3D10.201.0.1
> 08:50:02.087413  <6>[    7.733409]      host=3D10.201.4.144, domain=3D,=
 nis-domain=3D(none)
> 08:50:02.088056  <6>[    7.739499]      bootserver=3D10.201.1.1, rootse=
rver=3D10.201.1.1, rootpath=3D
> 08:50:02.088248  <6>[    7.739504]      nameserver0=3D10.201.1.1
> 08:50:02.129966  <5>[    7.752025] RAMDISK: Couldn't find valid RAM dis=
k image starting at 0.
> 08:50:02.130381  <4>[    7.759616] List of all partitions:
> 08:50:02.131333  <4>[    7.763363] 0100           65536 ram0=20
>=20
> Possibly an issue with the ramdisk getting overwritten or something?

Thanks for reporting, it's my suspicion since my multiple bisect runs all=
 point to
this merge commit :
a318423b61e8 Merge tag 'upstream-5.3-rc1' of git://git.kernel.org/pub/scm=
/linux/kernel/git/rw/ubifs

This merge doesn't introduce notable changes for the oxnas_v6_defconfig, =
but disabling UBI entirely makes
it work again.

Continuing my investigations...

Neil

>=20
> Full details for today's -next can be seen here:
>=20
> 	https://kernelci.org/boot/id/5d4004bb59b51489d631b28d/
>=20



--HW9FyrmIe8F3Yah5As3FxUbs2BUGi4652--

--1xEsepQlYxTzZZMYdhZrc2UY4qLKzxJ9Z
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEPVPGJshWBf4d9CyLd9zb2sjISdEFAl1ENMAACgkQd9zb2sjI
SdHMwA//axa7tmbR0dsz3Iqp06C4UyGU9fIFNO5NtsbywqxrwEDkje7VBlLoli6q
HvtBHRE/Pge8Wn/Rlq+J1LbkwQACP3CCIDtTCxTKDHyFnIoiIaccesN4y1PC/MNe
YhB2VGvriqcUVsl7kGBzZjG12A+LCxhSa2gy8CWBTSt48JnW/ZO4T2fFNGgnVSHa
B1gffyY1Ma2SNLFnQ/Q+sp61vWsry6XyFLABv2x6yk7/RCtwooAUzOsIoVn8tadZ
C2vpCUaRMOyFhbBSBOwF0Tkyv/PK2AsE89qvjASYwEEUh/568JZXYtiWEXn7HX3Y
Mj9xWGH+mmS5UwbBk0rtoIjtzSXwVLGNBaZ0JFqMFvWETub9KkpXFwKd5HrH0udH
1xd3DHngpVrPIBC/nFBO2hYWREVZ26fPmizlYXrNoi2mKMPrWxDUtT9p96VAA3nY
hmQ8Z4W+VnPojBkGK+eCPuuvs/dzuawItdlroEQxD2hRRCFXJV4PjnJIRJX4aJfO
LVRqT60tNLKCoy/osc50k/cWjBMHmr+DMtkSFobi2QLo54reBZb16F8rd98LykYx
+jWV6Cr1wK4xmdP+5+eqLJZNEAPgpkeaDz4VnXG1jqywx+B/RjD8DDzLq2q+Y7qV
Q7NlBMdGXMcm0aENcQ+atP97svoJxtdvTtszPe+6RGDw+yaOK4Q=
=XbQu
-----END PGP SIGNATURE-----

--1xEsepQlYxTzZZMYdhZrc2UY4qLKzxJ9Z--


--===============8639591012841572858==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8639591012841572858==--

