Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D3897EB5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 17:29:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0obzNDKC6kuWlwcJG7I0ooaYod3p9IayyRA07hy4Ki4=; b=CGZrpMC9eO7yMx
	z60TOknN3dLZEXQG0IUl2ynvStUvfpDqY6PGY+pJ2131UTSCnAPgXkBIQQu8pq0aXNlGxpu/60sQN
	P7C438zRqBw0Pd49A3f0WilpIgrLH6YaKFsjwujtcQWJnM7sBx6zrj+Y+RJOxfWuEiSDlJMmJwuLS
	V0NYbNGP7GFYiZXO433t/gDajBOekUa6eqbNFeAj3s2s+WBTWf7TKvecI0uvDQaBsu3cnYWh68cK5
	FHhtpxC/ZUDN9Z572fGedHi7yCELDpSRjl5nfM5KLveUjoKJNIkAzOodsc2NuMONH4isRmPczmWUy
	KHCtoZTzimKG6TAR6EkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0SYW-0003xL-3e; Wed, 21 Aug 2019 15:29:48 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0SYL-0003q8-9M
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 15:29:38 +0000
Received: from pps.filterd (m0098404.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7LFO9I7114259
 for <linux-arm-kernel@lists.infradead.org>; Wed, 21 Aug 2019 11:29:37 -0400
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2uh64q7k8e-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 21 Aug 2019 11:29:36 -0400
Received: from localhost
 by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Wed, 21 Aug 2019 16:29:33 +0100
Received: from b06cxnps4076.portsmouth.uk.ibm.com (9.149.109.198)
 by e06smtp04.uk.ibm.com (192.168.101.134) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 21 Aug 2019 16:29:30 +0100
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x7LFTTFv31391964
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 21 Aug 2019 15:29:29 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A313E11C050;
 Wed, 21 Aug 2019 15:29:29 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id CCED811C04C;
 Wed, 21 Aug 2019 15:29:28 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.59])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Wed, 21 Aug 2019 15:29:28 +0000 (GMT)
Date: Wed, 21 Aug 2019 18:29:27 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH] mm: consolidate pgtable_cache_init() and pgd_cache_init()
References: <1566400018-15607-1-git-send-email-rppt@linux.ibm.com>
 <20190821151544.GC28819@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821151544.GC28819@bombadil.infradead.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19082115-0016-0000-0000-000002A1280D
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19082115-0017-0000-0000-000033015D0E
Message-Id: <20190821152926.GF26713@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-21_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=887 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908210162
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_082937_335042_F8367994 
X-CRM114-Status: GOOD (  21.76  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 08:15:44AM -0700, Matthew Wilcox wrote:
> On Wed, Aug 21, 2019 at 06:06:58PM +0300, Mike Rapoport wrote:
> > +++ b/arch/alpha/include/asm/pgtable.h
> > @@ -362,7 +362,6 @@ extern void paging_init(void);
> >  /*
> >   * No page table caches to initialise
> >   */
> > -#define pgtable_cache_init()	do { } while (0)
> 
> Delete the comment too?
> 
> > +++ b/arch/arc/include/asm/pgtable.h
> > @@ -398,7 +398,6 @@ void update_mmu_cache(struct vm_area_struct *vma, unsigned long address,
> >  /*
> >   * No page table caches to initialise
> >   */
> > -#define pgtable_cache_init()   do { } while (0)
> 
> ditto
> 
> > +++ b/arch/arm/include/asm/pgtable.h
> > @@ -368,7 +368,6 @@ static inline pte_t pte_modify(pte_t pte, pgprot_t newprot)
> >  #define HAVE_ARCH_UNMAPPED_AREA
> >  #define HAVE_ARCH_UNMAPPED_AREA_TOPDOWN
> >  
> > -#define pgtable_cache_init() do { } while (0)
> >  
> >  #endif /* !__ASSEMBLY__ */
> 
> delete one of the two blank lines?
> 
> > +++ b/arch/c6x/include/asm/pgtable.h
> > @@ -62,7 +62,6 @@ extern unsigned long empty_zero_page;
> >  /*
> >   * No page table caches to initialise
> >   */
> > -#define pgtable_cache_init()   do { } while (0)
> 
> delete comment ... more of these.

Actually, most of them :)
Thanks for spotting this.
 

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
