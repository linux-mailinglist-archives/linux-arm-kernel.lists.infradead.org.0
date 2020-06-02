Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E242C1EBFC7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 18:17:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:MIME-Version:Message-ID:In-Reply-To:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tDA9yebJ3JX6aB6sG6vbgKFUtOUUyWnMv4hrizxZo9g=; b=GBfJ85JubqeMofLsN3ZNkiNWr
	/V7rwjxBoZxnk2KXcW+8kSi7Pf9j16cV8k7HZEcXV3aKLEBCxupufHMKCfT3geXnoe9H9GfW/G/Pi
	14r8/OX5d0h+hJFSvUOu87MzbcHkFjaV2CkaQ/wbs6JK0oHgkxtN+sobbl7dGuLCxHDjTs71HlZZz
	12VT92kImIBF+8+7iMMJCZMp5lnvpLN8xOfMTl04B/6jjupc54eiGU31WKFSkOPGUNf+T8OZ7XXqA
	qrw9FR+vNJGwAIqP4xw5if6qxp0crSkEhCW6UpBhQeIrQbdfYavNu9J+cUISPhyqAYvpCry1dV7yR
	Kw8GZpXWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg9bX-0000fu-K8; Tue, 02 Jun 2020 16:17:31 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg9bP-0000fV-EE
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 16:17:25 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200602161720euoutp022a75f83bb94f6e800be4eb3014506fd7~UxlX55beD1198111981euoutp02u;
 Tue,  2 Jun 2020 16:17:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200602161720euoutp022a75f83bb94f6e800be4eb3014506fd7~UxlX55beD1198111981euoutp02u
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591114640;
 bh=XgIdZFJhtuiqQmX6qvwfrKLe6TSabjjwUg6aw7gmzIs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bzryWO0xMcZ5wRGHhWM8ZLuTmlouXuEZJwEXmvHfrLkuzPN3n+ui1iHt6yarjY0vj
 q3bCPE4SF+c+jp68THYXL9rMDFAK4WhKAUno1MXID/MSzHFRKLob51PLx09C/mNrxD
 T1LrOhTLZ/fSN/p6LfjiI894J0ZKeXlWhud4bLNI=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200602161720eucas1p246c5eab5f86dcf7dc3340fe56ab369be~UxlXmdNcW0409404094eucas1p2-;
 Tue,  2 Jun 2020 16:17:20 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 16.23.60698.09B76DE5; Tue,  2
 Jun 2020 17:17:20 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200602161720eucas1p257e9e892ed4679ed1d168db34d089a82~UxlXTQgas0409404094eucas1p2_;
 Tue,  2 Jun 2020 16:17:20 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200602161720eusmtrp1effea767466bda44f98db82e7b1a6c36~UxlXSiPWh2876728767eusmtrp1k;
 Tue,  2 Jun 2020 16:17:20 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-f3-5ed67b9078ad
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D5.29.07950.09B76DE5; Tue,  2
 Jun 2020 17:17:20 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200602161720eusmtip21cf2273238527602796cc2ce18a66222~UxlXGsAnu0295502955eusmtip2f;
 Tue,  2 Jun 2020 16:17:20 +0000 (GMT)
From: Lukasz Stelmach <l.stelmach@samsung.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 3/5] arm: decompressor: define a new zImage tag
Date: Tue, 02 Jun 2020 18:17:05 +0200
In-Reply-To: <20200601204127.GS1551@shell.armlinux.org.uk> (Russell King's
 message of "Mon, 1 Jun 2020 21:41:28 +0100")
Message-ID: <dleftjmu5lqw72.fsf%l.stelmach@samsung.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02SaUwTURSF8zrT6VAtGQrKDSqaBhPACBJFBhEU9ccYNfKHaCSio06ASFts
 KQoYixqJsllxZYtiiAIC1bKEVaVuEZRFYhVSAwJGQaoQ1ACyyDCY8O+75513bs7LIzH5hNiF
 jFLFchoVG60gpHjVy/HWtYZES/i6D18V9KNbRjGdWfZURHeerRPRb1KVtKnPIqY7anMJ2ny9
 AdGlzz9J6M89H8X0g+kmRA8bZkT05JNxnC43Xce2ypgOSzvG5CS148xU8TeMuWPSMabiSwRj
 tdQTzI+WFglTXqBnDMM2gsmoKEbMqMk1ZNEB6eZjXHRUHKfxDjosjXz/slAc89n31BfjjCgJ
 VXqkIDsSqA1QkPUES0FSUk4VIqi90TQ//EJw5c/f+WEUwTuLjUhB5NyV/MIEQb+PoM5YIhaG
 rwjS62skvImgvKC0dD+PTtQmaEtz5y0YZcOgfWpKxK92pLbDhaLOOcap1TBwbhrxbEfFQ1fj
 2FyMjPKD1IYAXl5C+UPFt24JzzLKAV5n9eM8Y5QSslqHEJ8PVD4J774MYkK1HVDy4rZIYEcY
 fFUhEXg5NF9Nw4UueriauVG4m4agKncMFzwBYG2ZIAQOhrzkHEzw28NHm4Ow1x4yq27OyzK4
 mCwX3G5Qdrl+PsUF0gcLkcAMtOZN4MJLpSOYyetFBrQqe0Gd7AV1smdjMcoDjLXegrwG7uV/
 xwQOhLKyn/gdJC5GzpxOq4zgtOtV3EkvLavU6lQRXkfVShOa/YXN069+V6PHk0fMiCKRYrFs
 nY8lXC5m47TxSjNym03qffigDbngKrWKUzjJtr1tDpfLjrHxCZxGfUiji+a0ZrSMxBXOsvV3
 Bw7KqQg2ljvOcTGc5v+piLRzSUInwrroPVl6i3XXtQlfx5jSkqEXeKSHY6DZ12GHfqUvajsv
 XbF7L3G7vyu4mTUQmnBnt9NvOpx2eo5cU3dm1rDB/Sq37n0NoVb/Sv9Q+a4odXUj6WcMMsXo
 dc+YopG4gi5Xnas+3pbhsbSOM1pC+qTW1PTEwFXu/lvCzph7zApcG8n6eGIaLfsPPotcGI0D
 AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrAIsWRmVeSWpSXmKPExsVy+t/xe7oTqq/FGRy+xGOxccZ6VotJ6w4w
 Wdxs3M1kcaY712LT42usFpd3zWGzODR1L6PF2iN32S0ePrjBarH63ylGiw8T/jNZ/Nn/k8Vi
 86apzA68HpevXWT2mN1wkcXj76oXzB4LNpV6bFrVyeZx59oeNo93586xe2xeUu8x4cNbNo++
 LasYPT5vkgvgjtKzKcovLUlVyMgvLrFVija0MNIztLTQMzKx1DM0No+1MjJV0rezSUnNySxL
 LdK3S9DLuHpsBWvBQ9OKp+v/MzUwbtXsYuTgkBAwkVi4oqqLkYtDSGApo8TrvbNZIOJSEivn
 pncxcgKZwhJ/rnWxQdQ8ZZSYvv4fG0gNm4CexNq1ESCmiICVxIUeDZASZoGHzBKbLt5kAekV
 FnCWaF15kwmkRkjAUuLp5WKQMIuAqsTLpn+MIDanQKXErYM/2EFKeAXMJbr3WoOERYGqt7y4
 zw5i8woISpyc+QRsIrNAtsTX1c+ZJzAKzEKSmoUkNQtoErOApsT6XfoQYW2JZQtfM0PYthLr
 1r1nWcDIuopRJLW0ODc9t9hIrzgxt7g0L10vOT93EyMwhrcd+7llB2PXu+BDjAIcjEo8vAaG
 1+KEWBPLiitzDzGqAI15tGH1BUYplrz8vFQlEV6ns6fjhHhTEiurUovy44tKc1KLDzGaAr05
 kVlKNDkfmHbySuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwnqiN
 5E08kSkz+7SG9Ve1I3MVWJb+nSHY4rHh0uJpK48cv+n2kvX3nHUs9xOmCHLzVae1JErVHxN4
 wM+ebmY0K9DuePpBfsnVN45OW/zWX9/gVoWHtrrfQmf3fxkLPitJqVr3SAiuV/Uo5jOxEcl5
 tuPRx8M/dqVkSpya8VZrXtY5A8GH0TfWKrEUZyQaajEXFScCAE5szDgDAwAA
X-CMS-MailID: 20200602161720eucas1p257e9e892ed4679ed1d168db34d089a82
X-Msg-Generator: CA
X-RootMTR: 20200602161720eucas1p257e9e892ed4679ed1d168db34d089a82
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200602161720eucas1p257e9e892ed4679ed1d168db34d089a82
References: <20200601204127.GS1551@shell.armlinux.org.uk>
 <CGME20200602161720eucas1p257e9e892ed4679ed1d168db34d089a82@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_091723_792711_4D6959C1 
X-CRM114-Status: GOOD (  22.64  )
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
Content-Type: multipart/mixed; boundary="===============8936003236443013614=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============8936003236443013614==
Content-Type: multipart/signed; boundary="=-=-="; micalg="pgp-sha256";
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It was <2020-06-01 pon 21:41>, when Russell King - ARM Linux admin wrote:
 > On Mon, Jun 01, 2020 at 10:27:45PM +0200, Lukasz Stelmach wrote:
>> It was <2020-06-01 pon 19:25>, when Russell King - ARM Linux admin wrote:
>>> On Mon, Jun 01, 2020 at 06:19:52PM +0200, Lukasz Stelmach wrote:
>>>> It was <2020-06-01 pon 15:55>, when Russell King - ARM Linux admin wro=
te:
>>>>> On Mon, Jun 01, 2020 at 04:27:52PM +0200, =C5=81ukasz Stelmach wrote:
>>>>>> Add DCSZ tag which holds dynamic memory (stack, bss, malloc pool)
>>>>>> requirements of the decompressor code.
>>>>>
>>>>> Why do we need to know the stack and BSS size, when the userspace
>>>>> kexec tool doesn't need to know this to perform the same function.
>>>>=20
>>>>=20
>>>> kexec-tools load zImage as low in DRAM as possible and rely on two
>>>> assumptions:
>>>>=20
>>>>     + the zImage will copy itself to make enough room for the kernel,
>>>>     + sizeof(zImage+mem) < sizeof(kernel+mem), which is true because
>>>>       of compression.
>>>>=20
>>>>        DRAM start
>>>>        + 0x8000
>>>>=20
>>>> zImage    |-----------|-----|-------|
>>>>             text+data   bss   stack=20
>>>>=20
>>>>                  text+data           bss=20=20=20
>>>> kernel    |---------------------|-------------------|
>>>>=20
>>>>=20
>>>> initrd                                              |-initrd-|-dtb-|
>>>
>>> This is actually incorrect, because the decompressor will self-
>>> relocate itself to avoid the area that it is going to decompress
>>> into.
>>=20
>> I described the state right after kexec(8) invocation.
>
> Actually, you haven't, because this is _not_ how kexec(8) lays it
> out, as I attempted to detail further down in my reply.


Let me try to describe how I understand the code in kexec-tools
(commit 74c7c369).

=2D-8<---------------cut here---------------start------------->8---
int zImage_arm_load(=E2=80=A6, const char *buf, off_t len, =E2=80=A6)
// buf - zImage
// len - size of zImage
=20=20=20=20=20=20=20=20
unsigned int extra_size =3D 0x8000; /* TEXT_OFFSET */

kernel_mem_size =3D len + 4;

// locate a hole to fit zImage + 32kB as low as possible,
base =3D locate_hole(info, len + extra_size, 0, 0, ULONG_MAX, INT_MAX);

kernel_base =3D base + extra_size;

add_segment(info, buf, len, kernel_base, kernel_mem_size);
=2D-8<---------------cut here---------------end--------------->8---

Therefore, zImage is loaded low and always requires relocation.
=20=20=20=20=20=20=20=20
ram     |--------------------------------------------------------------
zImage     |----k_m_s----|
           ^
           |
           kernel_base =E2=80=94 TEXT_OFFSET or higher

Next goes initrd

=2D-8<---------------cut here---------------start------------->8---
kexec_arm_image_size =3D len * 5; // or passed on command line

// if the tag exists
kexec_arm_image_size =3D max(edata_size + bss_size,
                           edata_size + len); // len - zImage size + 64 kB=
=20

initrd_base =3D kernel_base + _ALIGN(kexec_arm_image_size, page_size);

add_segment(info, ramdisk_buf, initrd_size, initrd_base, initrd_size);
=2D-8<---------------cut here---------------end--------------->8---

above whatever is bigger (kernel + kernel bss) OR (kernel + zImage + zImage=
 mem).


ram     |---------------------------------------------------------------
zImage     |----k_m_s----|                   Where kexec loads zImage @kern=
el_base

           |.............len * 5....................| Fallback
kernel     |.....edata.....|...bss...|       These are just calculations
zImage                     |.....len+....|   zImage will copy itself here W=
HEN it runs

initrd                                   |--initrd_size--|
dtb                                      ^               |---|
                                         |
                                 initrd_base

DTB, of course, goes next

    dtb_offset =3D initrd_base + initrd_size + page_size;


Stuff marked with "-" is actually loaded, "." are just calculations to
establish initrd_base.

>>> So, while the decompressor runs, in the above situation it
>>> ends up as:
>>>
>>>
>>> ram    |------------------------------------------------------...
>>>                  text+data           bss=20=20=20
>>> kernel    |---------------------|-------------------|
>>> zImage                          |-----------|-----|-------|
>>>                                   text+data   bss   stack+malloc
>
> Note here - if the initrd was placed as _you_ describe at the end
> of where the zImage ends up including its BSS, it would be
> corrupted by the stack and malloc space of the decompressor while
> running.  Ergo, your description of how kexec(8) lays stuff out
> is incorrect.

Is my analysis above accurate now? Do I understand this?

As you noted, my intention is to load zImage after edata (dotted len+
above).

>>>>>> +struct arm_zimage_tag_dc {
>>>>>> +	struct tag_header hdr;
>>>>>> +	union {
>>>>>> +#define ZIMAGE_TAG_DECOMP_SIZE ARM_ZIMAGE_MAGIC4
>>>>>> +		struct zimage_decomp_size {
>>>>>> +			__le32 bss_size;
>>>>>> +			__le32 stack_size;
>>>>>> +			__le32 malloc_size;
>>>>>> +		} decomp_size;
>>>
>>> You certainly don't need to know all this.  All you need to know is
>>> how much space the decompressor requires after the end of the image,
>>> encompassing the BSS size, stack size and malloc size, which is one
>>> value.
>>=20
>> I agree. However, since we are not fighting here for every single byte,
>> I'd rather add them as separate values and make the tag, even if only
>> slightly, more future-proof.
>
> It doesn't make it more future-proof.  What happens if we add something
> else, do we need to list it separately, and then change the kernel to
> accept the new value and maybe also kexec(8)?  Or do we just say "the
> decompressor needs X many bytes after the image" and be done with it?
> The latter sounds way more future-proof to me.

You are right. I changed it to a single value. Done.

=2D-=20
=C5=81ukasz Stelmach
Samsung R&D Institute Poland
Samsung Electronics

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEXpuyqjq9kGEVr9UQsK4enJilgBAFAl7We4EACgkQsK4enJil
gBC8Iwf/WZzz0WgGYVgQzAMKfMYySvrG8k4aomwnNckckoVYX3WSJhDiTWcMEMEV
7hLjm7OcHvTbjaNk0Z+UOu4cRJDiO2sTBDwlftlp5iEF4VVyl37JKZqKcPy/QmGS
6GNl7n0xUp8vYfYFQIp9CYRg6G7Q+e87kFIUmZCneRUfFjyN1Kg1ao325SMi4th3
P2jTwYPK6mb2N3rD6gzsjlqvjWJH7CvKwoUrRiNzeMqGJZPJvzK+1PskxZe/3gGp
Ew+OiQB+NavqYKAEC521hZD0hny0f+q+5yizzyGa6SaEF3Y9i+YLbhtqSK1HYAoK
MXXRyj47FeCThHDjmHLh2ttXVKM4qQ==
=Hfov
-----END PGP SIGNATURE-----
--=-=-=--


--===============8936003236443013614==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8936003236443013614==--

