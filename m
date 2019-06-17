Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB164885E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 18:09:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r1x9JH3+cSxCfLeo/Wd0EI+yNpblCVn3dcJ+VN+hm3Y=; b=kXrf4yfAFFRBSh
	2Jg/ozQ6oWSQcTIG88QvaVy4nBNIBfV+3yG5oqSBC1AX6KyU7nojRPC4lkuH5EbkxPNB/ho4c3PSP
	U9K4C90SzuqLXkmnne+wCjTEUzUxRrGpHiI9YZN6UPeZnFiNwrmO5cnXMcHpyI+rMb/54VgmER1hc
	WGQKbRTA8pztgEe/xc6hTOOOeYZ7Tyad/yoBidxeVueENfSyOO9dK7mXO6ZXV8aNxlK+CBVy9o/R1
	98+jwZjMetvAi785WnnrE+6GzsceCnEcQnbfWEVXzwmTl0GsQZ8ghvXhCDu8XAJbPq2PHBSlsn2QH
	rw8Csekb4z8GVWGjBlXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcuBp-0008L2-2o; Mon, 17 Jun 2019 16:09:01 +0000
Received: from mail-eopbgr140081.outbound.protection.outlook.com
 ([40.107.14.81] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcuBb-0008KG-Kr
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 16:08:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N2ivjq8B44bACajDtQo5blB3DyAutSbdZpfV3wCKQL8=;
 b=uusuGOswEWai7bxSr7WQO/ILMb3qqPQ0++Mh5SWtxSn4JvM9gadbjY3+kC0Nvq2x5+LbjTk90yHylPPUMCfEO5IAOAFzBQH/ZpJxJDaC2Io1gc3qsptA0Lgx1TYFZEJ3qXiRTglh8+RKpj2x9Kpu8VYV4FdD2cf/LtnJaxjkeV0=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8SPR01MB0003.eurprd08.prod.outlook.com (20.179.8.204) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Mon, 17 Jun 2019 16:08:42 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::b4db:b3ed:75ff:167]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::b4db:b3ed:75ff:167%3]) with mapi id 15.20.1987.014; Mon, 17 Jun 2019
 16:08:42 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Anshuman Khandual <Anshuman.Khandual@arm.com>
Subject: Re: [PATCH v3 01/10] arm64: mm: Flip kernel VA space
Thread-Topic: [PATCH v3 01/10] arm64: mm: Flip kernel VA space
Thread-Index: AQHVIUQpTQunH2T6gUCbh2rhSQvp9aabH7aAgATrkYA=
Date: Mon, 17 Jun 2019 16:08:42 +0000
Message-ID: <20190617160831.GA1976@capper-debian.cambridge.arm.com>
References: <20190612172658.28522-1-steve.capper@arm.com>
 <20190612172658.28522-2-steve.capper@arm.com>
 <e8b68e70-1d01-6a7a-57af-28f7f9b0ae1f@arm.com>
In-Reply-To: <e8b68e70-1d01-6a7a-57af-28f7f9b0ae1f@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [82.20.117.196]
x-clientproxiedby: DM5PR18CA0054.namprd18.prod.outlook.com
 (2603:10b6:3:22::16) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6b979a1d-315d-4604-48d4-08d6f33e108e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8SPR01MB0003; 
x-ms-traffictypediagnostic: DB8SPR01MB0003:
nodisclaimer: True
x-microsoft-antispam-prvs: <DB8SPR01MB0003F1D24F99B79AC6AC792481EB0@DB8SPR01MB0003.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0071BFA85B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(346002)(366004)(136003)(39860400002)(189003)(199004)(256004)(14444005)(52116002)(8676002)(6512007)(6486002)(102836004)(53546011)(14454004)(316002)(6436002)(229853002)(58126008)(6506007)(386003)(8936002)(76176011)(5660300002)(25786009)(81156014)(81166006)(73956011)(4326008)(6246003)(66946007)(54906003)(33656002)(305945005)(66476007)(66556008)(64756008)(66446008)(2906002)(99286004)(66066001)(6862004)(72206003)(1076003)(53936002)(6116002)(44832011)(71190400001)(71200400001)(486006)(446003)(11346002)(476003)(7736002)(68736007)(26005)(478600001)(3846002)(86362001)(6636002)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8SPR01MB0003;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +JlieLAToc/vz1ZKgL4tPQnClMhXU2bJKMbACPftoTVh0jkk6CsTsTGDXlqUY4UsguC+MGCKNLip8+MpbUdbYiZ/9PbxyP9oaUgAjhCDI1pWtwxxvQoavlQm0Yhv3cYU8X35XQ8+C7x28RtSHCnDvRgenCzgDiMJwZZplrHeB6I1Qnmoc/PQkp5Qsp7BKrQSb75RgPplY5RjF8LJ0O8ucPV7HdxtR5ZSktulxNxxWQ6kIzoZk7XThADN7PGgHedyGjUA8WWy8iou6xcrHpzmNLbR9It2oEXPwyNYU2EWZnmxzzK2hJO+9uzyAJiLPEu9HaQdxx7uJl1wOkn4C7g9DkX3kYRnNKdWh56IZQ3tuSPh1I3kIGd1vU5w6/6RMjIKdBQWmX2/HGABYbzgcNYRthz7r+qMTdv7cc5UhtuaK9M=
Content-ID: <EC685A0815C8D943A84BAEBF178458F2@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b979a1d-315d-4604-48d4-08d6f33e108e
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2019 16:08:42.0900 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Steve.Capper@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8SPR01MB0003
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_090847_745714_F97C1AB8 
X-CRM114-Status: GOOD (  24.87  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "crecklin@redhat.com" <crecklin@redhat.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 Marc Zyngier <Marc.Zyngier@arm.com>, Catalin Marinas <Catalin.Marinas@arm.com>,
 "bhsharma@redhat.com" <bhsharma@redhat.com>, Will Deacon <Will.Deacon@arm.com>,
 nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anshuman,

On Fri, Jun 14, 2019 at 06:30:21PM +0530, Anshuman Khandual wrote:
> On 06/12/2019 10:56 PM, Steve Capper wrote:
> > Put the direct linear map in the lower addresses of the kernel VA range
> > and everything else in the higher ranges.
> > 

[...]

> > diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> > index 8ffcf5a512bb..5cd2eb8cb424 100644
> > --- a/arch/arm64/include/asm/memory.h
> > +++ b/arch/arm64/include/asm/memory.h
> > @@ -49,9 +49,9 @@
> >   */
> >  #define VA_BITS			(CONFIG_ARM64_VA_BITS)
> >  #define VA_START		(UL(0xffffffffffffffff) - \
> > -	(UL(1) << VA_BITS) + 1)
> > -#define PAGE_OFFSET		(UL(0xffffffffffffffff) - \
> >  	(UL(1) << (VA_BITS - 1)) + 1)
> > +#define PAGE_OFFSET		(UL(0xffffffffffffffff) - \
> > +	(UL(1) << VA_BITS) + 1)
> 
> PAGE_OFFSET and VA_START swapped their positions.
>

In the file I think they haven't moved, would you like them to be
swapped? (Their values have changed).

> There are many places with UL(0xffffffffffffffff). Time to define
> it as a constant ? Something like [KERNEL|TTBR1]_MAX_VADDR.
>

Could do, I am also tempted to do something like UL(~0) for the sake of
brevity.

> >  #define KIMAGE_VADDR		(MODULES_END)
> >  #define BPF_JIT_REGION_START	(VA_START + KASAN_SHADOW_SIZE)
> >  #define BPF_JIT_REGION_SIZE	(SZ_128M)
> > @@ -59,7 +59,7 @@
> >  #define MODULES_END		(MODULES_VADDR + MODULES_VSIZE)
> >  #define MODULES_VADDR		(BPF_JIT_REGION_END)
> >  #define MODULES_VSIZE		(SZ_128M)
> > -#define VMEMMAP_START		(PAGE_OFFSET - VMEMMAP_SIZE)
> > +#define VMEMMAP_START		(-VMEMMAP_SIZE)
> >  #define PCI_IO_END		(VMEMMAP_START - SZ_2M)
> >  #define PCI_IO_START		(PCI_IO_END - PCI_IO_SIZE)
> >  #define FIXADDR_TOP		(PCI_IO_START - SZ_2M)
> > @@ -238,7 +238,7 @@ extern u64			vabits_user;
> >   * space. Testing the top bit for the start of the region is a
> >   * sufficient check.
> >   */
> > -#define __is_lm_address(addr)	(!!((addr) & BIT(VA_BITS - 1)))
> > +#define __is_lm_address(addr)	(!((addr) & BIT(VA_BITS - 1)))
> 
> Should it be (!!((addr) & BIT(VA_BITS - 2))) instead for a positive validation
> for addresses in the lower half ?
> 

I don't think so, we basically want to test which half of the address
space our address is in, so we test BIT(VA_BITS - 1). If one were to
test BIT(VA_BITS - 2) that would be testing which half of one of the
halves instead.

> >  
> >  #define __lm_to_phys(addr)	(((addr) & ~PAGE_OFFSET) + PHYS_OFFSET)
> >  #define __kimg_to_phys(addr)	((addr) - kimage_voffset)
> > diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> > index 2c41b04708fe..d0ab784304e9 100644
> > --- a/arch/arm64/include/asm/pgtable.h
> > +++ b/arch/arm64/include/asm/pgtable.h
> > @@ -32,7 +32,7 @@
> >   *	and fixed mappings
> >   */
> >  #define VMALLOC_START		(MODULES_END)
> > -#define VMALLOC_END		(PAGE_OFFSET - PUD_SIZE - VMEMMAP_SIZE - SZ_64K)
> > +#define VMALLOC_END		(- PUD_SIZE - VMEMMAP_SIZE - SZ_64K)
> 
> (-VMEMMAP_SIZE) and (- PUD_SIZE - VMEMMAP_SIZE - SZ_64K) depends on implicit sign
> inversion. IMHO it might be better to add [KERNEL|TTBR1]_MAX_VADDR in the equation.
>

Hmmm, okay, I see what you mean. I will play with this.

> >  
> >  #define vmemmap			((struct page *)VMEMMAP_START - (memstart_addr >> PAGE_SHIFT))
> >  
> > diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
> > index 9859e1178e6b..6ffcc32f35dd 100644
> > --- a/arch/arm64/kernel/hibernate.c
> > +++ b/arch/arm64/kernel/hibernate.c
> > @@ -497,7 +497,7 @@ int swsusp_arch_resume(void)
> >  		rc = -ENOMEM;
> >  		goto out;
> >  	}
> > -	rc = copy_page_tables(tmp_pg_dir, PAGE_OFFSET, 0);
> > +	rc = copy_page_tables(tmp_pg_dir, PAGE_OFFSET, VA_START);
> >  	if (rc)
> >  		goto out;
> >  
> > diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
> > index 14fe23cd5932..ee4e5bea8944 100644
> > --- a/arch/arm64/mm/dump.c
> > +++ b/arch/arm64/mm/dump.c
> > @@ -30,6 +30,8 @@
> >  #include <asm/ptdump.h>
> >  
> >  static const struct addr_marker address_markers[] = {
> > +	{ PAGE_OFFSET,			"Linear Mapping start" },
> > +	{ VA_START,			"Linear Mapping end" },
> >  #ifdef CONFIG_KASAN
> >  	{ KASAN_SHADOW_START,		"Kasan shadow start" },
> >  	{ KASAN_SHADOW_END,		"Kasan shadow end" },
> > @@ -43,10 +45,8 @@ static const struct addr_marker address_markers[] = {
> >  	{ PCI_IO_START,			"PCI I/O start" },
> >  	{ PCI_IO_END,			"PCI I/O end" },
> >  #ifdef CONFIG_SPARSEMEM_VMEMMAP
> > -	{ VMEMMAP_START,		"vmemmap start" },
> > -	{ VMEMMAP_START + VMEMMAP_SIZE,	"vmemmap end" },
> > +	{ VMEMMAP_START,		"vmemmap" },
> 
> Vmemmap end got dropped ?
> 

Yeah, IIRC this was because the marker never got printed, I will re-test
this.

> >  #endif
> > -	{ PAGE_OFFSET,			"Linear mapping" },
> >  	{ -1,				NULL },
> >  };
> >  
> > @@ -380,7 +380,7 @@ static void ptdump_initialize(void)
> >  static struct ptdump_info kernel_ptdump_info = {
> >  	.mm		= &init_mm,
> >  	.markers	= address_markers,
> > -	.base_addr	= VA_START,
> > +	.base_addr	= PAGE_OFFSET,
> >  };
> >  
> >  void ptdump_check_wx(void)
> > diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> > index d2adffb81b5d..574ed1d4be19 100644
> > --- a/arch/arm64/mm/init.c
> > +++ b/arch/arm64/mm/init.c
> > @@ -311,7 +311,7 @@ static void __init fdt_enforce_memory_region(void)
> >  
> >  void __init arm64_memblock_init(void)
> >  {
> > -	const s64 linear_region_size = -(s64)PAGE_OFFSET;
> > +	const s64 linear_region_size = BIT(VA_BITS - 1);
> >  
> >  	/* Handle linux,usable-memory-range property */
> >  	fdt_enforce_memory_region();
> > @@ -319,13 +319,6 @@ void __init arm64_memblock_init(void)
> >  	/* Remove memory above our supported physical address size */
> >  	memblock_remove(1ULL << PHYS_MASK_SHIFT, ULLONG_MAX);
> >  
> > -	/*
> > -	 * Ensure that the linear region takes up exactly half of the kernel
> > -	 * virtual address space. This way, we can distinguish a linear address
> > -	 * from a kernel/module/vmalloc address by testing a single bit.
> > -	 */
> > -	BUILD_BUG_ON(linear_region_size != BIT(VA_BITS - 1));
> > -
> >  	/*
> >  	 * Select a suitable value for the base of physical memory.
> >  	 */
> > diff --git a/arch/arm64/mm/kasan_init.c b/arch/arm64/mm/kasan_init.c
> > index 296de39ddee5..8066621052db 100644
> > --- a/arch/arm64/mm/kasan_init.c
> > +++ b/arch/arm64/mm/kasan_init.c
> > @@ -229,10 +229,10 @@ void __init kasan_init(void)
> >  	kasan_map_populate(kimg_shadow_start, kimg_shadow_end,
> >  			   early_pfn_to_nid(virt_to_pfn(lm_alias(_text))));
> >  
> > -	kasan_populate_early_shadow((void *)KASAN_SHADOW_START,
> > -				    (void *)mod_shadow_start);
> > +	kasan_populate_early_shadow(kasan_mem_to_shadow((void *) VA_START),
> > +				   (void *)mod_shadow_start);
> >  	kasan_populate_early_shadow((void *)kimg_shadow_end,
> > -				    kasan_mem_to_shadow((void *)PAGE_OFFSET));
> > +				   (void *)KASAN_SHADOW_END);
> >  
> >  	if (kimg_shadow_start > mod_shadow_end)
> >  		kasan_populate_early_shadow((void *)mod_shadow_end,
> > diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> > index a1bfc4413982..16063ff10c6d 100644
> > --- a/arch/arm64/mm/mmu.c
> > +++ b/arch/arm64/mm/mmu.c
> > @@ -409,7 +409,7 @@ static phys_addr_t pgd_pgtable_alloc(int shift)
> >  static void __init create_mapping_noalloc(phys_addr_t phys, unsigned long virt,
> >  				  phys_addr_t size, pgprot_t prot)
> >  {
> > -	if (virt < VMALLOC_START) {
> > +	if ((virt >= VA_START) && (virt < VMALLOC_START)) {
> >  		pr_warn("BUG: not creating mapping for %pa at 0x%016lx - outside kernel range\n",
> >  			&phys, virt);
> >  		return;
> > @@ -436,7 +436,7 @@ void __init create_pgd_mapping(struct mm_struct *mm, phys_addr_t phys,
> >  static void update_mapping_prot(phys_addr_t phys, unsigned long virt,
> >  				phys_addr_t size, pgprot_t prot)
> >  {
> > -	if (virt < VMALLOC_START) {
> > +	if ((virt >= VA_START) && (virt < VMALLOC_START)) {
> >  		pr_warn("BUG: not updating mapping for %pa at 0x%016lx - outside kernel range\n",
> >  			&phys, virt);
> >  		return;
> > 
> 
> Seems like adding (virt >= VA_START) is a semantics change here. In the previous
> scheme (virt < VMALLOC_START) included undefined addresses below VA_START as well
> which will be omitted here. Should not we add (virt < PAGE_OFFSET) to check those ?

Not quite, the original code would not warn if we passed an address in
the direct linear mapping. This conditional logic has been modified to
reflect the fact that the direct linear mapping has moved.

If the original behaviour was a bug then I'm happy to fix it :-).

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
