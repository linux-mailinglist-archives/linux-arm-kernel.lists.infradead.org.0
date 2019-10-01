Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F840C3801
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 16:47:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dZ3WUnMt9TwYR3lwyvUAubMo3LX+nkFQ2FlKJfznelg=; b=JSjRxdKmSLwQ3P
	vUEOIFHhPgaT/P/xkBxes5GCqP89jf2JsXpP6VMzfDcPndMTsIxgyBLhhmkCyO1TISd9sLhqWBOKK
	is5MVwSrGFxtapvAZFYbR3egmOp8DpQ1+mKf2YLPFT2QR6xlDwzGdJmVsOe0h1wG4Oo/SwRw2JBp2
	UQ4TpJCMzlRQoGYa3X5iAUzSxC2fbwF0DFXl1DFNDjxKzzIFOm1K7V/p7yp5oEUWPaNVVy5rm+93p
	QDibsPgANnAuv9Yyw3/5vstkFpNpHfhoV+C/x27DCYIGevNCX9SNVPuQOPQ71xWglrwkeqxAAHKsR
	ealaMPjMYiTFbYqpkFvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJQj-0007I0-JQ; Tue, 01 Oct 2019 14:47:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJQa-0007HF-7P
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 14:47:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9C4491000;
 Tue,  1 Oct 2019 07:46:59 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1298E3F71A;
 Tue,  1 Oct 2019 07:46:57 -0700 (PDT)
Date: Tue, 1 Oct 2019 15:46:50 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Julien Grall <julien.grall@arm.com>,
 Stefano Stabellini <sstabellini@kernel.org>
Subject: Re: [Xen-devel] [PATCH] ARM: xen: unexport HYPERVISOR_platform_op
 function
Message-ID: <20191001144650.GA22655@lakrids.cambridge.arm.com>
References: <20190906153948.2160342-1-arnd@arndb.de>
 <7abad95e-ea47-c068-d91c-ba503f2530b9@citrix.com>
 <CAK8P3a1qkMLW_Wnn-N0seUw4N5bPwTU7Dy7CwOWxzS6NTnTmiQ@mail.gmail.com>
 <bda2a05b-e2d0-feee-761b-88deeeac2449@citrix.com>
 <95dbd972-fe78-d0ca-f7b4-1a6bdd418eab@arm.com>
 <20191001143334.GA46651@lakrids.cambridge.arm.com>
 <9e04485f-2d4a-81a2-c7e1-e50dd888930f@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9e04485f-2d4a-81a2-c7e1-e50dd888930f@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_074700_360120_EF9A0EC6 
X-CRM114-Status: GOOD (  21.69  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, Andrew Cooper <andrew.cooper3@citrix.com>,
 Emil Velikov <emil.l.velikov@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Denis Efremov <efremov@linux.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 xen-devel <xen-devel@lists.xenproject.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 03:39:41PM +0100, Julien Grall wrote:
> On 01/10/2019 15:33, Mark Rutland wrote:
> > On Sat, Sep 07, 2019 at 11:05:45AM +0100, Julien Grall wrote:
> > > On 9/6/19 6:20 PM, Andrew Cooper wrote:
> > > > On 06/09/2019 17:00, Arnd Bergmann wrote:
> > > > > On Fri, Sep 6, 2019 at 5:55 PM Andrew Cooper <andrew.cooper3@citrix.com> wrote:
> > > > > > On 06/09/2019 16:39, Arnd Bergmann wrote:
> > > > > > > HYPERVISOR_platform_op() is an inline function and should not
> > > > > > > be exported. Since commit 15bfc2348d54 ("modpost: check for
> > > > > > > static EXPORT_SYMBOL* functions"), this causes a warning:
> > > > > > > 
> > > > > > > WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_GPL
> > > > > > > 
> > > > > > > Remove the extraneous export.
> > > > > > > 
> > > > > > > Fixes: 15bfc2348d54 ("modpost: check for static EXPORT_SYMBOL* functions")
> > > > > > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>

[...]

> > > While looking at the code, I also realized that the implementation of
> > > HYPERCALL_dm_op might be incorrect for Arm32. Similarly do privcmd call, I
> > > think dm_op call should enable user access as they will be used by
> > > userspace.
> > > 
> > > We don't use dm_op on Arm so far, hence why I think this was unnoticed. I
> > > will see if I can reproduce it and send a patch.
> > 
> > I'm seeing this when building arm64 defconfig v5.4-rc1:
> > 
> > | [mark@lakrids:~/src/linux]% usekorg 8.1.0  make ARCH=arm64 CROSS_COMPILE=aarch64-linux- -j56 -s
> > | arch/arm64/Makefile:62: CROSS_COMPILE_COMPAT not defined or empty, the compat vDSO will not be built
> > | WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_GPL
> > | WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_GPL
> > 
> > I couldn't see a follow-up; do you have a patch for this?
> 
> The first e-mail of the thread should contain a patch to address the warning
> (see [1]). But it is still waiting on an Ack from Stefano so it can get
> merged.

Ah, sorry. I misunderstood what you were planning to send a patch for,
and assumed you were going to propose an alternative to Arnd's patch.

Stefano, do you see any problem with Arnd's patch? If not, it would be
good to get this merged soon.

Thanks,
Mark.

> 
> Cheers,
> 
> [1] https://patchwork.kernel.org/patch/11135601/
> 
> -- 
> Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
