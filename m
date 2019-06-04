Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3F734B09
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 16:55:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A7jopPi1tZQEI5QxVJuBreIvkYCpu5Szt1spjg2LQd8=; b=QKB7s/MnOCH4HA
	g5BGwJE6XhMYAeBUu+DReeTJPomHnmZtN6VIHWG8VSIfKRTTvE4kQeuQJyXPRpCZAap+zvbLhMxhE
	DN0Y87wriGN8g7rJBiwEZhl5DVHIYelvetfLhoNPDapBEfZ/r4N5MzXGkTAUtxGbEnhlT864werSR
	pDF/UlwRMVA7LJxKqhTQojy/S6YTGEwYVdKnwrejU4iaeHApHSiMTsWAGGe142zx2EYuYZKBG5jg6
	KQWG8BbKDvs3f3VJkG+SekyTX5MCxENNpNm4vb/+XkFc1DCtdhRyYOTbryu6bsmtzQn8YPBMVya1q
	2qNZEca08AHdjgBtF50g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAq5-0004uN-4E; Tue, 04 Jun 2019 14:55:01 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYApk-0004W6-PR
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 14:54:48 +0000
Received: from pps.filterd (m0098404.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x54EcMsq042140
 for <linux-arm-kernel@lists.infradead.org>; Tue, 4 Jun 2019 10:54:33 -0400
Received: from e06smtp01.uk.ibm.com (e06smtp01.uk.ibm.com [195.75.94.97])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2swssckenr-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Tue, 04 Jun 2019 10:54:33 -0400
Received: from localhost
 by e06smtp01.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Tue, 4 Jun 2019 15:54:30 +0100
Received: from b06cxnps3074.portsmouth.uk.ibm.com (9.149.109.194)
 by e06smtp01.uk.ibm.com (192.168.101.131) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 4 Jun 2019 15:54:26 +0100
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com
 [9.149.105.62])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x54EsPk160882980
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 4 Jun 2019 14:54:25 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A5A23AE045;
 Tue,  4 Jun 2019 14:54:25 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A6587AE055;
 Tue,  4 Jun 2019 14:54:24 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.53])
 by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Tue,  4 Jun 2019 14:54:24 +0000 (GMT)
Date: Tue, 4 Jun 2019 17:54:22 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH -next] arm64/mm: fix a bogus GFP flag in pgd_alloc()
References: <1559656836-24940-1-git-send-email-cai@lca.pw>
 <20190604142338.GC24467@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604142338.GC24467@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19060414-4275-0000-0000-0000033CA09A
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19060414-4276-0000-0000-0000384CB014
Message-Id: <20190604145422.GG8417@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-04_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=7 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906040097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_075441_659635_E0207F98 
X-CRM114-Status: GOOD (  28.02  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
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
 akpm@linux-foundation.org, guro@fb.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 03:23:38PM +0100, Mark Rutland wrote:
> On Tue, Jun 04, 2019 at 10:00:36AM -0400, Qian Cai wrote:
> > The commit "arm64: switch to generic version of pte allocation"
> > introduced endless failures during boot like,
> > 
> > kobject_add_internal failed for pgd_cache(285:chronyd.service) (error:
> > -2 parent: cgroup)
> > 
> > It turns out __GFP_ACCOUNT is passed to kernel page table allocations
> > and then later memcg finds out those don't belong to any cgroup.
> 
> Mike, I understood from [1] that this wasn't expected to be a problem,
> as the accounting should bypass kernel threads.
> 
> Was that assumption wrong, or is something different happening here?

I was under impression that all allocations are going through
__memcg_kmem_charge() which does the bypass.

Apparently, it's not the case :(

> > 
> > backtrace:
> >   kobject_add_internal
> >   kobject_init_and_add
> >   sysfs_slab_add+0x1a8
> >   __kmem_cache_create
> >   create_cache
> >   memcg_create_kmem_cache
> >   memcg_kmem_cache_create_func
> >   process_one_work
> >   worker_thread
> >   kthread
> > 
> > Signed-off-by: Qian Cai <cai@lca.pw>
> > ---
> >  arch/arm64/mm/pgd.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/mm/pgd.c b/arch/arm64/mm/pgd.c
> > index 769516cb6677..53c48f5c8765 100644
> > --- a/arch/arm64/mm/pgd.c
> > +++ b/arch/arm64/mm/pgd.c
> > @@ -38,7 +38,7 @@ pgd_t *pgd_alloc(struct mm_struct *mm)
> >  	if (PGD_SIZE == PAGE_SIZE)
> >  		return (pgd_t *)__get_free_page(gfp);
> >  	else
> > -		return kmem_cache_alloc(pgd_cache, gfp);
> > +		return kmem_cache_alloc(pgd_cache, GFP_PGTABLE_KERNEL);
> 
> This is used to allocate PGDs for both user and kernel pagetables (e.g.
> for the efi runtime services), so while this may fix the regression, I'm
> not sure it's the right fix.

Me neither.
 
> Do we need a separate pgd_alloc_kernel()?
 
I'd like to take a closer look at memcg paths once again before adding
pgd_alloc_kernel().

Johannes, Roman, can you please advise anything?

> Thanks,
> Mark.
> 
> [1] https://lkml.kernel.org/r/20190505061956.GE15755@rapoport-lnx
> 

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
