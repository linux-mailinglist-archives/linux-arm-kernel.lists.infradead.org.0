Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B631D9588
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 13:47:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:MIME-Version:Message-ID:In-Reply-To:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6SIghV11Ke0kSBQkPrtwtmksJIGprkGZetXGQM9CDXY=; b=aMopfQI71HdVSH0AQ4dhGdQw8
	zBOVs5I4mzt6oTazK8t4Kd2+0RPYffGL8IYtawIKU++bk1Ishueyl0CeeBGU8QEgHqPqHn0vUBZnL
	y3FT2rzD9PXZICGCUyHsiX/pjbfSe9kD8mZ7/LlEfv8T6pQ32CrPR6S/dtWHrvg9dCjTqh7MCXzfC
	LDKPQ45AIvGQUzB3OgkeWUqk+7nLf3XIls91yNxfr06hjp/bxf+uZzy6Tg+vIEFUE9iltfbQyoY62
	fQBBdfjgUZLx9VqUBzlsUTHAT2lgZHYAFL3OxEEWqkBz2tT6PclMOo0roD5VFuWAwhSj8vQxFlRBE
	twGjFR9VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb0iM-0003FG-0b; Tue, 19 May 2020 11:47:18 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb0iC-0003Ea-3I
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 11:47:10 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200519114658euoutp0211be7857ecbd099b4084898cd8f0ca4e~Qa3TaAVWI2023620236euoutp02R;
 Tue, 19 May 2020 11:46:58 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200519114658euoutp0211be7857ecbd099b4084898cd8f0ca4e~Qa3TaAVWI2023620236euoutp02R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589888818;
 bh=+4xbR5yi/fsd4WWsEKIf1E92qXdvxWNs5E/gLEHy4u8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AVP7el2HnLQM+i56cQ12g58xbwpQpbigzI+hrtbQV73OXPGdJRN1C7dBjGlsUueTt
 fUrUbjTTQ+CnHq3Q1WOpjZdZzx6O0OlpYoN+3U3sguoYdb4DqiW3XuMev7Fr0zMewr
 qQBTja9q6SbatzKFDUqdqxcr5pfv79CFbmu+jVyY=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200519114657eucas1p13823b5184c370eee4712a49ca5ca4aca~Qa3S9EBFb0950109501eucas1p1E;
 Tue, 19 May 2020 11:46:57 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 85.FD.60698.137C3CE5; Tue, 19
 May 2020 12:46:57 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200519114657eucas1p156e85218074a7656b93b162e6242bc56~Qa3SpSkyR0951409514eucas1p1G;
 Tue, 19 May 2020 11:46:57 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200519114657eusmtrp2497f247edddcab7defcee56ba5383789~Qa3SoaPYN0526505265eusmtrp2v;
 Tue, 19 May 2020 11:46:57 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-33-5ec3c7317e70
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 01.D7.07950.137C3CE5; Tue, 19
 May 2020 12:46:57 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200519114657eusmtip213932892881e292daa826dc86dfeaa0b~Qa3SaBGH32062920629eusmtip2d;
 Tue, 19 May 2020 11:46:56 +0000 (GMT)
From: Lukasz Stelmach <l.stelmach@samsung.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v6] ARM: boot: Obtain start of physical memory from DTB
Date: Tue, 19 May 2020 13:46:41 +0200
In-Reply-To: <CAMuHMdU5DG06G4H=+PH+OONMT_9oE==KS=wP+bLgY9xVCez6Ww@mail.gmail.com>
 (Geert Uytterhoeven's message of "Tue, 19 May 2020 13:21:09 +0200")
Message-ID: <dleftjblmk5eqm.fsf%l.stelmach@samsung.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0wTWRj160ynA7FkKD4+gRBt1PgID3WzXrK7ZE38MWbVGBON8YFWGIFI
 i9sRFH8oWR+wVQTLCoJIfUWxSFuxolVLtFTQiIhioIFlWUUFRDEblKUoIu1g4r/zne+cc++5
 uSylKmNC2RTdTkGv06SqmUC6us77OHJBfW18jNU0g3g/vAcyYqxTkCsnrHJiKsqlicndKCcV
 /3UBMV93UuR1m1NGruW10aSqq0VOmm+WMuRab7+MuI47gVS6OxTk+b8eOSnr6WHIQadbQdqP
 FcCvKv5y2WXgm1ueUPynYSPwr+9nM7yjpEPBV5n/ZHhXbQ7wV8/v43P39zN83kgMP9hwjOaP
 2s3AD1RFrFKuD/w5UUhNyRD00XFbApNHP79idrRG7PYetNJZ0DrNACyL3A+Y3ZdogEBWxZUD
 Ng9eAmn4ANjSnUdJwwBgf2EO881xqTJW4i8CFhY2MtLQDeg60C7ziRguCisr1/ngJC4SS70y
 n4TimhgsP3RXYYAANoT7Dbv6XJQP09wsPPxHsz8ngCsCND09SvsWSm4xZg+2+0WTuVi093Qq
 JD4YHxS/9GsoTovFj9/6r43cMxbrP53yG5BbisZR+zgOwTf1doWEw3HUYZJJbfZhgfFHyXsE
 sLp0iJY0P+HfjcPjjZeg4WqcBIPQ8y5YOjYIjdVFlEQrMeeQSjLOREve7fGQUMx9Uw4S5tHT
 mD/+VOcB3x0xMPkwveS7NiXftSkZi6W4uWi9GS3R8/HCmT5Kwr+gxfKePg1yM0wV0kVtkiAu
 0gm7okSNVkzXJUUlpGmrYOynPvxS//EG1Hze6gKOBfVEpcdRG6+SazLETK0LZo4lvbBVNEEo
 rUvTCepJyvweV7xKmajJ3CPo0zbr01MF0QVhLK2eqlx0tneTikvS7BS2C8IOQf9tK2MDQrNg
 772aPXMijRPM3fkj4XOGDNuZbXZqd/I6b8FQp3zD8K3g3xusbZqJTTfmL7fJTy4MWNZgs1es
 DltjCfr/cPe0TmN4neieYn4UMu+RJ9qS8KJYN3vF4JUBmzul9dxGh+OfpoS1biYuMyuTuhOx
 XNEbG7neuX8kxzaQNPuvzldnN60MU9NismbBPEovar4CSau4B7EDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTYRjG+TxnZ0dt9HVU/FwXZBRdzKNz6r5FSn/FISPEELtpDTup6HZk
 Z7OsP7qXTcprN7PUbuTUWUsrpVFNUbsg5VIjmWWmWYISpWBptTWC/nt4nt/7vLzw0gRzTiKn
 s/RG3qDX5igoP/L5r87BcGVnW1rkrds0nvk+CfBcaYcU37nQKMFV50+TuKq9W4Lrvg4DbLlv
 J/DoW7sPbi56S2LbcJ8EO1srKdz8ecIHO87aAW5od0nx0Ps3EnxlbIzCx+3tUjxQUgbWMVz9
 lXrAOfteEdzPH6WAG+06SXEtFS4pZ7OcojhHWwHg7l4/yJ0+OkFxRXOR3PSLEpI702QB3Dfb
 kkTZNnatQTAZ+dBMQTTGKbYrcRSr1GA2KlrDKlXq1DVRMYqI+LW7+ZysPN4QEb+Lzfw9O0Ll
 9i/ZN3O8kTwE+kPMgKYRjEa1DRoz8KMZeAOgY70XKK8vR7WXM8zA1y0D0GyfmfIyIwBVVVtJ
 D0NBFjU0bPHIQBiOKmd8PAgBeyhU/9oi9cwGwAQ0PO4gPAwDE1HvYZPHJuEyVHjE+bfSF553
 V/acIT2BDKrRyekBwqODoAY1jb2Tev0F6OnFj38ZAmajqbpPRDGAFf9FFf9FFe51BFyJGlsj
 vHYYulkzTnh1HLJaJ8lqILGAQN4k6jJ0YhQranWiSZ/Bpgs6G3D/wb2OmaYHwDyx2QEgDRTz
 ZJEP29IYiTZPzNc5wFJ3zYfbdS+BnNQLel4RKCsec6Qxst3a/P28QdhpMOXwogPEuA8tIeRB
 6YL7w/TGncoYpRprlGqVWhWLFcGyAvhkBwMztEY+m+dzecO/OR/aV34IMMH812zGf/DUiVbn
 o9CUVCapdP5Ke2bcs5BWy4onb84dLIwvnFywjHVtPZAELwrLk7s+Wzf2pG6IKCfvXOMGp2oS
 4mnVdad/1qaR8ZDoxNqy2RZBpUlZv9g1FGazurbsDRdG+5O7wx6Pd/Nxfl+uViWtPlJwdtHC
 uf5LO4LL98QqSDFTq1xFGETtH9Vi7sMpAwAA
X-CMS-MailID: 20200519114657eucas1p156e85218074a7656b93b162e6242bc56
X-Msg-Generator: CA
X-RootMTR: 20200519114657eucas1p156e85218074a7656b93b162e6242bc56
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200519114657eucas1p156e85218074a7656b93b162e6242bc56
References: <CAMuHMdU5DG06G4H=+PH+OONMT_9oE==KS=wP+bLgY9xVCez6Ww@mail.gmail.com>
 <CGME20200519114657eucas1p156e85218074a7656b93b162e6242bc56@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_044708_273992_7373C3B7 
X-CRM114-Status: GOOD (  21.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
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
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>, Rob Herring <robh+dt@kernel.org>,
 Uwe =?utf-8?Q?Kleine?= =?utf-8?Q?-K=C3=B6nig?=
 <u.kleine-koenig@pengutronix.de>, Eric Miao <eric.miao@nvidia.com>,
 Dmitry Osipenko <digetx@gmail.com>, Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: multipart/mixed; boundary="===============7720109770679581238=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7720109770679581238==
Content-Type: multipart/signed; boundary="=-=-="; micalg="pgp-sha256";
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It was <2020-05-19 wto 13:21>, when Geert Uytterhoeven wrote:
> Hi Russell,
>
> CC devicetree
>
> On Tue, May 19, 2020 at 11:46 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
>> On Tue, May 19, 2020 at 11:44:17AM +0200, Geert Uytterhoeven wrote:
>>> On Tue, May 19, 2020 at 10:54 AM Lukasz Stelmach <l.stelmach@samsung.co=
m> wrote:
>>>> It was <2020-04-29 =C5=9Bro 10:21>, when Geert Uytterhoeven wrote:
>>>>> Currently, the start address of physical memory is obtained by masking
>>>>> the program counter with a fixed mask of 0xf8000000.  This mask value
>>>>> was chosen as a balance between the requirements of different platfor=
ms.
>>>>> However, this does require that the start address of physical memory =
is
>>>>> a multiple of 128 MiB, precluding booting Linux on platforms where th=
is
>>>>> requirement is not fulfilled.
>>>>>
>>>>> Fix this limitation by obtaining the start address from the DTB inste=
ad,
>>>>> if available (either explicitly passed, or appended to the kernel).
>>>>> Fall back to the traditional method when needed.
>>>>>
>>>>> This allows to boot Linux on r7s9210/rza2mevb using the 64 MiB of SDR=
AM
>>>>> on the RZA2MEVB sub board, which is located at 0x0C000000 (CS3 space),
>>>>> i.e. not at a multiple of 128 MiB.
>>>>>
>>>>> Suggested-by: Nicolas Pitre <nico@fluxnic.net>
>>>>> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>>>>> Reviewed-by: Nicolas Pitre <nico@fluxnic.net>
>>>>> Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
>>>>> Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
>>>>> Tested-by: Dmitry Osipenko <digetx@gmail.com>
>>>>> ---
>>>>
>>>> [...]
>>>>
>>>> Apparently reading physical memory layout from DTB breaks crashdump
>>>> kernels. A crashdump kernel is loaded into a region of memory, that
>>>> is reserved in the original (i.e. to be crashed) kernel. The
>>>> reserved region is large enough for the crashdump kernel to run
>>>> completely inside it and don't modify anything outside it, just
>>>> read and dump the remains of the crashed kernel. Using the
>>>> information from DTB makes the decompressor place the kernel
>>>> outside of the dedicated region.
>>>>
>>>> The log below shows that a zImage and DTB are loaded at 0x18eb8000
>>>> and 0x193f6000 (physical). The kernel is expected to run at
>>>> 0x18008000, but it is decompressed to 0x00008000 (see r4 reported
>>>> before jumping from within __enter_kernel). If I were to suggest
>>>> something, there need to be one more bit of information passed in
>>>> the DTB telling the decompressor to use the old masking technique
>>>> to determain kernel address. It would be set in the DTB loaded
>>>> along with the crashdump kernel.
>>>
>>> Shouldn't the DTB passed to the crashkernel describe which region of
>>> memory is to be used instead?
>>
>> Definitely not.  The crashkernel needs to know where the RAM in the
>> machine is, so that it can create a coredump of the crashed kernel.
>
> So the DTB should describe both ;-)

So we can do without the mem=3D cmdline option which is required
now. Sounds reasonable to me.

=2D-=20
=C5=81ukasz Stelmach
Samsung R&D Institute Poland
Samsung Electronics

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEXpuyqjq9kGEVr9UQsK4enJilgBAFAl7DxyEACgkQsK4enJil
gBDTlAgAkIRYwtBu+g2d1XV7Vb0nZGBCqOyYub+xsR6C6IBjdoYFxzvJvh6SeUl2
FThIsU2I9nTx8L+abqURhb6A0l5dyIFohnVRfbCkLiYGSG59vzs/xFkdKJy/WX2S
6IaYcSNrXF3TF4YOewkdoqumoliiqxx8ktrEnFHcHH364kRDQbHvcRF6c9x4fDv3
Oi+0tSNEZJHoWm/kSmZ6RVi+tZboEwDNbkFbjddTu4CXsW2CkaASgV2iru2E5huZ
bRphZw8bwY0wx1GO4jVxOLQvVbvswP6si+Pu225NFAUWvJp8WbNZ7/j43TxCgdG2
ByyWMPQLq7pZkX0cNqExFqibkshAcg==
=XeUh
-----END PGP SIGNATURE-----
--=-=-=--


--===============7720109770679581238==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7720109770679581238==--

