Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3898528E4C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 02:19:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aqBUYRS7uxFFQCRT1nx3Xpgbo4GD3q95WQ4k/YkmtjY=; b=h3Anb7vca3zKbsu3wz0xL3y8w
	/0vNmYJKMsuEx9nijJhAZth1Kh/mgBfyN2l40lx7QM6jAVxbUOA8u/p6wkUhgTLgys7SIwdQ8UvMn
	jFOu2VTVb+41feAuApUvnt+2dwSGyem5h3ZCOBED7GXNi37oKsQJLtMa8ksEbLcTl8MhwvOgAY7Jt
	wGgni+ZZ6ACSjFIKPkflFybq279MnnBBSW4o6ne4+PJYS6zrOq6jvSQmABgd007JDLaPdCYvUofx3
	szDzp6oYG4ZnEuJP2WlPLHTVUKSta/+5T6za2+vUswjYgNIvHPaFhdIKuJhuTAmpH5AE+tyW81rqg
	RdSCDEO/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTxvQ-0004zG-Dd; Fri, 24 May 2019 00:19:08 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTxvH-0004yA-OA; Fri, 24 May 2019 00:19:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558657139; x=1590193139;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=ImIkpNHYF0Ct8KzO+o8Rh3uJJvhTTU8y01lvKWVjfUQ=;
 b=P8+/gmkkUJpR99fvMv9cu8F1yc23NbJqlkE6BbdG9yCgg8aWHeKT0BoM
 8xqByhA0Po6oJ6A5qTuE4Icr0r+wuWG3dJlqMYUHxJD9K1sVVZewJQYZ1
 S9Ga8t5fo7wh3U32xYj+29CRrb5lWbE3U4QEEiq4gm6CGXHDEQ1yfr8ul
 gAaWXmKs2fjOc5owBlfy2ThHs+O0x59Eits1efUgcYvJ2ln+umLdhSiQH
 wECxEgrr2xCIKKHp8rwOamN0CN8kcecXlVDrhVM2Pz6xbwT9DF4dvrEP5
 Eez0VOE/zd58uVIGVWHOPLxygW5g6IhQGZCX+mDoGRkNAok2k6KvQZC5h Q==;
X-IronPort-AV: E=Sophos;i="5.60,505,1549900800"; d="scan'208";a="113929409"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 24 May 2019 08:18:57 +0800
IronPort-SDR: 7KRryssi0CtDCFKrAwxfgAMePntRf6Mn2QfXotlex3rl3UzzEJLuhx4dlVkix6RZaPj+5uhRsi
 012FiVvCY9H8JqE+lojsUKogcIS1qH4tgtJ22WfNaSQ5UTi5QwFPlpnlxJKeksX6j+HBD+IvX9
 qpqyEQV+siC2TzmaK34exXgfxy+MQwCq0apQZCc9TDZJrQOy5d98x6+G5Cv26lPSSki1kC89+E
 BmsqGx5dpytJqIED2QOF0qHSbsZ8e3m+KezQJH0BvKi91CV9O9jjOk+B/l6mL6zAnqzUp+xuGe
 J79jmCArLPr5IL+uRC8c3Kau
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP; 23 May 2019 16:54:17 -0700
IronPort-SDR: dC4C+3IRY1AbcFS0UI5Dh85SSrRXqNj1vbn83BlLK75czoZ6Sc8YEOjlBI/5DhXv1jVz4sMMpg
 iDpyFXFmV2P40WpixvL5yyKQuRNdb0tsa00GLsyzsSqoldnUYSELR0taRHjdDQvhvslSnG7L6Y
 ri11Bhq0QESS81qmPpkqmhMK+uQGXlrQOfQ/15l/Nu2oWR9lCKm+3Rb+lbSnuUu8B6QF2Mi8Ac
 /2RNzueRmuBDaWqQBdstNpm9hkhmiZp3YqPknC/CsGwsP8M5+YQSr8sTOdgvdl+VWQxF+ndVp/
 Guo=
Received: from r6220.sdcorp.global.sandisk.com (HELO [192.168.1.6])
 ([10.196.157.143])
 by uls-op-cesaip02.wdc.com with ESMTP; 23 May 2019 17:18:56 -0700
Subject: Re: [v3 PATCH] RISC-V: Add a PE/COFF compliant Image header.
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <20190523183516.583-1-atish.patra@wdc.com>
 <CAKv+Gu9VnjtgdkqfJJ1qQQ0W=z+uYN9Y-1n3Md3tV+d6a63wZA@mail.gmail.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <439bf2f0-785b-ac52-8116-63e2e82bc179@wdc.com>
Date: Thu, 23 May 2019 17:16:40 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu9VnjtgdkqfJJ1qQQ0W=z+uYN9Y-1n3Md3tV+d6a63wZA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_171859_898453_0DE00093 
X-CRM114-Status: GOOD (  32.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Tom Rini <trini@konsulko.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Zong Li <zong@andestech.com>, "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 Nick Kossifidis <mick@ics.forth.gr>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/23/19 2:09 PM, Ard Biesheuvel wrote:
> On Thu, 23 May 2019 at 19:35, Atish Patra <atish.patra@wdc.com> wrote:
>>
>> Currently, last stage boot loaders such as U-Boot can accept only
>> uImage which is an unnecessary additional step in automating boot flows.
>>
>> Add a PE/COFF compliant image header that boot loaders can parse and
>> directly load kernel flat Image. The existing booting methods will continue
>> to work as it is.
>>
> 
> This statement does not make sense. This patch does not implement a
> single one of the various elements that make up a valid PE/COFF
> header.
> 

Probably "compliant" is not the correct word. I meant to say that
PE/COFF header can be implemented in future with this header.


> The arm64 Image header has been designed in a way so that it can
> co-exist with a PE/COFF header in the same image, and this is what

Correct. "co-exist" is much better than "compliant"

Sorry for the choosing ambiguous words. I will update the commit text in 
next version.

> this patch duplicates. The arm64 Image header has nothing to do with
> PE/COFF.
> 
> A PE/COFF executable header consists of
> - the letters MZ at offset 0x0 (the MS-DOS header)
> - the offset to the PE header at offset 0x3c
> - the characters PE\0\0 at the offset mentioned above, followed by the
> standard COFF header fields
> - a PE32 or PE32+ (depending on the bitness) optional* header,
> followed by a set of section headers.
> 
> 
> 
> 
>> Another goal of this header is to support EFI stub for RISC-V in future.
>> EFI specification needs PE/COFF image header in the beginning of the kernel
>> image in order to load it as an EFI application. In order to support
>> EFI stub, code0 should be replaced with "MZ" magic string and res5(at
>> offset 0x3c) should point to the rest of the PE/COFF header (which will
>> be added during EFI support).
>>
>> This patch is based on ARM64 boot image header and provides an opprtunity
>> to combine both ARM64 & RISC-V image headers.
>>
>> Tested on both QEMU and HiFive Unleashed using OpenSBI + U-Boot + Linux.
>>
>> Signed-off-by: Atish Patra <atish.patra@wdc.com>
>>
>> ---
>> I have not sent out corresponding U-Boot patch as all the changes are
>> compatible with current u-boot support. Once, the kernel header format
>> is agreed upon, I will update the U-Boot patch.
>>
>> Changes from v2->v3
>> 1. Modified reserved fields to define a header version.
>> 2. Added header documentation.
>>
>> Changes from v1-v2:
>> 1. Added additional reserved elements to make it fully PE compatible.
>> ---
>>   Documentation/riscv/boot-image-header.txt | 50 ++++++++++++++++++
>>   arch/riscv/include/asm/image.h            | 64 +++++++++++++++++++++++
>>   arch/riscv/kernel/head.S                  | 32 ++++++++++++
>>   3 files changed, 146 insertions(+)
>>   create mode 100644 Documentation/riscv/boot-image-header.txt
>>   create mode 100644 arch/riscv/include/asm/image.h
>>
>> diff --git a/Documentation/riscv/boot-image-header.txt b/Documentation/riscv/boot-image-header.txt
>> new file mode 100644
>> index 000000000000..68abc2353cec
>> --- /dev/null
>> +++ b/Documentation/riscv/boot-image-header.txt
>> @@ -0,0 +1,50 @@
>> +                               Boot image header in RISC-V Linux
>> +                       =============================================
>> +
>> +Author: Atish Patra <atish.patra@wdc.com>
>> +Date  : 20 May 2019
>> +
>> +This document only describes the boot image header details for RISC-V Linux.
>> +The complete booting guide will be available at Documentation/riscv/booting.txt.
>> +
>> +The following 64-byte header is present in decompressed Linux kernel image.
>> +
>> +       u32 code0;                /* Executable code */
>> +       u32 code1;                /* Executable code */
>> +       u64 text_offset;          /* Image load offset, little endian */
>> +       u64 image_size;           /* Effective Image size, little endian */
>> +       u64 flags;                /* kernel flags, little endian */
>> +       u32 version;              /* Version of this header */
>> +       u32 res1  = 0;            /* Reserved */
>> +       u64 res2  = 0;            /* Reserved */
>> +       u64 magic = 0x5643534952; /* Magic number, little endian, "RISCV" */
>> +       u32 res3;                 /* Reserved for additional RISC-V specific header */
>> +       u32 res4;                 /* Reserved for PE COFF offset */
>> +
>> +This header format is compliant with PE/COFF header and largely inspired from
>> +ARM64 header. Thus, both ARM64 & RISC-V header can be combined into one common
>> +header in future.
>> +
>> +Notes:
>> +- This header can also be reused to support EFI stub for RISC-V in future. EFI
>> +  specification needs PE/COFF image header in the beginning of the kernel image
>> +  in order to load it as an EFI application. In order to support EFI stub,
>> +  code0 should be replaced with "MZ" magic string and res5(at offset 0x3c) should
>> +  point to the rest of the PE/COFF header.
>> +
>> +- version field indicate header version number.
>> +       Bits 0:15  - Minor version
>> +       Bits 16:31 - Major version
>> +
>> +  This preserves compatibility across newer and older version of the header.
>> +  The current version is defined as 0.1.
>> +
>> +- res3 is reserved for offset to any other additional fields. This makes the
>> +  header extendible in future. One example would be to accommodate ISA
>> +  extension for RISC-V in future. For current version, it is set to be zero.
>> +
>> +- In current header, the flag field has only one field.
>> +       Bit 0: Kernel endianness. 1 if BE, 0 if LE.
>> +
>> +- Image size is mandatory for boot loader to load kernel image. Booting will
>> +  fail otherwise.
>> diff --git a/arch/riscv/include/asm/image.h b/arch/riscv/include/asm/image.h
>> new file mode 100644
>> index 000000000000..61c9f20d2f19
>> --- /dev/null
>> +++ b/arch/riscv/include/asm/image.h
>> @@ -0,0 +1,64 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +
>> +#ifndef __ASM_IMAGE_H
>> +#define __ASM_IMAGE_H
>> +
>> +#define RISCV_IMAGE_MAGIC      "RISCV"
>> +
>> +
>> +#define RISCV_IMAGE_FLAG_BE_SHIFT      0
>> +#define RISCV_IMAGE_FLAG_BE_MASK       0x1
>> +
>> +#define RISCV_IMAGE_FLAG_LE            0
>> +#define RISCV_IMAGE_FLAG_BE            1
>> +
>> +
>> +#ifdef CONFIG_CPU_BIG_ENDIAN
>> +#define __HEAD_FLAG_BE         RISCV_IMAGE_FLAG_BE
>> +#else
>> +#define __HEAD_FLAG_BE         RISCV_IMAGE_FLAG_LE
>> +#endif
>> +
>> +#define __HEAD_FLAG(field)     (__HEAD_FLAG_##field << \
>> +                               RISCV_IMAGE_FLAG_##field##_SHIFT)
>> +
>> +#define __HEAD_FLAGS           (__HEAD_FLAG(BE))
>> +
>> +#define RISCV_HEADER_VERSION_MAJOR 0
>> +#define RISCV_HEADER_VERSION_MINOR 1
>> +
>> +#define RISCV_HEADER_VERSION (RISCV_HEADER_VERSION_MAJOR << 16 | \
>> +                             RISCV_HEADER_VERSION_MINOR)
>> +
>> +#ifndef __ASSEMBLY__
>> +/*
>> + * struct riscv_image_header - riscv kernel image header
>> + *
>> + * @code0:             Executable code
>> + * @code1:             Executable code
>> + * @text_offset:       Image load offset
>> + * @image_size:                Effective Image size
>> + * @flags:             kernel flags
>> + * @version:           version
>> + * @reserved:          reserved
>> + * @reserved:          reserved
>> + * @magic:             Magic number
>> + * @reserved:          reserved (will be used for additional RISC-V specific header)
>> + * @reserved:          reserved (will be used for PE COFF offset)
>> + */
>> +
>> +struct riscv_image_header {
>> +       u32 code0;
>> +       u32 code1;
>> +       u64 text_offset;
>> +       u64 image_size;
>> +       u64 flags;
>> +       u32 version;
>> +       u32 res1;
>> +       u64 res2;
>> +       u64 magic;
>> +       u32 res3;
>> +       u32 res4;
>> +};
>> +#endif /* __ASSEMBLY__ */
>> +#endif /* __ASM_IMAGE_H */
>> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
>> index 370c66ce187a..577893bb150d 100644
>> --- a/arch/riscv/kernel/head.S
>> +++ b/arch/riscv/kernel/head.S
>> @@ -19,9 +19,41 @@
>>   #include <asm/thread_info.h>
>>   #include <asm/page.h>
>>   #include <asm/csr.h>
>> +#include <asm/image.h>
>>
>>   __INIT
>>   ENTRY(_start)
>> +       /*
>> +        * Image header expected by Linux boot-loaders. The image header data
>> +        * structure is described in asm/image.h.
>> +        * Do not modify it without modifying the structure and all bootloaders
>> +        * that expects this header format!!
>> +        */
>> +       /* jump to start kernel */
>> +       j _start_kernel
>> +       /* reserved */
>> +       .word 0
>> +       .balign 8
>> +#if __riscv_xlen == 64
>> +       /* Image load offset(2MB) from start of RAM */
>> +       .dword 0x200000
>> +#else
>> +       /* Image load offset(4MB) from start of RAM */
>> +       .dword 0x400000
>> +#endif
>> +       /* Effective size of kernel image */
>> +       .dword _end - _start
>> +       .dword __HEAD_FLAGS
>> +       .word RISCV_HEADER_VERSION
>> +       .word 0
>> +       .dword 0
>> +       .asciz RISCV_IMAGE_MAGIC
>> +       .word 0
>> +       .balign 4
>> +       .word 0
>> +
>> +.global _start_kernel
>> +_start_kernel:
>>          /* Mask all interrupts */
>>          csrw CSR_SIE, zero
>>          csrw CSR_SIP, zero
>> --
>> 2.21.0
>>
>>
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


-- 
Regards,
Atish

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
