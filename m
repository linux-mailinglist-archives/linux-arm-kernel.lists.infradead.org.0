Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9123CBF3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 14:41:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QxOjneEse4C0hvJT08/MYuH8e4bzc1G1tcbimraaxdw=; b=baBXPU44+nusOz
	ZVktCzEm+c15Nz26pKtuRxEyAHOr6O6+FdEv5skQ5ES81lwJch7mIcEyOkynS07t3wwEvSq3bAGjo
	BUxTzfNe58BGvvHGw/XmD3nHIWyLGiJiYDnABZ5c+BoiRcHWnOgyfqmhb327jP7sYNkqvfsnva59V
	iCDrlAw77Tem1Buf4BHwKyc6+CsTeM/zMKyQH3PpDbZxlEOSXYKmNfHB+enzbb6YH7IlFCTn0x88K
	r1rBNRmUFPP/FDA1mO6cE4bU2/95UxM0iaoOmE+VNgJ7v7sMDRFA5VhZsILzBK0cSD6BPxJZ4RT86
	9DCLUPjO7sV/pPQ0zxxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hag65-0005HV-17; Tue, 11 Jun 2019 12:41:53 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hag5l-0005G0-IE
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 12:41:35 +0000
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5BCW5RC078530
 for <linux-arm-kernel@lists.infradead.org>; Tue, 11 Jun 2019 08:41:30 -0400
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2t2by91x81-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Tue, 11 Jun 2019 08:41:30 -0400
Received: from localhost
 by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Tue, 11 Jun 2019 13:41:27 +0100
Received: from b06cxnps4075.portsmouth.uk.ibm.com (9.149.109.197)
 by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 11 Jun 2019 13:41:23 +0100
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x5BCfM8E56688832
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 11 Jun 2019 12:41:22 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id CC6FB11C052;
 Tue, 11 Jun 2019 12:41:22 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A368411C050;
 Tue, 11 Jun 2019 12:41:21 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.204.69])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Tue, 11 Jun 2019 12:41:21 +0000 (GMT)
Date: Tue, 11 Jun 2019 15:41:19 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH -next] arm64/mm: fix a bogus GFP flag in pgd_alloc()
References: <1559656836-24940-1-git-send-email-cai@lca.pw>
 <20190604142338.GC24467@lakrids.cambridge.arm.com>
 <20190610114326.GF15979@fuggles.cambridge.arm.com>
 <1560187575.6132.70.camel@lca.pw>
 <20190611100348.GB26409@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611100348.GB26409@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19061112-0028-0000-0000-000003794EFF
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19061112-0029-0000-0000-000024393D13
Message-Id: <20190611124118.GA4761@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-11_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=60 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906110086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_054133_713399_D976FCFE 
X-CRM114-Status: GOOD (  35.53  )
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
Cc: catalin.marinas@arm.com, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, mhocko@kernel.org, linux-mm@kvack.org,
 Qian Cai <cai@lca.pw>, vdavydov.dev@gmail.com, hannes@cmpxchg.org,
 cgroups@vger.kernel.org, akpm@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 11:03:49AM +0100, Mark Rutland wrote:
> On Mon, Jun 10, 2019 at 01:26:15PM -0400, Qian Cai wrote:
> > On Mon, 2019-06-10 at 12:43 +0100, Will Deacon wrote:
> > > On Tue, Jun 04, 2019 at 03:23:38PM +0100, Mark Rutland wrote:
> > > > On Tue, Jun 04, 2019 at 10:00:36AM -0400, Qian Cai wrote:
> > > > > The commit "arm64: switch to generic version of pte allocation"
> > > > > introduced endless failures during boot like,
> > > > > =

> > > > > kobject_add_internal failed for pgd_cache(285:chronyd.service) (e=
rror:
> > > > > -2 parent: cgroup)
> > > > > =

> > > > > It turns out __GFP_ACCOUNT is passed to kernel page table allocat=
ions
> > > > > and then later memcg finds out those don't belong to any cgroup.
> > > > =

> > > > Mike, I understood from [1] that this wasn't expected to be a probl=
em,
> > > > as the accounting should bypass kernel threads.
> > > > =

> > > > Was that assumption wrong, or is something different happening here?
> > > > =

> > > > > =

> > > > > backtrace:
> > > > > =A0 kobject_add_internal
> > > > > =A0 kobject_init_and_add
> > > > > =A0 sysfs_slab_add+0x1a8
> > > > > =A0 __kmem_cache_create
> > > > > =A0 create_cache
> > > > > =A0 memcg_create_kmem_cache
> > > > > =A0 memcg_kmem_cache_create_func
> > > > > =A0 process_one_work
> > > > > =A0 worker_thread
> > > > > =A0 kthread
> > > > > =

> > > > > Signed-off-by: Qian Cai <cai@lca.pw>
> > > > > ---
> > > > > =A0arch/arm64/mm/pgd.c | 2 +-
> > > > > =A01 file changed, 1 insertion(+), 1 deletion(-)
> > > > > =

> > > > > diff --git a/arch/arm64/mm/pgd.c b/arch/arm64/mm/pgd.c
> > > > > index 769516cb6677..53c48f5c8765 100644
> > > > > --- a/arch/arm64/mm/pgd.c
> > > > > +++ b/arch/arm64/mm/pgd.c
> > > > > @@ -38,7 +38,7 @@ pgd_t *pgd_alloc(struct mm_struct *mm)
> > > > > =A0	if (PGD_SIZE =3D=3D PAGE_SIZE)
> > > > > =A0		return (pgd_t *)__get_free_page(gfp);
> > > > > =A0	else
> > > > > -		return kmem_cache_alloc(pgd_cache, gfp);
> > > > > +		return kmem_cache_alloc(pgd_cache, GFP_PGTABLE_KERNEL);
> > > > =

> > > > This is used to allocate PGDs for both user and kernel pagetables (=
e.g.
> > > > for the efi runtime services), so while this may fix the regression=
, I'm
> > > > not sure it's the right fix.
> > > > =

> > > > Do we need a separate pgd_alloc_kernel()?
> > > =

> > > So can I take the above for -rc5, or is somebody else working on a di=
fferent
> > > fix to implement pgd_alloc_kernel()?
> > =

> > The offensive commit "arm64: switch to generic version of pte allocatio=
n" is not
> > yet in the mainline, but only in the Andrew's tree and linux-next, and =
I doubt
> > Andrew will push this out any time sooner given it is broken.
> =

> I'd assumed that Mike would respin these patches to implement and use
> pgd_alloc_kernel() (or take gfp flags) and the updated patches would
> replace these in akpm's tree.
> =

> Mike, could you confirm what your plan is? I'm happy to review/test
> updated patches for arm64.

Sorry for the delay, I'm mostly offline these days.

I wanted to understand first what is the reason for the failure. I've tried
to reproduce it with qemu, but I failed to find a bootable configuration
that will have PGD_SIZE !=3D PAGE_SIZE :(

Qian Cai, can you share what is your environment and the kernel config?
 =

> Thanks,
> Mark.
> =


-- =

Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
