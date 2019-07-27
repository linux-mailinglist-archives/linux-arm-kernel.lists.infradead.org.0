Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3DA77758
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 08:50:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:Subject:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vUxsXxPq9E1m4WDdH6nNLYjDKqR6Oyytu/MFbzDVW6c=; b=haMCvC1KNpJH/07jIjLifE0io
	Koy6RM20Qz9gJo8Oi7q17ET41pocZqc198/c5Aq2ENgS+v9ZIwBQDX8nn8puqqpus2Hlwv2sopsMa
	yPvyR9z27IKbcQWmJW00PO2Kza6mCfib/4QKRuzDkawXet3DJLAb4awqf5Dtc8zjX7eja4ABbuyFm
	BKP7qMn+AlYAfZP059QijXCC88RL2uoe/X3ZDrcMyKtV8krnd/bNnfJNZq6sqm4eQaDvbN6YdAtqz
	4cYmYN9wScYdyzj/e6g89MZf/5W17nPZiXUg4FqZXt61bq4NsfyQ2elgE9qzaN4wcVcQOlmRG639W
	pHsfMLYZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrGWy-0002ak-7t; Sat, 27 Jul 2019 06:50:12 +0000
Received: from mout.perfora.net ([74.208.4.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrGWl-0002UT-0y
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 06:50:00 +0000
Received: from [192.168.0.104] ([71.197.225.149]) by mrelay.perfora.net
 (mreueus004 [74.208.5.2]) with ESMTPSA (Nemesis) id 1MI55X-1heHyV3uUh-00FDl5; 
 Sat, 27 Jul 2019 08:49:49 +0200
To: Chen-Yu Tsai <wens@csie.org>
References: <20190727020252.17126-1-sunil@medhas.org>
 <CAGb2v66=hmx5yaSUm=QBt8AMRCV4EGYv-RFAMv_XBKjSjR79uA@mail.gmail.com>
From: Sunil Mohan Adapa <sunil@medhas.org>
Openpgp: preference=signencrypt
Autocrypt: addr=sunil@medhas.org; prefer-encrypt=mutual; keydata=
 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
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Enable eMMC on A64-OLinuXino
Message-ID: <7aaaf326-d7c2-59c9-5be2-b696ae490c3f@medhas.org>
Date: Fri, 26 Jul 2019 23:49:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAGb2v66=hmx5yaSUm=QBt8AMRCV4EGYv-RFAMv_XBKjSjR79uA@mail.gmail.com>
X-Provags-ID: V03:K1:G1gcx22sG00Jt5PiRMXF7WAdw1nP2pZUXITddqtWze6SRhaQa9T
 AvvaGvAfDMMzstFCdUTor0OpdNwhtCoc+3XGdQAKDy+Tnu8GgSqsv5MhdHiZJUTCcy4Tc1p
 gDbiFHcQboRg9fltNbgfAz8n2KCND7UC1Or+BkXGlGT0ueD3LIACIydnIbcRFIJHhlMo96D
 7DDGvhbrM6touS+NwJG8A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:o7Sx9CaJVyU=:6f5+AymU1+EZaqxUJZPCyg
 A/j88cUq06oMpzR21UPC9yZ2C4bAGJ/Y90yxwUKDSF3bjBkhaforyU5FPhxjMKcNj/b4+c2lz
 9BsM9cBuVvhSWpCHWV5pfOWj8ijH476BfVfiA930RU6FrVCG4xZeSVKukeiD3M3aJaxdXxBen
 4lJRri2rhfsZOPRK1WyCiyWAv03hknTgm2ZJpsQAcmbO6/9vsD4CXqfwir/jnj9YsZOrPNkbt
 z0Ev0PXLfyi/w8bfWSAyaMF1e9tN/HrHHDVoiKJm5ApKpqMeJPCUbWp83KeEzD7VTyJhByr+o
 HVvHn+jvGIidDoISwyXWK7k0Feuhndgk13nVdYHAJKA4UPUklkqUoNNZ7ulvy/yh4dPXwS/go
 3CrkosZlFCQSt3jeXPD2WuqUrkitBVJprtuHV8Ey3ZTH5BLZVx8nQzpboiGsi+2tuFMXhGbO7
 Ti/F07h1LykSWK9vxAJ5AeaSyhKbLuGJR11ocYKLNV7h+ENICsZ1iha51E8w/vMtYBs+wHf17
 KC8JXQmRfCFr6bf3oA+fVVJewEZ3cD8PFxuv4OBNxHIs78TLIB8o+BTvdkmvEaT9z64VcnRN3
 KXpHkgwovUAOC4Uq+G30EvRG+KAJePt0v559ywNF2qjih5RcwV9+36gKyyBwZ0f8zYm1MD/MS
 z/KKkEAy5Q4zjF4vgwsL41Ndx1EJLLChWFWupbjXY8C6lmD9npfXeG6yKSsXyczOsksALPwoP
 SQnG/Ne4Y8//b7JgHroLaC4MXBLLNeWdL/2rlQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_234959_145678_6ECE537E 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.208.4.196 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3239556462724479754=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3239556462724479754==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="ZGinOGHYHrDB5XnXdHesszF737R6FJpd8"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--ZGinOGHYHrDB5XnXdHesszF737R6FJpd8
Content-Type: multipart/mixed; boundary="PXTYjzYVlSc1aMgjGfxOUTJ8d83NGBiUj";
 protected-headers="v1"
From: Sunil Mohan Adapa <sunil@medhas.org>
To: Chen-Yu Tsai <wens@csie.org>
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Message-ID: <7aaaf326-d7c2-59c9-5be2-b696ae490c3f@medhas.org>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Enable eMMC on A64-OLinuXino
References: <20190727020252.17126-1-sunil@medhas.org>
 <CAGb2v66=hmx5yaSUm=QBt8AMRCV4EGYv-RFAMv_XBKjSjR79uA@mail.gmail.com>
In-Reply-To: <CAGb2v66=hmx5yaSUm=QBt8AMRCV4EGYv-RFAMv_XBKjSjR79uA@mail.gmail.com>

--PXTYjzYVlSc1aMgjGfxOUTJ8d83NGBiUj
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 26/07/19 10:42 pm, Chen-Yu Tsai wrote:
> On Sat, Jul 27, 2019 at 10:03 AM Sunil Mohan Adapa <sunil@medhas.org> w=
rote:
>>
>> A64-OLinuXino board has three variants that have eMMC support. Add sup=
port for
>> eMMC on boards that have it.
>>
>> This patch has been tested on A64-OLinuXino-1Ge16GW with Linux 5.0 fro=
m Debain.
>> Basic benchmarks using Flexible IO Tester show reasonable performance =
from the
>> eMMC.
>>
>> eMMC - Random Write: 23.1MiB/s
>> eMMC - Sequential Write: 74.5MiB/s
>> SD Card - Random Write: 1690KiB/s
>> SD Card - Sequential Write: 11.0MiB/s
>>
>> Signed-off-by: Sunil Mohan Adapa <sunil@medhas.org>
>> Tested-by: Sunil Mohan Adapa <sunil@medhas.org>
>>
>> From: Martin Ayotte <martinayotte@gmail.com>
>> Link: https://github.com/armbian/build/commit/174953de1eb09e6aa1ef7075=
066b573dba625398
>> Signed-off-by: Sunil Mohan Adapa <sunil@medhas.org>
>> ---
>>  .../boot/dts/allwinner/sun50i-a64-olinuxino.dts | 17 ++++++++++++++++=
+
>>  1 file changed, 17 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts b/=
arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
>> index 01a9a52edae4..751273f514fb 100644
>> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
>> @@ -81,6 +81,13 @@
>>                 status =3D "okay";
>>         };
>>
>> +       reg_vcc3v3: vcc3v3 {
>> +               compatible =3D "regulator-fixed";
>> +               regulator-name =3D "vcc3v3";
>> +               regulator-min-microvolt =3D <3300000>;
>> +               regulator-max-microvolt =3D <3300000>;
>> +       };
>> +
>>         wifi_pwrseq: wifi_pwrseq {
>>                 compatible =3D "mmc-pwrseq-simple";
>>                 reset-gpios =3D <&r_pio 0 2 GPIO_ACTIVE_LOW>; /* PL2 *=
/
>> @@ -155,6 +162,16 @@
>>         };
>>  };
>>
>> +&mmc2 {
>> +       pinctrl-names =3D "default";
>> +       pinctrl-0 =3D <&mmc2_pins>;
>> +       vmmc-supply =3D <&reg_vcc3v3>;
>=20
> Both VCC (vmmc-supply) and VCCQ (vqmmc-supply) are wired to DCDC1.
> There is no fixed regulator. Please accurately describe the hardware.

Thank you for the review. Do to my limited experience in the area, I
could not figure this out despite spending some time with the driver and
schematics. I was able to verify that some of the other descriptions are
correct. I will update the patch accordingly and test it.

>=20
> Also if Olimex never released any A64-OlinuXinos with NAND flash,
> then we could merge this. Otherwise we'd have to have separate
> versions, or do overlays.

Currently, Olimex has no A64-OLinuXinos with NAND flash. However, I am
unable to make a call on whether or not to have separate versions or
overlays.

>=20
>> +       bus-width =3D <8>;
>> +       non-removable;
>> +       cap-mmc-hw-reset;
>> +       status =3D "okay";
>> +};
>> +
>>  &ohci0 {
>>         status =3D "okay";
>>  };
>> --
>> 2.20.1
>>


--PXTYjzYVlSc1aMgjGfxOUTJ8d83NGBiUj--

--ZGinOGHYHrDB5XnXdHesszF737R6FJpd8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE5xPDY9ZyWnWupXSBQ+oc/wqnxfIFAl079AYACgkQQ+oc/wqn
xfIcJRAAgkIJGmpnD7sUtzNTq0zOTnGFAZ8KQ21XMRisTOic9uOQtGzcpgsuwOCL
DLP4A4w5WD2xlVljCqnR94P+h7YWqbcLLSNWuP1DzNCRONFVYLHdW6oMzUTL61Uz
obueJ086P9TY5goK/+B1oRveo/gAjSKSJYo69W8W8qfOldDXz47p0DxtKrr0GT2V
Ws/OA3+bWSWYzXNR5TZeXKdeeRpgvDgD1RyBOyvIvcwBQznTgdxJKTJJtPkyCgNB
FM28lXTceljuiobGMrnvYUGEQcNAoGM4ScQZK1pMhxnmLvZM7t5Hu4D/Op2xuL01
gLbt1PbiT1s/06JV94PW9f/6umZpCV1H9Rz44U/Oo/8BCK851t9NRV3XXvL55gbb
L9TxwNwBBe9wbS7ATeXUE3ccl/uDNkogXS68SBWdPWT2lbLSj3eJNuCuyQ15H3N5
4Vo6ydkrmXe7zLbri9VxquJBm3ZCoeZWQGDFHWhV/wR5Q8PhEf3XRHs/lkciCuPz
bu6kSOHBkfx+r9w3Zoi+UVr8S5xE+DyxzKzP7Yomdysq5GMFMiQShfOR3+f6z9IL
/3Uq5cZxUF0Yp0fsiVnriG0TUK+T6c3g2mOwNw7rDBVqyjR9eDRLxQOU3dOINySh
J136jsa0FP4iazSYOuv2y5AyLpnQpXvxe5vUoOisoidqbzFblD4=
=mbPg
-----END PGP SIGNATURE-----

--ZGinOGHYHrDB5XnXdHesszF737R6FJpd8--


--===============3239556462724479754==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3239556462724479754==--

