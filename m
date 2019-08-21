Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E8897F98
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 18:02:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YvKSfV7RR15B0ekcXu5fiJQFbBocdenRs+qdhno92xw=; b=Qd2Fuilrnre8JW
	wc4X2l66DPnOoBrdKVmSVfa3jIZDNc5M7THsYfjKVs+MWm3vWu9drODQw1qwnrN9pcUS72HVP/5jA
	ERzRrp1EhwF1L0HKxNNXEzq3ksDzRWO5Y0l8AiaoYjopRMB5AC0ApGd0dbRRVna3zPi38WX/1fwK8
	6T9eHELNAyrEvOe6xm4YNGBhOrF0XxSK07F4WPXanoVHOZqNOKS6ZP0M81s2gtUTLvY45tbH1hYfx
	sy8uW1jeFjifFfuoJ5IRetNrp6VE7vdPlsyf82kqxl4kJ48+q+rgqd8nIdCpcld0V6DrAGMkDu748
	O2cHh/D4/K8JCLQiDf2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0T3y-00068d-PJ; Wed, 21 Aug 2019 16:02:18 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0T3q-000685-V8
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 16:02:12 +0000
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7LFvbK2088968
 for <linux-arm-kernel@lists.infradead.org>; Wed, 21 Aug 2019 12:02:10 -0400
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2uh87kjtq6-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 21 Aug 2019 12:02:10 -0400
Received: from localhost
 by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Wed, 21 Aug 2019 17:02:07 +0100
Received: from b06cxnps4075.portsmouth.uk.ibm.com (9.149.109.197)
 by e06smtp04.uk.ibm.com (192.168.101.134) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 21 Aug 2019 17:02:03 +0100
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com
 [9.149.105.62])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x7LG22In48693276
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 21 Aug 2019 16:02:02 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 1ABF0AE053;
 Wed, 21 Aug 2019 16:02:02 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 4C708AE04D;
 Wed, 21 Aug 2019 16:02:01 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.59])
 by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Wed, 21 Aug 2019 16:02:01 +0000 (GMT)
Date: Wed, 21 Aug 2019 19:01:59 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] mm: consolidate pgtable_cache_init() and pgd_cache_init()
References: <1566400018-15607-1-git-send-email-rppt@linux.ibm.com>
 <20190821154942.js4u466rolnekwmq@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821154942.js4u466rolnekwmq@willie-the-truck>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19082116-0016-0000-0000-000002A129E4
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19082116-0017-0000-0000-000033015F04
Message-Id: <20190821160159.GG26713@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-21_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908210166
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_090211_015922_EECEDC69 
X-CRM114-Status: GOOD (  28.41  )
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
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 04:49:42PM +0100, Will Deacon wrote:
> On Wed, Aug 21, 2019 at 06:06:58PM +0300, Mike Rapoport wrote:
> > Both pgtable_cache_init() and pgd_cache_init() are used to initialize kmem
> > cache for page table allocations on several architectures that do not use
> > PAGE_SIZE tables for one or more levels of the page table hierarchy.
> > 
> > Most architectures do not implement these functions and use __week default
> > NOP implementation of pgd_cache_init(). Since there is no such default for
> > pgtable_cache_init(), its empty stub is duplicated among most
> > architectures.
> > 
> > Rename the definitions of pgd_cache_init() to pgtable_cache_init() and drop
> > empty stubs of pgtable_cache_init().
> > 
> > Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> > ---
> 
> [...]
> 
> > diff --git a/arch/arm64/mm/pgd.c b/arch/arm64/mm/pgd.c
> > index 7548f9c..4a64089 100644
> > --- a/arch/arm64/mm/pgd.c
> > +++ b/arch/arm64/mm/pgd.c
> > @@ -35,7 +35,7 @@ void pgd_free(struct mm_struct *mm, pgd_t *pgd)
> >  		kmem_cache_free(pgd_cache, pgd);
> >  }
> >  
> > -void __init pgd_cache_init(void)
> > +void __init pgtable_cache_init(void)
> >  {
> >  	if (PGD_SIZE == PAGE_SIZE)
> >  		return;
> 
> [...]
> 
> > diff --git a/init/main.c b/init/main.c
> > index b90cb5f..2fa8038 100644
> > --- a/init/main.c
> > +++ b/init/main.c
> > @@ -507,7 +507,7 @@ void __init __weak mem_encrypt_init(void) { }
> >  
> >  void __init __weak poking_init(void) { }
> >  
> > -void __init __weak pgd_cache_init(void) { }
> > +void __init __weak pgtable_cache_init(void) { }
> >  
> >  bool initcall_debug;
> >  core_param(initcall_debug, initcall_debug, bool, 0644);
> > @@ -565,7 +565,6 @@ static void __init mm_init(void)
> >  	init_espfix_bsp();
> >  	/* Should be run after espfix64 is set up. */
> >  	pti_init();
> > -	pgd_cache_init();
> >  }
> 
> AFAICT, this change means we now initialise our pgd cache before
> debug_objects_mem_init() has run.

Right.

> Is that going to cause fireworks with CONFIG_DEBUG_OBJECTS when we later
> free a pgd?

We don't allocate a pgd at that time, we only create the kmem cache for the
future allocations. And that cache is never destroyed anyway.

> Will

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
