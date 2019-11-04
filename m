Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B97EE16D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 14:38:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rbLK9SeBXCMZTBWcwitettlFw3BJOZBTtxR7kblQypc=; b=if08WcTU8LrFHM
	yrUmWnAsFbgdQS0z5LmG8uvxPBKzQmIJR3zqoHWl+DVPkBFsbgx2x13mUdUpVCW64Hh7m1uGCSIYv
	2jDLfxcZDb4Z9fiyQQeKu7+XKYPiElxyFtIGbBrMmE3rhz5BidyPBOvL6Aw2mH8rQxb7WynTyqWqR
	TzV3Tzpz7CoYZi+IvlVnexSmzbjEpltsrzKjV0ljvIDPzLrQhyFSN4xyi7oQ40uRpoOPgycfn8dVh
	I3CC48jyTDTY1Ht34J+s77vKF4QfKUCyS2NnqZRaIGadocHV3snGfGthPF2pzI15NqHP8LXIUc5Zm
	O5yL5GvtUqav6l2uv7fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRcZF-0004XD-3P; Mon, 04 Nov 2019 13:38:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRcZ7-0004WR-Nb
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 13:38:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 97DD81FB;
 Mon,  4 Nov 2019 05:38:40 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5FE8D3F6C4;
 Mon,  4 Nov 2019 05:38:38 -0800 (PST)
Date: Mon, 4 Nov 2019 13:38:36 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCHv2 1/8] ftrace: add ftrace_init_nop()
Message-ID: <20191104133836.GF45140@lakrids.cambridge.arm.com>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <20191029165832.33606-2-mark.rutland@arm.com>
 <20191104081620.732320a8@grimm.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104081620.732320a8@grimm.local.home>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_053841_812366_8EA83C82 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: jthierry@redhat.com, linux-parisc@vger.kernel.org, peterz@infradead.org,
 catalin.marinas@arm.com, deller@gmx.de, jpoimboe@redhat.com,
 linux-kernel@vger.kernel.org, James.Bottomley@HansenPartnership.com,
 takahiro.akashi@linaro.org, will@kernel.org, mingo@redhat.com,
 james.morse@arm.com, jeyu@kernel.org, amit.kachhap@arm.com,
 svens@stackframe.org, duwe@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 08:16:20AM -0500, Steven Rostedt wrote:
> On Tue, 29 Oct 2019 16:58:25 +0000
> Mark Rutland <mark.rutland@arm.com> wrote:
> 
> > Architectures may need to perform special initialization of ftrace
> > callsites, and today they do so by special-casing ftrace_make_nop() when
> > the expected branch address is MCOUNT_ADDR. In some cases (e.g. for
> > patchable-function-entry), we don't have an mcount-like symbol and don't
> > want a synthetic MCOUNT_ADDR, but we may need to perform some
> > initialization of callsites.
> > 
> > To make it possible to separate initialization from runtime
> > modification, and to handle cases without an mcount-like symbol, this
> > patch adds an optional ftrace_init_nop() function that architectures can
> > implement, which does not pass a branch address.
> > 
> > Where an architecture does not provide ftrace_init_nop(), we will fall
> > back to the existing behaviour of calling ftrace_make_nop() with
> > MCOUNT_ADDR.
> > 
> > At the same time, ftrace_code_disable() is renamed to
> > ftrace_nop_initialize() to make it clearer that it is intended to
> > intialize a callsite into a disabled state, and is not for disabling a
> > callsite that has been runtime enabled. The kerneldoc description of rec
> > arguments is updated to cover non-mcount callsites.
> > 
> > Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> > Reviewed-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > Cc: Ingo Molnar <mingo@redhat.com>
> > Cc: Steven Rostedt <rostedt@goodmis.org>
> 
> Reviewed-by: Steven Rostedt (VMware) <rostedt@goodmis.org>

Thanks!

Just to check, are you happy if this were to go via the arm64 tree with
the rest of the patches?

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
