Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 011C29E52D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 12:03:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2odxS844dMQ1z1pwM2uK0+LVgLBpDiqGbgMJokd7Mg=; b=tLFL0blatWAOze
	iJv6CpGmP8rNVKUWE2ACU4E0WUnuBPF0tBXNYX+4z02BfEX5Aqpt17WAENmT6be6fbVq++QfoZy9H
	8o+/09kLyTWH7c5dExWfLR6ZiL+0e204LKJ0e444oO+8QqI1X8WC1rkwQH2nLqQSiGwk572aDyvi1
	Rh47xhNIE4K2gOrBYT5SqGbTUgJr5O7Un3V2krTjxj00H2bU3wLXfO72QGNOUScKZM6pcsjIdep6Q
	8isjkvQPPpNhJ4zXLFU8H4LMfr9n0VJ1WdvhlRbKb/gMyV4PBLi0Qb4sf5IXYLNaiUPhWZXQeASMg
	8Eqipe2oMQ74lxI9UT6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2YJj-0004JB-Fy; Tue, 27 Aug 2019 10:03:11 +0000
Received: from mail-eopbgr690095.outbound.protection.outlook.com
 ([40.107.69.95] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2YJV-0004Ig-0I
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 10:02:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mwUxhivcOsiFLdINMfYJ9ZpC9g45Xso+KWNNR//IsofxhQpnofC2Fg0yppF6YlfNSdCAyqtA5buQEwAE48BtptR/DPLczlhG+EYk8HNxmZj39pvL53Uur3Mx2YtTX8vjtQSKtSzyXweynGhgP9b4xoZFAGozLLAb2m4aMCPLN/J8Erxz2MWVEzjYqIaXlHiscvGw5VilgXbNnGGFKwstx6rXMTl8swT6J5xxEuzpixgBJCfnqy/IX6K6KCa0V+Aeyhk5SzS8UQgo1EEF2mIcN93UE26KhtOSmSxTC6115Qoy8ZrSapQX05E91ZZneCC910IDS8dZeeS7KpHZZdMmaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4bZCVpPkOjw/sOBKGcHKXBQbaTUGDnO73l5yTovPOe8=;
 b=Hol8Fmhd9DjCPUSsbbirIdQismQ4rjsEIOMUON8cbpxDnisl8SfKr9zBJV7UIecQRL2jaMPFoWuHdCNf4abF2fX1HxgeciYcSciA0Mk953+PJi1TIsxN6Cowe3Oh3Ibq8BnST1KHWnj0/ntSoffgGDZ1C3ncsZ5LhXmCKHMMysXFOHI2sjAxDpbQttFKwjjbLzcqL7+VomQd7v8s21XGSPyrERtZihlOj5klrFUg4xm+B18YHxF8gFqi8R1gU1iMNEbqNbB5DPT1WtkxWoOVy58kimQz8g3KQVaCdNO/l85vFtegYG2yC6s8wS27UYi4ebjtxsk/LoyEG9+bXHaJcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wavecomp.com; dmarc=pass action=none header.from=mips.com;
 dkim=pass header.d=mips.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wavecomp.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4bZCVpPkOjw/sOBKGcHKXBQbaTUGDnO73l5yTovPOe8=;
 b=n8x/MtO8V64rZJiNikLzKdfGAnGwMBv9bI/hrNlPxx4jS4tGq7lv8c6JY3wdk3MaZ3HQwAR5i6dpUGUU4W/N8HYQFzSPCqm7KR7rc9us0X/m/4gJGWoVsfGkEO/Zm43XdD/Vuv4kAa0VTsPb6kval3CN8DzMCDtexN4JJvSSoRE=
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1390.namprd22.prod.outlook.com (10.174.162.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.20; Tue, 27 Aug 2019 10:02:52 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::f9e8:5e8c:7194:fad3]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::f9e8:5e8c:7194:fad3%11]) with mapi id 15.20.2199.021; Tue, 27 Aug
 2019 10:02:52 +0000
From: Paul Burton <paul.burton@mips.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 3/6] dma-mapping: remove arch_dma_mmap_pgprot
Thread-Topic: [PATCH 3/6] dma-mapping: remove arch_dma_mmap_pgprot
Thread-Index: AQHVXL6W4q15Kq6fKUqaVULtpP6zpQ==
Date: Tue, 27 Aug 2019 10:02:51 +0000
Message-ID: <20190827100245.dczrrixvgrmbrb42@pburton-laptop>
References: <20190826132553.4116-1-hch@lst.de>
 <20190826132553.4116-4-hch@lst.de>
In-Reply-To: <20190826132553.4116-4-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0401.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:f::29) To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:18::12)
user-agent: NeoMutt/20180716
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pburton@wavecomp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.118.89.251]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fa6f4199-37f8-437c-f7df-08d72ad5b8b7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR2201MB1390; 
x-ms-traffictypediagnostic: MWHPR2201MB1390:
x-microsoft-antispam-prvs: <MWHPR2201MB13909FBB7E045A1D214C6DA8C1A00@MWHPR2201MB1390.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(366004)(39850400004)(376002)(136003)(396003)(346002)(189003)(199004)(71200400001)(486006)(102836004)(186003)(476003)(386003)(26005)(8676002)(42882007)(478600001)(6246003)(2906002)(305945005)(5660300002)(66066001)(53936002)(8936002)(9686003)(1076003)(446003)(14444005)(81156014)(6486002)(7736002)(81166006)(256004)(11346002)(4326008)(25786009)(14454004)(44832011)(52116002)(6512007)(58126008)(7416002)(6916009)(54906003)(76176011)(6116002)(3846002)(66946007)(66446008)(66476007)(66556008)(64756008)(33716001)(99286004)(71190400001)(316002)(6436002)(6506007)(229853002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR2201MB1390;
 H:MWHPR2201MB1277.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:3; A:1; 
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SYpkpt6z9VR18IKvPYfxsQWI5AsD799BjXcAJOtlR3YKgAQ6Gp23O9beX8OwV7tAAZmQIVAYeAcbxI4jG0Xkqa8j6z2uWdP894vl2Oy+T22mUhXQfKQUeAFdz2eSkEX6Wtx5nP8EAjwml39IT1lW0wsixlkNW02QzixYcdl3TeJzN9Tu71GDmE1pPr164frTBJZi3poZoXt1yfKpUGclhucliYyRN/BoS2jWNRwwG0r9ZZ6l7MAQ0Yc6XdOrh8nB7BOoZM1LDuwtwQMvm0GfsbFl+1fApZlWllcoD7Lq+zvFgeryMDT8JbV+SZEaA3RSW7aUZ6MJGhxAxBxmZNIz4VlO2BPLte35+BK90Mrs2McY62YxrZwwNVRqL+3ETmjRRJC9x5E7A716zYoVd9IzSOdXaU+EmnVqMhxpJ2POCS4=
x-ms-exchange-transport-forked: True
Content-ID: <FD34176D9B58E64093A09E7E3A0592BE@namprd22.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa6f4199-37f8-437c-f7df-08d72ad5b8b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 10:02:51.4658 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: arKpiCDLk6ip53O51O1woD9sV+kusnx/6Nuk5DzIrbcTRz7Wmw2zTmlYlGt1Uw0LEGhpx6x823lTp0yt1usXJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1390
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_030257_216794_04686740 
X-CRM114-Status: GOOD (  23.32  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.95 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Shawn Anastasio <shawn@anastas.io>,
 "linux-m68k@lists.linux-m68k.org" <linux-m68k@lists.linux-m68k.org>,
 Will Deacon <will@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 Guan Xuetao <gxt@pku.edu.cn>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,

On Mon, Aug 26, 2019 at 03:25:50PM +0200, Christoph Hellwig wrote:
> arch_dma_mmap_pgprot is used for two things:
> 
>  1) to override the "normal" uncached page attributes for mapping
>     memory coherent to devices that can't snoop the CPU caches
>  2) to provide the special DMA_ATTR_WRITE_COMBINE semantics on older
>     arm systems and some mips platforms
> 
> Replace one with the pgprot_dmacoherent macro that is already provided
> by arm and much simpler to use, and lift the DMA_ATTR_WRITE_COMBINE
> handling to common code with an explicit arch opt-in.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>

For the MIPS bits:

    Acked-by: Paul Burton <paul.burton@mips.com>

Thanks,
    Paul

> ---
>  arch/arm/Kconfig                   |  2 +-
>  arch/arm/mm/dma-mapping.c          |  6 ------
>  arch/arm64/Kconfig                 |  1 -
>  arch/arm64/include/asm/pgtable.h   |  4 ++++
>  arch/arm64/mm/dma-mapping.c        |  6 ------
>  arch/m68k/Kconfig                  |  1 -
>  arch/m68k/include/asm/pgtable_mm.h |  3 +++
>  arch/m68k/kernel/dma.c             |  3 +--
>  arch/mips/Kconfig                  |  2 +-
>  arch/mips/mm/dma-noncoherent.c     |  8 --------
>  include/linux/dma-noncoherent.h    | 13 +++++++++++--
>  kernel/dma/Kconfig                 | 12 +++++++++---
>  kernel/dma/mapping.c               |  8 +++++---
>  13 files changed, 35 insertions(+), 34 deletions(-)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 24360211534a..217083caeabd 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -8,7 +8,7 @@ config ARM
>  	select ARCH_HAS_DEBUG_VIRTUAL if MMU
>  	select ARCH_HAS_DEVMEM_IS_ALLOWED
>  	select ARCH_HAS_DMA_COHERENT_TO_PFN if SWIOTLB
> -	select ARCH_HAS_DMA_MMAP_PGPROT if SWIOTLB
> +	select ARCH_HAS_DMA_WRITE_COMBINE if !ARM_DMA_MEM_BUFFERABLE
>  	select ARCH_HAS_ELF_RANDOMIZE
>  	select ARCH_HAS_FORTIFY_SOURCE
>  	select ARCH_HAS_KEEPINITRD
> diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
> index d42557ee69c2..d27b12f61737 100644
> --- a/arch/arm/mm/dma-mapping.c
> +++ b/arch/arm/mm/dma-mapping.c
> @@ -2402,12 +2402,6 @@ long arch_dma_coherent_to_pfn(struct device *dev, void *cpu_addr,
>  	return dma_to_pfn(dev, dma_addr);
>  }
>  
> -pgprot_t arch_dma_mmap_pgprot(struct device *dev, pgprot_t prot,
> -		unsigned long attrs)
> -{
> -	return __get_dma_pgprot(attrs, prot);
> -}
> -
>  void *arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *dma_handle,
>  		gfp_t gfp, unsigned long attrs)
>  {
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 3adcec05b1f6..dab9dda34206 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -13,7 +13,6 @@ config ARM64
>  	select ARCH_HAS_DEBUG_VIRTUAL
>  	select ARCH_HAS_DEVMEM_IS_ALLOWED
>  	select ARCH_HAS_DMA_COHERENT_TO_PFN
> -	select ARCH_HAS_DMA_MMAP_PGPROT
>  	select ARCH_HAS_DMA_PREP_COHERENT
>  	select ARCH_HAS_ACPI_TABLE_UPGRADE if ACPI
>  	select ARCH_HAS_ELF_RANDOMIZE
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index e09760ece844..6700371227d1 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -435,6 +435,10 @@ static inline pmd_t pmd_mkdevmap(pmd_t pmd)
>  	__pgprot_modify(prot, PTE_ATTRINDX_MASK, PTE_ATTRINDX(MT_NORMAL_NC) | PTE_PXN | PTE_UXN)
>  #define pgprot_device(prot) \
>  	__pgprot_modify(prot, PTE_ATTRINDX_MASK, PTE_ATTRINDX(MT_DEVICE_nGnRE) | PTE_PXN | PTE_UXN)
> +#define pgprot_dmacoherent(prot) \
> +	__pgprot_modify(prot, PTE_ATTRINDX_MASK, \
> +			PTE_ATTRINDX(MT_NORMAL_NC) | PTE_PXN | PTE_UXN)
> +
>  #define __HAVE_PHYS_MEM_ACCESS_PROT
>  struct file;
>  extern pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
> diff --git a/arch/arm64/mm/dma-mapping.c b/arch/arm64/mm/dma-mapping.c
> index bd2b039f43a6..676efcda51e6 100644
> --- a/arch/arm64/mm/dma-mapping.c
> +++ b/arch/arm64/mm/dma-mapping.c
> @@ -11,12 +11,6 @@
>  
>  #include <asm/cacheflush.h>
>  
> -pgprot_t arch_dma_mmap_pgprot(struct device *dev, pgprot_t prot,
> -		unsigned long attrs)
> -{
> -	return pgprot_writecombine(prot);
> -}
> -
>  void arch_sync_dma_for_device(struct device *dev, phys_addr_t paddr,
>  		size_t size, enum dma_data_direction dir)
>  {
> diff --git a/arch/m68k/Kconfig b/arch/m68k/Kconfig
> index c518d695c376..a9e564306d3e 100644
> --- a/arch/m68k/Kconfig
> +++ b/arch/m68k/Kconfig
> @@ -4,7 +4,6 @@ config M68K
>  	default y
>  	select ARCH_32BIT_OFF_T
>  	select ARCH_HAS_BINFMT_FLAT
> -	select ARCH_HAS_DMA_MMAP_PGPROT if MMU && !COLDFIRE
>  	select ARCH_HAS_DMA_PREP_COHERENT if HAS_DMA && MMU && !COLDFIRE
>  	select ARCH_HAS_SYNC_DMA_FOR_DEVICE if HAS_DMA
>  	select ARCH_MIGHT_HAVE_PC_PARPORT if ISA
> diff --git a/arch/m68k/include/asm/pgtable_mm.h b/arch/m68k/include/asm/pgtable_mm.h
> index fe3ddd73a0cc..fde4534b974f 100644
> --- a/arch/m68k/include/asm/pgtable_mm.h
> +++ b/arch/m68k/include/asm/pgtable_mm.h
> @@ -169,6 +169,9 @@ static inline void update_mmu_cache(struct vm_area_struct *vma,
>  	    ? (__pgprot((pgprot_val(prot) & _CACHEMASK040) | _PAGE_NOCACHE_S))	\
>  	    : (prot)))
>  
> +pgprot_t pgprot_dmacoherent(pgprot_t prot);
> +#define pgprot_dmacoherent(prot)	pgprot_dmacoherent(prot)
> +
>  #endif /* CONFIG_COLDFIRE */
>  #include <asm-generic/pgtable.h>
>  #endif /* !__ASSEMBLY__ */
> diff --git a/arch/m68k/kernel/dma.c b/arch/m68k/kernel/dma.c
> index 30cd59caf037..35064150e348 100644
> --- a/arch/m68k/kernel/dma.c
> +++ b/arch/m68k/kernel/dma.c
> @@ -23,8 +23,7 @@ void arch_dma_prep_coherent(struct page *page, size_t size)
>  	cache_push(page_to_phys(page), size);
>  }
>  
> -pgprot_t arch_dma_mmap_pgprot(struct device *dev, pgprot_t prot,
> -		unsigned long attrs)
> +pgprot_t pgprot_dmacoherent(pgprot_t prot)
>  {
>  	if (CPU_IS_040_OR_060) {
>  		pgprot_val(prot) &= ~_PAGE_CACHE040;
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index d50fafd7bf3a..fc88f68ea1ee 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -1119,7 +1119,7 @@ config DMA_PERDEV_COHERENT
>  
>  config DMA_NONCOHERENT
>  	bool
> -	select ARCH_HAS_DMA_MMAP_PGPROT
> +	select ARCH_HAS_DMA_WRITE_COMBINE
>  	select ARCH_HAS_SYNC_DMA_FOR_DEVICE
>  	select ARCH_HAS_UNCACHED_SEGMENT
>  	select NEED_DMA_MAP_STATE
> diff --git a/arch/mips/mm/dma-noncoherent.c b/arch/mips/mm/dma-noncoherent.c
> index ed56c6fa7be2..1d4d57dd9acf 100644
> --- a/arch/mips/mm/dma-noncoherent.c
> +++ b/arch/mips/mm/dma-noncoherent.c
> @@ -65,14 +65,6 @@ long arch_dma_coherent_to_pfn(struct device *dev, void *cpu_addr,
>  	return page_to_pfn(virt_to_page(cached_kernel_address(cpu_addr)));
>  }
>  
> -pgprot_t arch_dma_mmap_pgprot(struct device *dev, pgprot_t prot,
> -		unsigned long attrs)
> -{
> -	if (attrs & DMA_ATTR_WRITE_COMBINE)
> -		return pgprot_writecombine(prot);
> -	return pgprot_noncached(prot);
> -}
> -
>  static inline void dma_sync_virt(void *addr, size_t size,
>  		enum dma_data_direction dir)
>  {
> diff --git a/include/linux/dma-noncoherent.h b/include/linux/dma-noncoherent.h
> index 0bff3d7fac92..dd3de6d88fc0 100644
> --- a/include/linux/dma-noncoherent.h
> +++ b/include/linux/dma-noncoherent.h
> @@ -3,6 +3,7 @@
>  #define _LINUX_DMA_NONCOHERENT_H 1
>  
>  #include <linux/dma-mapping.h>
> +#include <asm/pgtable.h>
>  
>  #ifdef CONFIG_ARCH_HAS_DMA_COHERENCE_H
>  #include <asm/dma-coherence.h>
> @@ -42,10 +43,18 @@ void arch_dma_free(struct device *dev, size_t size, void *cpu_addr,
>  		dma_addr_t dma_addr, unsigned long attrs);
>  long arch_dma_coherent_to_pfn(struct device *dev, void *cpu_addr,
>  		dma_addr_t dma_addr);
> -pgprot_t arch_dma_mmap_pgprot(struct device *dev, pgprot_t prot,
> -		unsigned long attrs);
>  
>  #ifdef CONFIG_MMU
> +/*
> + * Page protection so that devices that can't snoop CPU caches can use the
> + * memory coherently.  We default to pgprot_noncached which is usually used
> + * for ioremap as a safe bet, but architectures can override this with less
> + * strict semantics if possible.
> + */
> +#ifndef pgprot_dmacoherent
> +#define pgprot_dmacoherent(prot)	pgprot_noncached(prot)
> +#endif
> +
>  pgprot_t dma_pgprot(struct device *dev, pgprot_t prot, unsigned long attrs);
>  #else
>  static inline pgprot_t dma_pgprot(struct device *dev, pgprot_t prot,
> diff --git a/kernel/dma/Kconfig b/kernel/dma/Kconfig
> index 9decbba255fc..73c5c2b8e824 100644
> --- a/kernel/dma/Kconfig
> +++ b/kernel/dma/Kconfig
> @@ -20,6 +20,15 @@ config ARCH_HAS_DMA_COHERENCE_H
>  config ARCH_HAS_DMA_SET_MASK
>  	bool
>  
> +#
> +# Select this option if the architecture needs special handling for
> +# DMA_ATTR_WRITE_COMBINE.  Normally the "uncached" mapping should be what
> +# people thing of when saying write combine, so very few platforms should
> +# need to enable this.
> +#
> +config ARCH_HAS_DMA_WRITE_COMBINE
> +	bool
> +
>  config DMA_DECLARE_COHERENT
>  	bool
>  
> @@ -45,9 +54,6 @@ config ARCH_HAS_DMA_PREP_COHERENT
>  config ARCH_HAS_DMA_COHERENT_TO_PFN
>  	bool
>  
> -config ARCH_HAS_DMA_MMAP_PGPROT
> -	bool
> -
>  config ARCH_HAS_FORCE_DMA_UNENCRYPTED
>  	bool
>  
> diff --git a/kernel/dma/mapping.c b/kernel/dma/mapping.c
> index b0038ca3aa92..1b96616c9f20 100644
> --- a/kernel/dma/mapping.c
> +++ b/kernel/dma/mapping.c
> @@ -161,9 +161,11 @@ pgprot_t dma_pgprot(struct device *dev, pgprot_t prot, unsigned long attrs)
>  	    (IS_ENABLED(CONFIG_DMA_NONCOHERENT_CACHE_SYNC) &&
>               (attrs & DMA_ATTR_NON_CONSISTENT)))
>  		return prot;
> -	if (IS_ENABLED(CONFIG_ARCH_HAS_DMA_MMAP_PGPROT))
> -		return arch_dma_mmap_pgprot(dev, prot, attrs);
> -	return pgprot_noncached(prot);
> +#ifdef CONFIG_ARCH_HAS_DMA_WRITE_COMBINE
> +	if (attrs & DMA_ATTR_WRITE_COMBINE)
> +		return pgprot_writecombine(prot);
> +#endif
> +	return pgprot_dmacoherent(prot);
>  }
>  #endif /* CONFIG_MMU */
>  
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
