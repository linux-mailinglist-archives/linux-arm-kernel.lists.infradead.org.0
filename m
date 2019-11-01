Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22470EC6BD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 17:29:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pq7QfLuDzFE6d58aCW+7BMG9olwOo0dTUao6w6DXiG0=; b=SLqVWVE0Y6HZ5p
	D3BApncXQdbLVigxZn/xNFAZGqbO6kvhw6MdGiDB88p4P9WapSdx3Xmtx7lkwnczMcZ3LZFxF+4CC
	WkEjVNW95tEzh/dP5pXZo4Vv8K7lOzhi4P2SuPhsHfuTfDiWm+VdDAOCdB29KFSkZS43VK10CIlv+
	mSeemqN2cI/HfdC/8LdtkYHWaUe9AUn11Vqr+X1pPH1+uImL2fV1KZw/x3PrbfrtNEkg3KM4GtiZL
	3xxb9Xt2kwAgVpofiak9qJLbX2booadtBh9hwr5YkazG9pBsSrKxeMxBpJr9RpVMdZZkIh6SkV2oN
	7cSbhvCzFDZfR6rKm5PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZnb-0002Nd-2j; Fri, 01 Nov 2019 16:29:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZnU-0002Mh-HC
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 16:29:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A11591FB;
 Fri,  1 Nov 2019 09:29:11 -0700 (PDT)
Received: from blommer (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5829C3F719;
 Fri,  1 Nov 2019 09:29:08 -0700 (PDT)
Date: Fri, 1 Nov 2019 16:28:58 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Sven Schnelle <svens@stackframe.org>
Subject: Re: [PATCHv2 0/8] arm64: ftrace cleanup + FTRACE_WITH_REGS
Message-ID: <20191101162847.GA3677@blommer>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <20191101153929.GA9053@t470p.stackframe.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101153929.GA9053@t470p.stackframe.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_092912_615761_2415C770 
X-CRM114-Status: GOOD (  17.26  )
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
Cc: jthierry@redhat.com, linux-parisc@vger.kernel.org, peterz@infradead.org,
 catalin.marinas@arm.com, deller@gmx.de, jeyu@kernel.org,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org,
 James.Bottomley@HansenPartnership.com, takahiro.akashi@linaro.org,
 mingo@redhat.com, james.morse@arm.com, jpoimboe@redhat.com,
 amit.kachhap@arm.com, will@kernel.org, duwe@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 04:39:30PM +0100, Sven Schnelle wrote:
> On Tue, Oct 29, 2019 at 04:58:24PM +0000, Mark Rutland wrote:
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

> > Since v1 [3]:
> > * Add a couple of people to Cc
> > * Fold in Ard's Reviewed-by tag
> > * Rename ftrace_code_init_disabled() to ftrace_nop_initialize()
> > * Move ftrace_init_nop() to <linux/ftrace.h>, with kerneldoc
> > * Update kerneldoc for rec parameters
> [..]
> 
> I tested this series on parisc both with ftracing kernel internal functions and
> module functions. Both are working fine, so feel free to add my
> 
> Tested-by: Sven Schnelle <svens@stackframe.org>

Thanks! That's much appreciated.

I've applied that to patches 1 and 2, since the remainder of the series was
confined to arch/arm64/.

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
