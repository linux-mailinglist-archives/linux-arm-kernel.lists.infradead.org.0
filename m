Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D241134928
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 18:20:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z5Bmio7yMBxtgjU9eHU0uO5NX4EkTXL+VEMdhiXnpHQ=; b=qyAfXhZEcdNFiC
	+2IuQwcZIwfP0lKJyZyaPLksyFn9MUeQQegkQyRb4AIm61zkmYnOOZl2wRbRXl+AnPU5CXSMdtcwP
	6KAhpuyU3aCpWtww0k37zT56H5lPKtcCpbElnoGSq/4qgFPFJuJ6VR7m217ruBcZwAKtvse10nvLu
	QahHbRjUFzZhkoKxQjGSdZ+GeCJttXfvVlqvGrK4v41b9UtxpqRkpFFjQ5As3gm1xDGfcjLULpRSA
	6M/nZAbC+snEggM1QtXOZ3Gd4LIRopoqGWZ49kvQvtjZPedpbNZHWWbhF8mhMhmioSHOv0d2N0k/0
	Emc/Y1UKYqLMY1UZfERw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipF0d-00014o-Ok; Wed, 08 Jan 2020 17:20:43 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipF0Q-00013X-4J
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 17:20:31 +0000
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230]
 helo=[192.168.11.155])
 by ale.deltatee.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <logang@deltatee.com>)
 id 1ipF00-0004MS-Qh; Wed, 08 Jan 2020 10:20:05 -0700
To: David Hildenbrand <david@redhat.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-ia64@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-s390@vger.kernel.org,
 linux-sh@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 linux-mm@kvack.org, Dan Williams <dan.j.williams@intel.com>,
 Michal Hocko <mhocko@kernel.org>, Andrew Morton <akpm@linux-foundation.org>
References: <20200107205959.7575-1-logang@deltatee.com>
 <20200107205959.7575-7-logang@deltatee.com>
 <a5501f2a-ff8d-cea2-1540-1a70ea6bc2d2@redhat.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <9226e0e4-832b-d873-f433-f29a7853f11e@deltatee.com>
Date: Wed, 8 Jan 2020 10:20:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <a5501f2a-ff8d-cea2-1540-1a70ea6bc2d2@redhat.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 70.73.163.230
X-SA-Exim-Rcpt-To: borntraeger@de.ibm.com, gor@linux.ibm.com,
 heiko.carstens@de.ibm.com, ebadger@gigaio.com, peterz@infradead.org,
 luto@kernel.org, dave.hansen@linux.intel.com, bp@alien8.de, mingo@redhat.com,
 tglx@linutronix.de, benh@kernel.crashing.org, will@kernel.org,
 catalin.marinas@arm.com, hch@lst.de, akpm@linux-foundation.org,
 mhocko@kernel.org, dan.j.williams@intel.com, linux-mm@kvack.org,
 platform-driver-x86@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-s390@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-ia64@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, david@redhat.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 MYRULES_FREE autolearn=no autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 6/8] s390/mm: Thread pgprot_t through vmem_add_mapping()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_092030_167387_CAD2F634 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Eric Badger <ebadger@gigaio.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020-01-08 5:43 a.m., David Hildenbrand wrote:
> On 07.01.20 21:59, Logan Gunthorpe wrote:
>> In prepartion to support a pgprot_t argument for arch_add_memory().
>>
>> Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
>> Cc: Vasily Gorbik <gor@linux.ibm.com>
>> Cc: Christian Borntraeger <borntraeger@de.ibm.com>
>> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
>> ---
>>  arch/s390/include/asm/pgtable.h |  3 ++-
>>  arch/s390/mm/extmem.c           |  3 ++-
>>  arch/s390/mm/init.c             |  2 +-
>>  arch/s390/mm/vmem.c             | 10 +++++-----
>>  4 files changed, 10 insertions(+), 8 deletions(-)
>>
>> diff --git a/arch/s390/include/asm/pgtable.h b/arch/s390/include/asm/pgtable.h
>> index 7b03037a8475..e667a1a96879 100644
>> --- a/arch/s390/include/asm/pgtable.h
>> +++ b/arch/s390/include/asm/pgtable.h
>> @@ -1640,7 +1640,8 @@ static inline swp_entry_t __swp_entry(unsigned long type, unsigned long offset)
>>  
>>  #define kern_addr_valid(addr)   (1)
>>  
>> -extern int vmem_add_mapping(unsigned long start, unsigned long size);
>> +extern int vmem_add_mapping(unsigned long start, unsigned long size,
>> +			    pgprot_t prot);
>>  extern int vmem_remove_mapping(unsigned long start, unsigned long size);
>>  extern int s390_enable_sie(void);
>>  extern int s390_enable_skey(void);
>> diff --git a/arch/s390/mm/extmem.c b/arch/s390/mm/extmem.c
>> index fd0dae9d10f4..6cf7029a7b35 100644
>> --- a/arch/s390/mm/extmem.c
>> +++ b/arch/s390/mm/extmem.c
>> @@ -313,7 +313,8 @@ __segment_load (char *name, int do_nonshared, unsigned long *addr, unsigned long
>>  		goto out_free;
>>  	}
>>  
>> -	rc = vmem_add_mapping(seg->start_addr, seg->end - seg->start_addr + 1);
>> +	rc = vmem_add_mapping(seg->start_addr, seg->end - seg->start_addr + 1,
>> +			      PAGE_KERNEL);
>>  
>>  	if (rc)
>>  		goto out_free;
>> diff --git a/arch/s390/mm/init.c b/arch/s390/mm/init.c
>> index a0c88c1c9ad0..ef19522ddad2 100644
>> --- a/arch/s390/mm/init.c
>> +++ b/arch/s390/mm/init.c
>> @@ -277,7 +277,7 @@ int arch_add_memory(int nid, u64 start, u64 size,
>>  	if (WARN_ON_ONCE(modifiers->altmap))
>>  		return -EINVAL;
>>  
>> -	rc = vmem_add_mapping(start, size);
>> +	rc = vmem_add_mapping(start, size, PAGE_KERNEL);
>>  	if (rc)
>>  		return rc;
>>  
>> diff --git a/arch/s390/mm/vmem.c b/arch/s390/mm/vmem.c
>> index b403fa14847d..8a5e95f184a2 100644
>> --- a/arch/s390/mm/vmem.c
>> +++ b/arch/s390/mm/vmem.c
>> @@ -66,7 +66,7 @@ pte_t __ref *vmem_pte_alloc(void)
>>  /*
>>   * Add a physical memory range to the 1:1 mapping.
>>   */
>> -static int vmem_add_mem(unsigned long start, unsigned long size)
>> +static int vmem_add_mem(unsigned long start, unsigned long size, pgprot_t prot)
>>  {
>>  	unsigned long pgt_prot, sgt_prot, r3_prot;
>>  	unsigned long pages4k, pages1m, pages2g;
>> @@ -79,7 +79,7 @@ static int vmem_add_mem(unsigned long start, unsigned long size)
>>  	pte_t *pt_dir;
>>  	int ret = -ENOMEM;
>>  
>> -	pgt_prot = pgprot_val(PAGE_KERNEL);
>> +	pgt_prot = pgprot_val(prot);
>>  	sgt_prot = pgprot_val(SEGMENT_KERNEL);
>>  	r3_prot = pgprot_val(REGION3_KERNEL);
> 
> So, if we map as huge/gigantic pages, the protection would be discarded?
> That looks wrong.
> 
> s390x does not support ZONE_DEVICE yet. Maybe simply bail out for s390x
> as you do for sh to make your life easier?

Yeah, ok, makes sense to me; I'll change it for v3.

Logan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
