Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 784662A3B7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 11:31:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uQM95cxJu/FXdP0nV37Fi0nKkBibgZ1blQRW3dlj1nQ=; b=B2CGq3mJkW4SeR
	p39g4pFaRfanl9ACDWKUuW8jh72umH6Gh91wKyfcUUPUP/j4gBBk6n7ABPDhBAYpILVZJjIZDH5UG
	1wstEsmQtXOyYkjBg2nRFrrvg8AfWCWB8iNeg+VBoVKhxdy5ncLkNtgmnIIbxZFP/Oq6O6mxkNaTj
	0wCac+fPRVfLT0I1mPF47ZVTmhEhOPO5epPGYgAeoPNmVgfcJYiPv5NP2wmtTdUTywqKAHZWCB0RJ
	0gbERMWRhhxBS0xKMuJXwLHBmkgZ8w2hRCNqwmqAEix4ALh5y/rcvk7KhnFcOPhA0URjkFFZNteeC
	/ZxPfkKCAQHPJ1+gVn3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUT1E-00069X-6Q; Sat, 25 May 2019 09:31:12 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUT17-00068l-Ao
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 09:31:06 +0000
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4P9U4Ze116641
 for <linux-arm-kernel@lists.infradead.org>; Sat, 25 May 2019 05:31:01 -0400
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2sq275h5d8-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Sat, 25 May 2019 05:31:01 -0400
Received: from localhost
 by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Sat, 25 May 2019 10:30:59 +0100
Received: from b06cxnps3074.portsmouth.uk.ibm.com (9.149.109.194)
 by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Sat, 25 May 2019 10:30:53 +0100
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x4P9UqPT61014152
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 25 May 2019 09:30:52 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B7C6611C054;
 Sat, 25 May 2019 09:30:52 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0478411C04A;
 Sat, 25 May 2019 09:30:51 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.205.112])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Sat, 25 May 2019 09:30:50 +0000 (GMT)
Date: Sat, 25 May 2019 12:30:49 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH v4 1/3] amr64: map FDT as RW for early_init_dt_scan()
References: <20190519160446.320-1-hsinyi@chromium.org>
 <5ce73503.1c69fb81.5f889.1d84@mx.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5ce73503.1c69fb81.5f889.1d84@mx.google.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19052509-0028-0000-0000-000003714C55
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19052509-0029-0000-0000-00002431045F
Message-Id: <20190525093048.GB31026@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-25_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905250067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_023105_486242_568FCCDE 
X-CRM114-Status: GOOD (  25.68  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yu Zhao <yuzhao@google.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 05:04:18PM -0700, Stephen Boyd wrote:
> Quoting Hsin-Yi Wang (2019-05-19 09:04:44)
> > diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> > index a170c6369a68..29648e86f7e5 100644
> > --- a/arch/arm64/mm/mmu.c
> > +++ b/arch/arm64/mm/mmu.c
> > @@ -940,12 +940,12 @@ void *__init __fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t prot)
> >         return dt_virt;
> >  }
> >  
> > -void *__init fixmap_remap_fdt(phys_addr_t dt_phys)
> > +void *__init fixmap_remap_fdt(phys_addr_t dt_phys, pgprot_t prot)
> >  {
> >         void *dt_virt;
> >         int size;
> >  
> > -       dt_virt = __fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL_RO);
> > +       dt_virt = __fixmap_remap_fdt(dt_phys, &size, prot);
> >         if (!dt_virt)
> >                 return NULL;
> >  
> 
> Sorry, I'm still confused why we want to call memblock_reserve() again.
> Why not avoid it?
 
> diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
> index 67ef25d037ea..d0d9de9da5c1 100644
> --- a/arch/arm64/include/asm/mmu.h
> +++ b/arch/arm64/include/asm/mmu.h
> @@ -137,7 +137,7 @@ extern void init_mem_pgprot(void);
>  extern void create_pgd_mapping(struct mm_struct *mm, phys_addr_t phys,
>  			       unsigned long virt, phys_addr_t size,
>  			       pgprot_t prot, bool page_mappings_only);
> -extern void *fixmap_remap_fdt(phys_addr_t dt_phys);
> +extern void *__fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t prot);

I'd drop '__' prefix from __fixmap_remap_fdt is it's the only function to
remain.
Otherwise makes perfect sense.

>  extern void mark_linear_text_alias_ro(void);
>  
>  #define INIT_MM_CONTEXT(name)	\
> diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
> index b09b6f75f759..0701c2cf1534 100644
> --- a/arch/arm64/kernel/kaslr.c
> +++ b/arch/arm64/kernel/kaslr.c
> @@ -65,9 +65,6 @@ static __init const u8 *kaslr_get_cmdline(void *fdt)
>  	return default_cmdline;
>  }
>  
> -extern void *__init __fixmap_remap_fdt(phys_addr_t dt_phys, int *size,
> -				       pgprot_t prot);
> -
>  /*
>   * This routine will be executed with the kernel mapped at its default virtual
>   * address, and if it returns successfully, the kernel will be remapped, and
> diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
> index 413d566405d1..3e97354566ff 100644
> --- a/arch/arm64/kernel/setup.c
> +++ b/arch/arm64/kernel/setup.c
> @@ -181,9 +181,13 @@ static void __init smp_build_mpidr_hash(void)
>  
>  static void __init setup_machine_fdt(phys_addr_t dt_phys)
>  {
> -	void *dt_virt = fixmap_remap_fdt(dt_phys);
> +	int size;
> +	void *dt_virt = __fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL);
>  	const char *name;
>  
> +	if (dt_virt)
> +		memblock_reserve(dt_phys, size);
> +
>  	if (!dt_virt || !early_init_dt_scan(dt_virt)) {
>  		pr_crit("\n"
>  			"Error: invalid device tree blob at physical address %pa (virtual address 0x%p)\n"
> @@ -195,6 +199,9 @@ static void __init setup_machine_fdt(phys_addr_t dt_phys)
>  			cpu_relax();
>  	}
>  
> +	/* Early fixups are done, map the FDT as read-only now */
> +	__fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL_RO);
> +
>  	name = of_flat_dt_get_machine_name();
>  	if (!name)
>  		return;
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index a170c6369a68..ddf6086cd9dd 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -940,19 +940,6 @@ void *__init __fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t prot)
>  	return dt_virt;
>  }
>  
> -void *__init fixmap_remap_fdt(phys_addr_t dt_phys)
> -{
> -	void *dt_virt;
> -	int size;
> -
> -	dt_virt = __fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL_RO);
> -	if (!dt_virt)
> -		return NULL;
> -
> -	memblock_reserve(dt_phys, size);
> -	return dt_virt;
> -}
> -
>  int __init arch_ioremap_pud_supported(void)
>  {
>  	/* only 4k granule supports level 1 block mappings */
> 

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
