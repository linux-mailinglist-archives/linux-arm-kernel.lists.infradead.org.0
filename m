Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEB88670E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 18:27:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mlaEH/I6Rn0clIUIooP1MqXHSKACgy3HB2BrBbp0gBo=; b=NNvklfM+rQ2vMp
	RLKT82V8aVwZ7F4oVj+BVW9AIYM5oem8+9ADNTf0KhB3biSXBefmuxnoThiR7V9WgAq7eHMgEfrjs
	n5pauLD89E7SAgqD7cMO+CVW0w3TrMOKID2ntCipvxSB2XjmxEIYQCtEM6DFVYSbWb3yd5aBnlD/s
	5r0hs1D0GaGQMD1Uq6ftbtcPuWlDkZBH6LcDwhD7TKnyzVm8h24TAoy8TSitsax5uE2mASTJP+oyO
	hA10XUdhX3SEm063mnSNYy71qhnQ0Wo/tpkUUHMhwrXZJ2QqhdFxW5Z/pssmTkZk10zhocP9vFBc7
	C/sPD0HUGmETBeiGSbQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvlG1-0003hQ-Eg; Thu, 08 Aug 2019 16:27:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvlFr-0003SR-3v
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 16:27:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 605471596;
 Thu,  8 Aug 2019 09:27:06 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0BCCE3F706;
 Thu,  8 Aug 2019 09:27:04 -0700 (PDT)
Date: Thu, 8 Aug 2019 17:27:02 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Dave Hansen <dave.hansen@intel.com>
Subject: Re: [PATCH v7 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.rst
Message-ID: <20190808162702.GJ10425@arm.com>
References: <20190807155321.9648-1-catalin.marinas@arm.com>
 <20190807155321.9648-2-catalin.marinas@arm.com>
 <826a9ace-feac-c019-843e-07e23c9fd46c@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <826a9ace-feac-c019-843e-07e23c9fd46c@intel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_092707_200751_D7313A5B 
X-CRM114-Status: GOOD (  18.47  )
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Will Deacon <will.deacon@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 01:38:16PM -0700, Dave Hansen wrote:

[Random comments below on a couple of points]

> On 8/7/19 8:53 AM, Catalin Marinas wrote:
> > +- mmap() done by the process itself (or its parent), where either:
> > +
> > +  - flags have the **MAP_ANONYMOUS** bit set
> > +  - the file descriptor refers to a regular file (including those returned
> > +    by memfd_create()) or **/dev/zero**
> 
> What's a "regular file"? ;)

A file, as distinct from device nodes, sockets, symlinks etc.

I think this is fairly standard UNIX terminology, even though it sounds
vague:

From glibc's <bits/stat.h>:

#define	__S_IFREG	0100000	/* Regular file.  */


Or for POSIX test (a.k.a. "[")

       -f file
              True if file exists and is a regular file.

Using memfd_create() or opening /dev/zero doesn't yield a regular file
though, so perhaps those should be a separate bullet.

[...]

> > +The AArch64 Tagged Address ABI is an opt-in feature and an application can
> > +control it via **prctl()** as follows:
> > +
> > +- **PR_SET_TAGGED_ADDR_CTRL**: enable or disable the AArch64 Tagged Address
> > +  ABI for the calling process.
> > +
> > +  The (unsigned int) arg2 argument is a bit mask describing the control mode
> > +  used:
> > +
> > +  - **PR_TAGGED_ADDR_ENABLE**: enable AArch64 Tagged Address ABI. Default
> > +    status is disabled.
> > +
> > +  The arguments arg3, arg4, and arg5 are ignored.
> 
> For previous prctl()'s, we've found that it's best to require that the
> unused arguments be 0.  Without that, apps are free to put garbage
> there, which makes extending the prctl to use other arguments impossible
> in the future.

Because arg2 is already a mask of flags with some flags unallocated,
we can add a new flag for ABI extensions.

If arg3 is used someday, it may or may not be natural for 0 to mean
"default".  Enabling this argument with an explicit flag in arg2 may
be cleaner than mangling the semantics of arg3 so that 0 can have
the right meaning.

Avoiding redundant 0 arguments also allows userspace to take advantage
of the glibc's variadic prototype for prctl() for example.

Not a huge deal, but that was my rationale anyway.

> Also, shouldn't this be converted over to an arch_prctl()?

Most arch-specific prctls seem to use prctl(), and arm64 already has a
few there.

arch_prctl() is x86-specific.  I don't know the history.

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
