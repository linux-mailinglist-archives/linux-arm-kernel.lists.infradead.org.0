Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 890BFCC1BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 19:29:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4swDgnqm653F0JsNmA3FJdTZizoHBYVteJIgZbRmImc=; b=QFb05om3I40XOZ
	9qqMV5fmcF2oxpyeItDdCjmKJfY1A8t20V9H8Oy4B7a9LXb3dc/1pC02Uk9duYR7iIYsDdUEG9xgI
	ZoQ/tJrLEUF5uBjBWBr5nT260yufHP4wXm+xfzydBY47PtASKKK3j8mJ4COsag9TZPJYynXKkTRjr
	X3lZxVweb0EyNeQoubcJg25V6+kFj5/BZljsZyGDEljpRwqyOwLOLwzaCg3tgcQPsIPB9Gt+qi3oK
	e2y+8RNI7tk/ek4xWIBTr4UImfHBOeBHsFrWIKjYHLFUFk+HdO5Sw1eFlqI6OuhX0+78FYJKGklE1
	oCxNZCdXj6fkY/+IkdKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGROO-0004tJ-Vo; Fri, 04 Oct 2019 17:29:24 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGROG-0004sL-E2
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 17:29:18 +0000
Received: from pps.filterd (m0098413.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x94HDer8013534
 for <linux-arm-kernel@lists.infradead.org>; Fri, 4 Oct 2019 13:29:13 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2ve88bwmyd-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 04 Oct 2019 13:29:13 -0400
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Fri, 4 Oct 2019 18:29:11 +0100
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Fri, 4 Oct 2019 18:29:08 +0100
Received: from b06wcsmtp001.portsmouth.uk.ibm.com
 (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x94HT7Vk58065062
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 4 Oct 2019 17:29:07 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0DEFBA405B;
 Fri,  4 Oct 2019 17:29:07 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C9015A405C;
 Fri,  4 Oct 2019 17:29:05 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.204.245])
 by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Fri,  4 Oct 2019 17:29:05 +0000 (GMT)
Date: Fri, 4 Oct 2019 20:29:03 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH v2 00/21] Refine memblock API
References: <CAHCN7xL1sFXDhKUpj04d3eDZNgLA1yGAOqwEeCxedy1Qm-JOfQ@mail.gmail.com>
 <20190928073331.GA5269@linux.ibm.com>
 <CAHCN7xJEvS2Si=M+BYtz+kY0M4NxmqDjiX9Nwq6_3GGBh3yg=w@mail.gmail.com>
 <CAHCN7xKLhWw4P9-sZKXQcfSfh2r3J_+rLxuxACW0UVgimCzyVw@mail.gmail.com>
 <20191002073605.GA30433@linux.ibm.com>
 <CAHCN7xL1MkJh44N3W_1+08DHmX__SqnfH6dqUzYzr2Wpg0kQyQ@mail.gmail.com>
 <20191003053451.GA23397@linux.ibm.com>
 <20191003084914.GV25745@shell.armlinux.org.uk>
 <20191003113010.GC23397@linux.ibm.com>
 <20191004092727.GX25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004092727.GX25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19100417-0008-0000-0000-0000031E134C
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19100417-0009-0000-0000-00004A3D1F6E
Message-Id: <20191004172902.GB17825@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-04_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1910040147
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_102916_614233_607C9E6C 
X-CRM114-Status: GOOD (  37.95  )
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
Cc: Adam Ford <aford173@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 The etnaviv authors <etnaviv@lists.freedesktop.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Fabio Estevam <festevam@gmail.com>,
 Christoph Hellwig <hch@lst.de>, arm-soc <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 04, 2019 at 10:27:27AM +0100, Russell King - ARM Linux admin wrote:
> On Thu, Oct 03, 2019 at 02:30:10PM +0300, Mike Rapoport wrote:
> > On Thu, Oct 03, 2019 at 09:49:14AM +0100, Russell King - ARM Linux admin wrote:
> > > On Thu, Oct 03, 2019 at 08:34:52AM +0300, Mike Rapoport wrote:
> > > > (trimmed the CC)
> > > > 
> > > > On Wed, Oct 02, 2019 at 06:14:11AM -0500, Adam Ford wrote:
> > > > > On Wed, Oct 2, 2019 at 2:36 AM Mike Rapoport <rppt@linux.ibm.com> wrote:
> > > > > >
> > > > > 
> > > > > Before the patch:
> > > > > 
> > > > > # cat /sys/kernel/debug/memblock/memory
> > > > >    0: 0x10000000..0x8fffffff
> > > > > # cat /sys/kernel/debug/memblock/reserved
> > > > >    0: 0x10004000..0x10007fff
> > > > >   34: 0x2fffff88..0x3fffffff
> > > > > 
> > > > > 
> > > > > After the patch:
> > > > > # cat /sys/kernel/debug/memblock/memory
> > > > >    0: 0x10000000..0x8fffffff
> > > > > # cat /sys/kernel/debug/memblock/reserved
> > > > >    0: 0x10004000..0x10007fff
> > > > >   36: 0x80000000..0x8fffffff
> > > > 
> > > > I'm still not convinced that the memblock refactoring didn't uncovered an
> > > > issue in etnaviv driver.
> > > > 
> > > > Why moving the CMA area from 0x80000000 to 0x30000000 makes it fail?
> > > 
> > > I think you have that the wrong way round.
> > 
> > I'm relying on Adam's reports of working and non-working versions.
> > According to that etnaviv works when CMA area is at 0x80000000 and does not
> > work when it is at 0x30000000.
> > 
> > He also sent logs a few days ago [1], they also confirm that.
> > 
> > [1] https://lore.kernel.org/linux-mm/CAHCN7xJEvS2Si=M+BYtz+kY0M4NxmqDjiX9Nwq6_3GGBh3yg=w@mail.gmail.com/
> 
> Sorry, yes, you're right.  Still, I've reported this same regression
> a while back, and it's never gone away.
> 
> > > > BTW, the code that complained about "command buffer outside valid memory
> > > > window" has been removed by the commit 17e4660ae3d7 ("drm/etnaviv:
> > > > implement per-process address spaces on MMUv2"). 
> > > > 
> > > > Could be that recent changes to MMU management of etnaviv resolve the
> > > > issue?
> > > 
> > > The iMX6 does not have MMUv2 hardware, it has MMUv1.  With MMUv1
> > > hardware requires command buffers within the first 2GiB of physical
> > > RAM.
> > 
> > I've mentioned that patch because it removed the check for cmdbuf address
> > for MMUv1:
> > 
> > @@ -785,15 +768,7 @@ int etnaviv_gpu_init(struct etnaviv_gpu *gpu)
> >                                   PAGE_SIZE);
> >         if (ret) {
> >                 dev_err(gpu->dev, "could not create command buffer\n");
> > -               goto unmap_suballoc;
> > -       }
> > -
> > -       if (!(gpu->identity.minor_features1 & chipMinorFeatures1_MMU_VERSION) &&
> > -           etnaviv_cmdbuf_get_va(&gpu->buffer, &gpu->cmdbuf_mapping) > 0x80000000) {
> > -               ret = -EINVAL;
> > -               dev_err(gpu->dev,
> > -                       "command buffer outside valid memory window\n");
> > -               goto free_buffer;
> > +               goto fail;
> >         }
> >  
> >         /* Setup event management */
> > 
> > 
> > I really don't know how etnaviv works, so I hoped that people who
> > understand it would help.
> 
> From what I can see, removing that check is a completely insane thing
> to do, and I note that these changes are _not_ described in the commit
> message.  The problem was known about _before_ (June 22) the patch was
> created (July 5).

The memblock refactoring went in in 5.1 which was May 5, and likely it
caused the regression.

Unless I'm missing something, before the memblock refactoring the CMA
reservation could use the entire physical memory because
memblock_phys_alloc() didn't enforce memblock.current_limit.

Since memblock default is to allocate from top, cma_declare_contiguous()
could grab the memory close to the end of DRAM and thus have physical
address close enough to the virtual address to fit in the 2G limit.

When I've made memblock_phys* limit the memblock allocations to
memblock.current_limit the CMA area moved too far away down and the gap
became larger than 2G.

It does not seem like dealing with this in etnaviv driver and DMA and CMA
APIs would happen fast and the "revert" of the memblock changes I've sent
earlier in this thread does fix the problem.

Andrew, would you like me to resend the patch in a separate e-mail?
 
> Lucas, please can you explain why removing the above check, which is
> well known to correctly trigger on various platforms to prevent
> incorrect GPU behaviour, is safe?
> 
> Thanks.
> 

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
