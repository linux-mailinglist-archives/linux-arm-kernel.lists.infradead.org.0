Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 255431D9626
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 14:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:MIME-Version:Message-ID:In-Reply-To:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1VQQvgKdxYXhfb/pmyRGEqi0XelprG3BAdN2PyPHzQg=; b=ued/N83AtBgdUXj8n33qe7WH7
	QeWS273T1GgYW+IBQmrUtDEZ8Bs6nMzm6Why+n/NgX5MKnHFW8ieVCvRg0vFEvQBAzHN32GquCprT
	OySM797jq+MneQLYpoHYDKXcWCh4ncxHd2LYEmSwJqarg66SFOEMu6kJfH/qRnlXmXfJIu3fXodbB
	kxFxc/Yxcs/TUkikOsNeoIv+85/nG2Z4ZrqLxlNb7lTESTlZgpRBMKnDOrPEk+5d1DvADBuljgqnU
	++aBUDwOjsyoEl7i02yemRcYTnQq3TITO59lVk6BjH9spSLRvIj7YzO9RId1Ws47WyY/soXzFs+bS
	zi1njrCNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb1Ex-0001jc-Sh; Tue, 19 May 2020 12:20:59 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1El-0001jD-MQ
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 12:20:49 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200519122045euoutp0174d0234dd9d6a758e66742133e050927~QbUzrAKaM0779007790euoutp01j;
 Tue, 19 May 2020 12:20:45 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200519122045euoutp0174d0234dd9d6a758e66742133e050927~QbUzrAKaM0779007790euoutp01j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589890845;
 bh=KAE4XKcKCBg2dx8IdMnFPI6aYZgYewVOrxs9kIfuPag=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JfWrZjTIbaF0s4W9DTCqJqefITr5J5Vu+Hq3xx6gPmpMaXbOElMwVsuIxOB+SOhTE
 PXSTHFMq+OAZemWG/zYNVXdwmvIFDv2/QbBURioZNK/HNPIb3Zbgf7S2opyj+tQ4XN
 +7oJoGxmq70EL47uhGPYhqVt0XEcAB2ZwxuZm+1o=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200519122045eucas1p11818da71899597f03965513d2b681dce~QbUzXFP6K2347423474eucas1p1E;
 Tue, 19 May 2020 12:20:45 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 28.01.60679.D1FC3CE5; Tue, 19
 May 2020 13:20:45 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200519122044eucas1p1220e8827c66dd1ace94b0a86a34f9c37~QbUy6mCVD1944519445eucas1p1o;
 Tue, 19 May 2020 12:20:44 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200519122044eusmtrp237859970f39fb76dc2395c71d709efce~QbUy5sD7X2558825588eusmtrp28;
 Tue, 19 May 2020 12:20:44 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-16-5ec3cf1d1c10
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id AD.9C.07950.C1FC3CE5; Tue, 19
 May 2020 13:20:44 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200519122044eusmtip197240bde62b2e30f3f0c682707be13e4~QbUyvntia0653006530eusmtip1T;
 Tue, 19 May 2020 12:20:44 +0000 (GMT)
From: Lukasz Stelmach <l.stelmach@samsung.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH v6] ARM: boot: Obtain start of physical memory from DTB
Date: Tue, 19 May 2020 14:20:25 +0200
In-Reply-To: <20200519114329.GB1551@shell.armlinux.org.uk> (Russell King's
 message of "Tue, 19 May 2020 12:43:29 +0100")
Message-ID: <dleftj5zcs5d6e.fsf%l.stelmach@samsung.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02SWUwTURSGczrT6UAoDq2GEwRiKiagYXFBr2vU+DCJL25RYxStOikCLdiC
 C3EhGFCRAhZxQSJqjBJkk1WQxqTUBauAVgmiuJUIlsWgSAQVpQwkvn33nP/+5z83l6UUeYwP
 u08XL+h16hgV405XPxxuCvZrbogI62xiyfDgVyB/TA9l5M7FUinJv2CkSb61SUpuDziAFNaY
 KfK53SwhVZntNCl3tEqJvS6PIVVf+iXEkmMGUmztkJGPH9qk5Ep3N0NSzFYZeXM2G1Yq+KIr
 RcDbW59T/K8RE/CfH59k+NrcDhlfXnia4S0Np4CvuHGcN57oZ/jMP2H80NOzNJ9RWQj893L/
 dfJt7sv2CjH7Dgj60BW73CMLzt2j4pKCDiVnRidB14w0cGORW4BOm13mYgVXAFjinJ8G7mM8
 CNjbYQbx8B2w3nqDmrzx/P6gRGzcAnxW5pxQdQHmGPvoNGBZhgvB4uKtLpzKLcGW9ECXhOIa
 GDydWiFxGSm5tejosYyb0twsHOhyjLMbl4htadZxlnOL0JzSybh4GrcYK7vfy8S6FzZe6qRd
 THFavNTcC2K4Fhbbvx0ReQ3WZ/ykRVai81GlTGRf/FubL3FlQ+44ZpsWurIhlw5YnTepX4pv
 m0YYkVfhg84zIOo9sa3PSxzriabqC5RYluOpVIWoDsCSzPoJFx80OgsmkvH48nzyxEMbAUtz
 5FkwI/e/ZXL/WyZ3zJXigrC0LlQsz8Gb13ookZdjSclX+ipIC8FbSDBoNYJhnk44GGJQaw0J
 Ok3InlhtOYz9U9voo8G7UPd7twU4FlQe8rD6hgiFVH3AcFhrgYAxp09lt1vAh9bF6gTVVHlW
 tyVCId+rPpwo6GN36hNiBIMFprO0yls+//qXHQpOo44XogUhTtBPdiWsm08SbHq9C4veRQVn
 V0aHpx9pzKixr5f22J79OPNiesruDUProsqivW0hgQHvWte/T/yYWJGl9Ju5cXHH9iehrTvC
 7VvomqO18UFPyjRG4t+fvv/FOd9UCPD0b461KT8MRPb6rVxNH7taYRrd3DjX43LXzqA4ZfIU
 s8PZF6mJerViTvOoUkUbItVzZ1N6g/ofo0fwbK8DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHeXfOzqa0OC3FlyEho5upRzedeydqQRJH+lAQhGVpy04qus12
 tkgREsXb0KaWlVJZYbeZZlO7WKOay0ojNUHMMDVvC2OiM8FSa3MEfvvx///eh/eBh48Jq7ki
 frpax2jVykwx4Y13r74bDvHv6UgKu10ajJYWZgFaqerkocdXH3FR3ZVyHNXZPnFRw9w4QKan
 FgxNDVk4qM04hCPz+AAX9bdfI1DbDwcHWastADXahnlobHSQi27Y7QQqtNh46GvlRbBHSD+8
 8RDQ/QN9GP3ndxWgp94XE/Tz2mEebTaVErS1owTQLfXn6fICB0EbV8LoxY+VOH2h1QRop3nL
 QcFRKlqr0euYgDQNq4sRJ0qQlJIoECWNUFCScPnxKKlMHBobfYrJTD/LaENjT1Bp9y+9wLLy
 As/lGzPywHSAAXjxIRkB+14tcAzAmy8k7wCYd7kEGADfVYjgg+upHmczXB4wEB5nEkDTSB/m
 dgiSgo2NCW70IaNgb9lOt46RbwnYVcO4eTO5H47PWDE3C0kFXKpo5bgZJ7fBuenxtdyLzIGD
 BtsaC0g5tBROEG72dfmt9hGeJ98EP9RM4J75GfBXwzRWAcjadVXtuqrW9SOMDISP2kM9cRC8
 e2sG83AMbGqaxW8Crgn4MHpWlapipRSrVLF6dSqVolGZgesMnnQutT4DBschKyD5QLxBEPay
 I0nIVZ5ls1VWsNU15ntzQy8Q4WqNmhH7CCrs1iSh4JQyO4fRapK1+kyGtQKZa89KTOSbonEd
 mFqXLJFJ5EghkYfLwyOR2E9QQr45JiRTlTomg2GyGO3/dxy+lygP9HD0mNqvrF1RvYjFlwia
 7ckPhnWjCbJX/Ue2P3c0O/lVvt+JgpM7l++EzbcU+d+zEy+inCFjr+NbqjTzcZFB+7LEpw/k
 ptR16yc+m77tGHIEBMfsPZy7cejL1Ftr/szuXRH1ib0Jq+QZY2L8Jso31Fzq7EqIayr6+7IY
 Tf7EjGKcTVNKdmFaVvkPPTrtFCgDAAA=
X-CMS-MailID: 20200519122044eucas1p1220e8827c66dd1ace94b0a86a34f9c37
X-Msg-Generator: CA
X-RootMTR: 20200519122044eucas1p1220e8827c66dd1ace94b0a86a34f9c37
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200519122044eucas1p1220e8827c66dd1ace94b0a86a34f9c37
References: <20200519114329.GB1551@shell.armlinux.org.uk>
 <CGME20200519122044eucas1p1220e8827c66dd1ace94b0a86a34f9c37@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_052047_938736_6EAFE677 
X-CRM114-Status: GOOD (  33.77  )
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
Content-Type: multipart/mixed; boundary="===============2628330249690313024=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============2628330249690313024==
Content-Type: multipart/signed; boundary="=-=-="; micalg="pgp-sha256";
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It was <2020-05-19 wto 12:43>, when Russell King - ARM Linux admin wrote:
> On Tue, May 19, 2020 at 01:21:09PM +0200, Geert Uytterhoeven wrote:
>> On Tue, May 19, 2020 at 11:46 AM Russell King - ARM Linux admin
>> <linux@armlinux.org.uk> wrote:
>> > On Tue, May 19, 2020 at 11:44:17AM +0200, Geert Uytterhoeven wrote:
>> > > On Tue, May 19, 2020 at 10:54 AM Lukasz Stelmach <l.stelmach@samsung=
.com> wrote:
>> > > > It was <2020-04-29 =C5=9Bro 10:21>, when Geert Uytterhoeven wrote:
>> > > > > Currently, the start address of physical memory is obtained by m=
asking
>> > > > > the program counter with a fixed mask of 0xf8000000.  This mask =
value
>> > > > > was chosen as a balance between the requirements of different pl=
atforms.
>> > > > > However, this does require that the start address of physical me=
mory is
>> > > > > a multiple of 128 MiB, precluding booting Linux on platforms whe=
re this
>> > > > > requirement is not fulfilled.
>> > > > >
>> > > > > Fix this limitation by obtaining the start address from the DTB =
instead,
>> > > > > if available (either explicitly passed, or appended to the kerne=
l).
>> > > > > Fall back to the traditional method when needed.
>> > > > >
>> > > > > This allows to boot Linux on r7s9210/rza2mevb using the 64 MiB o=
f SDRAM
>> > > > > on the RZA2MEVB sub board, which is located at 0x0C000000 (CS3 s=
pace),
>> > > > > i.e. not at a multiple of 128 MiB.
>> > > > >
>> > > > > Suggested-by: Nicolas Pitre <nico@fluxnic.net>
>> > > > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>> > > > > Reviewed-by: Nicolas Pitre <nico@fluxnic.net>
>> > > > > Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
>> > > > > Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
>> > > > > Tested-by: Dmitry Osipenko <digetx@gmail.com>
>> > > > > ---
>> > > >
>> > > > [...]
>> > > >
>> > > > Apparently reading physical memory layout from DTB breaks crashdump
>> > > > kernels. A crashdump kernel is loaded into a region of memory, tha=
t is
>> > > > reserved in the original (i.e. to be crashed) kernel. The reserved
>> > > > region is large enough for the crashdump kernel to run completely =
inside
>> > > > it and don't modify anything outside it, just read and dump the re=
mains
>> > > > of the crashed kernel. Using the information from DTB makes the
>> > > > decompressor place the kernel outside of the dedicated region.
>> > > >
>> > > > The log below shows that a zImage and DTB are loaded at 0x18eb8000=
 and
>> > > > 0x193f6000 (physical). The kernel is expected to run at 0x18008000=
, but
>> > > > it is decompressed to 0x00008000 (see r4 reported before jumping f=
rom
>> > > > within __enter_kernel). If I were to suggest something, there need=
 to be
>> > > > one more bit of information passed in the DTB telling the decompre=
ssor
>> > > > to use the old masking technique to determain kernel address. It w=
ould
>> > > > be set in the DTB loaded along with the crashdump kernel.
>> > >
>> > > Shouldn't the DTB passed to the crashkernel describe which region of
>> > > memory is to be used instead?
>> >
>> > Definitely not.  The crashkernel needs to know where the RAM in the
>> > machine is, so that it can create a coredump of the crashed kernel.
>>=20
>> So the DTB should describe both ;-)
>>=20
>> > > Describing "to use the old masking technique" sounds a bit hackish t=
o me.
>> > > I guess it cannot just restrict the /memory node to the reserved reg=
ion,
>> > > as the crashkernel needs to be able to dump the remains of the crash=
ed
>> > > kernel, which lie outside this region.
>> >
>> > Correct.
>> >
>> > > However, something under /chosen should work.
>> >
>> > Yet another sticky plaster...
>>=20
>> IMHO the old masking technique is the hacky solution covered by
>> plasters.
>
> One line of code is not "covered by plasters".  There are no plasters.
> It's a solution that works for 99.99% of people, unlike your approach
> that has had a stream of issues over the last four months, and has
> required many reworks of the code to fix each one.  That in itself
> speaks volumes about the suitability of the approach.

As I have been working with kexec code (patches soon) I would like to
defend the DT approach a bit. It allows to avoid zImage relocation when
a decompressed kernel is larger than ~128MiB. In such case zImage isn't
small either and moving it around takes some time.

=2D-=20
=C5=81ukasz Stelmach
Samsung R&D Institute Poland
Samsung Electronics

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEXpuyqjq9kGEVr9UQsK4enJilgBAFAl7DzwoACgkQsK4enJil
gBDWbQf/QohShLI7nKFCnHoM4Ek5uwnqEcYvzNFTgoeYrp7clsVrl0ZOaVK0MIei
TqVvWrH2aSo3sjyc0buMs7RoSFXzikEin1o+aCrybQP9nMBeg4vQ2pP431WqhtmM
C79gLpVkWWOHH2yURBa5LQ3HRqZ+wtbxe613rUbRkTBHhe36ZoUTxL4Rl4lwHtX+
SpeiQQk2ZlUpsG/foI8QD4wMrgHeIQshvjFeF1C3h/z9eiLoRMzqKhX8mwMIumJ2
ZVT8EwoqOB2lfjYzxgRKnsLi4pneiWU7omRz1aY2shAtCiqnBfJWOgk87uVk1Zd2
89JjdLn7VUWh5LVIblCJkhlxIljm7Q==
=MtNm
-----END PGP SIGNATURE-----
--=-=-=--


--===============2628330249690313024==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2628330249690313024==--

