Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E15871EADD2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 20:48:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:MIME-Version:Message-ID:In-Reply-To:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OsrEzsJUbY2twH39R27Q2xKn3E9FJDXNcSrozkkwWF4=; b=mj82JevNskE/pjc87eF86FANE
	LcWLIjJdye9GLU1SlXIwGanMmsLpp6Eu+rQXeWV1AP35e7LKDGAnipV+6YJ6z9/Iv7oxiox8FFbEW
	gph9Mr7wCeqNjHrNSsaAZoocMUUQKaWVMy4YktuIp6sZ0y0C926VaD7qQKy8tANUhCfbahUfotQhe
	IvBLb8fnA4U53SIvXFau0LVxMqtNVYZ9lSGSn5uJDbDSBHP53DxCNHFDu+P9xI2fqXmUMWSiENE+F
	e6d0GygSP43vrECr7zMIErWncbd5beqmEpV650+z9YW0E84MZ+8IUBhsHxtJZpaLqaI0M/s6g+fM9
	3klOgfIug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfpUM-0000P5-QJ; Mon, 01 Jun 2020 18:48:46 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfpU8-0000Nh-S5
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 18:48:35 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200601184830euoutp025167c6e95e3e7413e411766fd18a0035~UgAEBIlu10040200402euoutp02o;
 Mon,  1 Jun 2020 18:48:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200601184830euoutp025167c6e95e3e7413e411766fd18a0035~UgAEBIlu10040200402euoutp02o
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591037310;
 bh=djzAE2/xbEM+ceAkQGokFzbz7ez/4pW2glcwFrfv+Js=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fojfw8m5Kr81TzLwCU+/9gQoaAAvxA/mEzwwnRsJ2k5mQRrM7t71bK+kSdW3n8mp+
 8ILhJ8PGGJfbT/45k+LGgijF7jxyhT9agmhfl7ZqKj0m0bPIC6xW/2NKsmujEzeQzg
 3pO9oMegeGHrM/COlgxffH4BkJ50DOPzrRT/c+hM=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200601184829eucas1p1ebedb331b3ee72910012b9e63a17bd2d~UgADqJuGN2850328503eucas1p1x;
 Mon,  1 Jun 2020 18:48:29 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 1A.C6.60679.D7D45DE5; Mon,  1
 Jun 2020 19:48:29 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200601184829eucas1p1b06bfc130083f6248d624febed1de9fc~UgADOe3WX0790707907eucas1p1F;
 Mon,  1 Jun 2020 18:48:29 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200601184829eusmtrp1441162fe910654ec3db47651688e7660~UgADNxG2z2867828678eusmtrp15;
 Mon,  1 Jun 2020 18:48:29 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-e1-5ed54d7dc810
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 6F.DD.08375.D7D45DE5; Mon,  1
 Jun 2020 19:48:29 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200601184829eusmtip259cc4570b2f1d54b4d0ecd38e4b3e25a~UgADCzgNb1071510715eusmtip24;
 Mon,  1 Jun 2020 18:48:29 +0000 (GMT)
From: Lukasz Stelmach <l.stelmach@samsung.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 5/5] arm: kexec_file: load zImage or uImage, initrd and dtb
Date: Mon, 01 Jun 2020 20:48:08 +0200
In-Reply-To: <20200601150745.GL1551@shell.armlinux.org.uk> (Russell King's
 message of "Mon, 1 Jun 2020 16:07:45 +0100")
Message-ID: <dleftjeeqysjvb.fsf%l.stelmach@samsung.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sf0yMcRzH973nea6ndDxdrM9izQ5ToUTLg/yomR4zmzRWUVw8q+iuc9dR
 jPJjVDpaCYVVRrVaF08n1o/hRlT0YyXdlvUL/eDKXJNaP/R4ztZ/r8/n8/68P5/Pd18Sk44T
 zmS0Mo5VK+UxMrEdXlE73rjm3J6P4WvrClzpJ3fKCDpD/1JEmy5Uiej31xQ019dO0K2V98S0
 MasG0aWvP9vQPd0dBF0yXY/on+kzInryxThOl3NZ2HYJ09regjF3k1pwZqp4AGPyOC3DFaeI
 mc72ajEz3Nhow5Q/TGTSf5rFzHVDMWIsnMveeaF2vsfYmOhTrNpz6xG7qLFntbiKOxt/4VEf
 noTqj6YiWxIobzA9zRPxLKWKENyv35mK7GZ5FEFfRS4uBBYEw52DNv87uOQBa6EQgfHVkDXo
 R/DbPE2kIpIUUx5QWhrM40JqEzSnufISjDJj0DI1JeLzjlQgfMsP4hGnVkD3xDbe3pZKgKaL
 JoxnCbUB2r7q/o1dRG0Ew0CXjZB3gLrsLzjPGKWA7KYfiLcHKp+ErLp3ImHPHfAmucG6syMM
 vTVYeQk0ZKbh/FygEiEzw0foTUNQce8PLmg2Q2fjhFhgPzAYaghBPx86zA7C3PmQUXEbE9IS
 SL4iFdTLQX+j2uriDLqhIiQwA3VfU60PpUNQ8qYeS0dLc+ackzPnnJxZW4xyg7JKTyG9Cgry
 v2MCbwG9fgTPQ0QxcmK1GkUkq1mnZE97aOQKjVYZ6XE0VsGh2U/YMP129DmqnIwwIopEMnsJ
 2dsWLiXkpzQJCiNaPuvU+7ikGTnjylglK1so8f/QEC6VHJMnnGHVsYfV2hhWY0SLSVzmJFn/
 YDBMSkXK49gTLKti1f+rItLWOQl5hZha+gOM5wP9FnQ9DwuO9it30AX2t6kuc8MHqnQB+00R
 t8Oyt+gh9Ja4KsX868aUdvLi2cKVu0Jqgw6O5Qa6XF0bM0IUWE4eqrZMLDsXFRnr1trkevM7
 PmTvqrr0y7dbtc9/90jE4I8ed3eLcvWS+LiZ7Y5duZ+ekT7eiT3Z5HEZromSe7ljao38L9PV
 50WMAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrIIsWRmVeSWpSXmKPExsVy+t/xe7q1vlfjDG4u5bfYOGM9q8WkdQeY
 LG427mayONOda7Hp8TVWi8u75rBZHJq6l9Fi7ZG77BYPH9xgtVj97xSjxYcJ/5ks/uz/yWKx
 edNUZgdej8vXLjJ7zG64yOLxd9ULZo8Fm0o9Nq3qZPO4c20Pm8e7c+fYPTYvqfeY8OEtm0ff
 llWMHp83yQVwR+nZFOWXlqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJal
 FunbJehlfN9+jKVgU3VF49LHLA2Mp5K7GDk5JARMJDZ1vGDpYuTiEBJYyigxsXknYxcjB1BC
 SmLl3HSIGmGJP9e62EBsIYGnjBJL/zuBlLAJ6EmsXRsBYooIWElc6NEAmcIs8JBZYtPFmywg
 5cIC/hIz5y9hhWi1lLgwaSEbSD2LgKrEg1/2IGFOgUqJ8003mUFsXgFziStPe9lBbFGg8i0v
 7rNDxAUlTs58AjaSWSBb4uvq58wTGAVmIUnNQpKaBbSBWUBTYv0ufYiwtsSyha+ZIWxbiXXr
 3rMsYGRdxSiSWlqcm55bbKhXnJhbXJqXrpecn7uJERjF24793LyD8dLG4EOMAhyMSjy8G+5f
 iRNiTSwrrsw9xKgCNObRhtUXGKVY8vLzUpVEeJ3Ono4T4k1JrKxKLcqPLyrNSS0+xGgK9OZE
 ZinR5Hxg4skriTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cDI7h1W
 peBt6zD3e/k/xg/ODbOmHjwhfubCN7vKBvncozIXbj+7ly+5yIGLb3FilqLP9cru94+NWY32
 mnCvs9vkzB1Vovdo7pHVe21Su/fqrlzBevfxpAZBl9lJe7/vYD8TqvXe3jt934swr402ebfb
 ssLWmJgHJM9cvnyb3143/aUKf99wVPkqsRRnJBpqMRcVJwIANCnrKAQDAAA=
X-CMS-MailID: 20200601184829eucas1p1b06bfc130083f6248d624febed1de9fc
X-Msg-Generator: CA
X-RootMTR: 20200601184829eucas1p1b06bfc130083f6248d624febed1de9fc
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200601184829eucas1p1b06bfc130083f6248d624febed1de9fc
References: <20200601150745.GL1551@shell.armlinux.org.uk>
 <CGME20200601184829eucas1p1b06bfc130083f6248d624febed1de9fc@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_114833_252166_2277968C 
X-CRM114-Status: GOOD (  26.52  )
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
Content-Type: multipart/mixed; boundary="===============0877909220617928670=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============0877909220617928670==
Content-Type: multipart/signed; boundary="=-=-="; micalg="pgp-sha256";
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It was <2020-06-01 pon 16:07>, when Russell King - ARM Linux admin wrote:
> On Mon, Jun 01, 2020 at 04:27:54PM +0200, =C5=81ukasz Stelmach wrote:
>> This is kexec_file_load implementation for ARM. It loads zImage and
>> initrd from file descripters and resuses DTB.
>>=20
>> Most code is derived from arm64 kexec_file_load implementation
>> and from kexec-tools.
>
> Please make the uImage loader able to be configured out of the
> kernel; it's a legacy image format now, and some of us just don't
> use it anymore.  That way, those who wish to have it can, and
> those who wish not to can have a smaller kernel.

The difference in size of arch/arm/boot/Image is 160 bytes, but
OK. Done.

>> Cc: AKASHI Takahiro <takahiro.akashi@linaro.org>
>> Signed-off-by: =C5=81ukasz Stelmach <l.stelmach@samsung.com>
>> ---
>>  arch/arm/Kconfig                     |  15 ++
>>  arch/arm/include/asm/image.h         |  26 ++++
>>  arch/arm/include/asm/kexec.h         |  14 ++
>>  arch/arm/kernel/Makefile             |   5 +-
>>  arch/arm/kernel/kexec_uimage.c       |  80 ++++++++++
>>  arch/arm/kernel/kexec_zimage.c       | 199 +++++++++++++++++++++++++
>>  arch/arm/kernel/machine_kexec.c      |  11 +-
>>  arch/arm/kernel/machine_kexec_file.c | 209 +++++++++++++++++++++++++++
>>  8 files changed, 554 insertions(+), 5 deletions(-)
>>  create mode 100644 arch/arm/kernel/kexec_uimage.c
>>  create mode 100644 arch/arm/kernel/kexec_zimage.c
>>  create mode 100644 arch/arm/kernel/machine_kexec_file.c
>>=20
>> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
>> index c77c93c485a0..6adb849cb304 100644
>> --- a/arch/arm/Kconfig
>> +++ b/arch/arm/Kconfig
>> @@ -1917,6 +1917,21 @@ config KEXEC
>>  	  is properly shutdown, so do not be surprised if this code does not
>>  	  initially work for you.
>>=20=20
>> +config KEXEC_FILE
>> +	bool "Kexec file based system call (EXPERIMENTAL)"
>> +	depends on (!SMP || PM_SLEEP_SMP)
>> +	depends on USE_OF
>> +	select KEXEC_CORE
>> +	select CRC32
>> +	help
>> +	  This is new version of kexec system call. This system call is
>> +	  file based and takes file descriptors as system call argument
>> +	  for kernel and initramfs as opposed to list of segments as
>> +	  accepted by previous system call.
>> +
>> +	  The kernel to be loaded MUST support Flattened Device Tree
>> +	  (selected with CONFIG_USE_OF).
>> +
>>  config ATAGS_PROC
>>  	bool "Export atags in procfs"
>>  	depends on ATAGS && KEXEC
>> diff --git a/arch/arm/include/asm/image.h b/arch/arm/include/asm/image.h
>> index 624438740f23..95f23837b04f 100644
>> --- a/arch/arm/include/asm/image.h
>> +++ b/arch/arm/include/asm/image.h
>> @@ -8,8 +8,13 @@
>>  			 (((x) >>  8) & 0x0000ff00) |  \
>>  			 (((x) <<  8) & 0x00ff0000) |  \
>>  			 (((x) << 24) & 0xff000000))
>> +#define UIMAGE_MAGIC(x) (x)
>>  #else
>>  #define ZIMAGE_MAGIC(x) (x)
>> +#define UIMAGE_MAGIC(x) ((((x) >> 24) & 0x000000ff) | \
>> +			 (((x) >>  8) & 0x0000ff00) |  \
>> +			 (((x) <<  8) & 0x00ff0000) |  \
>> +			 (((x) << 24) & 0xff000000))
>>  #endif
>>=20=20
>>  #define ARM_ZIMAGE_MAGIC1 ZIMAGE_MAGIC(0x016f2818)
>> @@ -17,6 +22,12 @@
>>  #define ARM_ZIMAGE_MAGIC3 ZIMAGE_MAGIC(0x5a534c4b)
>>  #define ARM_ZIMAGE_MAGIC4 ZIMAGE_MAGIC(0x5a534344)
>>=20=20
>> +#define ARM_UIMAGE_MAGIC UIMAGE_MAGIC(0x27051956)
>> +#define ARM_UIMAGE_NAME_LEN		32
>> +#define ARM_UIMAGE_TYPE_KERNEL		2
>> +#define ARM_UIMAGE_TYPE_KERNEL_NOLOAD	14
>> +#define ARM_UIMAGE_ARCH_ARM		2
>> +
>>  #ifndef __ASSEMBLY__
>>=20=20
>>  #include <linux/types.h>
>> @@ -33,6 +44,21 @@ struct arm_zimage_header {
>>  	__le32 extension_tag_offset;
>>  };
>>=20=20
>> +struct arm_uimage_header {
>> +	__be32 magic;
>> +	__be32 hdr_crc;
>> +	__be32 time;
>> +	__be32 size;
>> +	__be32 load;
>> +	__be32 entry;
>> +	__be32 crc;
>> +	__u8   os;
>> +	__u8   arch;
>> +	__u8   type;
>> +	__u8   comp;
>> +	__u8   name[ARM_UIMAGE_NAME_LEN];
>> +};
>> +
>>  struct arm_zimage_tag {
>>  	struct tag_header hdr;
>>  	union {
>> diff --git a/arch/arm/include/asm/kexec.h b/arch/arm/include/asm/kexec.h
>> index 22751b5b5735..fda35afa7195 100644
>> --- a/arch/arm/include/asm/kexec.h
>> +++ b/arch/arm/include/asm/kexec.h
>> @@ -83,6 +83,20 @@ static inline struct page *boot_pfn_to_page(unsigned =
long boot_pfn)
>>  }
>>  #define boot_pfn_to_page boot_pfn_to_page
>>=20=20
>> +#ifdef CONFIG_KEXEC_FILE
>> +
>> +extern const struct kexec_file_ops kexec_zimage_ops;
>> +extern const struct kexec_file_ops kexec_uimage_ops;
>> +
>> +struct kimage;
>> +
>> +extern int load_other_segments(struct kimage *image,
>> +		unsigned long kernel_load_addr, unsigned long kernel_size,
>> +		char *initrd, unsigned long initrd_len,
>> +		unsigned long initrd_offset, char *cmdline);
>> +
>> +#endif /* CONFIG_KEXEC_FILE */
>> +
>>  #endif /* __ASSEMBLY__ */
>>=20=20
>>  #endif /* CONFIG_KEXEC */
>> diff --git a/arch/arm/kernel/Makefile b/arch/arm/kernel/Makefile
>> index 89e5d864e923..466c683bb551 100644
>> --- a/arch/arm/kernel/Makefile
>> +++ b/arch/arm/kernel/Makefile
>> @@ -3,6 +3,7 @@
>>  # Makefile for the linux kernel.
>>  #
>>=20=20
>> +CFLAGS_kexec_zimage.o :=3D -DTEXT_OFFSET=3D$(TEXT_OFFSET)
>>  CPPFLAGS_vmlinux.lds :=3D -DTEXT_OFFSET=3D$(TEXT_OFFSET)
>>  AFLAGS_head.o        :=3D -DTEXT_OFFSET=3D$(TEXT_OFFSET)
>>=20=20
>> @@ -56,7 +57,9 @@ obj-$(CONFIG_FUNCTION_TRACER)	+=3D entry-ftrace.o
>>  obj-$(CONFIG_DYNAMIC_FTRACE)	+=3D ftrace.o insn.o patch.o
>>  obj-$(CONFIG_FUNCTION_GRAPH_TRACER)	+=3D ftrace.o insn.o patch.o
>>  obj-$(CONFIG_JUMP_LABEL)	+=3D jump_label.o insn.o patch.o
>> -obj-$(CONFIG_KEXEC)		+=3D machine_kexec.o relocate_kernel.o
>> +obj-$(CONFIG_KEXEC_CORE)	+=3D machine_kexec.o relocate_kernel.o
>> +obj-$(CONFIG_KEXEC_FILE)	+=3D machine_kexec_file.o kexec_zimage.o	\
>> +				   kexec_uimage.o
>>  # Main staffs in KPROBES are in arch/arm/probes/ .
>>  obj-$(CONFIG_KPROBES)		+=3D patch.o insn.o
>>  obj-$(CONFIG_OABI_COMPAT)	+=3D sys_oabi-compat.o
>> diff --git a/arch/arm/kernel/kexec_uimage.c b/arch/arm/kernel/kexec_uima=
ge.c
>> new file mode 100644
>> index 000000000000..47033574e24e
>> --- /dev/null
>> +++ b/arch/arm/kernel/kexec_uimage.c
>> @@ -0,0 +1,80 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Kexec uImage loader
>> + *
>> + * Copyright (C) 2020 Samsung Electronics
>> + * Author: =C5=81ukasz Stelmach <l.stelmach@samsung.com>
>> + */
>> +
>> +#define pr_fmt(fmt)	"kexec_file(uImage): " fmt
>> +
>> +#include <asm/image.h>
>> +#include <linux/crc32.h>
>> +#include <linux/err.h>
>> +#include <linux/kexec.h>
>> +
>> +#define crc32_ones(crc, buf, len) \
>> +	(crc32(crc ^ 0xffffffff, buf, len) ^ 0xffffffff)
>> +
>> +static int uimage_probe(const char *uimage_buf, unsigned long uimage_le=
n)
>> +{
>> +	const struct arm_uimage_header *h =3D
>> +		(struct arm_uimage_header *) uimage_buf;
>> +	struct arm_uimage_header uhdr;
>> +	unsigned long zoff =3D sizeof(struct arm_uimage_header);
>> +	uint32_t crc;
>> +
>> +	if (h->magic !=3D ARM_UIMAGE_MAGIC)
>> +		return -EINVAL;
>> +
>> +	if (h->type !=3D ARM_UIMAGE_TYPE_KERNEL &&
>> +	    h->type !=3D ARM_UIMAGE_TYPE_KERNEL_NOLOAD){
>> +		pr_debug("Invalid image type: %d\n", h->type);
>> +		return -EINVAL;
>> +	}
>> +
>> +	if (h->arch !=3D ARM_UIMAGE_ARCH_ARM) {
>> +		pr_debug("Invalidy image arch: %d\n", h->arch);
>> +		return -EINVAL;
>> +	}
>> +
>> +	memcpy((char *)&uhdr, h, sizeof(uhdr));
>> +	crc =3D be32_to_cpu(uhdr.hdr_crc);
>> +	uhdr.hdr_crc =3D 0;
>> +
>> +	if (crc32_ones(0, (char *)&uhdr, sizeof(uhdr)) !=3D crc) {
>> +		pr_debug("Corrupt header, CRC do not match\n");
>> +		return -EINVAL;
>> +	}
>> +
>> +	crc =3D be32_to_cpu(uhdr.crc);
>> +	if (crc32_ones(0, uimage_buf + zoff, uimage_len - zoff) !=3D crc) {
>> +		pr_debug("Corrupt zImage, CRC do not match\n");
>> +		return -EINVAL;
>> +	}
>> +
>> +	return kexec_zimage_ops.probe(uimage_buf + zoff,
>> +				      uimage_len - zoff);
>> +}
>> +
>> +static void *uimage_load(struct kimage *image,
>> +				char *uimage, unsigned long uimage_len,
>> +				char *initrd, unsigned long initrd_len,
>> +				char *cmdline, unsigned long cmdline_len)
>> +{
>> +	const struct arm_uimage_header *h =3D
>> +		(struct arm_uimage_header *) uimage;
>> +	unsigned long zimage_offset =3D sizeof(struct arm_uimage_header);
>> +
>> +	pr_debug("Loading uImage");
>> +	return kexec_zimage_ops.load(image,
>> +				     uimage + zimage_offset,
>> +				     uimage_len - zimage_offset,
>> +				     initrd, initrd_len,
>> +				     cmdline, cmdline_len);
>> +}
>> +
>> +const struct kexec_file_ops kexec_uimage_ops =3D {
>> +	.probe =3D uimage_probe,
>> +	.load =3D uimage_load,
>> +};
>> diff --git a/arch/arm/kernel/kexec_zimage.c b/arch/arm/kernel/kexec_zima=
ge.c
>> new file mode 100644
>> index 000000000000..d09795fc9072
>> --- /dev/null
>> +++ b/arch/arm/kernel/kexec_zimage.c
>> @@ -0,0 +1,199 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Kexec zImage loader
>> + *
>> + * Copyright (C) 2020 Samsung Electronics
>> + * Author: =C5=81ukasz Stelmach <l.stelmach@samsung.com>
>
> Please credit me as part author of this - you have taken some of my
> code from the userspace kexec tool (such as the contents of
> find_extension_tag()) and copied it in here, so this is not all your
> own work.

Done.

>> + */
>> +
>> +#define pr_fmt(fmt)	"kexec_file(zImage): " fmt
>> +
>> +#include <asm/image.h>
>> +#include <asm/unaligned.h>
>> +#include <linux/err.h>
>> +#include <linux/kexec.h>
>> +#include <linux/memblock.h>
>> +
>> +#define byte_size(t)    ((t)->hdr.size << 2)
>> +
>> +static const void *find_extension_tag(const char *buf,
>> +						       unsigned long len,
>> +						       uint32_t tag_id)
>> +{
>> +	const struct arm_zimage_header *h =3D (const struct arm_zimage_header =
*)buf;
>> +	const struct arm_zimage_tag *tag;
>> +	uint32_t offset, size;
>> +	uint32_t max =3D len - sizeof(struct tag_header);
>> +
>> +	if (len < sizeof(*h) ||
>> +	    h->magic !=3D ARM_ZIMAGE_MAGIC1 ||
>> +	    h->magic2 !=3D ARM_ZIMAGE_MAGIC2)
>> +		return NULL;
>> +
>> +	for (offset =3D h->extension_tag_offset;
>> +	     (tag =3D (void *)(buf + offset)) !=3D NULL &&
>> +		     offset < max &&
>> +		     (size =3D le32_to_cpu(byte_size(tag))) !=3D 0 &&
>> +		     offset + size < len;
>> +	     offset +=3D size) {
>> +		pr_debug("  offset 0x%08x tag 0x%08x size %u\n",
>> +			  offset, le32_to_cpu(tag->hdr.tag), size);
>> +		if (tag->hdr.tag =3D=3D tag_id)
>> +			return tag;
>> +	}
>> +
>> +	return NULL;
>> +}
>> +
>> +static int zimage_probe(const char *kernel_buf, unsigned long kernel_le=
n)
>> +{
>> +	const struct arm_zimage_header *h =3D
>> +		(struct arm_zimage_header *)(kernel_buf);
>> +
>> +	if (!h || (kernel_len < sizeof(*h)))
>> +		return -EINVAL;
>> +
>> +	if ((h->magic !=3D ARM_ZIMAGE_MAGIC1) ||
>> +	    (h->magic2 !=3D ARM_ZIMAGE_MAGIC2))
>> +		return -EINVAL;
>> +
>> +	return 0;
>> +}
>> +
>> +
>> +#if defined(DEBUG)
>> +#define debug_offsets() ({			\
>> +	pr_debug("Image offsets:\n");		\
>> +	pr_debug("  kernel 0x%08lx 0x%08lx\n", kernel_offset, kernel_len); \
>> +	pr_debug("  zimage 0x%08lx 0x%08lx\n", zimage_offset, zimage_len); \
>> +	pr_debug("  initrd 0x%08lx 0x%08lx\n", initrd_offset, initrd_len); \
>> +})
>> +#else
>> +#define debug_offsets()
>> +#endif
>> +
>> +static void *zimage_load(struct kimage *image,
>> +				char *zimage, unsigned long zimage_len,
>> +				char *initrd, unsigned long initrd_len,
>> +				char *cmdline, unsigned long cmdline_len)
>> +{
>> +	struct arm_zimage_header *h;
>> +	struct kexec_buf kbuf;
>> +	struct kexec_segment *zimage_segment;
>> +	const struct arm_zimage_tag *klsz_tag;
>> +	const struct arm_zimage_tag_dc *dcsz_tag;
>> +	int ret =3D -EINVAL;
>> +
>> +	unsigned long zimage_mem =3D 0x20000; /* malloc 64kB + stack 4 kB + so=
me bss */
>> +	unsigned long kernel_len =3D zimage_len * 4; /* 4:1 compression */
>
> This has been proven wrong.

5:1? The comment and the code in kexec-tools are inconsisten in this
regard. The comment says 4:1, but the code multiplies by 5. Your
recommendation? This value is used as a fallback anyway in a very
unlikely case, when tags are missing (see below).

>> +	unsigned long kernel_offset =3D memblock_start_of_DRAM() +
>> +		ALIGN(TEXT_OFFSET, PAGE_SIZE);
>
> TEXT_OFFSET is actually a property of the loaded kernel, not of the
> currently running kernel.

Indeed.

> I have a patch to add that into the zImage tag.

I am afraid, I haven't seen it before. Where can I find it?

>> +	unsigned long zimage_offset =3D kernel_offset +
>> +		ALIGN(kernel_len, PAGE_SIZE);
>> +	unsigned long initrd_offset =3D zimage_offset +
>> +		ALIGN(zimage_len + zimage_mem, PAGE_SIZE);
>
> Since kernel_len is wrong, these will be wrong... please only fall
> back to this if you don't find the extension tag - in other words,
> declare the variables here, but don't initialise them, set them
> lower down in the file if we fail to find the extension tag.

That is how it works now. This is the structure I have taken from
kexec-tools: initialize and change if additional information is
available. If the tags are not available use these values as a fallback.

>> +
>> +	if (image->type =3D=3D KEXEC_TYPE_CRASH) {
>> +		kernel_offset +=3D crashk_res.start;
>> +		zimage_offset +=3D crashk_res.start;
>> +		initrd_offset +=3D crashk_res.start;
>> +	}
>> +	debug_offsets();
>> +
>> +	h =3D (struct arm_zimage_header *)zimage;
>> +
>> +	klsz_tag =3D find_extension_tag(zimage, zimage_len, ZIMAGE_TAG_KRNL_SI=
ZE);
>> +	if (klsz_tag) {
>> +		uint32_t *p =3D (void *)zimage +
>> +			le32_to_cpu(klsz_tag->u.krnl_size.size_ptr);
>> +		uint32_t edata_size =3D le32_to_cpu(get_unaligned(p));
>> +		uint32_t bss_size =3D le32_to_cpu(klsz_tag->u.krnl_size.bss_size);
>> +
>> +		kernel_len =3D edata_size + bss_size;
>> +
>> +		pr_debug("Decompressed kernel sizes:\n");
>> +		pr_debug(" text+data 0x%08lx bss 0x%08lx total 0x%08lx\n",
>> +			 (unsigned long)edata_size,
>> +			 (unsigned long)bss_size,
>> +			 (unsigned long)kernel_len);
>> +
>> +		zimage_offset =3D kernel_offset + ALIGN(edata_size, PAGE_SIZE);
>> +		initrd_offset =3D zimage_offset +
>> +			max(ALIGN(zimage_len + 0x20000, PAGE_SIZE),
>> +			    ALIGN((unsigned long)bss_size, PAGE_SIZE));
>> +		debug_offsets();
>
> This looks incorrect to me.  Please see the kexec tool - what its doing
> in its corresponding section that you copied some of this code from is
> carefully thought out and can't be simplified.  Ergo, I think this is
> wrong.

As I explained in <dleftjwo4qsqqf.fsf%l.stelmach@samsung.com> my
approach is slightly different. I am trying to avoid copying zImage by
putting it hight enough in the first place.


Kind regards,
=2D-=20
=C5=81ukasz Stelmach
Samsung R&D Institute Poland
Samsung Electronics

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEXpuyqjq9kGEVr9UQsK4enJilgBAFAl7VTWgACgkQsK4enJil
gBCi4wgAkNALpuvOjNGtyx0HuhUZPWKF3xyDprCFZ77fqre9sPhT3nxsUqEyJPqf
WAolmFxjKHMKkSQDw3AITLVwLk4MyKbm/Ty5YsFbC0o4dac2XjVDEEgM9ZAdlWYm
SZ1jRrBQB1tY/ILA3byX3W74mVDyJuwWwKhc4J5qmFI5H5ByPXnHe+d+IYsgCaGP
8tYoyRVK4Hrdr+jgMSpEIepYsebLAP7x8nVOQO8Ra/wN6rigzz9sh6EVs5vqM/nE
DdfVEpGacrgfFHVk8c1HbXeK58w6UrQWczphdHt06c5GZ2ZMlJCGU982J775lcWZ
RuPe3gXzDzJIz7FRB6nsDc9K0nUf5A==
=CTJl
-----END PGP SIGNATURE-----
--=-=-=--


--===============0877909220617928670==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0877909220617928670==--

