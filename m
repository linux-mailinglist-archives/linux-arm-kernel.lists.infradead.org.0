Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B662D26C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 01:34:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rxzn5moxCCJIYBm/o3G/C2YButxAcWenzHA53hvViGE=; b=CxfKFBrelp+Dtr
	lWnMsyvYFbaEVniFSx0pKk4oto3CXBK5Vbn/ndnGyc66GoDhUIfLYTP8Ay0MOzbNQXUYQVTih8cwF
	oVQZl/BAZWByL1uoVmr6/e6xumeff8wRabBnlEgjAXk6fZlzWzRlsZqfKv8PKjBQnZdatz8C6FOTU
	iouYEYKELS6iIUxJ2x+kNabc4/8yX/rn4bncp5/+Eq7V1ul/Tjl0xzoyQiREHg4A+DgANheuh5jUk
	4JVooL3aLP87IYDvHihtZjWsMxWQSS8h2J2cmVH2W2Mpp66p0GloPrhSkHrFM7oNl3L/yx3YSKLZN
	Lm4uc3FAyEJNAlDk5P7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVlbT-0002V9-E8; Tue, 28 May 2019 23:33:59 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVlbL-0002UN-9S
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 23:33:53 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4SNT0LH119660;
 Tue, 28 May 2019 23:33:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : subject
 : from : to : cc : date : in-reply-to : references : content-type :
 mime-version : content-transfer-encoding; s=corp-2018-07-02;
 bh=qZEaRDIPmwP5TWUCR9S3u/yLXWO2OSFxoldkS0AmjG0=;
 b=tXXK5WkvA3VpUTlG51P2q9LGfJkxovSGvJIwhPF0NNiu+pmrRrs643ObtsLlzxRZv9sL
 xGi67b35C30eA0gpzgCd7F8UFJTakd6EXWlodKDeKJ60hlPISFox2XuqHR9cIA7dhNTN
 Q5Lw2qFPToynBCudzAjqo23xQbAWky82hD/SJG6b8yHxFH/FmpNvWlBPdvbxfUAY8M+n
 Vx6af6q6yS6VUR4iO8Jx5PZrsb+QteyJjDVK43wT0JbTMcEcAMAf5nK5JLidAe2pkiIH
 EDCG69b49G78RsJVwupKHxQhnxG73NvIMsSpzN+lJa9ewDtd9ObQ1kGCJ+pwcgxn6TKn sg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2spxbq6a0j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 May 2019 23:33:26 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4SNWSwv154312;
 Tue, 28 May 2019 23:33:26 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2sqh73cyk2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 May 2019 23:33:25 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x4SNXMjM008798;
 Tue, 28 May 2019 23:33:23 GMT
Received: from dhcp-10-65-132-79.vpn.oracle.com (/10.65.132.79)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 28 May 2019 16:33:22 -0700
Message-ID: <11193998209cc6ff34e7d704f081206b8787b174.camel@oracle.com>
Subject: Re: [PATCH v15 05/17] arms64: untag user pointers passed to memory
 syscalls
From: Khalid Aziz <khalid.aziz@oracle.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Andrew Murray
 <andrew.murray@arm.com>
Date: Tue, 28 May 2019 17:33:04 -0600
In-Reply-To: <20190528154057.GD32006@arrakis.emea.arm.com>
References: <cover.1557160186.git.andreyknvl@google.com>
 <00eb4c63fefc054e2c8d626e8fedfca11d7c2600.1557160186.git.andreyknvl@google.com>
 <20190527143719.GA59948@MBP.local>
 <20190528145411.GA709@e119886-lin.cambridge.arm.com>
 <20190528154057.GD32006@arrakis.emea.arm.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9271
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=4
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905280148
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9271
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=4 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905280148
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_163351_422308_01593CE4 
X-CRM114-Status: GOOD (  39.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Christian Koenig <Christian.Koenig@amd.com>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Lee Smith <Lee.Smith@arm.com>, linux-kselftest@vger.kernel.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Yishai Hadas <yishaih@mellanox.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-05-28 at 16:40 +0100, Catalin Marinas wrote:
> On Tue, May 28, 2019 at 03:54:11PM +0100, Andrew Murray wrote:
> > On Mon, May 27, 2019 at 03:37:20PM +0100, Catalin Marinas wrote:
> > > On Mon, May 06, 2019 at 06:30:51PM +0200, Andrey Konovalov wrote:
> > > > This patch is a part of a series that extends arm64 kernel ABI
> > > > to allow to
> > > > pass tagged user pointers (with the top byte set to something
> > > > else other
> > > > than 0x00) as syscall arguments.
> > > > 
> > > > This patch allows tagged pointers to be passed to the following
> > > > memory
> > > > syscalls: brk, get_mempolicy, madvise, mbind, mincore, mlock,
> > > > mlock2,
> > > > mmap, mmap_pgoff, mprotect, mremap, msync, munlock, munmap,
> > > > remap_file_pages, shmat and shmdt.
> > > > 
> > > > This is done by untagging pointers passed to these syscalls in
> > > > the
> > > > prologues of their handlers.
> > > > 
> > > > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > > 
> > > Actually, I don't think any of these wrappers get called (have
> > > you
> > > tested this patch?). Following commit 4378a7d4be30 ("arm64:
> > > implement
> > > syscall wrappers"), I think we have other macro names for
> > > overriding the
> > > sys_* ones.
> > 
> > What is the value in adding these wrappers?
> 
> Not much value, initially proposed just to keep the core changes
> small.
> I'm fine with moving them back in the generic code (but see below).
> 
> I think another aspect is how we define the ABI. Is allowing tags to
> mlock() for example something specific to arm64 or would sparc ADI
> need
> the same? In the absence of other architectures defining such ABI, my
> preference would be to keep the wrappers in the arch code.
> 
> Assuming sparc won't implement untagged_addr(), we can place the
> macros
> back in the generic code but, as per the review here, we need to be
> more
> restrictive on where we allow tagged addresses. For example, if
> mmap()
> gets a tagged address with MAP_FIXED, is it expected to return the
> tag?

I would recommend against any ABI differences between ARM64 MTE/TBI and
sparc ADI unless it simply can not be helped. My understanding of
MTE/TBI is limited, so I will explain how sparc ADI works. On sparc, a
tagged address has no meaning until following steps happen:

1. set the user mode PSTATE.mcde bit. This acts as the master switch to
enable ADI for a process.

2. set TTE.mcd bit on TLB entries that match the address range ADI is
being enabled on.

3. Store version tag for the range of addresses userspace wants ADI
enabled on using "stxa" instruction. These tags are stored in physical
memory by the memory controller.

Steps 1 and 2 are accomplished by userspace by calling mprotect() with
PROT_ADI. Tags are set by storing tags in a loop, for example:

        version = 10;
        tmp_addr = shmaddr;
        end = shmaddr + BUFFER_SIZE;
        while (tmp_addr < end) {
                asm volatile(
                        "stxa %1, [%0]0x90\n\t"
                        :
                        : "r" (tmp_addr), "r" (version));
                tmp_addr += adi_blksz;
        }

With these semantics, giving mmap() or shamat() a tagged address is
meaningless since no tags have been stored at the addresses mmap() will
allocate and one can not store tags before memory range has been
allocated. If we choose to allow tagged addresses to come into mmap()
and shmat(), sparc code can strip the tags unconditionally and that may
help simplify ABI and/or code.

> 
> My thoughts on allowing tags (quick look):
> 
> brk - no
> get_mempolicy - yes
> madvise - yes
> mbind - yes
> mincore - yes
> mlock, mlock2, munlock - yes
> mmap - no (we may change this with MTE but not for TBI)
> mmap_pgoff - not used on arm64
> mprotect - yes
> mremap - yes for old_address, no for new_address (on par with mmap)
> msync - yes
> munmap - probably no (mmap does not return tagged ptrs)
> remap_file_pages - no (also deprecated syscall)
> shmat, shmdt - shall we allow tagged addresses on shared memory?
> 
> The above is only about the TBI ABI while ignoring hardware MTE. For
> the
> latter, we may want to change the mmap() to allow pre-colouring on
> page
> fault which means that munmap()/mprotect() should also support tagged
> pointers. Possibly mremap() as well but we need to decide whether it
> should allow re-colouring the page (probably no, in which case
> old_address and new_address should have the same tag). For some of
> these
> we'll end up with arm64 specific wrappers again, unless sparc ADI
> adopts
> exactly the same ABI restrictions.
> 

Let us keep any restrictions common across ARM64 and sparc. pre-
coloring on sparc in the kernel would mean kernel will have to execute
stxa instructions in a loop for each page being faulted in. Not that
big a deal but doesn't that assume the entire page has the same tag
which is dedcued from the upper bits of address? Shouldn't we support
tags at the same granularity level as what the hardware supports? We
went through this discussion for sparc and decision was to support tags
at the same granularity as hardware. That means we can not deduce tags
from the first address that pioints into an mmap or shmat region. Those
tags and the upper bytes of colored address could change for every
cacheline sized block (64-bytes on sparc M7). We can try to store tags
for an entire region in vma but that is expensive, plus on sparc tags
are set in userspace with no participation from kernel and now we need
a way for userspace to communicate the tags to kernel. From sparc point
of view, making kernel responsible for assigning tags to a page on page
fault is full of pitfalls.

Thanks,
Khalid


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
