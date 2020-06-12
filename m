Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0331F777B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 13:50:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g6qX5guTHuyZRRpfRyi7MdwiKpWAMDdBUVqJt7NfomM=; b=RzICvHYMAb1ILw
	VyxXpE8+yB1a+yJT72Y3B1Uo0MRjvXfbYDCX/nyGvCrisvuUHKhaKhe72EVFQQ4PQynWXuZ8NmoHy
	wM5i0iQYBGxzHm35zR/bFbKFLbe+3lrSQD9+tKM7RGxRLKDSjpVP4kusehebUzMrWYbRizqiRzNyU
	WwQXTPMnewVirDCmDazBt9O+X4ybpbvni+pvMRB/CNBXAagmxu259sb5mOWesZ2m2Gf/yqypToxS/
	R+rx7VnaVz+rl0aDTOJD/fFiQE4Fl9ZpJtvRUphtJTpTT34b1lkOZcAGPzdySgufU6kschH/MrItQ
	JvgcsHwF9y6yAldu37cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjiCU-0003AP-21; Fri, 12 Jun 2020 11:50:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjiCL-00039q-2r
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 11:50:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3232431B;
 Fri, 12 Jun 2020 04:50:11 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5CD363F6CF;
 Fri, 12 Jun 2020 04:50:10 -0700 (PDT)
Date: Fri, 12 Jun 2020 12:50:08 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 1/6] ARM: Use PAGE_SIZE for ELF_EXEC_PAGESIZE
Message-ID: <20200612115007.GB19739@gaia>
References: <20200611134914.765827-1-gregory.clement@bootlin.com>
 <20200611134914.765827-2-gregory.clement@bootlin.com>
 <CAK8P3a0Rc6qd0Cb2yMNupbCP2NWRQAsEKtvEr5sZV4ANw6xfNQ@mail.gmail.com>
 <20200612083510.GB1551@shell.armlinux.org.uk>
 <CAK8P3a2BpNVSE86zEYSGd7x+OF-7spjGmU331TbQX=DRAkpMoQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2BpNVSE86zEYSGd7x+OF-7spjGmU331TbQX=DRAkpMoQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_045013_171639_EA65710B 
X-CRM114-Status: GOOD (  21.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 10:46:17AM +0200, Arnd Bergmann wrote:
> On Fri, Jun 12, 2020 at 10:35 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> > On Fri, Jun 12, 2020 at 10:22:17AM +0200, Arnd Bergmann wrote:
> > > On Thu, Jun 11, 2020 at 3:49 PM Gregory CLEMENT
> > > <gregory.clement@bootlin.com> wrote:
> > > >
> > > > Currently ELF_EXEC_PAGESIZE is 4096 which is also the page size. In
> > > > order to be able to use other size of page than 4K, use PAGE_SIZE
> > > > instead of the hardcoded value.
> > > >
> > > > The use of PAGE_SIZE will be also aligned with what we find in other
> > > > architectures such as arm64.
> > > >
> > > > This is inspired from fa0ca2726ea9 ("DSMP 64K support") and
> > > > 4ef803e12baf ("mmu: large-page: Added support for multiple kernel page
> > > > sizes") from
> > > > https://github.com/MarvellEmbeddedProcessors/linux-marvell.git
> > > >
> > > > Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> > >
> > > IIRC using page sizes above 16KB here also requires using a
> > > non-ancient linker in user space that places sections on
> > > ELF_EXEC_PAGESIZE boundaries, right?
> 
> Correction: I was thinking of SHMLBA, not ELF_EXEC_PAGESIZE.
> SHMLBA is defined to 16KB in arch/arm/ at the moment (based on 4K
> page size), or (4 * PAGE_SIZE) on arm64, which can blow up to 256KB.
> 
> AFAICT, SHMLBA should now be defined as "min(16384, PAGE_SIZE)".

Good point. We should do this with the COMPAT_SHMLBA on arm64 (we didn't
bother since COMPAT had a dependency on 4K but you can override it with
EXPERT).

> > Doesn't that mean that this change breaks all existing userspace when
> > ELF_EXEC_PAGESIZE is not 4k?
> 
> I think a lot of older user space would be broken with page sizes larger
> than 16KB, but would still work with 8KB or 16KB. Larger page sizes
> would only work with user space that was linked in the last five years
> or so, using a toolchain that has the workarounds for running on arm64
> with 64KB page size.

FWIW, Debian armhf now boots fine on an arm64 kernel with 64K pages (it
wasn't the case some years ago).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
