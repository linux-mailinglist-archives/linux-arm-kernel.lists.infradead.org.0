Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B311D96A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 14:50:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:MIME-Version:Message-ID:In-Reply-To:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NWBFnlprslfdDv+zyx5TQr22BBO3vKylnbjEqLyClUo=; b=vBbF0ZYkISWUjDH4YLpw8oZ2j
	60dzOHABq11M0sB2I/lp3i9MDyZpglkh+mYQAT+5357uZxQmFvmHhAuSVFPRysniKWUzzKWAnsZaJ
	UzPC/W08Z2ZYmn14ICFP1a9dn8F2EzyUX5LXD8QT/Vh8MLvXH8SWm1W0pfZwPu8iYMiXkCuiTHCdL
	m9RYer6prJWiK9rvsyCY1fnWawhMM51sr/fhnp6icFHaNoHul84HE0875UsBdot9zCUm9PZ4rBt9e
	VyzV1+EV99vKlxHNtAXKSZQhaohnOcz/meTHAEn8wCXV4tGED9zWDzOhEVZJ4R0kS0wn3ZZZxTV+H
	vScDN9/ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb1hT-0003Ue-C1; Tue, 19 May 2020 12:50:27 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1hK-0003U9-F5
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 12:50:20 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200519125009euoutp01a7ad265a4b274e49cb9023916ddd55eb~QbueahwP53113931139euoutp01V;
 Tue, 19 May 2020 12:50:09 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200519125009euoutp01a7ad265a4b274e49cb9023916ddd55eb~QbueahwP53113931139euoutp01V
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589892609;
 bh=GZEgCGuZu7hgYB1Rue5vHeXT7Fixgk981adX7dUOM9c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jhOgLuSSX/bfgoP+EUNt58eGFoTynebyKUg2hF3OZmh7M5SayvOaFjt5yXURK9qvG
 3uRzt4MyxF1dOXRlfrSFPcYr/QH4ax5GqoxTMRpFO7DmllhJPaYp2ly3ff21KPG9Se
 MNf9fc7UxQpZN6Z68pG6kQSR+hoGb/ldblTi3qGs=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200519125008eucas1p188c5b7796e30e1ab46e9aba75b7c16fa~Qbud9yL8U1342513425eucas1p1a;
 Tue, 19 May 2020 12:50:08 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id D4.D3.61286.006D3CE5; Tue, 19
 May 2020 13:50:08 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200519125008eucas1p2fe9f14c8f785e956a15097d1eca491c7~QbudnAGCB0625006250eucas1p2F;
 Tue, 19 May 2020 12:50:08 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200519125008eusmtrp146057cd88c91136445afe1689488e1fa~QbudmL_Js0216002160eusmtrp1M;
 Tue, 19 May 2020 12:50:08 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-6f-5ec3d60069a2
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 87.B3.08375.006D3CE5; Tue, 19
 May 2020 13:50:08 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200519125008eusmtip117e3c5a81e66f51a2529ecd9db5a9e9f~Qbudb4E922227322273eusmtip1p;
 Tue, 19 May 2020 12:50:08 +0000 (GMT)
From: Lukasz Stelmach <l.stelmach@samsung.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH v6] ARM: boot: Obtain start of physical memory from DTB
Date: Tue, 19 May 2020 14:49:57 +0200
In-Reply-To: <20200519122706.GC1551@shell.armlinux.org.uk> (Russell King's
 message of "Tue, 19 May 2020 13:27:06 +0100")
Message-ID: <dleftjzha43x8q.fsf%l.stelmach@samsung.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfUiUWRTG98z7qTVynQwPrkTMalttqaHUdXeLgv5423ZhkaAIMqd6sWhm
 lHnVLAgF0VScTCVNMctWWhlT14+Zym1imZHcPjD7YJJK+piySVMzLdaWIsdb0H+/c85zn/uc
 y5U5w0kxSt5nzVJtVpPZKIbyriszN1d+4/OmJrQfSaYz0xNAP1RekWjHiXaBnqqx8/RUb79A
 Wyb9QB3n3Rwdvu/WUWf5fZ52+n0CvdNTL1Lny3Ed9Rx3A23tHZLok8eDAm0IBERa6O6V6IOK
 KlhvUM41nAPlju8Wp/z/vhKU4X+PiMrFuiFJ6XSUiIrHWwxKV1OeYi8YF5XyDwnKuxsVvHK0
 2wHKVOei3/XbQ3/eo5r35ai2+HVpoXvtxV5dZv33uYV9+UI+uBaXQoiMJAlLx85AKYTKBtIM
 eHKgRmTFNKB76LnEiinAkpFh4csR++U+gQ3+BBzpL9AFBwbyAtBTbSwFWRZJHLa2bgtiBPkR
 B8qWBuUc8YpYUtQ1J19ANqN/1MMFmSex6PMWzfmHkEM46RqHIOvJGqx1Ts7xQpKM3YFHEuuH
 49XaZ3yQOWLB2puvgGW7IeP5QCzjjfjcf5xjvABH+rolxtF4vaqMD2ZDkodVlauD2ZCUAbrq
 /+OZ5id82P9eZLwBi30XJKYPw8GxcHZtGFa6ajjW1mNxkYGpY7Ct/NJnlyi0jzR/TqZgRaMb
 2EPZAZ0zScdgcd1Xy9R9tUzdrCtHlmF7Tzxr/4BnG0c5xmuxrW2CPw2CAyLVbM2SrmqrrOqB
 OM1k0bKt6XG7MyydMPtRr3/se3MB3t7e5QEig3G+PuGSN9UgmHK0gxYPxMw6Pf2rZQCieGuG
 VTVG6I8FPKkG/R7TwUOqLWOnLdusah74VuaNkfrEMy93GEi6KUvdr6qZqu3LVCeHROVDeuzo
 cPeOxKaP1/6+VmgacyZ+pzSqSb/0bNza0Nz1R3+MI/fwxZbow1nbO0jG6gcd1Vkv7qb8Y16Z
 uiTwW68Y9toxdWK51vFsXlhu5NlMq5xYs2vhvZSSJ49buLwt0wXOFY82p92KT/FPNkXDptMH
 zIOXwyfSqpfmtP4asTt5hVQ/dNfIa3tNq5ZzNs30CVlsI9ewAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0iTURjHO3svm9HoNI1OA2WNpEyavi7bUVTqg/VGfgj80H228m2z3BZ7
 X0vXhwTRzFpmEaWlXcigLTPvFa5os0wTsUajm3Sx1rqgLkuw0tocgd9+/J/f+Z9z4JEQstOU
 XJJnEjiLSZevpGeTj6e6B5fP8rq1iR2eRXjixwjAkycfinHT2UYKXzhjI/GFrn4KOwJDANs7
 nAT2vXSKcFvlSxI3D3kp7LlznsZtn4dF2HXaCXBD16AYv3v7nMJ1fj+NS51dYvyq6hRYJWOv
 110HrMf7hGB//zoJWN+jwzR7u2ZQzDbbj9Csy10O2JYrh1hbyTDNVk4msuN9VSR7vNUO2LHm
 mA3SLao0i7lA4BQGMy+kK7cyOEnFpGBV0ooUFaPWbE9NSlYmZKTlcvl5+zlLQsYOlcFW7hbt
 O7+ksLS7mCoG7YoKECFBcAWy3e2mQiyD9QA5R+dWAEkwl6NrtfqwEon+eCvoCjA7qHwEyOH1
 ECGHhirU0LAphFEwFQ0cWxrSCfiARr3VXIgj4Xo09NVFhNtT0JveKhBiEsYir7ts+tYIaEWB
 9uHpXAo1qLotMM3zg36r/404nM9DPdUfyHD/XvTT8Yk4AWDNjFHNjFFN8EUEjEONdxLCcTy6
 eukrEeZ0dOPGCHkRUHYQxRXwRr2RZ1S8zsgXmPSqXWZjMwiuQfvDiZZb4GlTtgtACVDOkSZ2
 urUySrefLzK6wOJgzfubjgEgJ01mE6eMkp7wu7Qyaa6uyMpZzDmWgnyOd4Hk4D+rCPn8Xebg
 gpmEHCaZ0eAURqPWqFdi5QJpOby/TQb1OoHby3H7OMv/cyJJhLwYRE/0axvrH49M1GWtz5Wu
 K7NfFmJ96aPPOmuXGkuq4VhMx8ID3uS5a3easwwDQBgvYZyDqUd9us77fVq1Q3TQEC/EZZRL
 /waa1kCrLceqUGTf29MT7cy0Tr3L27j59Toh65zCllj/QhgYyTbDzC+TJXFPve/53YXfz63+
 KPumJHmDjllGWHjdP3JDbPsoAwAA
X-CMS-MailID: 20200519125008eucas1p2fe9f14c8f785e956a15097d1eca491c7
X-Msg-Generator: CA
X-RootMTR: 20200519125008eucas1p2fe9f14c8f785e956a15097d1eca491c7
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200519125008eucas1p2fe9f14c8f785e956a15097d1eca491c7
References: <20200519122706.GC1551@shell.armlinux.org.uk>
 <CGME20200519125008eucas1p2fe9f14c8f785e956a15097d1eca491c7@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_055018_639745_6170501A 
X-CRM114-Status: GOOD (  21.62  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE
 TREE BINDINGS" <devicetree@vger.kernel.org>,
 Grant Likely <grant.likely@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Nicolas Pitre <nico@fluxnic.net>, Masahiro Yamada <masahiroy@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>, Rob Herring <robh+dt@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Uwe =?utf-8?Q?Kleine?= =?utf-8?Q?-K=C3=B6nig?=
 <u.kleine-koenig@pengutronix.de>, Eric Miao <eric.miao@nvidia.com>,
 Dmitry Osipenko <digetx@gmail.com>, Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: multipart/mixed; boundary="===============5897736440088598705=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============5897736440088598705==
Content-Type: multipart/signed; boundary="=-=-="; micalg="pgp-sha256";
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It was <2020-05-19 wto 13:27>, when Russell King - ARM Linux admin wrote:
> On Tue, May 19, 2020 at 02:20:25PM +0200, Lukasz Stelmach wrote:
>> It was <2020-05-19 wto 12:43>, when Russell King - ARM Linux admin wrote:
>>> On Tue, May 19, 2020 at 01:21:09PM +0200, Geert Uytterhoeven wrote:
>>>> On Tue, May 19, 2020 at 11:46 AM Russell King - ARM Linux admin
>>>> <linux@armlinux.org.uk> wrote:
>>>>> On Tue, May 19, 2020 at 11:44:17AM +0200, Geert Uytterhoeven wrote:
>>>>>> On Tue, May 19, 2020 at 10:54 AM Lukasz Stelmach <l.stelmach@samsung=
.com> wrote:
>>>>>>> It was <2020-04-29 =C5=9Bro 10:21>, when Geert Uytterhoeven wrote:
>>>>>>>> Currently, the start address of physical memory is obtained by mas=
king
>>>>>>>> the program counter with a fixed mask of 0xf8000000.  This mask va=
lue
>>>>>>>> was chosen as a balance between the requirements of different plat=
forms.
>>>>>>>> However, this does require that the start address of physical memo=
ry is
>>>>>>>> a multiple of 128 MiB, precluding booting Linux on platforms where=
 this
>>>>>>>> requirement is not fulfilled.
>>>>>>>>
>>>>>>>> Fix this limitation by obtaining the start address from the DTB in=
stead,
>>>>>>>> if available (either explicitly passed, or appended to the kernel).
>>>>>>>> Fall back to the traditional method when needed.
[...]
>>>>>>> Apparently reading physical memory layout from DTB breaks crashdump
>>>>>>> kernels. A crashdump kernel is loaded into a region of memory, that=
 is
>>>>>>> reserved in the original (i.e. to be crashed) kernel. The reserved
>>>>>>> region is large enough for the crashdump kernel to run completely i=
nside
>>>>>>> it and don't modify anything outside it, just read and dump the rem=
ains
>>>>>>> of the crashed kernel. Using the information from DTB makes the
>>>>>>> decompressor place the kernel outside of the dedicated region.
>>>>>>>
>>>>>>> The log below shows that a zImage and DTB are loaded at 0x18eb8000 =
and
>>>>>>> 0x193f6000 (physical). The kernel is expected to run at 0x18008000,=
 but
>>>>>>> it is decompressed to 0x00008000 (see r4 reported before jumping fr=
om
>>>>>>> within __enter_kernel). If I were to suggest something, there need =
to be
>>>>>>> one more bit of information passed in the DTB telling the decompres=
sor
>>>>>>> to use the old masking technique to determain kernel address. It wo=
uld
>>>>>>> be set in the DTB loaded along with the crashdump kernel.
[...]
>>>>>> Describing "to use the old masking technique" sounds a bit hackish t=
o me.
>>>>>> I guess it cannot just restrict the /memory node to the reserved reg=
ion,
>>>>>> as the crashkernel needs to be able to dump the remains of the crash=
ed
>>>>>> kernel, which lie outside this region.
>>>>>
>>>>> Correct.
>>>>>
>>>>>> However, something under /chosen should work.
>>>>>
>>>>> Yet another sticky plaster...
>>>>=20
>>>> IMHO the old masking technique is the hacky solution covered by
>>>> plasters.
>>>
>>> One line of code is not "covered by plasters".  There are no plasters.
>>> It's a solution that works for 99.99% of people, unlike your approach
>>> that has had a stream of issues over the last four months, and has
>>> required many reworks of the code to fix each one.  That in itself
>>> speaks volumes about the suitability of the approach.
>>=20
>> As I have been working with kexec code (patches soon) I would like to
>> defend the DT approach a bit. It allows to avoid zImage relocation when
>> a decompressed kernel is larger than ~128MiB. In such case zImage isn't
>> small either and moving it around takes some time.
>
> ... which is something that has been supported for a very long time,
> before the days of DT.

How? If a decompressed kernel requires >128M and a bootloader would like
to put a zImage high enough to *avoid* copying it once again, then the
decompressor can't see any memory below the 128M window it starts in and
can't decompress the kernel there. If we do not care about copying
zImage, then, indeed, everything works fine as it is today. You are
most probably right 99% doesn't require 128M kernel, but the case is
IMHO obvious enough, that it should be adressed somehow.

Kind regards,
=2D-=20
=C5=81ukasz Stelmach
Samsung R&D Institute Poland
Samsung Electronics

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEXpuyqjq9kGEVr9UQsK4enJilgBAFAl7D1fUACgkQsK4enJil
gBCsNQgArO9YyZeBHVgDHoPfg0CoR6LcLsvmkGYmEsCx5P3JXdtO8wGMpU5y3CfI
zx7RozAIp2QNxKg17oEf8TNsRrJ71tDgDc/LyEPKC4inwbxzLhsDwmWpNO8zDQvP
NUPgQEuyiKiXKWH6hJsswR+hMPCRFusSUoFyAY04P8eDczjotxTlu8DreFIPsBKC
OBhZRDckXl6g4z+d1riXrklMi5zQGieId/qJKS7AlZxaBUP8AISF+lxb4VP5W0am
NJzJmc58UIhwlEOdPqRi0bREjCAZ0KVeecVxCUKSvF75EZdX1+ACV3RfqYXp5S6U
UaF4ACzvECldRSq8JA6MJ9wUqGPxqw==
=mC5V
-----END PGP SIGNATURE-----
--=-=-=--


--===============5897736440088598705==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5897736440088598705==--

