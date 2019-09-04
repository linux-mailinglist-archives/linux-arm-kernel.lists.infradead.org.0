Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2C7A814B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 13:47:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XT6/E70xxoirRUF+LWLf7srFF1kCNKfsUE5e1ww8Lmg=; b=KssIGm/qv5dpMQ
	V32Vous1gaxJFe1Fgq3/3wVTn1UarXUmq/YD7aLoWpU+0Mf1QoyV8A74evSDjBOuH4DFqaqD04nrK
	7ZAgJGmgass7xZ4L4tOzf0xElwMGJ5nxk4oY8zJlquIO8dI4cmv+Za9eDn46ovKbrBGjXsJ1Ej8wH
	rvioGa34T2Ff1VMd6lYdDp4WPN2h1ge/Fl+/8XCdTOE5xIbCLmUCAsZvBB15k9T8/J14YM/RVD4Oq
	ySsx/s2oev+4PqgUk/BwOFgbp/qvvNnOPAhuUcTXNcVLQGhBZR09U0mw8qHwNa9FgyiIRLokE64ON
	mWlzWHOwzJ0T9oypyPTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5TlG-0003ex-Nj; Wed, 04 Sep 2019 11:47:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Tl1-0003eV-UY
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 11:47:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7EA7C337;
 Wed,  4 Sep 2019 04:47:25 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 964DB3F246;
 Wed,  4 Sep 2019 04:47:24 -0700 (PDT)
Date: Wed, 4 Sep 2019 12:47:22 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v5 00/11] Add arm64/signal initial kselftest support
Message-ID: <20190904114722.GQ27757@arm.com>
References: <20190902112932.36129-1-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902112932.36129-1-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_044728_032235_CD92AB2A 
X-CRM114-Status: GOOD (  19.05  )
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
Cc: amit.kachhap@arm.com, andreyknvl@google.com, shuah@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 02, 2019 at 12:29:21pm +0100, Cristian Marussi wrote:
> Hi
> 
> this patchset aims to add the initial arch-specific arm64 support to
> kselftest starting with signals-related test-cases.
> A common internal test-case layout is proposed which then it is anyway
> wired-up to the toplevel kselftest Makefile, so that it should be possible
> at the end to run it on an arm64 target in the usual way with KSFT.

BTW, it's helpful to state the base branch / commit as clearly as
possible near the top of the cover letter, say,

--8<--

This series is based on arm64/for-next/core [1]
commit 9ce1263033cd ("selftests, arm64: add a selftest for passing tagged pointers to kernel")

[1] git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-next/core

-->8--

This is particularly important if you expect the maintainer to pick up
the patches.

You don't need to reference a specific commit unless there's a
significant chance of conflicts if the wrong commit is used, but it can
help provide a clue as to why you're basing on this alternate branch.

> ~/linux# make TARGETS=arm64 kselftest
> 
> New KSFT arm64 testcases live inside tools/testing/selftests/arm64 grouped by
> family inside subdirectories: arm64/signal is the first family proposed with
> this series.
> This series converts also to this subdirectory scheme the pre-existing
> (already queued on arm64/for-next/core) KSFT arm64 tags tests, moving them
> into arm64/tags.
> 
> Thanks
> 
> Cristian
> 
> 
> Notes:
> -----
> - further details in the included READMEs
> 
> - more tests still to be written (current strategy is going through the related
>   Kernel signal-handling code and write a test for each possible and sensible code-path)
>   A few ideas for more TODO testcases:
> 	- fake_sigreturn_unmapped_sp: SP into unmapped addrs
> 	- fake_sigreturn_kernelspace_sp: SP into kernel addrs
> 	- fake_sigreturn_sve_bad_extra_context: SVE extra context badly formed
> 	- mangle_sve_invalid_extra_context: SVE extra_context invalid
> 
> - SVE signal testcases and special handling will be part of an additional patch
>   still to be released

What's your approach to checking that the test failure paths work?

We could either hack the kernel or the tests to provoke "fake" failures,
and I don't think it's necessary to test everything in this way,
providing we have confidence that the test strategy and framework works
in general.

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
