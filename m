Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C96B21F77A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 14:06:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rilkayIzLxD83gxbuysq4BJ98EGTt2y2nCMAFIfiPSQ=; b=N9FPDfwNUB8wM8
	vIys45W2r0xXL63jWLsYn4Wfove/oYhS7DGfafoGItXXLi6epWPntDpcBOCC6vr6ULVr6zGUipgFY
	JRVrP6rNSQQOt5qdy4ZmQ9DJNIUj5FSIeGlNldUYpNJNZ5BPjxHxhODq5+Eot77LPAQnfSzw+ccbf
	iaVSUniu/4TpZSmW5WOIkvjwRF3Niks9QeUTNGqxtdAj9Lg2DnjlBd3VXnB4MeVXF/F3cLUkgLl87
	CoW1wFSbVnnTctMRQ1wi4KujRWugwcrUia/fuX3A+dge85GIBiySunMwBLpLBCtqxGyP0onXl33bS
	tzGmSPxFDIffiTCix9xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjiSA-0004eT-Q1; Fri, 12 Jun 2020 12:06:34 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjiRx-0004aO-Rp
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 12:06:25 +0000
X-Originating-IP: 91.175.115.186
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id EF72BFF80A;
 Fri, 12 Jun 2020 12:06:18 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH v2 1/6] ARM: Use PAGE_SIZE for ELF_EXEC_PAGESIZE
In-Reply-To: <CAK8P3a2BpNVSE86zEYSGd7x+OF-7spjGmU331TbQX=DRAkpMoQ@mail.gmail.com>
References: <20200611134914.765827-1-gregory.clement@bootlin.com>
 <20200611134914.765827-2-gregory.clement@bootlin.com>
 <CAK8P3a0Rc6qd0Cb2yMNupbCP2NWRQAsEKtvEr5sZV4ANw6xfNQ@mail.gmail.com>
 <20200612083510.GB1551@shell.armlinux.org.uk>
 <CAK8P3a2BpNVSE86zEYSGd7x+OF-7spjGmU331TbQX=DRAkpMoQ@mail.gmail.com>
Date: Fri, 12 Jun 2020 14:06:18 +0200
Message-ID: <871rmk8p51.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_050622_036896_F410E727 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
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
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

> On Fri, Jun 12, 2020 at 10:35 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
>> On Fri, Jun 12, 2020 at 10:22:17AM +0200, Arnd Bergmann wrote:
>> > On Thu, Jun 11, 2020 at 3:49 PM Gregory CLEMENT
>> > <gregory.clement@bootlin.com> wrote:
>> > >
>> > > Currently ELF_EXEC_PAGESIZE is 4096 which is also the page size. In
>> > > order to be able to use other size of page than 4K, use PAGE_SIZE
>> > > instead of the hardcoded value.
>> > >
>> > > The use of PAGE_SIZE will be also aligned with what we find in other
>> > > architectures such as arm64.
>> > >
>> > > This is inspired from fa0ca2726ea9 ("DSMP 64K support") and
>> > > 4ef803e12baf ("mmu: large-page: Added support for multiple kernel page
>> > > sizes") from
>> > > https://github.com/MarvellEmbeddedProcessors/linux-marvell.git
>> > >
>> > > Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
>> >
>> > IIRC using page sizes above 16KB here also requires using a
>> > non-ancient linker in user space that places sections on
>> > ELF_EXEC_PAGESIZE boundaries, right?
>
> Correction: I was thinking of SHMLBA, not ELF_EXEC_PAGESIZE.
> SHMLBA is defined to 16KB in arch/arm/ at the moment (based on 4K
> page size), or (4 * PAGE_SIZE) on arm64, which can blow up to 256KB.
>
> AFAICT, SHMLBA should now be defined as "min(16384, PAGE_SIZE)".

We took care of it in patch 5:

+#ifdef CONFIG_ARM_LARGE_PAGE_SUPPORT
+#define    SHMLBA    (16 << 10)         /* attach addr a multiple of (4 * 4096) */
+#else
 #define    SHMLBA    (4 * PAGE_SIZE)         /* attach addr a multiple of this */
+#endif

But your version is better, with it we don't need anymore this ifdef.

Gregory

>
>> Doesn't that mean that this change breaks all existing userspace when
>> ELF_EXEC_PAGESIZE is not 4k?
>
> I think a lot of older user space would be broken with page sizes larger
> than 16KB, but would still work with 8KB or 16KB. Larger page sizes
> would only work with user space that was linked in the last five years
> or so, using a toolchain that has the workarounds for running on arm64
> with 64KB page size.
>
>       Arnd

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
