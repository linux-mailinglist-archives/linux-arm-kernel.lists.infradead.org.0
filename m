Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CA3366DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 23:34:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lMSlhhKNwXCEWBa6PTluEeZglGRKS8KtApQKY1XGiBQ=; b=kXGm/iaTZmfG2+
	Cd8r35cpMmTUBYrEaNhbuZx8/y0grUUIyqrK8LTu2mhZb4O8UTcC63X+9wFvPcT73gxZdkCJjBd2E
	scOblQZvQXrjYmbci7ZzKDu7uTgYDeWox0EoyKF8FHtI648aWMvuAioVp4K3uq+DWd/+fgR42uywc
	QRGd0JowgQsD91fcYtEueAh2Mz67gKJ71pAZckRzn5FqYS4T3/X6bWoI4fQof39l5Z2wSPYxeBsor
	ctMcNJjPvy+HWfzK809fjCi1Tr+oqeC3z4Cqo6tVLp5Pv14SLMWEZ1DMK6jyMAVFFuUb6EBcf5PyX
	5ovCyaTdNYTt6jzL2E/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYdXr-00047W-1K; Wed, 05 Jun 2019 21:34:07 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYdXi-00045y-Fj
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 21:34:00 +0000
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x55LWXxY185896
 for <linux-arm-kernel@lists.infradead.org>; Wed, 5 Jun 2019 17:33:52 -0400
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2sxkuh52sd-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 05 Jun 2019 17:33:52 -0400
Received: from localhost
 by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Wed, 5 Jun 2019 22:33:50 +0100
Received: from b06cxnps3074.portsmouth.uk.ibm.com (9.149.109.194)
 by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 5 Jun 2019 22:33:46 +0100
Received: from b06wcsmtp001.portsmouth.uk.ibm.com
 (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x55LXjbm54984766
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 5 Jun 2019 21:33:45 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id ABD83A405F;
 Wed,  5 Jun 2019 21:33:45 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 80203A4054;
 Wed,  5 Jun 2019 21:33:44 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.207.19])
 by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Wed,  5 Jun 2019 21:33:44 +0000 (GMT)
Date: Thu, 6 Jun 2019 00:33:42 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH -next] arm64/mm: fix a bogus GFP flag in pgd_alloc()
References: <1559656836-24940-1-git-send-email-cai@lca.pw>
 <20190604142338.GC24467@lakrids.cambridge.arm.com>
 <20190604143020.GD24467@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604143020.GD24467@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19060521-0020-0000-0000-000003469105
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19060521-0021-0000-0000-00002199A1F4
Message-Id: <20190605213342.GA7023@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-05_13:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=60 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906050136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_143358_644020_A1077E50 
X-CRM114-Status: GOOD (  31.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 mhocko@kernel.org, linux-mm@kvack.org, Qian Cai <cai@lca.pw>,
 vdavydov.dev@gmail.com, hannes@cmpxchg.org, cgroups@vger.kernel.org,
 akpm@linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 03:30:20PM +0100, Mark Rutland wrote:
> On Tue, Jun 04, 2019 at 03:23:38PM +0100, Mark Rutland wrote:
> > On Tue, Jun 04, 2019 at 10:00:36AM -0400, Qian Cai wrote:
> > > The commit "arm64: switch to generic version of pte allocation"
> > > introduced endless failures during boot like,
> > > 
> > > kobject_add_internal failed for pgd_cache(285:chronyd.service) (error:
> > > -2 parent: cgroup)
> > > 
> > > It turns out __GFP_ACCOUNT is passed to kernel page table allocations
> > > and then later memcg finds out those don't belong to any cgroup.
> > 
> > Mike, I understood from [1] that this wasn't expected to be a problem,
> > as the accounting should bypass kernel threads.
> > 
> > Was that assumption wrong, or is something different happening here?
> > 
> > > backtrace:
> > >   kobject_add_internal
> > >   kobject_init_and_add
> > >   sysfs_slab_add+0x1a8
> > >   __kmem_cache_create
> > >   create_cache
> > >   memcg_create_kmem_cache
> > >   memcg_kmem_cache_create_func
> > >   process_one_work
> > >   worker_thread
> > >   kthread
> > > 
> > > Signed-off-by: Qian Cai <cai@lca.pw>
> > > ---
> > >  arch/arm64/mm/pgd.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/arm64/mm/pgd.c b/arch/arm64/mm/pgd.c
> > > index 769516cb6677..53c48f5c8765 100644
> > > --- a/arch/arm64/mm/pgd.c
> > > +++ b/arch/arm64/mm/pgd.c
> > > @@ -38,7 +38,7 @@ pgd_t *pgd_alloc(struct mm_struct *mm)
> > >  	if (PGD_SIZE == PAGE_SIZE)
> > >  		return (pgd_t *)__get_free_page(gfp);
> > >  	else
> > > -		return kmem_cache_alloc(pgd_cache, gfp);
> > > +		return kmem_cache_alloc(pgd_cache, GFP_PGTABLE_KERNEL);
> > 
> > This is used to allocate PGDs for both user and kernel pagetables (e.g.
> > for the efi runtime services), so while this may fix the regression, I'm
> > not sure it's the right fix.
> 
> I see that since [1], pgd_alloc() was updated to special-case the
> init_mm, which is not sufficient for cases like:
> 
> 	efi_mm.pgd = pgd_alloc(&efi_mm)
> 
> ... which occurs in a kthread.
> 
> So let's have a pgd_alloc_kernel() to make that explicit.

I've hit "send" before seeing this one :)

Well, to be completely on the safe side an explicit pgd_alloc_kernel()
sounds right. Then it won't be subject to future changes in memcg and will
always "Do The Right Thing".
 
> Thanks,
> Mark.
> 

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
