Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D51112DD0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 14:39:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sP77VQyG70WrVUHNu3VM0KAUrZzQvYzWjJH28EdcMIg=; b=D8IkijzLEEprjv
	64NKu3cHnIAMJJjamSXKw+n1+kYnwsTUtZNUacEQ3Os+Hbgb8zZdS4K5cDio7MLGKY2H2r9t8v0mb
	HYmH2zKFW3LdrwnjSzHFOk74IBqcl7CaME+h/HoPxo+xwkNjoLpdXe5T0UZpuE3pYEfUW/gRnzSq0
	G/Hix+aMMJ4H8zEf/vftrXRzh/XrgoddJtdMwLOtHyNU5ua9z8hpcUHBY92ogcM/NV4Joara4w9qb
	OU3ZxjXy71/6ROkFB4iwuubbaWMlxhvTn/8PTEk8DxP+0BzGkxc3FnQyI9lwepfZH20REj7LyERsn
	jEsglNtpzVdECgpwb3Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXTn-0008GF-2t; Fri, 03 May 2019 12:39:55 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXTg-0008Fo-Rf
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:39:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3057A374;
 Fri,  3 May 2019 05:39:48 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 487923F220;
 Fri,  3 May 2019 05:39:43 -0700 (PDT)
Date: Fri, 3 May 2019 13:39:40 +0100
From: Will Deacon <will.deacon@arm.com>
To: Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH] Documentation: Add ARM64 to kernel-parameters.rst
Message-ID: <20190503123940.GC32046@fuggles.cambridge.arm.com>
References: <cover.1555085500.git.jpoimboe@redhat.com>
 <24039e1370ed57e8075730c0b88c505afd9e0ab7.1555085500.git.jpoimboe@redhat.com>
 <25174c3c-0e39-0562-7d02-bb7d51cd2b43@infradead.org>
 <20190413035621.tohihjksatqushwf@treble>
 <20190503063756.09c74f6e@lwn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503063756.09c74f6e@lwn.net>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_053948_904246_95A77FF0 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Paul Mackerras <paulus@samba.org>,
 "H . Peter Anvin" <hpa@zytor.com>, Ingo Molnar <mingo@kernel.org>,
 Andrea Arcangeli <aarcange@redhat.com>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Steven Price <steven.price@arm.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Waiman Long <longman@redhat.com>, linux-arch@vger.kernel.org,
 Jon Masters <jcm@redhat.com>, Jiri Kosina <jikos@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Phil Auld <pauld@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org,
 Tyler Hicks <tyhicks@canonical.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 06:37:56AM -0600, Jonathan Corbet wrote:
> On Fri, 12 Apr 2019 22:56:21 -0500
> Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> 
> > Add ARM64 to the legend of architectures.  It's already used in several
> > places in kernel-parameters.txt.
> > 
> > Suggested-by: Randy Dunlap <rdunlap@infradead.org>
> > Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
> 
> It looks like nobody has picked this up...so I've applied it.

It's queued and tagged in the arm64 tree, which should also be in next!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
