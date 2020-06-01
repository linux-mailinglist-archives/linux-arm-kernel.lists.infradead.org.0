Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBE31EA7B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 18:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:MIME-Version:Message-ID:In-Reply-To:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ey1598vVtkp6yIOuw+c94aIpXqqOLS7eIEp/j8inVVU=; b=Rw/vNVhi6uzJxbDYf/wGkK7Kh
	m//MOHiRJixpUQHzM/ez+eNV5pGdEzb4/2+ATMjjZXNgnGxc6vrNEhTfJPfLKJkt7Ta5P2RUV7gFP
	LUComTPbnrFexPu1/oDs6S/xGi61H2QFO63rKg4uDM3LuWa8L7mUOZJ20TBB0un6ZxgYIE4x5cK4Z
	0JUTUrVJ4HCUolf7SzE/XXFEPtUg9tAWYoUQ/6BZ1JM8ATlb1vxequfanqIYCcb/C5hreyFlGSe7T
	8DrCS2nTdu3YjLkhsGgFvdUse8xMiGBOjJtFvHf5UDbqqaSTkF11fAiqPrqFYyNDCOQAztL2xHngi
	buWxDwdQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfnAg-00028I-3j; Mon, 01 Jun 2020 16:20:18 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfnAT-0000oM-SG
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 16:20:08 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200601162003euoutp01bf7db1697e1ce49281531ef356880b91~Ud_dJqprH2727227272euoutp011;
 Mon,  1 Jun 2020 16:20:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200601162003euoutp01bf7db1697e1ce49281531ef356880b91~Ud_dJqprH2727227272euoutp011
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591028403;
 bh=gfHhe7sE554AqY1F938KQM4+7qWR0GSVlRLq6/2nYbc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tx0tzIUPttzQb08ZetT1sa9uVuTh45P1ktYXhjQMqRhYp8rWKsJWnz6wg1hyjmTgH
 UCNdmtFhukHNcnuXtz3SjgsElKghJFMybgXa5ROb9BHdlGKWieNPg5x5QW05XNUoBK
 /N3fiwqdbeBr+r9HyWxwq4Dq63UMziVNJMEfkvA4=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200601162003eucas1p176c13ea6665e593ba598a75c9419ed47~Ud_cuw_0T1259912599eucas1p1a;
 Mon,  1 Jun 2020 16:20:03 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id E2.62.60679.3BA25DE5; Mon,  1
 Jun 2020 17:20:03 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200601162002eucas1p28eb08a42de6f313458e9391bd5976e90~Ud_cU8w4B0601506015eucas1p2F;
 Mon,  1 Jun 2020 16:20:02 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200601162002eusmtrp295ec51dabf4f361d88097ea087241b0b~Ud_cUNpdg1668916689eusmtrp2M;
 Mon,  1 Jun 2020 16:20:02 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-d2-5ed52ab37134
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B3.4A.08375.2BA25DE5; Mon,  1
 Jun 2020 17:20:02 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200601162002eusmtip2c9151a7c090c7cfe026c3007c81df5a0~Ud_cIA8iv2300323003eusmtip26;
 Mon,  1 Jun 2020 16:20:02 +0000 (GMT)
From: Lukasz Stelmach <l.stelmach@samsung.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 3/5] arm: decompressor: define a new zImage tag
Date: Mon, 01 Jun 2020 18:19:52 +0200
In-Reply-To: <20200601145502.GJ1551@shell.armlinux.org.uk> (Russell King's
 message of "Mon, 1 Jun 2020 15:55:02 +0100")
Message-ID: <dleftjwo4qsqqf.fsf%l.stelmach@samsung.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sf0yMcRzH973nued5Ls6eTvRZWdoJqSk/woOY33vYbPxjtElHz8p0V7tT
 ykaZH9PVkTC6MlHIpavuTlHXOk0q5aqlhmXpB6WUyB+Vkq7v2fz3+nw+78/78/l892UI2W+x
 B3NcdVJQqxRRcsqFLHk11rjc7NcauuJGHcMV3y4Uc+lGm4h7f65cxDWkKDlTd5uYaynLoriq
 mxWIK3j5keY6P70Tc/l/XiNuOG1KxE1UjpGc2XST2CLlW9qaCT4zqZnkJw19BJ9tiuVNhmSK
 b2+zUvyQ3U7z5txEPm14kOKvWAyIHzF57ZsV4hIcLkQdjxPUgZvDXCIbXnRSMaM+8drUB3QS
 +r1AixgG2CAwj6/RIhdGxuYhuNFrFeHgFwKLrhjhYARB92QHqUUS3PH6vrPwCEF78hSBg14E
 abonlMOXYgOgoOCgA93YDdCU6uuQEOwgAc2TkyKH0Vx2O1x8/H6GSXYxJA0YkYMlbALYPmYQ
 Dpay68DYmU87eB67Hix9HTTOu0JdRs/MQgSrhIzGbzMLAXuHgSupduemO+DpF7sY81zor7HQ
 mBfA1PO7Inx/IlxPX4t7UxGUZI06ezdCu32cwrwVaj/3Elg/B94NuuK5cyC95JYzLYXLl2RY
 7QPGq1aniwfo+vMQZh6qy3/S+Kl0CErvjovSkLf+v3P0/52jn7Yl2GVQWBaI0/7w8N4AgXkT
 GI3fyWwkNiB3IVajjBA0q1TCqQCNQqmJVUUEHItWmtD0N6z/U/PrGSqbOFqFWAbJZ0uZrreh
 MrEiTpOgrEI+005dRflNyINURasEuZt025v6UJk0XJFwWlBHH1HHRgmaKuTJkHJ36er7Xw/L
 2AjFSeGEIMQI6n9VESPxSEKM/mrHnUra0pq5ezRHfDjIC6olYWvP6/ushr26a+1bfdeYOf/F
 bhAz/8vFlKFD18Jqurbk7oy7UFw95ie17Qi2LvG+UHvGOL6/tyi8s2X4VumH+HS63H+Xytax
 01+7KHtPRc71HGJpYcWu4uYChaf3wh+uWd1hPRLfswdsgyEtEjmpiVSs9CPUGsVfw0Oxzo4D
 AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrEIsWRmVeSWpSXmKPExsVy+t/xe7qbtK7GGXw9rmGxccZ6VotJ6w4w
 Wdxs3M1kcaY712LT42usFpd3zWGzODR1L6PF2iN32S0ePrjBarH63ylGiw8T/jNZ/Nn/k8Vi
 86apzA68HpevXWT2mN1wkcXj76oXzB4LNpV6bFrVyeZx59oeNo93586xe2xeUu8x4cNbNo++
 LasYPT5vkgvgjtKzKcovLUlVyMgvLrFVija0MNIztLTQMzKx1DM0No+1MjJV0rezSUnNySxL
 LdK3S9DLOHPwIVvBD5WKrp6l7A2Mv2W6GDk5JARMJDafWsTYxcjFISSwlFHiUOsW5i5GDqCE
 lMTKuekQNcISf651sYHYQgJPGSV2304CKWET0JNYuzYCxBQRsJK40KMBMoVZ4CGzxKaLN1lA
 yoUFnCVaV95kgmi1lNgyazrYGBYBVYmG1+sYQWxOgUqJA3dnMoPYvALmEusermYHsUVB6l/c
 Z4eIC0qcnPkEbCazQLbE19XPmScwCsxCkpqFJDUL6CRmAU2J9bv0IcLaEssWvmaGsG0l1q17
 z7KAkXUVo0hqaXFuem6xoV5xYm5xaV66XnJ+7iZGYBxvO/Zz8w7GSxuDDzEKcDAq8fBuuH8l
 Tog1say4MvcQowrQmEcbVl9glGLJy89LVRLhdTp7Ok6INyWxsiq1KD++qDQntfgQoynQnxOZ
 pUST84GpJ68k3tDU0NzC0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA6NVzKab
 Wj426cdmtk9+zxf14uXNXZm2G4JN/c9FKPtw/gh0iNw8yXyBs0zTwqf5Jy8sc1JpFHJnkcub
 uP3kvRt3ZdbG+2i7LFp+NPybTWn9bRUf1bmCF70U10lOL/rOptIRE73L11jmlzSP+pmNMqHr
 uYs9tEPrrz2xFEvs7yp+c+XftfaH35VYijMSDbWYi4oTAdTubzIFAwAA
X-CMS-MailID: 20200601162002eucas1p28eb08a42de6f313458e9391bd5976e90
X-Msg-Generator: CA
X-RootMTR: 20200601162002eucas1p28eb08a42de6f313458e9391bd5976e90
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200601162002eucas1p28eb08a42de6f313458e9391bd5976e90
References: <20200601145502.GJ1551@shell.armlinux.org.uk>
 <CGME20200601162002eucas1p28eb08a42de6f313458e9391bd5976e90@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_092006_125425_183A9D0D 
X-CRM114-Status: GOOD (  20.07  )
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
Content-Type: multipart/mixed; boundary="===============7033243559337853379=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7033243559337853379==
Content-Type: multipart/signed; boundary="=-=-="; micalg="pgp-sha256";
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It was <2020-06-01 pon 15:55>, when Russell King - ARM Linux admin wrote:
> On Mon, Jun 01, 2020 at 04:27:52PM +0200, =C5=81ukasz Stelmach wrote:
>> Add DCSZ tag which holds dynamic memory (stack, bss, malloc pool)
>> requirements of the decompressor code.
>
> Why do we need to know the stack and BSS size, when the userspace
> kexec tool doesn't need to know this to perform the same function.


kexec-tools load zImage as low in DRAM as possible and rely on two
assumptions:

    + the zImage will copy itself to make enough room for the kernel,
    + sizeof(zImage+mem) < sizeof(kernel+mem), which is true because
      of compression.

       DRAM start
       + 0x8000

zImage    |-----------|-----|-------|
            text+data   bss   stack=20

                 text+data           bss=20=20=20
kernel    |---------------------|-------------------|


initrd                                              |-initrd-|-dtb-|


My code on the other hand tries to load the zImage high enough to make
room for the kernel without copying the zImage.


            text+data           bss=20=20=20
kernel    |-----------|-------------------|

zImage                |-----------|-----|-------|
                        text+data   bss   stack=20

initrd                                          |-initrd-|-dtb-|


In such case the second assumption would be

    sizeof(zImage+mem) < sizeof(kernel bss)

and I can't tell for sure it would always be true. That is why we need
detailed information about decompressor memory requirements.


>>=20
>> Signed-off-by: =C5=81ukasz Stelmach <l.stelmach@samsung.com>
>> ---
>>  arch/arm/boot/compressed/vmlinux.lds.S |  9 ++++++++-
>>  arch/arm/include/asm/image.h           | 13 +++++++++++++
>>  2 files changed, 21 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/arch/arm/boot/compressed/vmlinux.lds.S b/arch/arm/boot/comp=
ressed/vmlinux.lds.S
>> index 308e9cd6a897..dcfdb3209c90 100644
>> --- a/arch/arm/boot/compressed/vmlinux.lds.S
>> +++ b/arch/arm/boot/compressed/vmlinux.lds.S
>> @@ -39,6 +39,11 @@ SECTIONS
>>      LONG(ARM_ZIMAGE_MAGIC3)
>>      LONG(ZIMAGE_MAGIC(__piggy_size_addr - _start))
>>      LONG(ZIMAGE_MAGIC(_kernel_bss_size))
>> +    LONG(ZIMAGE_MAGIC(5))
>> +    LONG(ARM_ZIMAGE_MAGIC4)
>> +    LONG(ZIMAGE_MAGIC(_end - __bss_start))
>> +    LONG(ZIMAGE_MAGIC(_stack_end - _stack_start))
>> +    LONG(ZIMAGE_MAGIC(_malloc_size))
>>      LONG(0)
>>      _table_end =3D .;
>>    }
>> @@ -108,10 +113,12 @@ SECTIONS
>>    . =3D BSS_START;
>>    __bss_start =3D .;
>>    .bss			: { *(.bss) }
>> +  . =3D ALIGN(8);		/* the stack must be 64-bit aligned and adjoin bss */
>>    _end =3D .;
>>=20=20
>> -  . =3D ALIGN(8);		/* the stack must be 64-bit aligned */
>> +  _stack_start =3D .;
>>    .stack		: { *(.stack) }
>> +  _stack_end =3D .;
>>=20=20
>>    PROVIDE(__pecoff_data_size =3D ALIGN(512) - ADDR(.data));
>>    PROVIDE(__pecoff_end =3D ALIGN(512));
>> diff --git a/arch/arm/include/asm/image.h b/arch/arm/include/asm/image.h
>> index d5c18a0f6a34..624438740f23 100644
>> --- a/arch/arm/include/asm/image.h
>> +++ b/arch/arm/include/asm/image.h
>> @@ -15,6 +15,7 @@
>>  #define ARM_ZIMAGE_MAGIC1 ZIMAGE_MAGIC(0x016f2818)
>>  #define ARM_ZIMAGE_MAGIC2 (0x45454545)
>>  #define ARM_ZIMAGE_MAGIC3 ZIMAGE_MAGIC(0x5a534c4b)
>> +#define ARM_ZIMAGE_MAGIC4 ZIMAGE_MAGIC(0x5a534344)
>>=20=20
>>  #ifndef __ASSEMBLY__
>>=20=20
>> @@ -43,6 +44,18 @@ struct arm_zimage_tag {
>>  	} u;
>>  };
>>=20=20
>> +struct arm_zimage_tag_dc {
>> +	struct tag_header hdr;
>> +	union {
>> +#define ZIMAGE_TAG_DECOMP_SIZE ARM_ZIMAGE_MAGIC4
>> +		struct zimage_decomp_size {
>> +			__le32 bss_size;
>> +			__le32 stack_size;
>> +			__le32 malloc_size;
>> +		} decomp_size;
>> +	} u;
>> +};
>> +
>>  #endif /* __ASSEMBLY__ */
>>=20=20
>>  #endif /* __ASM_IMAGE_H */
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

iQEzBAEBCAAdFiEEXpuyqjq9kGEVr9UQsK4enJilgBAFAl7VKqgACgkQsK4enJil
gBC6Igf/eRQY996iI8TXKT8aGHOgnk/cPHBaelXmj8GiDcpaT/G5eJU1+FSZ+b6+
vNj1zicqrNsPtzGLoswKr0U+Srv+Ho2I2tY0up1/HQTXhGDaJUaPNHmM/vdXsz+V
GXxwNIgVPwUoTuuomu19Rrw7VjkT9kPOCHvEST9o2moH5F0mKWz2MYQ9rCAp9kFy
AtTvxFOHwrm9akmmDYV8s09dSINuQZKuVWP+1ZYwSOfTeYs39YAWSoMr9mAmRrdj
7IZt6DMM1/LtMJ9sNtUffUpL/qZbZGh3+mqn5clKKMb+Y72W0iABd9d3r44NmSi9
uK3uxfiOa6N7l42rx7IRKtdS+bwA1A==
=bMg8
-----END PGP SIGNATURE-----
--=-=-=--


--===============7033243559337853379==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7033243559337853379==--

