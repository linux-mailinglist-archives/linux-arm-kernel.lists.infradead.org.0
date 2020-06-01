Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0230A1EA658
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 16:57:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:MIME-Version:Message-ID:Date:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z/TwUcEi60aYzsdKcF4NVw2TvJU45p76o9GpX606ZiI=; b=XnIaRoNsry1FBmkS3mutx8xk9
	Z1uFJksRLnTPXNm+8Ka1KOogB1S9V8Q/VVSEjmCIgecnrg/uTkalMTF708CSwj2GzNhhTF+zRuDWF
	0AdPzPXSItHuFZ8/rNAN+Th75+R9ZSCFmlYh0f7dnRgiSh+MxlhOk/GDxkIWo6H/3egbjDSesy3du
	vO7NRcEv5WrRQlE1+WAj3w5N7ADKq6IdICNB8z0feTWUthLz71NFBq6/uFa+j1cOLMlM5BrifIFOn
	g3MQAU5yjB6HAOtdOQTVamx1gc2aa6/iN4tlB1qNNtFSa0ZRvwAo5veSe3O2fdzsZe29/uiwDfJas
	VWj7S+OTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jflsB-0007dF-N5; Mon, 01 Jun 2020 14:57:07 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jflry-0007bB-W1
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 14:56:56 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200601145653euoutp02ce40dd99c548978f260d57699a1d0f8d~Uc11do3Is0794507945euoutp02K;
 Mon,  1 Jun 2020 14:56:53 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200601145653euoutp02ce40dd99c548978f260d57699a1d0f8d~Uc11do3Is0794507945euoutp02K
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591023413;
 bh=pFHvgtdW5tEy48aYEk+P6nIjiw/yYHWSkOkK7To/nIg=;
 h=From:To:Cc:Subject:In-Reply-To:Date:References:From;
 b=PqZLL/XeovGcW7wExSbdWywVo5FJAZPEoPTCOghx2beKKN0pMX4I8yMyeNahJ/mbr
 X1N55ZZleqVvPGaud/nH1gIezklkkoF8pr7zva0Yo5U8mBBdgCjKPG7PDWozy/Xgwy
 SkQskgLy3ju2ryTSnuz7zIaUNf3wi+sx/e3zYabU=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200601145652eucas1p1b92f880e80e832c28348c91c3eaa2f60~Uc108IV3p1807718077eucas1p1l;
 Mon,  1 Jun 2020 14:56:52 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 4C.7D.61286.43715DE5; Mon,  1
 Jun 2020 15:56:52 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200601145652eucas1p11dcea1cea21824d0a6bfe6ab38c1cab7~Uc10na14d1814418144eucas1p1j;
 Mon,  1 Jun 2020 14:56:52 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200601145652eusmtrp11d6ac325df9fba98f1fe288c16e84cc0~Uc10msjWJ1617416174eusmtrp1U;
 Mon,  1 Jun 2020 14:56:52 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-a5-5ed51734b5a2
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 92.6E.07950.43715DE5; Mon,  1
 Jun 2020 15:56:52 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200601145652eusmtip28eb4aeba31f422f202e37fba19343bdd~Uc10bPXsD0501905019eusmtip2L;
 Mon,  1 Jun 2020 14:56:52 +0000 (GMT)
From: Lukasz Stelmach <l.stelmach@samsung.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 1/5] arm: decompressor: set malloc pool size for the
 decompressor
In-Reply-To: <20200601144607.GI1551@shell.armlinux.org.uk> (Russell King's
 message of "Mon, 1 Jun 2020 15:46:07 +0100")
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
Date: Mon, 01 Jun 2020 16:56:40 +0200
Message-ID: <dleftj367eu95j.fsf%l.stelmach@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHe3fOtqO1ejczHyxChkUaqVHUsRsWQSeCsA9RBK2mntRyMzZX
 KoTrQpZprZmpS8NVlM1LOk3MJukotaylVqakruxi6byk2X2Z8yj47fc+z//5PxdeipD84XtT
 0co4VqWUx0gF7mRF3S/bspVer2RBhfW+dGnWHT6tL67h0e3H7/Pop+cUtPl9K59+UZUjoK0Z
 1YguetgppN+9bePTBf+eIHpIN8aj/z74RdJl5gwiRMS8aG0mmCvaZpJxmj4TTJ5Zw5hNZwVM
 R6tFwAzYbEKm7EYSoxvqFzDny02IGTEvDJ25x31dBBsTfYRVBW7Y7x7V4qgVHHbMizek2Ukt
 KvVIQW4U4JVQ05PMT0HulATnI7CfuCh0JST4G4Ky18e4xAiC5w25aKri8pNBIZe4haBrMIvH
 PXoQGEst4yqKEuAAKCra7cK5eA00pS5xSQjcT0Cz08lzGXngXfA13zjBbjgB+qovES72xMFQ
 /tk+MQWJF0FtZu6ERoRXw1B7NcGxGB5nfyBdTGAFZD93IFcDwEYK+gpHBNykm+FH0ykexx7Q
 W18u5HgBNKankq7hACdBun4VV5uKoCLnJ8lp1kKH7fekz0Y44bRP6mdDW7+Y6zsb9BWZBBcW
 wZnTEk7tC8UXLJMu3pDWmz95NwZuW2yIO1UagrvaFkKHfAzT1jFMW8cwbktgP7hTFciFl8JN
 Yx/B8XooLh4k8xDfhLxYjVoRyaqXK9mjAWq5Qq1RRgaExyrMaPwbNv6rH65Eoy1hVoQpJJ0l
 KrG/lEn48iPqBIUV+Y47dZcUNCFvUhmrZKVzRZueNcokogh5QiKrit2n0sSwaiuaT5FSL9GK
 a1/2SnCkPI49xLKHWdVUlke5eWvRYj+nJ1UwM/RkiXn77yBVj0/Y2OvkoBUNpm3iB9cqtLq2
 Vv9Cu25H72jy4ojhoDwmadnBHv9HdVdvvtc7dtfMeBwcWvXmXkhvSJ1fZ/M+sl64I35nZbfC
 2ZU6VnDDkNhiGnY4PoXX/hj4qA83CG9pxJbkrVbx6JzQq2nHvssObLkuJdVR8uX+hEot/w+W
 cAMvjgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrMIsWRmVeSWpSXmKPExsVy+t/xe7om4lfjDJ6t5LPYOGM9q8WkdQeY
 LG427mayONOda7Hp8TVWi8u75rBZHJq6l9Fi7ZG77BYPH9xgtVj97xSjxYcJ/5ks/uz/yWKx
 edNUZgdej8vXLjJ7zG64yOLxd9ULZo8Fm0o9Nq3qZPO4c20Pm8e7c+fYPTYvqfeY8OEtm0ff
 llWMHp83yQVwR+nZFOWXlqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJal
 FunbJehlXHpzkK3gjVjFrN77LA2MG4W7GDk5JARMJKades/excjFISSwlFFiaus6ti5GDqCE
 lMTKuekQNcISf651sUHUPGWU2PX2NhNIDZuAnsTatREgpoiAlcSFHg2QEmaBh8wSmy7eZAHp
 FRYIlVg/4xgbiM0pUCnxeu8UZhBbSMBS4uXCRiYQWxTI3vLiPjuIzSKgKnFw+lywOK+AucSH
 m3uZIWxBiZMzn4DNZBbIlvi6+jnzBEaBWUhSs5CkZgGdxCygKbF+lz5EWFti2cLXzBC2rcS6
 de9ZFjCyrmIUSS0tzk3PLTbSK07MLS7NS9dLzs/dxAiM5G3Hfm7Zwdj1LvgQowAHoxIP74b7
 V+KEWBPLiitzDzGqAI15tGH1BUYplrz8vFQlEV6ns6fjhHhTEiurUovy44tKc1KLDzGaAv0z
 kVlKNDkfmHzySuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUw2qed
 1F/l15zP48/z0+mKzPvEyzE3F/ue1+6t3r/nWknbl6iEPfLCaXMWnNmTOXtXQGKZ/olXOkLL
 4rsluf8+q5ScV1FhN7t144H5jMuXr87OKpl/LGLuQcb5lycbPVUPnPbC4dT8YNfPad52ia+Z
 l6yf8EDdf5ZCZE35i+KX3JFBfxKZc9SZlViKMxINtZiLihMBt18IUgYDAAA=
X-CMS-MailID: 20200601145652eucas1p11dcea1cea21824d0a6bfe6ab38c1cab7
X-Msg-Generator: CA
X-RootMTR: 20200601145652eucas1p11dcea1cea21824d0a6bfe6ab38c1cab7
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200601145652eucas1p11dcea1cea21824d0a6bfe6ab38c1cab7
References: <20200601144607.GI1551@shell.armlinux.org.uk>
 <CGME20200601145652eucas1p11dcea1cea21824d0a6bfe6ab38c1cab7@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_075655_225439_DEFEC5FB 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
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
Content-Type: multipart/mixed; boundary="===============1006801438274411728=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============1006801438274411728==
Content-Type: multipart/signed; boundary="=-=-="; micalg="pgp-sha256";
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It was <2020-06-01 pon 15:46>, when Russell King - ARM Linux admin wrote:
> On Mon, Jun 01, 2020 at 04:27:50PM +0200, =C5=81ukasz Stelmach wrote:
>> Move the definition of malloc pool size of the decompressor to
>> a single place. This value will be exposed later for kexec_file loader.
>>=20
>> Signed-off-by: =C5=81ukasz Stelmach <l.stelmach@samsung.com>
>> ---
>>  arch/arm/boot/compressed/Makefile | 2 ++
>>  arch/arm/boot/compressed/head.S   | 6 ++++--
>>  2 files changed, 6 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compresse=
d/Makefile
>> index 9c11e7490292..b3594cd1588c 100644
>> --- a/arch/arm/boot/compressed/Makefile
>> +++ b/arch/arm/boot/compressed/Makefile
>> @@ -125,6 +125,8 @@ KBSS_SZ =3D $(shell echo $$(($$($(NM) $(obj)/../../.=
./../vmlinux | \
>>  		sed -n -e 's/^\([^ ]*\) [AB] __bss_start$$/-0x\1/p' \
>>  		       -e 's/^\([^ ]*\) [AB] __bss_stop$$/+0x\1/p') )) )
>>  LDFLAGS_vmlinux =3D --defsym _kernel_bss_size=3D$(KBSS_SZ)
>> +# malloc pool size
>> +LDFLAGS_vmlinux +=3D --defsym _malloc_size=3D0x10000
>>  # Supply ZRELADDR to the decompressor via a linker symbol.
>>  ifneq ($(CONFIG_AUTO_ZRELADDR),y)
>>  LDFLAGS_vmlinux +=3D --defsym zreladdr=3D$(ZRELADDR)
>> diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/=
head.S
>> index e8e1c866e413..dcc1afa60fb9 100644
>> --- a/arch/arm/boot/compressed/head.S
>> +++ b/arch/arm/boot/compressed/head.S
>> @@ -309,7 +309,8 @@ restart:	adr	r0, LC0
>>  #ifndef CONFIG_ZBOOT_ROM
>>  		/* malloc space is above the relocated stack (64k max) */
>>  		add	sp, sp, r0
>> -		add	r10, sp, #0x10000
>> +		ldr	r10, =3D_malloc_size
>> +		add	r10, r10, sp
>
> This says "locate _malloc_size in a literal pool somewhere, and load it
> using a PC-relative offset".  Are you sure that the literal pool is
> sensibly located?
>
> Would it be better to use a definition for this?

I've followed ZRELADDR way. I think both values should be handled the
same way (it makes it easier to comprehend IMHO). Is there any reason
not to?  Should I change ZRELADDR for v2 too?

=2D-=20
=C5=81ukasz Stelmach
Samsung R&D Institute Poland
Samsung Electronics

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEXpuyqjq9kGEVr9UQsK4enJilgBAFAl7VFygACgkQsK4enJil
gBBQ5gf/Z97VHBrrpf500wYfXRxGAn12p9Ybn5LmsEWBSJL0J2JXjlyz8VNslrWf
g3hs5SxB/UToqJGlTU+K1kTZ8Q+JHhz9SDG3a3iT3uwjyUgftF33Wu293QK13RKF
fEEL3C06R7VYMM/Hix8QbhbQJNtVzXoR0ibZIdzX9iP7nLCSUO6gMkX2e5gXGTcW
eHfYHnCVxai/0sOnhkIRuHdQzXPcsKNSLUHmmenW+NdXP7rncFJsiEQ0paNU5l0M
fIPHcLZRh2VFPhusfY74qIlUYg6AHKRC2BleoDoCrBImqfcDf9JBDEuBPFBpTTIB
GDJt+mqIiWYFbxWXQwiCtrRRS9DVXQ==
=MSGU
-----END PGP SIGNATURE-----
--=-=-=--


--===============1006801438274411728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1006801438274411728==--

