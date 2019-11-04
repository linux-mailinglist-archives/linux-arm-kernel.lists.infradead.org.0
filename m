Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97475EE083
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 13:56:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mAyBNPx+1HZyK9LkJmJkL8Zw4lBkESkuGjbVJK187so=; b=bO9Tl7bUQpw2zo
	l2tESp/cVnq1h0gGJfHsLpKjCWSGcpf5vF610V8KdhxJvGI7CFkFtQ6mVOxtez+plZ5/liHOfcPeR
	o8ClRZcH6ycdw8sj36qp+F0AJt1e9f8JniqSejY9aattwRj4csGV54anouB/o0XjUYQ4TGgZC67t8
	gQWqbl+GRcTT9U9uIOJQV0ou1h3KU+wYCtwfDvaUOTqenkFSI48z6mtSgHnrQPaqZ9d1IGeQUoqsh
	7f4O2s8aRqgbepznku9reDvlpI+bXIDdLACft/g987MFlcoFMlNiDIAYkeyyvaoofG5T5FYH56L8L
	P9Sk8J040HKxsNyHj8+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRbuh-0006AE-FM; Mon, 04 Nov 2019 12:56:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRbuX-00069N-IE
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 12:56:46 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A3B220B7C;
 Mon,  4 Nov 2019 12:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572872205;
 bh=DahvUIlMUGAvXZNBwm3AJ9Zsp/qhwnO1waU2i3Z3O2k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ANcqbdpcOD+qx5TOZbLJ26nPQKLLmJvFwfi6qYNY1tnbVf9ahc7PM7qVJY2Esv3Fa
 9gBOFp9LjxnfpIs4mMsG3mL8NuMRmG9tcj5Wi2NB54GYcNm38JMAFisbqlEZDo7tPw
 gLo+QIFKVZ/aMCithTya39NboeCucFgc79ZMq1bQ=
Date: Mon, 4 Nov 2019 12:56:39 +0000
From: Will Deacon <will@kernel.org>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCHv2 0/8] arm64: ftrace cleanup + FTRACE_WITH_REGS
Message-ID: <20191104125637.GB24108@willie-the-truck>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <42c113ee-e7fc-3e94-cca0-f05f1c89fdb8@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <42c113ee-e7fc-3e94-cca0-f05f1c89fdb8@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_045645_629347_DCB3D48B 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, jthierry@redhat.com,
 linux-parisc@vger.kernel.org, peterz@infradead.org, catalin.marinas@arm.com,
 deller@gmx.de, jpoimboe@redhat.com, linux-kernel@vger.kernel.org,
 rostedt@goodmis.org, James.Bottomley@HansenPartnership.com,
 takahiro.akashi@linaro.org, mingo@redhat.com, james.morse@arm.com,
 jeyu@kernel.org, svens@stackframe.org, duwe@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Nov 02, 2019 at 05:42:25PM +0530, Amit Daniel Kachhap wrote:
> On 10/29/19 10:28 PM, Mark Rutland wrote:
> > This series is a reworked version of Torsten's FTRACE_WITH_REGS series
> > [1]. I've tried to rework the existing code in preparatory patches so
> > that the patchable-function-entry bits slot in with fewer surprises.
> > This version is based on v5.4-rc3, and can be found in my
> > arm64/ftrace-with-regs branch [2].
> > 
> > Patch 1 adds an (optional) ftrace_init_nop(), which the core code uses
> > to initialize callsites. This allows us to avoid a synthetic MCOUNT_ADDR
> > symbol, and more cleanly separates the one-time initialization of the
> > callsite from dynamic NOP<->CALL modification. Architectures which don't
> > implement this get the existing ftrace_make_nop() with MCOUNT_ADDR.
> > 
> > Recently parisc gained ftrace support using patchable-function-entry.
> > Patch 2 makes the handling of module callsite locations common in
> > kernel/module.c with a new FTRACE_CALLSITE_SECTION definition, and
> > removed the newly redundant bits from arch/parisc.
> > 
> > Patches 3 and 4 move the module PLT initialization to module load time,
> > which simplifies runtime callsite modification. This also means that we
> > don't transitently mark the module text RW, and will allow for the
> > removal of module_disable_ro().
> > 
> > Patches 5 and 6 add some trivial infrastructure, with patch 7 finally
> > adding FTRACE_WITH_REGS support. Additional work will be required for
> > livepatching (e.g. implementing reliable stack trace), which is
> > commented as part of patch 7.
> > 
> > Patch 8 is a trivial cleanup atop of the rest of the series, making the
> > code easier to read and less susceptible to config-specific breakage.
> I tested the whole series with my latest in-kernel ptrauth patches [1]
> and graph_tracer/function_graph_tracer works fine, So for the whole series,
> Tested-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> 
> Also I gave few minor comments in the individual patches. With those
> comments,
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>

I don't think this means what you think it means. Please read:

Documentation/process/submitting-patches.rst

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
