Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A15A98B86
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 08:44:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MU4xjjluprO0GEcs/rEqPM45gIGKPO+BZfe7fBhStCg=; b=KQfy/aR+gXt1vs
	ATy48QBtVVBUA4V+R4QUVwCi7FTYBdjRZCEwE4+4nzNG/e8KYn6A5wjGD4JkDGqWGDYyweXhBrtSq
	d0EZNs6xmA4dklgm+tQFvL8gFALOZtWl3IVoJ0YRSGJeme2KadHl6IGiSm8K7T+5aIadzEQa5CrRM
	t0RpHO+XTr508IjO8yCbgKu6DmsOdJmcf4nrh3mpRiQiyU7Dp2K2Hzs39JbeDSgFU6mwLc/9M4UbM
	4h0du8hFtzAT4hk6U+/117doZp+XIE4C5vA/g5bDmRWNJF94esN3eQrWjcTMh8lgcW7R9VRCeqm9J
	XrgYzmFTmOOh+CjK9j0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0gpy-0008Uj-QU; Thu, 22 Aug 2019 06:44:46 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gpV-0008UP-UH
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 06:44:19 +0000
Received: from pps.filterd (m0098413.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7M6fo3P061707
 for <linux-arm-kernel@lists.infradead.org>; Thu, 22 Aug 2019 02:44:17 -0400
Received: from e06smtp01.uk.ibm.com (e06smtp01.uk.ibm.com [195.75.94.97])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2uhnqsgke4-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Thu, 22 Aug 2019 02:44:16 -0400
Received: from localhost
 by e06smtp01.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Thu, 22 Aug 2019 07:44:15 +0100
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp01.uk.ibm.com (192.168.101.131) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 22 Aug 2019 07:44:10 +0100
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x7M6i99W54853656
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 22 Aug 2019 06:44:09 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B5D114C050;
 Thu, 22 Aug 2019 06:44:09 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C73384C044;
 Thu, 22 Aug 2019 06:44:08 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.59])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu, 22 Aug 2019 06:44:08 +0000 (GMT)
Date: Thu, 22 Aug 2019 09:44:07 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Chester Lin <clin@suse.com>
Subject: Re: [PATCH] arm: skip nomap memblocks while finding the
 lowmem/highmem boundary
References: <20190822034425.25899-1-clin@suse.com>
 <20190822035920.GA27154@linux-8mug>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822035920.GA27154@linux-8mug>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19082206-4275-0000-0000-0000035BC212
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19082206-4276-0000-0000-0000386DE709
Message-Id: <20190822064406.GC18872@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-22_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908220072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_234418_113895_7329327F 
X-CRM114-Status: GOOD (  35.50  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "guillaume.gardet@arm.com" <guillaume.gardet@arm.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Joey Lee <JLee@suse.com>, "geert@linux-m68k.org" <geert@linux-m68k.org>,
 Gary Lin <GLin@suse.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 03:59:42AM +0000, Chester Lin wrote:
> On Thu, Aug 22, 2019 at 11:45:34AM +0800, Chester Lin wrote:
> > adjust_lowmem_bounds() checks every memblocks in order to find the boundary
> > between lowmem and highmem. However some memblocks could be marked as NOMAP
> > so they are not used by kernel, which should be skipped while calculating
> > the boundary.
> > 
> > Signed-off-by: Chester Lin <clin@suse.com>
> > ---
> >  arch/arm/mm/mmu.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
> > index 426d9085396b..b86dba44d828 100644
> > --- a/arch/arm/mm/mmu.c
> > +++ b/arch/arm/mm/mmu.c
> > @@ -1181,6 +1181,9 @@ void __init adjust_lowmem_bounds(void)
> >  		phys_addr_t block_start = reg->base;
> >  		phys_addr_t block_end = reg->base + reg->size;
> >  
> > +		if (memblock_is_nomap(reg))
> > +			continue;
> > +
> >  		if (reg->base < vmalloc_limit) {
> >  			if (block_end > lowmem_limit)
> >  				/*
> > -- 
> > 2.22.0
> >
> 
> Hi Russell, Mike and Ard,
> 
> Per the discussion in the thread "[PATH] efi/arm: fix allocation failure ...",
> (https://lkml.org/lkml/2019/8/21/163), I presume that the change to disregard
> NOMAP memblocks in adjust_lowmem_bounds() should be separated as a single patch.
> 
> Please let me know if any suggestion, thank you.

Let's add this one to the series: 

From 06a986e79d60c310c804b3e550bd50316597aec5 Mon Sep 17 00:00:00 2001
From: Mike Rapoport <rppt@linux.ibm.com>
Date: Thu, 22 Aug 2019 09:27:40 +0300
Subject: [PATCH] arm: ensure that usable memory in bank 0 starts from a
 PMD-aligned address

The calculation of memblock_limit in adjust_lowmem_bounds() assumes that
bank 0 starts from a PMD-aligned address. However, the beginning of the
first bank may be NOMAP memory and the start of usable memory
will be not aligned to PMD boundary. In such case the memblock_limit will
be set to the end of the NOMAP region, which will prevent any memblock
allocations.

Mark the region between the end of the NOMAP area and the next PMD-aligned
address as NOMAP as well, so that the usable memory will start at
PMD-aligned address.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/arm/mm/mmu.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
index 4495a26..25da9b2 100644
--- a/arch/arm/mm/mmu.c
+++ b/arch/arm/mm/mmu.c
@@ -1177,6 +1177,22 @@ void __init adjust_lowmem_bounds(void)
 	 */
 	vmalloc_limit = (u64)(uintptr_t)vmalloc_min - PAGE_OFFSET + PHYS_OFFSET;
 
+	/*
+	 * The first usable region must be PMD aligned. Mark its start
+	 * as MEMBLOCK_NOMAP if it isn't
+	 */
+	for_each_memblock(memory, reg) {
+		if (!memblock_is_nomap(reg)) {
+			if (!IS_ALIGNED(reg->base, PMD_SIZE)) {
+				phys_addr_t len;
+
+				len = round_up(reg->base, PMD_SIZE) - reg->base;
+				memblock_mark_nomap(reg->base, len);
+			}
+			break;
+		}
+	}
+
 	for_each_memblock(memory, reg) {
 		phys_addr_t block_start = reg->base;
 		phys_addr_t block_end = reg->base + reg->size;
-- 
2.7.4


-- 
Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
