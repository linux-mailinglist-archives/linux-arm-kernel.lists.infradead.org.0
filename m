Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B68B81EB02D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 22:28:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:MIME-Version:Message-ID:In-Reply-To:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d5o1V8eYv1Yq3Qx/I6sRiWjaWMWu16RC630IdWSgQLs=; b=pDPIjFJ90ojDw6k51nsDhXvvk
	iVy04kL+RIuPYotaqz2H3hZZLoJIX1uk2QCooA4UZNrNMIUKLJrZCDfFWa8sE5xEmxRdjKIpJbFo+
	s4nyWStyaE57wHz84ZIlGgw6Nfx8sdxpOuK5PaPXYIWlK5bCczGX/yTGrvali+3Zlzi2XO3gapONj
	BbmkSdFTdPnahaBe+8tO62WPQx/A5zQxDUV8kaiOgsr4fFxlaZa0euhqh+VdAq8WC7fXV6yDEng9L
	g+UPwyXc0U7i7RBGyqmOXnU+Bf43J/jkt04e4ukAP+mMHoYhQwcWCuh4q9bCJlRf5aFu/eDe7ErwL
	Z0giiPdFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfr2Y-0001XJ-7u; Mon, 01 Jun 2020 20:28:10 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfr2Q-0001WM-F8
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 20:28:04 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200601202758euoutp022aaa10d0913830004adf5984972d1be3~UhW60jmpw1473614736euoutp02F;
 Mon,  1 Jun 2020 20:27:58 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200601202758euoutp022aaa10d0913830004adf5984972d1be3~UhW60jmpw1473614736euoutp02F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591043278;
 bh=PDQg9D3HcC/RvEzGxrOVLnYHE3k+Zs1sSiqBViavFVg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pl/Aw0YcrKRI470p58IQrG8LkcDPfrdsxWT56zwTAnBX8y3lN0vIyy3hJUkZH6LBT
 bFhdbuwpD6Qsck+TSmVrILQFxMfYL5ap/vhUS/MFftUCDi3eU0DQClVJia1w0HCIv9
 UQA1nJbiSHQCH9kDpa54rk6Kb6M2VEOHOUmMYxHM=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200601202758eucas1p2651c0d1a9494913ae9839daf3c19c8a6~UhW6c_R6S1505515055eucas1p27;
 Mon,  1 Jun 2020 20:27:58 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id DE.09.61286.EC465DE5; Mon,  1
 Jun 2020 21:27:58 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200601202757eucas1p11d380be9e0b2fe912a358d21e2d8dc2a~UhW5xIFUX1796617966eucas1p19;
 Mon,  1 Jun 2020 20:27:57 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200601202757eusmtrp17294f9403de7f243b5537780759d9702~UhW5wdgBc2812128121eusmtrp1L;
 Mon,  1 Jun 2020 20:27:57 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-cf-5ed564ce0dce
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 74.A8.07950.DC465DE5; Mon,  1
 Jun 2020 21:27:57 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200601202757eusmtip27fc9c7a39cc74f78ffa2c19285d5aa59~UhW5i52wu2351523515eusmtip2f;
 Mon,  1 Jun 2020 20:27:57 +0000 (GMT)
From: Lukasz Stelmach <l.stelmach@samsung.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 3/5] arm: decompressor: define a new zImage tag
Date: Mon, 01 Jun 2020 22:27:45 +0200
In-Reply-To: <20200601182555.GP1551@shell.armlinux.org.uk> (Russell King's
 message of "Mon, 1 Jun 2020 19:25:55 +0100")
Message-ID: <dleftj8sh6sf9a.fsf%l.stelmach@samsung.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02SWUxTURCGOb1LL2jxWFFGXDBVE5cIGlyuC0bFh/toYuKCila5wUZaSK+I
 mBjgQaLIWlCkkshiFIssFmQTI6lElB2xBCIErQQRQVCWqKFVysHEt29m/vln5uRwlHKa8eI0
 uouiXqcOVbFudPmrX62bWoKtQZv7LcA/uVPM8IaiWhnfHftMxjfd1PLmT50M31GdxfKWW88R
 X1jXK+c/fuhi+AJHA+LHUv7I+OkXv2i+1HyL2qcQOjrbKeFuTDst2E2DlJBtjhDMphus0NNZ
 wwrfWlrkQun9aCFlbIQVkspMSBg3rzw0L9BtT7AYqrkk6n33nnE7P9FbyoZ/X3c5o2QSxaBR
 73jkygHeCq3J16l45MYpcT6C6sz7iAQTCPq/58lIMI7ANl4g+9fSF9c6V3iIIO7JYzkJPiNo
 633DxCOOY7EPFBYec6IH3gVtCeucEgqPUNBut88aLcIBcO1R9yzTeC2kZqUzTnbFUTBgvTfL
 CrwDjNfy5U5ejHdC2WCfnOQXwpvMftrJFNZCZuvw7NqAczhIra5iyaYHwfLezhBeBEP1ZXLC
 y6ExLYF2Lgc4GtIM20lvAoLyrJ800eyGnpbfcz77wVpShYjeHbpGFpK57mAoz6BIWgHX45RE
 vQaKkmvmXLwgcSgfERbgd24pS54qEUFB8xSVglYZ/zvH+N85xhlbCq+H4mpfkt4ID3K+UoT9
 oaholM5GjAl5ihGSNkSUtujESB9JrZUidCE+58K0ZjTzDxsd9T8q0eTbsxaEOaSaryjpexek
 ZNSXpCitBa2ZcbKVFLQhL1oXphNVHooDzY1BSkWwOuqKqA87rY8IFSULWsbRKk+FX+6XU0oc
 or4oXhDFcFH/ryrjXL1i0O3EqBMu2tFmc89TW+1zb3t8Xl12gHV1ZmDsgqsa01Vv6woX0W+Z
 9rDxnP/DqUrlkaT58sHXbwPr9q1y+Kzn0hp0tm0ux6j6WmNTTuRLw1H8pfdzwxLd6iNLu/IH
 ypIE8WSFbVg66lAaTEZNRYXQNL222K9/rN6Rbj1eE64ZeK+ipfPqLRsovaT+C7XBr/OPAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrMIsWRmVeSWpSXmKPExsVy+t/xe7pnU67GGWxZoW6xccZ6VotJ6w4w
 Wdxs3M1kcaY712LT42usFpd3zWGzODR1L6PF2iN32S0ePrjBarH63ylGiw8T/jNZ/Nn/k8Vi
 86apzA68HpevXWT2mN1wkcXj76oXzB4LNpV6bFrVyeZx59oeNo93586xe2xeUu8x4cNbNo++
 LasYPT5vkgvgjtKzKcovLUlVyMgvLrFVija0MNIztLTQMzKx1DM0No+1MjJV0rezSUnNySxL
 LdK3S9DL+HJ3M1vBR42K6Ru+MjYwvpfvYuTkkBAwkbjfdp6pi5GLQ0hgKaPEuoZN7F2MHEAJ
 KYmVc9MhaoQl/lzrYoOoecoo8f3PeTaQGjYBPYm1ayNATBEBK4kLPRogJcwCD5klNl28yQLS
 KyzgLNG68iYTiC0kYCkx83AnM4jNIqAqMXHOFFYQm1OgUuLZ1flgNq+AucSs1hXsILYoUP2W
 F/fZIeKCEidnPgGbySyQLfF19XPmCYwCs5CkZiFJzQI6iVlAU2L9Ln2IsLbEsoWvmSFsW4l1
 696zLGBkXcUoklpanJueW2ykV5yYW1yal66XnJ+7iREYyduO/dyyg7HrXfAhRgEORiUe3g33
 r8QJsSaWFVfmHmJUARrzaMPqC4xSLHn5ealKIrxOZ0/HCfGmJFZWpRblxxeV5qQWH2I0Bfpz
 IrOUaHI+MPnklcQbmhqaW1gamhubG5tZKInzdggcjBESSE8sSc1OTS1ILYLpY+LglGpgPN33
 ypPbUfjdFJfpHiZfFD787H8TmL17x/Mfsn3cyTpvFM19XlxrqTFoCulNWCJ+vyQnza16emy7
 7ca/xlreynNd1JxSD+48dtY+TiZF9sCiuxfu5qtvvLE4SmJln3ZE8dTC+OzZjH/qO/gN17xd
 vakq8mtRI8Ovy+utbBkCSnTNHLiubrdUYinOSDTUYi4qTgQAnoD6vgYDAAA=
X-CMS-MailID: 20200601202757eucas1p11d380be9e0b2fe912a358d21e2d8dc2a
X-Msg-Generator: CA
X-RootMTR: 20200601202757eucas1p11d380be9e0b2fe912a358d21e2d8dc2a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200601202757eucas1p11d380be9e0b2fe912a358d21e2d8dc2a
References: <20200601182555.GP1551@shell.armlinux.org.uk>
 <CGME20200601202757eucas1p11d380be9e0b2fe912a358d21e2d8dc2a@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_132802_821136_FE353596 
X-CRM114-Status: GOOD (  26.20  )
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
Content-Type: multipart/mixed; boundary="===============1126998479321149667=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============1126998479321149667==
Content-Type: multipart/signed; boundary="=-=-="; micalg="pgp-sha256";
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It was <2020-06-01 pon 19:25>, when Russell King - ARM Linux admin wrote:
> On Mon, Jun 01, 2020 at 06:19:52PM +0200, Lukasz Stelmach wrote:
>> It was <2020-06-01 pon 15:55>, when Russell King - ARM Linux admin wrote:
>> > On Mon, Jun 01, 2020 at 04:27:52PM +0200, =C5=81ukasz Stelmach wrote:
>> >> Add DCSZ tag which holds dynamic memory (stack, bss, malloc pool)
>> >> requirements of the decompressor code.
>> >
>> > Why do we need to know the stack and BSS size, when the userspace
>> > kexec tool doesn't need to know this to perform the same function.
>>=20
>>=20
>> kexec-tools load zImage as low in DRAM as possible and rely on two
>> assumptions:
>>=20
>>     + the zImage will copy itself to make enough room for the kernel,
>>     + sizeof(zImage+mem) < sizeof(kernel+mem), which is true because
>>       of compression.
>>=20
>>        DRAM start
>>        + 0x8000
>>=20
>> zImage    |-----------|-----|-------|
>>             text+data   bss   stack=20
>>=20
>>                  text+data           bss=20=20=20
>> kernel    |---------------------|-------------------|
>>=20
>>=20
>> initrd                                              |-initrd-|-dtb-|
>
> This is actually incorrect, because the decompressor will self-
> relocate itself to avoid the area that it is going to decompress
> into.

I described the state right after kexec(8) invocation.

> So, while the decompressor runs, in the above situation it
> ends up as:
>
>
> ram    |------------------------------------------------------...
>                  text+data           bss=20=20=20
> kernel    |---------------------|-------------------|
> zImage                          |-----------|-----|-------|
>                                   text+data   bss   stack+malloc

And I am trying to achieve this state before the decompressor starts so
it won't need to copy itself during boot. The only exception is (as we
discussed under a different patch) when edata_size >=3D 128-eps MiB because
loading zImage above 128 MiB prevents it from properly detecting
physical memory. In such unlikely case my code behaves like kexec-tools
and loads zImage low. That is why I suggested that passing detailed
information about memory layout to the decompressor would help.

> Where "text+data" is actually smaller than the image size that
> was loaded - the part of the image that performs the relocation
> is discarded (the first chunk of code up to "restart" - 200
> bytes.)  The BSS is typically smaller than 200 bytes, so we've
> been able to get away without knowing the actual BSS size so
> far.
>
>
> ram    |--|-----------------------------------------|---------...
>        |<>| TEXT_OFFSET
> kernel    |---------------------|-------------------|
>           |<----edata_size----->|<-----bss_size---->|
>           |<---------------kernel_size------------->|
> zImage                          |-----------|-----|-------|
>                                 |<-------len------->| (initial)
> 				|<----------len------------>| (final)
>
> The "final" len value is what the decompressor prints as the "zImage
> requires" debugging value.
>
> Hence, the size that the decompressed kernel requires is kernel_size.
>
> The size that the decompressor requires is edata_size + len(final).
>
> Now, if you intend to load the kernel to ram + TEXT_OFFSET + edata_size
> then it isn't going to lose the first 200 bytes of code, so as you
> correctly point out, we need to know the BSS size.

Formal note: can we keep using terms zImage and kernel as separate,
where zImage is what is loaded with kexec and kernel is the decompressed
code loaded at TEXT_OFFSET. I believe, it will help us avoid mistakes.

>> >> +struct arm_zimage_tag_dc {
>> >> +	struct tag_header hdr;
>> >> +	union {
>> >> +#define ZIMAGE_TAG_DECOMP_SIZE ARM_ZIMAGE_MAGIC4
>> >> +		struct zimage_decomp_size {
>> >> +			__le32 bss_size;
>> >> +			__le32 stack_size;
>> >> +			__le32 malloc_size;
>> >> +		} decomp_size;
>
> You certainly don't need to know all this.  All you need to know is
> how much space the decompressor requires after the end of the image,
> encompassing the BSS size, stack size and malloc size, which is one
> value.

I agree. However, since we are not fighting here for every single byte,
I'd rather add them as separate values and make the tag, even if only
slightly, more future-proof.

Kind regards,
=2D-=20
=C5=81ukasz Stelmach
Samsung R&D Institute Poland
Samsung Electronics

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEXpuyqjq9kGEVr9UQsK4enJilgBAFAl7VZMIACgkQsK4enJil
gBBE6ggAmCX2V5lKQ4KXbFaOvSbxLjCzXxJrWedAUwBsVPrIewPmDaOEEn8oez4K
nBhyDSFVNTbZhmGMMAf108/z2466ffTdQu3vzY1AuuJMk4PSPuLDEnbuq0HQoVAS
tNemISFpAIsF8s1wqAqeOGznabyDh5mrFnnOMI5nv3s4PuUR8es5dUJSQQiXD9p8
a5qhixnQDLVc+k//jldAYjTmjr2ZU8c/m1OInGpQLcnb+e+nIK2FzKbjnAt7fsqw
jiproC69Kt2Dsl8lYzop7pLDPFog/Cq3Iq8Mhb7RNf8BuvyUuXlBq44zXRKkoiVu
4QYGtReBJKCdmVAVxrbgQ0imEHfRLg==
=E5A3
-----END PGP SIGNATURE-----
--=-=-=--


--===============1126998479321149667==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1126998479321149667==--

