Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 622E5112A64
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 12:44:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0PRed5AbiEfKfF5dmSB4TM7iDZD+wRr2d4OdeCv+dI=; b=KFBvuX/yHCNsN1
	E5Ci1r6MyveqTyvGiiMibFobXOP7tj9XrgJv7tf/owtAUSZq1HfDhrxGBQApIPBZ3I5elYeucj6Zu
	LoPFNHIIfrBhkzSFfCllXdrL6sRMa5s2CyDJQTBWTZnPNvSgtZvm0Hv7BxNTbxRoEcNUWe0GptxHj
	h3IbVKU9OWZWnafbF2hCw0Rv17HmHezz+OXqbOmY+XnBcitD9p7ok3SG3O5A1k+AT64JWkrZc4bDe
	R/q6JGhcHWORpTukf6eOnPZtqm+rnIJWWvgIqHjPIhNKD82xJIBzMcH8FQYkqy85lw26d9RpAmKyV
	R2oR4liVYrvqJgk29+4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icT4o-00028x-Bn; Wed, 04 Dec 2019 11:44:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icT4g-00028b-8p
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 11:44:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 683F431B;
 Wed,  4 Dec 2019 03:44:04 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 8444E3F68E; Wed,  4 Dec 2019 03:44:03 -0800 (PST)
Date: Wed, 4 Dec 2019 11:44:01 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: insn: consistently handle exit text
Message-ID: <20191204114401.GF13081@arrakis.emea.arm.com>
References: <20191202161107.19177-1-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202161107.19177-1-mark.rutland@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_034406_399314_A6098315 
X-CRM114-Status: GOOD (  17.01  )
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
Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>, Torsten Duwe <duwe@suse.de>,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 04:11:07PM +0000, Mark Rutland wrote:
> A kernel built with KASAN && FTRACE_WITH_REGS && !MODULES, produces a
> boot-time splat in the bowels of ftrace:
> 
> | [    0.000000] ftrace: allocating 32281 entries in 127 pages
> | [    0.000000] ------------[ cut here ]------------
> | [    0.000000] WARNING: CPU: 0 PID: 0 at kernel/trace/ftrace.c:2019 ftrace_bug+0x27c/0x328
> | [    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 5.4.0-rc3-00008-g7f08ae53a7e3 #13
> | [    0.000000] Hardware name: linux,dummy-virt (DT)
> | [    0.000000] pstate: 60000085 (nZCv daIf -PAN -UAO)
> | [    0.000000] pc : ftrace_bug+0x27c/0x328
> | [    0.000000] lr : ftrace_init+0x640/0x6cc
> | [    0.000000] sp : ffffa000120e7e00
> | [    0.000000] x29: ffffa000120e7e00 x28: ffff00006ac01b10
> | [    0.000000] x27: ffff00006ac898c0 x26: dfffa00000000000
> | [    0.000000] x25: ffffa000120ef290 x24: ffffa0001216df40
> | [    0.000000] x23: 000000000000018d x22: ffffa0001244c700
> | [    0.000000] x21: ffffa00011bf393c x20: ffff00006ac898c0
> | [    0.000000] x19: 00000000ffffffff x18: 0000000000001584
> | [    0.000000] x17: 0000000000001540 x16: 0000000000000007
> | [    0.000000] x15: 0000000000000000 x14: ffffa00010432770
> | [    0.000000] x13: ffff940002483519 x12: 1ffff40002483518
> | [    0.000000] x11: 1ffff40002483518 x10: ffff940002483518
> | [    0.000000] x9 : dfffa00000000000 x8 : 0000000000000001
> | [    0.000000] x7 : ffff940002483519 x6 : ffffa0001241a8c0
> | [    0.000000] x5 : ffff940002483519 x4 : ffff940002483519
> | [    0.000000] x3 : ffffa00011780870 x2 : 0000000000000001
> | [    0.000000] x1 : 1fffe0000d591318 x0 : 0000000000000000
> | [    0.000000] Call trace:
> | [    0.000000]  ftrace_bug+0x27c/0x328
> | [    0.000000]  ftrace_init+0x640/0x6cc
> | [    0.000000]  start_kernel+0x27c/0x654
> | [    0.000000] random: get_random_bytes called from print_oops_end_marker+0x30/0x60 with crng_init=0
> | [    0.000000] ---[ end trace 0000000000000000 ]---
> | [    0.000000] ftrace faulted on writing
> | [    0.000000] [<ffffa00011bf393c>] _GLOBAL__sub_D_65535_0___tracepoint_initcall_level+0x4/0x28
> | [    0.000000] Initializing ftrace call sites
> | [    0.000000] ftrace record flags: 0
> | [    0.000000]  (0)
> | [    0.000000]  expected tramp: ffffa000100b3344
> 
> This is due to an unfortunate combination of several factors.
> 
> Building with KASAN results in the compiler generating anonymous
> functions to register/unregister global variables against the shadow
> memory. These functions are placed in .text.startup/.text.exit, and
> given mangled names like _GLOBAL__sub_{I,D}_65535_0_$OTHER_SYMBOL. The
> kernel linker script places these in .init.text and .exit.text
> respectively, which are both discarded at runtime as part of initmem.
> 
> Building with FTRACE_WITH_REGS uses -fpatchable-function-entry=2, which
> also instruments KASAN's anonymous functions. When these are discarded
> with the rest of initmem, ftrace removes dangling references to these
> call sites.
> 
> Building without MODULES implicitly disables STRICT_MODULE_RWX, and
> causes arm64's patch_map() function to treat any !core_kernel_text()
> symbol as something that can be modified in-place. As core_kernel_text()
> is only true for .text and .init.text, with the latter depending on
> system_state < SYSTEM_RUNNING, we'll treat .exit.text as something that
> can be patched in-place. However, .exit.text is mapped read-only.
> 
> Hence in this configuration the ftrace init code blows up while trying
> to patch one of the functions generated by KASAN.
> 
> We could try to filter out the call sites in .exit.text rather than
> initializing them, but this would be inconsistent with how we handle
> .init.text, and requires hooking into core bits of ftrace. The behaviour
> of patch_map() is also inconsistent today, so instead let's clean that
> up and have it consistently handle .exit.text.
> 
> This patch teaches patch_map() to handle .exit.text at init time,
> preventing the boot-time splat above. The flow of patch_map() is
> reworked to make the logic clearer and minimize redundant
> conditionality.
> 
> Fixes: 3b23e4991fb66f6d ("arm64: implement ftrace with regs")
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Torsten Duwe <duwe@suse.de>
> Cc: Will Deacon <will@kernel.org>

Queued for 5.5-rc1. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
