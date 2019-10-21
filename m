Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6BEDF043
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:46:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u1d+EhqkFSNrOTFalhZSqJlcpNupbHdLR51wCS1V/Bk=; b=I10wnnjGvIRSeM
	vnGU/5RoYFEefRRvsgoudajBFIEWWAXjOkjRh1RtCdx/5ad0KYcVtx3SAgDTRsHer1TFVkqpS5oh0
	/uWcJBxmax6ldflOwrLMDQFF7SzxEUMir6T26WYwogyf63neLiCz4Fvo0tWSLYg77fiCiC8gruTLS
	OgHiK1AIhIPzw8RD8A6uTBKOtWw72kn4NI5b9fN73gnfw8iRqtmrGK90+w6wu9olR4e5mx0iZDnyp
	OmAcAzIf90VIWwLr/7e5DyLPTN0gjAmSDEaleieWbzf505RCCcjdB/xnyxAOT9JJeuRP1MTErHQPU
	CoZ8rukbbMVyaiM76c4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYxC-0002UL-9w; Mon, 21 Oct 2019 14:46:38 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYx1-0002Sf-4V
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 14:46:29 +0000
Received: by mail-qk1-x742.google.com with SMTP id f18so12246431qkm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 07:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=t36LwNdZN6YmQfewYw028jUsDs9yG7E3JUEc6c5qcLM=;
 b=rF/+F8FJNmGj2yIXmpDOAcgOjsdbv5OZqjWBwZnlW6meNrSXMxR8nZD0drC1BzzMWM
 JdIfIhKxnhv+3qvTDIfz3RC9YkjWOizIS7b05cvmqlPuU8DP0xdu0phTeVlGDQqFgA7n
 j1t+rvaKgdnDcRU9S++OLxxV5zPmH0WxIQfLaq8OZkl6mu4kXcof1ZZ6HNEMCqTIUlV1
 3h+5g78VXCX9YMeeFSyQEmh/UJWDO2VGSYvrnF+ilcrdR6gwDysmW6Jb+YS9UH0M8taS
 fnA2sCK7zBPDD+64TO6FxaVRhqr1GAFF+sNRogq/GQjwv+zbHCVsbvRENuI0Mday/UF7
 xsvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=t36LwNdZN6YmQfewYw028jUsDs9yG7E3JUEc6c5qcLM=;
 b=YhRwhg23bWaxvONPuWjCpMepe4Pw1cz4m0CZHbRLT5WW4Waz0MRPsSugBLUYAignfg
 iUiehRxA1J2L58D/3Eh3gjyesiB3O2gO+hDDqN+blnhGi1ZfElopiNc5zJ6eXZHm3ppq
 y0FB98/yzNF0RGcWHhndit2jIw43NEpf1jUvOGwMhmUlFi5drFG0BZkBRPxB3gB9e9hh
 F6i5RdfgEKJTqYrL4KLY4j4Ex4vHUrp2S3/R+wWqmnX3YtIeCrnX+zzgpqaStOvyekOH
 fz/wpZ/CpSS91bZURbGpNH5Dn6KTQToS68BpeEU1sDWvevR2LSDi8EoPCQsJcdh3K1Jz
 ILRA==
X-Gm-Message-State: APjAAAV1lKKo9dBFX2jq7QTFNx4NL1wOmqUoOQvuICTfUl9zXVnZKElF
 +jGefglcY73eJphtGfS77Oa1IQ==
X-Google-Smtp-Source: APXvYqwv1QcGfOdDZKfsY6ciLBE7cNoGFYfOnQoXtkYiy8iDXUAVeMJwlCprhZv4OyLBQ6WNfDuuQA==
X-Received: by 2002:ae9:f50a:: with SMTP id o10mr22637446qkg.372.1571669185837; 
 Mon, 21 Oct 2019 07:46:25 -0700 (PDT)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id c21sm4956270qkg.4.2019.10.21.07.46.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Oct 2019 07:46:25 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v6 3/4] arm64: use both ZONE_DMA and ZONE_DMA32
From: Qian Cai <cai@lca.pw>
In-Reply-To: <78caa5bcfc0d59e8ec5d6b7060df76896d25248b.camel@suse.de>
Date: Mon, 21 Oct 2019 10:46:23 -0400
Message-Id: <5E3CD9CA-76C3-4D46-BA0B-DEBF650E8950@lca.pw>
References: <20190911182546.17094-1-nsaenzjulienne@suse.de>
 <20190911182546.17094-4-nsaenzjulienne@suse.de>
 <3956E54B-6C7A-4C47-B9B6-75F556EFD3F5@lca.pw>
 <78caa5bcfc0d59e8ec5d6b7060df76896d25248b.camel@suse.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_074627_179162_FF7E6935 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rpi-kernel@lists.infradead.org, f.fainelli@gmail.com, will@kernel.org,
 marc.zyngier@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mm@kvack.org, mbrugger@suse.com,
 wahrenst@gmx.net, phill@raspberrypi.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Oct 21, 2019, at 10:34 AM, Nicolas Saenz Julienne <nsaenzjulienne@suse.de> wrote:
> 
> On Mon, 2019-10-21 at 10:15 -0400, Qian Cai wrote:
>>> On Sep 11, 2019, at 2:25 PM, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>>> wrote:
>>> 
>>> So far all arm64 devices have supported 32 bit DMA masks for their
>>> peripherals. This is not true anymore for the Raspberry Pi 4 as most of
>>> it's peripherals can only address the first GB of memory on a total of
>>> up to 4 GB.
>>> 
>>> This goes against ZONE_DMA32's intent, as it's expected for ZONE_DMA32
>>> to be addressable with a 32 bit mask. So it was decided to re-introduce
>>> ZONE_DMA in arm64.
>>> 
>>> ZONE_DMA will contain the lower 1G of memory, which is currently the
>>> memory area addressable by any peripheral on an arm64 device.
>>> ZONE_DMA32 will contain the rest of the 32 bit addressable memory.
>>> 
>>> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>>> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
>>> 
>>> ---
>> 
>> With ZONE_DMA=y, this config will fail to reserve 512M CMA on a server,
>> 
>> https://raw.githubusercontent.com/cailca/linux-mm/master/arm64.config
>> 
>> CONFIG_DMA_CMA=y
>> CONFIG_CMA_SIZE_MBYTES=64
>> CONFIG_CMA_SIZE_SEL_MBYTES=y
>> CONFIG_CMA_ALIGNMENT=8
>> CONFIG_CMA=y
>> CONFIG_CMA_DEBUGFS=y
>> CONFIG_CMA_AREAS=7
>> 
>> Is this expected?
> 
> Not really, just tested cma=512M on a Raspberry Pi4, and it went well. The only
> thing on my build that differs from your config is CONFIG_CMA_DEBUGFS.
> 
> Could you post more information on the device you're experiencing this on? Also
> some logs.

With the above config, it does not even need "cma=512M" kernel cmdline.

[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x431f0af1]
[    0.000000] Linux version 5.4.0-rc4-next-20191021+ (clang version 8.0.1 (Red Hat 8.0.1-1.module+el8.1.0+3866+6be7f4d8)) #1 SMP Mon Oct 21 10:03:03 EDT 2019
[    0.000000] Setting debug_guardpage_minorder to 1
[    0.000000] efi: Getting EFI parameters from FDT:
[    0.000000] efi: EFI v2.70 by American Megatrends
[    0.000000] efi:  ESRT=0xf935ed98  SMBIOS=0xfcc90000  SMBIOS 3.0=0xfcc80000  ACPI 2.0=0xfac80000  MEMRESERVE=0xfacd1018 
[    0.000000] esrt: Reserving ESRT space from 0x00000000f935ed98 to 0x00000000f935edd0.
[    0.000000] crashkernel reserved: 0x00000097db400000 - 0x00000097fb400000 (512 MB)
[    0.000000] cma: Reserved 512 MiB at 0x00000000a0000000

With ZONE_DMA=y, it will say,

cma: Failed to reserve 512 MiB

The machine is a ThunderX2 server.

https://buy.hpe.com/us/en/servers/apollo-systems/apollo-70-system/apollo-70-system/hpe-apollo-70-system/p/1010742472

# lscpu
Architecture:        aarch64
Byte Order:          Little Endian
CPU(s):              256
On-line CPU(s) list: 0-255
Thread(s) per core:  4
Core(s) per socket:  32
Socket(s):           2
NUMA node(s):        2
Vendor ID:           Cavium
Model:               1
Model name:          ThunderX2 99xx
Stepping:            0x1
BogoMIPS:            400.00
L1d cache:           32K
L1i cache:           32K
L2 cache:            256K
L3 cache:            32768K
NUMA node0 CPU(s):   0-127
NUMA node1 CPU(s):   128-255
Flags:               fp asimd aes pmull sha1 sha2 crc32 atomics cpuid asimdrdm
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
