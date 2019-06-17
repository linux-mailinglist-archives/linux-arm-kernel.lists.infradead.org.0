Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26175486BC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 17:13:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mZkFWbMDCn/GNGVUAW/flshZ96B1Wmk3RL9qhEkICG4=; b=aRNA1U/kf2wgiD
	kQ1lrStuf4dCWD0N0avKAuBc+QFgvUPE6RSGqXvNgLjOFhMps56/kQwU+JYQxPGpkP4ntGV4ctdzf
	xfNcBvkC4wHJgEXI42+C9cvrS68b/qOFzWUxdIkB5PIQm+FpSorMMcSF/207JokKjceVuOpnwaiOb
	6pYs6+FD7D0a1+VPAwkgspeeTOoIRVjlQgGAhkmJgrzX5dE4xyBAnKLdYzzicarM4+MPhg3h91+N5
	NoBl2nf9of2tShs0lYunMiANJdxt/LD4j1l+azI87cT2pOzFIrXwEbmO2xPy7QseePwMt5o8S+xWz
	jMrz2/UvmohAs68VgpDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hctK1-0003T6-KM; Mon, 17 Jun 2019 15:13:26 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctJh-0003Rr-1x
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 15:13:07 +0000
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5HF846S046104
 for <linux-arm-kernel@lists.infradead.org>; Mon, 17 Jun 2019 11:13:02 -0400
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2t6d4y8n7r-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Mon, 17 Jun 2019 11:13:02 -0400
Received: from localhost
 by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Mon, 17 Jun 2019 16:12:59 +0100
Received: from b06cxnps4076.portsmouth.uk.ibm.com (9.149.109.198)
 by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 17 Jun 2019 16:12:56 +0100
Received: from b06wcsmtp001.portsmouth.uk.ibm.com
 (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x5HFCtCS45154384
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 17 Jun 2019 15:12:55 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 16452A405C;
 Mon, 17 Jun 2019 15:12:55 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 16509A405B;
 Mon, 17 Jun 2019 15:12:54 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.53])
 by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Mon, 17 Jun 2019 15:12:53 +0000 (GMT)
Date: Mon, 17 Jun 2019 18:12:52 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH -next] arm64/mm: fix a bogus GFP flag in pgd_alloc()
References: <1559656836-24940-1-git-send-email-cai@lca.pw>
 <20190604142338.GC24467@lakrids.cambridge.arm.com>
 <20190610114326.GF15979@fuggles.cambridge.arm.com>
 <1560187575.6132.70.camel@lca.pw>
 <20190611100348.GB26409@lakrids.cambridge.arm.com>
 <20190613121100.GB25164@rapoport-lnx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613121100.GB25164@rapoport-lnx>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19061715-0028-0000-0000-0000037B0CCC
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19061715-0029-0000-0000-0000243B119D
Message-Id: <20190617151252.GF16810@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-17_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=7 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906170136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_081305_228595_10868C0E 
X-CRM114-Status: GOOD (  44.48  )
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
Cc: catalin.marinas@arm.com, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, mhocko@kernel.org, linux-mm@kvack.org,
 Qian Cai <cai@lca.pw>, vdavydov.dev@gmail.com, hannes@cmpxchg.org,
 cgroups@vger.kernel.org, akpm@linux-foundation.org,
 Roman Gushchin <guro@fb.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 03:11:01PM +0300, Mike Rapoport wrote:
> On Tue, Jun 11, 2019 at 11:03:49AM +0100, Mark Rutland wrote:
> > On Mon, Jun 10, 2019 at 01:26:15PM -0400, Qian Cai wrote:
> > > On Mon, 2019-06-10 at 12:43 +0100, Will Deacon wrote:
> > > > On Tue, Jun 04, 2019 at 03:23:38PM +0100, Mark Rutland wrote:
> > > > > On Tue, Jun 04, 2019 at 10:00:36AM -0400, Qian Cai wrote:
> > > > > > The commit "arm64: switch to generic version of pte allocation"
> > > > > > introduced endless failures during boot like,
> > > > > > =

> > > > > > kobject_add_internal failed for pgd_cache(285:chronyd.service) =
(error:
> > > > > > -2 parent: cgroup)
> > > > > > =

> > > > > > It turns out __GFP_ACCOUNT is passed to kernel page table alloc=
ations
> > > > > > and then later memcg finds out those don't belong to any cgroup.
> > > > > =

> > > > > Mike, I understood from [1] that this wasn't expected to be a pro=
blem,
> > > > > as the accounting should bypass kernel threads.
> > > > > =

> > > > > Was that assumption wrong, or is something different happening he=
re?
> > > > > =

> > > > > > =

> > > > > > backtrace:
> > > > > > =A0 kobject_add_internal
> > > > > > =A0 kobject_init_and_add
> > > > > > =A0 sysfs_slab_add+0x1a8
> > > > > > =A0 __kmem_cache_create
> > > > > > =A0 create_cache
> > > > > > =A0 memcg_create_kmem_cache
> > > > > > =A0 memcg_kmem_cache_create_func
> > > > > > =A0 process_one_work
> > > > > > =A0 worker_thread
> > > > > > =A0 kthread
> > > > > > =

> > > > > > Signed-off-by: Qian Cai <cai@lca.pw>
> > > > > > ---
> > > > > > =A0arch/arm64/mm/pgd.c | 2 +-
> > > > > > =A01 file changed, 1 insertion(+), 1 deletion(-)
> > > > > > =

> > > > > > diff --git a/arch/arm64/mm/pgd.c b/arch/arm64/mm/pgd.c
> > > > > > index 769516cb6677..53c48f5c8765 100644
> > > > > > --- a/arch/arm64/mm/pgd.c
> > > > > > +++ b/arch/arm64/mm/pgd.c
> > > > > > @@ -38,7 +38,7 @@ pgd_t *pgd_alloc(struct mm_struct *mm)
> > > > > > =A0	if (PGD_SIZE =3D=3D PAGE_SIZE)
> > > > > > =A0		return (pgd_t *)__get_free_page(gfp);
> > > > > > =A0	else
> > > > > > -		return kmem_cache_alloc(pgd_cache, gfp);
> > > > > > +		return kmem_cache_alloc(pgd_cache, GFP_PGTABLE_KERNEL);
> > > > > =

> > > > > This is used to allocate PGDs for both user and kernel pagetables=
 (e.g.
> > > > > for the efi runtime services), so while this may fix the regressi=
on, I'm
> > > > > not sure it's the right fix.
> > > > > =

> > > > > Do we need a separate pgd_alloc_kernel()?
> > > > =

> > > > So can I take the above for -rc5, or is somebody else working on a =
different
> > > > fix to implement pgd_alloc_kernel()?
> > > =

> > > The offensive commit "arm64: switch to generic version of pte allocat=
ion" is not
> > > yet in the mainline, but only in the Andrew's tree and linux-next, an=
d I doubt
> > > Andrew will push this out any time sooner given it is broken.
> > =

> > I'd assumed that Mike would respin these patches to implement and use
> > pgd_alloc_kernel() (or take gfp flags) and the updated patches would
> > replace these in akpm's tree.
> > =

> > Mike, could you confirm what your plan is? I'm happy to review/test
> > updated patches for arm64.
> =

> The log Qian Cai posted at [1] and partially cited below confirms that the
> failure happens when *user* PGDs are allocated and the addition of
> __GFP_ACCOUNT to gfp flags used by pgd_alloc() only uncovered another
> issue.

Indeed the accounting of the PGD memory uncovered a dangling pointer to
pgd_cache :)

The pgd_cache was initialized twice and it made memcg and slub sysfs go
nuts. To be frank, I've got lost in their cross-initialization,
cross-referencing and update sequences, but for sure extra initialization
of pgd_cache was bogus.

I've double checked the 'if (mm =3D=3D &init_mm)' and it's not needed. The =
EFI
PGD is allocated before memcg is up and other kernel allocations of pgd (if
we'll have any) would be bypassed by memcg_kmem_bypass().

Andrew, can you please add the patch below as an incremental fix?

With this the arm64::pgd_alloc() should be in the right shape.


From 1c1ef0bc04c655689c6c527bd03b140251399d87 Mon Sep 17 00:00:00 2001
From: Mike Rapoport <rppt@linux.ibm.com>
Date: Mon, 17 Jun 2019 17:37:43 +0300
Subject: [PATCH] arm64/mm: don't initialize pgd_cache twice

When PGD_SIZE !=3D PAGE_SIZE, arm64 uses kmem_cache for allocation of PGD
memory. That cache was initialized twice: first through
pgtable_cache_init() alias and then as an override for weak
pgd_cache_init().

After enabling accounting for the PGD memory, this created a confusion for
memcg and slub sysfs code which resulted in the following errors:

[   90.608597] kobject_add_internal failed for pgd_cache(13:init.scope) (er=
ror: -2 parent: cgroup)
[   90.678007] kobject_add_internal failed for pgd_cache(13:init.scope) (er=
ror: -2 parent: cgroup)
[   90.713260] kobject_add_internal failed for pgd_cache(21:systemd-tmpfile=
s-setup.service) (error: -2 parent: cgroup)

Removing the alias from pgtable_cache_init() and keeping the only pgd_cache
initialization in pgd_cache_init() resolves the problem and allows
accounting of PGD memory.

Reported-by: Qian Cai <cai@lca.pw>
Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/arm64/include/asm/pgtable.h | 3 +--
 arch/arm64/mm/pgd.c              | 5 +----
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgta=
ble.h
index 3191b9f..c7a802d 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -851,8 +851,7 @@ extern int kern_addr_valid(unsigned long addr);
 =

 #include <asm-generic/pgtable.h>
 =

-void pgd_cache_init(void);
-#define pgtable_cache_init	pgd_cache_init
+static inline void pgtable_cache_init(void) { }
 =

 /*
  * On AArch64, the cache coherency is handled via the set_pte_at() functio=
n.
diff --git a/arch/arm64/mm/pgd.c b/arch/arm64/mm/pgd.c
index 53c48f5..3f0a744 100644
--- a/arch/arm64/mm/pgd.c
+++ b/arch/arm64/mm/pgd.c
@@ -32,13 +32,10 @@ pgd_t *pgd_alloc(struct mm_struct *mm)
 {
 	gfp_t gfp =3D GFP_PGTABLE_USER;
 =

-	if (unlikely(mm =3D=3D &init_mm))
-		gfp =3D GFP_PGTABLE_KERNEL;
-
 	if (PGD_SIZE =3D=3D PAGE_SIZE)
 		return (pgd_t *)__get_free_page(gfp);
 	else
-		return kmem_cache_alloc(pgd_cache, GFP_PGTABLE_KERNEL);
+		return kmem_cache_alloc(pgd_cache, gfp);
 }
 =

 void pgd_free(struct mm_struct *mm, pgd_t *pgd)
-- =

2.7.4


> [1] https://cailca.github.io/files/dmesg.txt
> =

> -- =

> Sincerely yours,
> Mike.
> =


-- =

Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
