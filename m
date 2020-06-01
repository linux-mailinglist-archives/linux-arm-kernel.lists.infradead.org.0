Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B101EA7D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 18:30:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:MIME-Version:Message-ID:In-Reply-To:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bSN3I7wk2OdcbyZ5a+9y/YRgKiEaGkkFBZmKkZOVJ9o=; b=Qr7Lc7ufC6EFhuMR0IVdi+GC4
	Zz37sye/trWjBbyH/bziE6DP1ofLeYtOPg/yaxel1F+kp+geHud/LierzvkbCSpTw0esOKUwNprN5
	x3TVVotjSKvLhblwqkw6kKtpKUXiLNURp+Vs1DpZYpSL45DDSE5rSEU9I+BbpLQhO+gpZUcqng7ly
	jvGJ5ImoTi85oZawL9nSe+65TKr4IYgxCf9IAA1oPvKlvFjw68NFxLjBDf/elbbf4jrZNubhQz/Nt
	Sc5QfgT47Hica8Lq+7YAJrWwxXmnDgm4bhhfTyTHsmlDJt8DRLKuV1ON34OQ2c9y7RtXtK8RP2E6G
	zGlCGesfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfnKr-0000I0-Jz; Mon, 01 Jun 2020 16:30:49 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfnKi-0000Gr-17
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 16:30:43 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200601163035euoutp01b560ebb6c24728d88f50c45e80c64e81~UeHpjM1x_0265702657euoutp011;
 Mon,  1 Jun 2020 16:30:35 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200601163035euoutp01b560ebb6c24728d88f50c45e80c64e81~UeHpjM1x_0265702657euoutp011
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591029035;
 bh=NJ12csnkCeCEnRH+6I4gB9QBi4rMuNyFOgL+x4Loplc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vL949fliq6mEJ3aW34M/ROs33lx3WqXtePPtBj3Y/pcPgp0xKYGKT5t0DoLfl98xn
 yuj61wskZL5bwgfLE0Z632stT14KDCeB4CPJvXWS2vYqUmxeHyVeSRZD/GEIdbts/n
 kk1c7CaSQJOpnNiReMURVbpWnJ59H9Iauh6yFLfo=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200601163034eucas1p1e2e1229556ec1d85d15e640aa80c97bf~UeHpGI3EX2984729847eucas1p1E;
 Mon,  1 Jun 2020 16:30:34 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id C4.C3.61286.A2D25DE5; Mon,  1
 Jun 2020 17:30:34 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200601163034eucas1p1f9c726b605c18bf3944254cd83dd67b3~UeHoyigW92985429854eucas1p1u;
 Mon,  1 Jun 2020 16:30:34 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200601163034eusmtrp16195f0213bf9dcf8474cb1090ba52167~UeHosZNqe1055110551eusmtrp1B;
 Mon,  1 Jun 2020 16:30:34 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-70-5ed52d2ac7e3
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id EC.AA.08375.A2D25DE5; Mon,  1
 Jun 2020 17:30:34 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200601163034eusmtip21eedd609a2048f9bacdfd2ada29fc260~UeHoWxhCE3102331023eusmtip2D;
 Mon,  1 Jun 2020 16:30:34 +0000 (GMT)
From: Lukasz Stelmach <l.stelmach@samsung.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 4/5] arm: Add kexec_image_info
Date: Mon, 01 Jun 2020 18:30:22 +0200
In-Reply-To: <20200601145614.GK1551@shell.armlinux.org.uk> (Russell King's
 message of "Mon, 1 Jun 2020 15:56:14 +0100")
Message-ID: <dleftjsgfesq8x.fsf%l.stelmach@samsung.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfUzMcRzH9/099evh8utEH6FxskV0kvEjzNMfv40Nw0abuOq3RHe1u6LM
 Vs1jCdUpSlpJtGtduc5p5ynnIaSHKz1YJYmVSC1MUdH1zea/1+fzfX8e3p99WVL6m3Znw1RR
 olqlCJcxDpTp2XDt4oWLGwOXjL31429dLqH5NH0Fwb9JuEvwr84qeUNXE803mLMZ3pJ+H/HF
 T9rt+M53LTRfNPYS8QMpfwh+5OEwxZcZ0sl1EqGhyUoKV+KtlDCq6yGFXEO0YNAlMkJb0z1G
 +FpTYyeUXY8TUgb6GOG8UYeEbwaPbY4BDqtDxPCww6Javna/w4E7T9pR5KOZMQ9yElA8qp6e
 hOxZ4JaBuTmRSEIOrJQrRPC47zTCwXcErRXlDA6+ISgyNpNJiJ0oeZzhhvM3EeR3t9I46EaQ
 MFJH2EQM5wPFxbtt6MqtgrpkL5uE5PpIsI6OErbRU7ml8Pz+IG1jipsP2q5Uxsb2XCy0HS8n
 bSzhVkD/s4IJnsatBGNPhx3Ou8CLzA+UjUlOCZm1Xya2Bi6PhZwSE4m9bQL9SROBeSr0Vhrt
 MM+CKm0yhc3EgTZtOa5NRmDKHqKwxh/aan4xmNfDUH0pjfXO0NLnguc6Q5rp0uRNJHDmlBSr
 PUF/4d5kF3c411uIMAuQYe2cvOc5BMMNFUwKmpP1n52s/+xkjbcluQVQYpbjtDfcyPtMYl4D
 en0/lYtoHXITozXKUFHjqxKP+GgUSk20KtQnOEJpQOPfsGqscrAc/agPsiCORTInSWnH60Ap
 rTisiVVakOd4p/elRXXInVJFqESZq2RDdVWgVBKiiD0qqiP2qaPDRY0FzWQpmZvE79qnvVIu
 VBElHhLFSFH975Vg7d3jUV7M1Ytyj0xHeYfW/4vVD4xbfh37nH6jeAvtEfD0Vgdy9pph3LGZ
 9W1uadJ5vV8X1Zg97+NBP8XRmNcF+drt5lbVztYT/iOXCfGnpawgeE+qaVfwVkdJc2VX4WqL
 t5v3U2p2ZWFwWNCK20M3xfgu+XRZqdPGKfU7HXMTF5nnVvsEySjNAYXvQlKtUfwF18zoA44D
 AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrEIsWRmVeSWpSXmKPExsVy+t/xe7paulfjDI5tE7DYOGM9q8WkdQeY
 LG427mayONOda7Hp8TVWi8u75rBZHJq6l9Fi7ZG77BYPH9xgtVj97xSjxYcJ/5ks/uz/yWKx
 edNUZgdej8vXLjJ7zG64yOLxd9ULZo8Fm0o9Nq3qZPO4c20Pm8e7c+fYPTYvqfeY8OEtm0ff
 llWMHp83yQVwR+nZFOWXlqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJal
 FunbJehlbD9yl7HgoHTFvnmNjA2MZ8W6GDk4JARMJA5PE+9i5OIQEljKKHHw01IWiLiUxMq5
 6V2MnECmsMSfa11sEDVPGSVuHznCDFLDJqAnsXZtBIgpImAlcaFHA6SEWeAhs8SmizdZQHqF
 BYwkTuz9xApiCwlYSuz495QJxGYRUJWY/HgiG4jNKVApcad5BzOIzStgLvH+2FIwWxSofsuL
 ++wQcUGJkzOfgM1kFsiW+Lr6OfMERoFZSFKzkKRmAZ3ELKApsX6XPkRYW2LZwtfMELatxLp1
 71kWMLKuYhRJLS3OTc8tNtQrTswtLs1L10vOz93ECIzjbcd+bt7BeGlj8CFGAQ5GJR7eDfev
 xAmxJpYVV+YeYlQBGvNow+oLjFIsefl5qUoivE5nT8cJ8aYkVlalFuXHF5XmpBYfYjQF+nMi
 s5Rocj4w9eSVxBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgtgulj4uCUamDsOeTj
 ei/M6+m3PddXJj9rOGeSeS0tXcLQcPPUH0ePx3h9ExR5c/Cn1tqoui8z96w5oxdlfqQm8pRD
 Iec3+Tks/mdUVVLz7rMXXvv7KcCSV2eOUIrNYXWDyQmZm9m3blcw9z0cP/kNX7fn/Krvx/Sj
 Aw7Vt08t1c600Varlwu4F7KLL/+h0RolluKMREMt5qLiRAB+jGvSBQMAAA==
X-CMS-MailID: 20200601163034eucas1p1f9c726b605c18bf3944254cd83dd67b3
X-Msg-Generator: CA
X-RootMTR: 20200601163034eucas1p1f9c726b605c18bf3944254cd83dd67b3
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200601163034eucas1p1f9c726b605c18bf3944254cd83dd67b3
References: <20200601145614.GK1551@shell.armlinux.org.uk>
 <CGME20200601163034eucas1p1f9c726b605c18bf3944254cd83dd67b3@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_093040_274639_CD8A6F1B 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kees Cook <keescook@chromium.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, Ben Dooks <ben-linux@fluff.org>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: multipart/mixed; boundary="===============3392649982350745733=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============3392649982350745733==
Content-Type: multipart/signed; boundary="=-=-="; micalg="pgp-sha256";
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It was <2020-06-01 pon 15:56>, when Russell King - ARM Linux admin wrote:
> On Mon, Jun 01, 2020 at 04:27:53PM +0200, =C5=81ukasz Stelmach wrote:
>> Add kexec_image_info to print detailed information about a kexec image.
>
> Isn't this already visible through kexec debugging?  Why do we need
> to duplicate the same output in the kernel?  Do we think that the
> kexec interfaces are that fragile that they don't work?

Because:

    + kexec_image_info is required if we want to show information for an
      image loaded via kexec_file_load (with kexec-tools or any other
      tool e.g. u-root),
    + this is where both interfaces meet and it is easy to compare
      their results,
    + I consider showing results as close to the end of a code path as
      possible more reliable.

>>=20
>> Signed-off-by: =C5=81ukasz Stelmach <l.stelmach@samsung.com>
>> ---
>>  arch/arm/kernel/machine_kexec.c | 28 ++++++++++++++++++++++++++++
>>  1 file changed, 28 insertions(+)
>>=20
>> diff --git a/arch/arm/kernel/machine_kexec.c b/arch/arm/kernel/machine_k=
exec.c
>> index 76300f3813e8..c10a2dfd53d1 100644
>> --- a/arch/arm/kernel/machine_kexec.c
>> +++ b/arch/arm/kernel/machine_kexec.c
>> @@ -31,6 +31,32 @@ extern unsigned long kexec_boot_atags;
>>=20=20
>>  static atomic_t waiting_for_crash_ipi;
>>=20=20
>> +/**
>> + * kexec_image_info - For debugging output.
>> + */
>> +#define kexec_image_info(_i) _kexec_image_info(__func__, __LINE__, _i)
>> +static void _kexec_image_info(const char *func, int line,
>> +	const struct kimage *kimage)
>> +{
>> +	unsigned long i;
>> +
>> +	pr_debug("%s:%d:\n", func, line);
>> +	pr_debug("  kexec kimage info:\n");
>> +	pr_debug("    type:        %d\n", kimage->type);
>> +	pr_debug("    start:       %lx\n", kimage->start);
>> +	pr_debug("    head:        %lx\n", kimage->head);
>> +	pr_debug("    nr_segments: %lu\n", kimage->nr_segments);
>> +
>> +	for (i =3D 0; i < kimage->nr_segments; i++) {
>> +		pr_debug("      segment[%lu]: %08lx - %08lx, 0x%x bytes, %lu pages\n",
>> +			i,
>> +			kimage->segment[i].mem,
>> +			kimage->segment[i].mem + kimage->segment[i].memsz,
>> +			kimage->segment[i].memsz,
>> +			kimage->segment[i].memsz /  PAGE_SIZE);
>> +	}
>> +}
>> +
>>  /*
>>   * Provide a dummy crash_notes definition while crash dump arrives to a=
rm.
>>   * This prevents breakage of crash_notes attribute in kernel/ksysfs.c.
>> @@ -42,6 +68,8 @@ int machine_kexec_prepare(struct kimage *image)
>>  	__be32 header;
>>  	int i, err;
>>=20=20
>> +	kexec_image_info(image);
>> +
>>  	image->arch.kernel_r2 =3D image->start - KEXEC_ARM_ZIMAGE_OFFSET
>>  				     + KEXEC_ARM_ATAGS_OFFSET;
>>=20=20
>> --=20
>> 2.26.2
>>=20
>>=20

=2D-=20
=C5=81ukasz Stelmach
Samsung R&D Institute Poland
Samsung Electronics

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEXpuyqjq9kGEVr9UQsK4enJilgBAFAl7VLR4ACgkQsK4enJil
gBC6eQf/eqqnY56vEEOYXLzN+Cdf7laqLXyMrIF+iZHmELaOBjTYAmR/agGv7t3I
rAzRO/W02Cpm8I/S6lzK7b5va2N/YZoab/aBED8fycSYqgr+odY6cX3Vt7nxH8jv
KvrA/J9nix5aEfWCZ86/PtjFV7zdm/NzCT7yQf26kCEOcqy6Zcq19J0niXyYjv5b
WFF749oXXL1qUjqbRLwKWMMz/HTK8HH8PeUnxKg+s+9SLEVoUrIJubPkBkMCGOZw
M62/M2Rc6YjB2lNAPr7o3uzpMHA5MQuO4QSI+mZ1IeeEEXboqThutOMt48aOPhWl
NWrCLQiU9ViHkDVZ57Wx9UuLzHumHA==
=5Li0
-----END PGP SIGNATURE-----
--=-=-=--


--===============3392649982350745733==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3392649982350745733==--

