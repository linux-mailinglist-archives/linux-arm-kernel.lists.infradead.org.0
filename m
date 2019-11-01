Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96028EC5BC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 16:39:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H18UDN23rnibKCQiVqzI3eG6bMBn2Ki0dFLgQ3nYDr0=; b=iAN0LdnV19Ar92
	mcl8Z1ZQj/6BmmF4hlSnhoFkCBQS1FCsz1sJJmpsE65CxLFTz/2EJNv/n02oVCquLL1kdo6MyZgl2
	mqAf0WSIt0/xjM8qYbR9dkcqR52QdxRZG0QNpjpfoP4xmGPtlUzmJI9r1rZXaPOeLGIhi7pBsOlDC
	+qP5zI9PZ9dJWmmeGUSe+azNuzH59O9DSdwMG9/XsLOyZ4vFZk+XXX9qzXSuSc72L/c8aEE9fUnn5
	l1OD+xlgvSpja/gUsMN6GluBaLI+48MYKtebk+nLVnDfshASYvpszPDfU57JGGxQvnnGlaCwfFIB0
	48EJX1gRvN5gfzaHS6tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZ1f-00071P-Ae; Fri, 01 Nov 2019 15:39:47 +0000
Received: from shroom.duncanthrax.net ([2a01:4f8:121:41fa::169]
 helo=smtp.duncanthrax.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZ1W-00070i-IV
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 15:39:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=duncanthrax.net; s=dkim; h=In-Reply-To:Content-Type:MIME-Version:References
 :Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iqYA5fETDX6oAawBOnjaoR4rJRUghsV/4yW9eGheshQ=; b=D2eNoW4p9bKXgIjVB+MrDQs49v
 HcO9QyX0Pi147mZPEvurVKnXCIkEcvidueyMePcq2Vh9DEacMwF0M7CNrdUJEWiqFzj5GFVxyUPYr
 qRHgjxVwF7JOc7J0TcYhN0b1EYTbuY8WNb4wE5/dz8Gf7d4jNBbBhMIhSLPCjrdq4d5U=;
Received: from hsi-kbw-046-005-233-221.hsi8.kabel-badenwuerttemberg.de
 ([46.5.233.221] helo=t470p.stackframe.org)
 by smtp.duncanthrax.net with esmtpa (Exim 4.90_1)
 (envelope-from <svens@stackframe.org>)
 id 1iQZ1P-00080S-20; Fri, 01 Nov 2019 16:39:31 +0100
Date: Fri, 1 Nov 2019 16:39:30 +0100
From: Sven Schnelle <svens@stackframe.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCHv2 0/8] arm64: ftrace cleanup + FTRACE_WITH_REGS
Message-ID: <20191101153929.GA9053@t470p.stackframe.org>
References: <20191029165832.33606-1-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029165832.33606-1-mark.rutland@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_083938_761280_E34CB993 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, rostedt@goodmis.org,
 James.Bottomley@HansenPartnership.com, takahiro.akashi@linaro.org,
 mingo@redhat.com, james.morse@arm.com, jeyu@kernel.org, amit.kachhap@arm.com,
 will@kernel.org, duwe@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On Tue, Oct 29, 2019 at 04:58:24PM +0000, Mark Rutland wrote:
> Hi,
> 
> This series is a reworked version of Torsten's FTRACE_WITH_REGS series
> [1]. I've tried to rework the existing code in preparatory patches so
> that the patchable-function-entry bits slot in with fewer surprises.
> This version is based on v5.4-rc3, and can be found in my
> arm64/ftrace-with-regs branch [2].
> 
> Patch 1 adds an (optional) ftrace_init_nop(), which the core code uses
> to initialize callsites. This allows us to avoid a synthetic MCOUNT_ADDR
> symbol, and more cleanly separates the one-time initialization of the
> callsite from dynamic NOP<->CALL modification. Architectures which don't
> implement this get the existing ftrace_make_nop() with MCOUNT_ADDR.
> 
> Recently parisc gained ftrace support using patchable-function-entry.
> Patch 2 makes the handling of module callsite locations common in
> kernel/module.c with a new FTRACE_CALLSITE_SECTION definition, and
> removed the newly redundant bits from arch/parisc.
> 
> Patches 3 and 4 move the module PLT initialization to module load time,
> which simplifies runtime callsite modification. This also means that we
> don't transitently mark the module text RW, and will allow for the
> removal of module_disable_ro().
> 
> Patches 5 and 6 add some trivial infrastructure, with patch 7 finally
> adding FTRACE_WITH_REGS support. Additional work will be required for
> livepatching (e.g. implementing reliable stack trace), which is
> commented as part of patch 7.
> 
> Patch 8 is a trivial cleanup atop of the rest of the series, making the
> code easier to read and less susceptible to config-specific breakage.
> 
> Since v1 [3]:
> * Add a couple of people to Cc
> * Fold in Ard's Reviewed-by tag
> * Rename ftrace_code_init_disabled() to ftrace_nop_initialize()
> * Move ftrace_init_nop() to <linux/ftrace.h>, with kerneldoc
> * Update kerneldoc for rec parameters
[..]

I tested this series on parisc both with ftracing kernel internal functions and
module functions. Both are working fine, so feel free to add my

Tested-by: Sven Schnelle <svens@stackframe.org>

Regards
Sven

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
