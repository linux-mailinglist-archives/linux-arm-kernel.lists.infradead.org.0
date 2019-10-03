Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7ED8C97FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 07:35:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mAVYIK4BUxSLURxMl0WLHRa7CSejmeSLUEOMcO/vfnE=; b=kcJB8ltQmzf3h7
	3S8zwDwN4w7IvAO/y6n/kdMtaxbNeBV9LZRx/AZJvLqDqHyoszNYE/jGl1MK+zsXkRwyNxuW7tKQA
	Z57Iub44ewlj5Raglh7HNaS93QXqK0arzSzOizLPG7Y4bw1vp9qzkIrvOBk4gxYVbRkb04YBiT4Wd
	DOy9FSu85yuM3uq2JhcieL4NY5bgG+ECIx4ANI8Hdi/rg4dNUGvgu/LFEgL/zsEKsMfmaOowJLI0W
	f0D1iFkANUHytu6DFBzw7AjLS8UWi2rT9lK1OITriGSq5nEOeVVeJZUC6posN9MYsOZvBQp6cAHxK
	xXZ2esU09M+k6QcSS3Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFtlj-0005ks-Aa; Thu, 03 Oct 2019 05:35:15 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFtlX-0005R7-Fx
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 05:35:05 +0000
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x935VfhL041878
 for <linux-arm-kernel@lists.infradead.org>; Thu, 3 Oct 2019 01:35:02 -0400
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2vd9e6j3df-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Thu, 03 Oct 2019 01:35:01 -0400
Received: from localhost
 by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Thu, 3 Oct 2019 06:35:00 +0100
Received: from b06avi18626390.portsmouth.uk.ibm.com (9.149.26.192)
 by e06smtp04.uk.ibm.com (192.168.101.134) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 3 Oct 2019 06:34:55 +0100
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id x935YPRR34603498
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 3 Oct 2019 05:34:26 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id AA6CD11C04A;
 Thu,  3 Oct 2019 05:34:54 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B844211C050;
 Thu,  3 Oct 2019 05:34:53 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.8.153])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu,  3 Oct 2019 05:34:53 +0000 (GMT)
Date: Thu, 3 Oct 2019 08:34:52 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH v2 00/21] Refine memblock API
References: <CAHCN7xJdzEppn8-74SvzACsA25bUHGdV7v=CfS08xzSi59Z2uw@mail.gmail.com>
 <CAOMZO5D2uzR6Sz1QnX3G-Ce_juxU-0PO_vBZX+nR1mpQB8s8-w@mail.gmail.com>
 <CAHCN7xJ32BYZu-DVTVLSzv222U50JDb8F0A_tLDERbb8kPdRxg@mail.gmail.com>
 <20190926160433.GD32311@linux.ibm.com>
 <CAHCN7xL1sFXDhKUpj04d3eDZNgLA1yGAOqwEeCxedy1Qm-JOfQ@mail.gmail.com>
 <20190928073331.GA5269@linux.ibm.com>
 <CAHCN7xJEvS2Si=M+BYtz+kY0M4NxmqDjiX9Nwq6_3GGBh3yg=w@mail.gmail.com>
 <CAHCN7xKLhWw4P9-sZKXQcfSfh2r3J_+rLxuxACW0UVgimCzyVw@mail.gmail.com>
 <20191002073605.GA30433@linux.ibm.com>
 <CAHCN7xL1MkJh44N3W_1+08DHmX__SqnfH6dqUzYzr2Wpg0kQyQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7xL1MkJh44N3W_1+08DHmX__SqnfH6dqUzYzr2Wpg0kQyQ@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19100305-0016-0000-0000-000002B38CC0
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19100305-0017-0000-0000-00003314947D
Message-Id: <20191003053451.GA23397@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-03_02:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1910030053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_223503_659567_06F891BE 
X-CRM114-Status: GOOD (  43.75  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>,
 The etnaviv authors <etnaviv@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>, Fabio Estevam <festevam@gmail.com>,
 Christoph Hellwig <hch@lst.de>, arm-soc <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

(trimmed the CC)

On Wed, Oct 02, 2019 at 06:14:11AM -0500, Adam Ford wrote:
> On Wed, Oct 2, 2019 at 2:36 AM Mike Rapoport <rppt@linux.ibm.com> wrote:
> >
> 
> Before the patch:
> 
> # cat /sys/kernel/debug/memblock/memory
>    0: 0x10000000..0x8fffffff
> # cat /sys/kernel/debug/memblock/reserved
>    0: 0x10004000..0x10007fff
>   34: 0x2fffff88..0x3fffffff
> 
> 
> After the patch:
> # cat /sys/kernel/debug/memblock/memory
>    0: 0x10000000..0x8fffffff
> # cat /sys/kernel/debug/memblock/reserved
>    0: 0x10004000..0x10007fff
>   36: 0x80000000..0x8fffffff

I'm still not convinced that the memblock refactoring didn't uncovered an
issue in etnaviv driver.

Why moving the CMA area from 0x80000000 to 0x30000000 makes it fail?

BTW, the code that complained about "command buffer outside valid memory
window" has been removed by the commit 17e4660ae3d7 ("drm/etnaviv:
implement per-process address spaces on MMUv2"). 

Could be that recent changes to MMU management of etnaviv resolve the
issue?

> > From 06529f861772b7dea2912fc2245debe4690139b8 Mon Sep 17 00:00:00 2001
> > From: Mike Rapoport <rppt@linux.ibm.com>
> > Date: Wed, 2 Oct 2019 10:14:17 +0300
> > Subject: [PATCH] mm: memblock: do not enforce current limit for memblock_phys*
> >  family
> >
> > Until commit 92d12f9544b7 ("memblock: refactor internal allocation
> > functions") the maximal address for memblock allocations was forced to
> > memblock.current_limit only for the allocation functions returning virtual
> > address. The changes introduced by that commit moved the limit enforcement
> > into the allocation core and as a result the allocation functions returning
> > physical address also started to limit allocations to
> > memblock.current_limit.
> >
> > This caused breakage of etnaviv GPU driver:
> >
> > [    3.682347] etnaviv etnaviv: bound 130000.gpu (ops gpu_ops)
> > [    3.688669] etnaviv etnaviv: bound 134000.gpu (ops gpu_ops)
> > [    3.695099] etnaviv etnaviv: bound 2204000.gpu (ops gpu_ops)
> > [    3.700800] etnaviv-gpu 130000.gpu: model: GC2000, revision: 5108
> > [    3.723013] etnaviv-gpu 130000.gpu: command buffer outside valid
> > memory window
> > [    3.731308] etnaviv-gpu 134000.gpu: model: GC320, revision: 5007
> > [    3.752437] etnaviv-gpu 134000.gpu: command buffer outside valid
> > memory window
> > [    3.760583] etnaviv-gpu 2204000.gpu: model: GC355, revision: 1215
> > [    3.766766] etnaviv-gpu 2204000.gpu: Ignoring GPU with VG and FE2.0
> >
> > Restore the behaviour of memblock_phys* family so that these functions will
> > not enforce memblock.current_limit.
> >
> 
> This fixed the issue.  Thank you
> 
> Tested-by: Adam Ford <aford173@gmail.com> #imx6q-logicpd
> 
> > Fixes: 92d12f9544b7 ("memblock: refactor internal allocation functions")
> > Reported-by: Adam Ford <aford173@gmail.com>
> > Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> > ---
> >  mm/memblock.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/mm/memblock.c b/mm/memblock.c
> > index 7d4f61a..c4b16ca 100644
> > --- a/mm/memblock.c
> > +++ b/mm/memblock.c
> > @@ -1356,9 +1356,6 @@ static phys_addr_t __init memblock_alloc_range_nid(phys_addr_t size,
> >                 align = SMP_CACHE_BYTES;
> >         }
> >
> > -       if (end > memblock.current_limit)
> > -               end = memblock.current_limit;
> > -
> >  again:
> >         found = memblock_find_in_range_node(size, align, start, end, nid,
> >                                             flags);
> > @@ -1469,6 +1466,9 @@ static void * __init memblock_alloc_internal(
> >         if (WARN_ON_ONCE(slab_is_available()))
> >                 return kzalloc_node(size, GFP_NOWAIT, nid);
> >
> > +       if (max_addr > memblock.current_limit)
> > +               max_addr = memblock.current_limit;
> > +
> >         alloc = memblock_alloc_range_nid(size, align, min_addr, max_addr, nid);
> >
> >         /* retry allocation without lower limit */
> > --
> > 2.7.4
> >
> >
> > > > adam
> > > >
> > > > On Sat, Sep 28, 2019 at 2:33 AM Mike Rapoport <rppt@linux.ibm.com> wrote:
> > > > >
> > > > > On Thu, Sep 26, 2019 at 02:35:53PM -0500, Adam Ford wrote:
> > > > > > On Thu, Sep 26, 2019 at 11:04 AM Mike Rapoport <rppt@linux.ibm.com> wrote:
> > > > > > >
> > > > > > > Hi,
> > > > > > >
> > > > > > > On Thu, Sep 26, 2019 at 08:09:52AM -0500, Adam Ford wrote:
> > > > > > > > On Wed, Sep 25, 2019 at 10:17 AM Fabio Estevam <festevam@gmail.com> wrote:
> > > > > > > > >
> > > > > > > > > On Wed, Sep 25, 2019 at 9:17 AM Adam Ford <aford173@gmail.com> wrote:
> > > > > > > > >
> > > > > > > > > > I tried cma=256M and noticed the cma dump at the beginning didn't
> > > > > > > > > > change.  Do we need to setup a reserved-memory node like
> > > > > > > > > > imx6ul-ccimx6ulsom.dtsi did?
> > > > > > > > >
> > > > > > > > > I don't think so.
> > > > > > > > >
> > > > > > > > > Were you able to identify what was the exact commit that caused such regression?
> > > > > > > >
> > > > > > > > I was able to narrow it down the 92d12f9544b7 ("memblock: refactor
> > > > > > > > internal allocation functions") that caused the regression with
> > > > > > > > Etnaviv.
> > > > > > >
> > > > > > >
> > > > > > > Can you please test with this change:
> > > > > > >
> > > > > >
> > > > > > That appears to have fixed my issue.  I am not sure what the impact
> > > > > > is, but is this a safe option?
> > > > >
> > > > > It's not really a fix, I just wanted to see how exactly 92d12f9544b7 ("memblock:
> > > > > refactor internal allocation functions") broke your setup.
> > > > >
> > > > > Can you share the dts you are using and the full kernel log?
> > > > >
> > > > > > adam
> > > > > >
> > > > > > > diff --git a/mm/memblock.c b/mm/memblock.c
> > > > > > > index 7d4f61a..1f5a0eb 100644
> > > > > > > --- a/mm/memblock.c
> > > > > > > +++ b/mm/memblock.c
> > > > > > > @@ -1356,9 +1356,6 @@ static phys_addr_t __init memblock_alloc_range_nid(phys_addr_t size,
> > > > > > >                 align = SMP_CACHE_BYTES;
> > > > > > >         }
> > > > > > >
> > > > > > > -       if (end > memblock.current_limit)
> > > > > > > -               end = memblock.current_limit;
> > > > > > > -
> > > > > > >  again:
> > > > > > >         found = memblock_find_in_range_node(size, align, start, end, nid,
> > > > > > >                                             flags);
> > > > > > >
> > > > > > > > I also noticed that if I create a reserved memory node as was done one
> > > > > > > > imx6ul-ccimx6ulsom.dtsi the 3D seems to work again, but without it, I
> > > > > > > > was getting errors regardless of the 'cma=256M' or not.
> > > > > > > > I don't have a problem using the reserved memory, but I guess I am not
> > > > > > > > sure what the amount should be.  I know for the video decoding 1080p,
> > > > > > > > I have historically used cma=128M, but with the 3D also needing some
> > > > > > > > memory allocation, is that enough or should I use 256M?
> > > > > > > >
> > > > > > > > adam
> > > > > > >
> > > > > > > --
> > > > > > > Sincerely yours,
> > > > > > > Mike.
> > > > > > >
> > > > >
> > > > > --
> > > > > Sincerely yours,
> > > > > Mike.
> > > > >
> >
> > --
> > Sincerely yours,
> > Mike.
> >

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
