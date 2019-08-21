Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30392974F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 10:30:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zc9rzT0liiplmwsQtY2Hn+W74ZqOKkAtn/IyLzHACSo=; b=Gb1dkI/Ycgyi8z
	7sPKG3n6e2iJiRALT53MVwyrIl/z6vJFwRHjmAxbOPUZNaJdbz0WFBvPZCkMwgTFwTndn+QK1QhX7
	AgeyW45t3EcBK/qrOFm+vcUy5EBeK+LL3Sv2Kazp/auZg8CtCeK5eGUFjjl2EMHtBQrMjHNNweE8n
	Cq4SHefKyItIjDiddNdeeuGmxRZr7bM5FkqCxrKME5uvLCoS0VE6gcalYLxnZe8wSDV/0EyTzOPgg
	RLPgKtLwiq2cpZs9srObuVM8bks2B4KZZSMA3wjlrHs6BSjS+9KoAdOiSDO+hHd0N8M8umEyQgCNn
	RujLHOeHDiQq+VR2dl+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0M10-0006t6-HZ; Wed, 21 Aug 2019 08:30:46 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0M0V-0005gH-3G
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 08:30:16 +0000
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7L8LTIc046425
 for <linux-arm-kernel@lists.infradead.org>; Wed, 21 Aug 2019 04:29:38 -0400
Received: from e06smtp03.uk.ibm.com (e06smtp03.uk.ibm.com [195.75.94.99])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2uh290rnrw-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 21 Aug 2019 04:29:38 -0400
Received: from localhost
 by e06smtp03.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Wed, 21 Aug 2019 09:29:35 +0100
Received: from b06avi18878370.portsmouth.uk.ibm.com (9.149.26.194)
 by e06smtp03.uk.ibm.com (192.168.101.133) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 21 Aug 2019 09:29:31 +0100
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id x7L8TVPZ43385106
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 21 Aug 2019 08:29:31 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id EB57EA4040;
 Wed, 21 Aug 2019 08:29:30 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id E0E83A4051;
 Wed, 21 Aug 2019 08:29:29 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.59])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Wed, 21 Aug 2019 08:29:29 +0000 (GMT)
Date: Wed, 21 Aug 2019 11:29:28 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH] efi/arm: fix allocation failure when reserving the
 kernel base
References: <20190802053744.5519-1-clin@suse.com>
 <20190820115645.GP13294@shell.armlinux.org.uk>
 <CAKv+Gu_0wFw5Mjpdw7BEY7ewgetNgU=Ff1uvAsn0iHmJouyKqw@mail.gmail.com>
 <20190821061027.GA2828@linux-8mug>
 <CAKv+Gu8Yny8cVPck3rPwCPvJBvcZKMHti_9bkCTM4H4cZ_43fg@mail.gmail.com>
 <20190821071100.GA26713@rapoport-lnx>
 <CAKv+Gu99z3V1B68CU8qhNwwffqDxNBOM6t3Q8-V7qpbDkf-Cwg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu99z3V1B68CU8qhNwwffqDxNBOM6t3Q8-V7qpbDkf-Cwg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19082108-0012-0000-0000-000003410850
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19082108-0013-0000-0000-0000217B2ED0
Message-Id: <20190821082927.GC26713@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-21_03:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908210089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_013015_150096_B1AB0454 
X-CRM114-Status: GOOD (  45.01  )
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
Cc: Juergen Gross <JGross@suse.com>, Joey Lee <JLee@suse.com>,
 "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>,
 "guillaume.gardet@arm.com" <guillaume.gardet@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Chester Lin <clin@suse.com>, "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "ren_guo@c-sky.com" <ren_guo@c-sky.com>, Gary Lin <GLin@suse.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 10:29:37AM +0300, Ard Biesheuvel wrote:
> On Wed, 21 Aug 2019 at 10:11, Mike Rapoport <rppt@linux.ibm.com> wrote:
> >
> > On Wed, Aug 21, 2019 at 09:35:16AM +0300, Ard Biesheuvel wrote:
> > > On Wed, 21 Aug 2019 at 09:11, Chester Lin <clin@suse.com> wrote:
> > > >
> > > > On Tue, Aug 20, 2019 at 03:28:25PM +0300, Ard Biesheuvel wrote:
> > > > > On Tue, 20 Aug 2019 at 14:56, Russell King - ARM Linux admin
> > > > > <linux@armlinux.org.uk> wrote:
> > > > > >
> > > > > > On Fri, Aug 02, 2019 at 05:38:54AM +0000, Chester Lin wrote:
> > > > > > > diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
> > > > > > > index f3ce34113f89..909b11ba48d8 100644
> > > > > > > --- a/arch/arm/mm/mmu.c
> > > > > > > +++ b/arch/arm/mm/mmu.c
> > > > > > > @@ -1184,6 +1184,9 @@ void __init adjust_lowmem_bounds(void)
> > > > > > >               phys_addr_t block_start = reg->base;
> > > > > > >               phys_addr_t block_end = reg->base + reg->size;
> > > > > > >
> > > > > > > +             if (memblock_is_nomap(reg))
> > > > > > > +                     continue;
> > > > > > > +
> > > > > > >               if (reg->base < vmalloc_limit) {
> > > > > > >                       if (block_end > lowmem_limit)
> > > > > > >                               /*
> > > > > >
> > > > > > I think this hunk is sane - if the memory is marked nomap, then it isn't
> > > > > > available for the kernel's use, so as far as calculating where the
> > > > > > lowmem/highmem boundary is, it effectively doesn't exist and should be
> > > > > > skipped.
> > > > > >
> > > > >
> > > > > I agree.
> > > > >
> > > > > Chester, could you explain what you need beyond this change (and my
> > > > > EFI stub change involving TEXT_OFFSET) to make things work on the
> > > > > RPi2?
> > > > >
> > > >
> > > > Hi Ard,
> > > >
> > > > In fact I am working with Guillaume to try booting zImage kernel and openSUSE
> > > > from grub2.04 + arm32-efistub so that's why we get this issue on RPi2, which is
> > > > one of the test machines we have. However we want a better solution for all
> > > > cases but not just RPi2 since we don't want to affect other platforms as well.
> > > >
> > >
> > > Thanks Chester, but that doesn't answer my question.
> > >
> > > Your fix is a single patch that changes various things that are only
> > > vaguely related. We have already identified that we need to take
> > > TEXT_OFFSET (minus some space used by the swapper page tables) into
> > > account into the EFI stub if we want to ensure compatibility with many
> > > different platforms, and as it turns out, this applies not only to
> > > RPi2 but to other platforms as well, most notably the ones that
> > > require a TEXT_OFFSET of 0x208000, since they also have reserved
> > > regions at the base of RAM.
> > >
> > > My question was what else we need beyond:
> > > - the EFI stub TEXT_OFFSET fix [0]
> > > - the change to disregard NOMAP memblocks in adjust_lowmem_bounds()
> > > - what else???
> >
> > I think the only missing part here is to ensure that non-reserved memory in
> > bank 0 starts from a PMD-aligned address. I believe this could be done if
> > EFI stub, but I'm not really familiar with it so this just a semi-educated
> > guess :)
> >
> 
> Given that it is the ARM arch code that imposes this requirement, how
> about adding something like this to adjust_lowmem_bounds():
> 
> if (memblock_start_of_DRAM() % PMD_SIZE)
>     memblock_mark_nomap(memblock_start_of_DRAM(),
>         PMD_SIZE - (memblock_start_of_DRAM() % PMD_SIZE));

memblock_start_of_DRAM() won't work here, as it returns the actual start of
the DRAM including NOMAP regions. Moreover, as we cannot mark a region
NOMAP inside for_each_memblock() this should be done beforehand.

I think something like this could work:

diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
index 2f0f07e..f2b635b 100644
--- a/arch/arm/mm/mmu.c
+++ b/arch/arm/mm/mmu.c
@@ -1178,6 +1178,19 @@ void __init adjust_lowmem_bounds(void)
 	 */
 	vmalloc_limit = (u64)(uintptr_t)vmalloc_min - PAGE_OFFSET + PHYS_OFFSET;
 
+	/*
+	 * The first usable region must be PMD aligned. Mark its start
+	 * as MEMBLOCK_NOMAP if it isn't
+	 */
+	for_each_memblock(memory, reg) {
+		if (!memblock_is_nomap(reg) && (reg->base % PMD_SIZE)) {
+			phys_addr_t size = PMD_SIZE - (reg->base % PMD_SIZE);
+
+			memblock_mark_nomap(reg->base, size);
+			break;
+		}
+	}
+
 	for_each_memblock(memory, reg) {
 		phys_addr_t block_start = reg->base;
 		phys_addr_t block_end = reg->base + reg->size;



 
> (and introduce the nomap check into the loop)

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
