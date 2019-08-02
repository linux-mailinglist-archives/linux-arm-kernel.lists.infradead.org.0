Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9B47F4EC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 12:20:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tlx/uLyuLPwYMZIEd4hTTP57txn+99O7BhLF7yHGf9Y=; b=O0h071umXc791f
	LQKxCEE1CTVaXN2Us0qFXnTbQpSqyUjRJPiNnmyD3wto7Z/5Cu/9k9kNPt7hIzsoRciQJa30fp43Y
	Z73aJBGJQQxw26tmx02ACPE/2cM0lipTmSvnSvacN5ZGA9kbj5UdctqLFlF8OvycMaGrfkY5uqEO9
	aQLVdwdhttjjAtHZBaCdKJpquyJLDz67r5ph8kr3mchvX90JoDsUtS243p80KQGHTCSHZ2RTEB51q
	7/HlhF1jbjvoBTu93q92rGEytnhvCR1/qwj38qiCnyR6Cn8jJxX45RF9csRRBR1BWHgzwVbEkkCmR
	2t2iuXMIRSgPCBHw75PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htUg8-0005Sm-BT; Fri, 02 Aug 2019 10:20:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htUfv-0005SL-Mi
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 10:20:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E44A3344;
 Fri,  2 Aug 2019 03:20:38 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 26BB63F71F; Fri,  2 Aug 2019 03:20:34 -0700 (PDT)
Date: Fri, 2 Aug 2019 11:20:32 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Dave Hansen <dave.hansen@intel.com>
Subject: Re: [PATCH v19 00/15] arm64: untag user pointers passed to the kernel
Message-ID: <20190802102031.GB4175@arrakis.emea.arm.com>
References: <cover.1563904656.git.andreyknvl@google.com>
 <8c618cc9-ae68-9769-c5bb-67f1295abc4e@intel.com>
 <13b4cf53-3ecb-f7e7-b504-d77af15d77aa@arm.com>
 <CAAeHK+zTFqsLiB3Wf0bAi5A8ukQX5ZuvfUg4td-=r5UhBsUBOQ@mail.gmail.com>
 <96fd8da4-a912-f6cc-2b32-5791027dbbd5@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <96fd8da4-a912-f6cc-2b32-5791027dbbd5@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_032039_831497_7B1E9977 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 linux-media@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 08:36:47AM -0700, Dave Hansen wrote:
> On 8/1/19 5:48 AM, Andrey Konovalov wrote:
> > On Thu, Aug 1, 2019 at 2:11 PM Kevin Brodsky <kevin.brodsky@arm.com> wrote:
> >> On 31/07/2019 17:50, Dave Hansen wrote:
> >>> On 7/23/19 10:58 AM, Andrey Konovalov wrote:
> >>>> The mmap and mremap (only new_addr) syscalls do not currently accept
> >>>> tagged addresses. Architectures may interpret the tag as a background
> >>>> colour for the corresponding vma.
> >>>
> >>> What the heck is a "background colour"? :)
> >>
> >> Good point, this is some jargon that we started using for MTE, the idea being that
> >> the kernel could set a tag value (specified during mmap()) as "background colour" for
> >> anonymous pages allocated in that range.
> >>
> >> Anyway, this patch series is not about MTE. Andrey, for v20 (if any), I think it's
> >> best to drop this last sentence to avoid any confusion.

Indeed, the part with the "background colour" and even the "currently"
adverb should be dropped.

Also, if we merge the patches via different trees anyway, I don't think
there is a need for Andrey to integrate them with his series. We can
pick them up directly in the arm64 tree (once the review finished).

> OK, but what does that mean for tagged addresses getting passed to
> mmap/mremap?  That sentence read to me like "architectures might allow
> tags for ...something...".  So do we accept tagged addresses into those
> syscalls?

If mmap() does not return a tagged address, the reasoning is that it
should not accept one as an address hint (with or without MAP_FIXED).
Note that these docs should only describe the top-byte-ignore ABI while
leaving the memory tagging for a future patchset.

In that future patchset, we may want to update the mmap() ABI to allow,
only in conjunction with PROT_MTE, a tagged pointer as an address
argument. In such case mmap() will return a tagged address and the pages
pre-coloured (on fault) with the tag requested by the user. As I said,
that's to be discussed later in the year.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
