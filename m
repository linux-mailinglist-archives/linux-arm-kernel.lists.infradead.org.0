Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF82D958DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 09:50:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Db4yoitsmGxeehXOBX7n1xbc9aPyp4myFdvF412Q5o8=; b=gtF+yZbfU/yhza
	0rJV1sdrRqwbJsqJsM3+R7a82MIZRm3fHldbVDfb/82abaD6ElPRdEprXryu3+HbhsQM1oow58iZR
	GBvIma4qVldk3eOv9Jxs8NOpb97irjEDa7Y67HaaJuHRmBlMvyO+q44JcLcPcFaSkcXT7T2Dq4vls
	4p0WdKfRfMkr8oOboe2CdN4ujy/HeDU2Olm0hpp3rQfVuo3ir/wU/KTpvSP+GohTM9tODvYpwLqL/
	As15X26VztaMnEQhHCI2KC15sOim5gDURYeNVMsEvylar5HE1kLe86ARdCZbQ7ZaoStIhj6csZxYP
	8moe3veKnd4JDGrMXJGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzyu5-00052f-KX; Tue, 20 Aug 2019 07:50:05 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzytj-00051j-9D
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 07:49:44 +0000
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7K7mJJK059673
 for <linux-arm-kernel@lists.infradead.org>; Tue, 20 Aug 2019 03:49:40 -0400
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2ugb0svfat-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Tue, 20 Aug 2019 03:49:40 -0400
Received: from localhost
 by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Tue, 20 Aug 2019 08:49:38 +0100
Received: from b06cxnps4075.portsmouth.uk.ibm.com (9.149.109.197)
 by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 20 Aug 2019 08:49:34 +0100
Received: from d06av24.portsmouth.uk.ibm.com (mk.ibm.com [9.149.105.60])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x7K7nXsq39256114
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 20 Aug 2019 07:49:33 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 4199442049;
 Tue, 20 Aug 2019 07:49:33 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 337E942041;
 Tue, 20 Aug 2019 07:49:32 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.59])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Tue, 20 Aug 2019 07:49:32 +0000 (GMT)
Date: Tue, 20 Aug 2019 10:49:30 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH] efi/arm: fix allocation failure when reserving the
 kernel base
References: <20190802053744.5519-1-clin@suse.com>
 <CAKv+Gu-yaNYsLQOOcr8srW91-nt-w0e+RBqxXGOagiGGT69n1Q@mail.gmail.com>
 <CAKv+Gu8uwbY-JtjNbgoyY230X_M6xLchVM3OUg_oNWOJrF=iCg@mail.gmail.com>
 <20190815111543.GA4728@linux-8mug>
 <CAKv+Gu-5M-4=SbOzbqbLUYnfFw29vhfcrVD=N9j_APYpKjq2wQ@mail.gmail.com>
 <20190815133738.GA2483@rapoport-lnx>
 <20190819075621.GA20595@linux-8mug>
 <CAKv+Gu-sdhNbhfD24Fn93mj-h6=vGi82Ghjy7AzaRSqcpXCx-g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu-sdhNbhfD24Fn93mj-h6=vGi82Ghjy7AzaRSqcpXCx-g@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19082007-0020-0000-0000-0000036199D2
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19082007-0021-0000-0000-000021B6C918
Message-Id: <20190820074930.GC5989@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-20_02:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908200083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_004943_448016_8C14DD46 
X-CRM114-Status: GOOD (  36.53  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
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
Cc: Juergen Gross <JGross@suse.com>, Joey Lee <JLee@suse.com>,
 "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>,
 "guillaume.gardet@arm.com" <guillaume.gardet@arm.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chester Lin <clin@suse.com>, "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "ren_guo@c-sky.com" <ren_guo@c-sky.com>, Gary Lin <GLin@suse.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 05:56:51PM +0300, Ard Biesheuvel wrote:
> On Mon, 19 Aug 2019 at 11:01, Chester Lin <clin@suse.com> wrote:
> >
> > Hi Mike and Ard,
> >
> > On Thu, Aug 15, 2019 at 04:37:39PM +0300, Mike Rapoport wrote:
> > > On Thu, Aug 15, 2019 at 02:32:50PM +0300, Ard Biesheuvel wrote:
> > > > (adding Mike)
> > > >

...

> > > > > In this case the kernel failed to reserve cma, which should hit the issue of
> > > > > memblock_limit=0x1000 as I had mentioned in my patch description. The first
> > > > > block [0-0xfff] was scanned in adjust_lowmem_bounds(), but it did not align
> > > > > with PMD_SIZE so the cma reservation failed because the memblock.current_limit
> > > > > was extremely low. That's why I expand the first reservation from 1 PAGESIZE to
> > > > > 1 PMD_SIZE in my patch in order to avoid this issue. Please kindly let me know
> > > > > if any suggestion, thank you.
> > >
> > >
> > > > This looks like it is a separate issue. The memblock/cma code should
> > > > not choke on a reserved page of memory at 0x0.
> > > >
> > > > Perhaps Russell or Mike (cc'ed) have an idea how to address this?
> > >
> > > Presuming that the last memblock dump comes from the end of
> > > arm_memblock_init() with the this memory map
> > >
> > > memory[0x0] [0x0000000000000000-0x0000000000000fff], 0x0000000000001000 bytes flags: 0x4
> > > memory[0x1] [0x0000000000001000-0x0000000007ef5fff], 0x0000000007ef5000 bytes flags: 0x0
> > > memory[0x2] [0x0000000007ef6000-0x0000000007f09fff], 0x0000000000014000 bytes flags: 0x4
> > > memory[0x3] [0x0000000007f0a000-0x000000003cb3efff], 0x0000000034c35000 bytes flags: 0x0
> > >
> > > adjust_lowmem_bounds() will set the memblock_limit (and respectively global
> > > memblock.current_limit) to 0x1000 and any further memblock_alloc*() will
> > > happily fail.
> > >
> > > I believe that the assumption for memblock_limit calculations was that the
> > > first bank has several megs at least.
> > >
> > > I wonder if this hack would help:
> > >
> > > diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
> > > index d9a0038..948e5b9 100644
> > > --- a/arch/arm/mm/mmu.c
> > > +++ b/arch/arm/mm/mmu.c
> > > @@ -1206,7 +1206,7 @@ void __init adjust_lowmem_bounds(void)
> > >                        * allocated when mapping the start of bank 0, which
> > >                        * occurs before any free memory is mapped.
> > >                        */
> > > -                     if (!memblock_limit) {
> > > +                     if (memblock_limit < PMD_SIZE) {
> > >                               if (!IS_ALIGNED(block_start, PMD_SIZE))
> > >                                       memblock_limit = block_start;
> > >                               else if (!IS_ALIGNED(block_end, PMD_SIZE))
> > >
> >
> > I applied this patch as well and it works well on rpi-2 model B.
> >
> 
> Thanks, Chester, that is good to know.
> 
> However, afaict, this only affects systems where physical memory
> starts at address 0x0, so I think we need a better fix.

This hack can be easily extended to handle systems with arbitrary start
address, but it's still a hack...

> I know Mike has been looking into the NOMAP stuff lately, and your
> original patch contains a hunk that makes this code (?) disregard
> nomap memblocks. That might be a better approach.

I was actually looking how to replace NOMAP with something else to make
memblock.memory consistent with actual physical memory banks. But this work
is stashed for now.

I'm not sure that skipping NOMAP regions would be good enough.
If I understand corrrectly, with Chester's original patch the reservation
of PMD aligned chunk of 32M for the kernel made the first conv-mem region
PMD aligned and then memblock_limit will be set to the end of this region.

Is there a reason for marking EFI_RESERVED_TYPE as NOMAP rather than simply
reserve them with memblock_reserve()?

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
