Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1C6CB85C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 12:34:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lnCS5EYALaYVh8yUQmOjVV3XTvQ+fqiHTdMzdTOTybk=; b=XZLMPdaxiTSTzo
	2amlawhtTE86KYOZxGmvur65uThWirRvW//bl6W5i+44L+pufIi0Zrif+vuRygUszjDulb+yMvy7H
	cdeohsMcl1PvnyqN2sQIyFGwd9cH2ko20ixuYAvnpIVZCL8hhQ581NPBHrxdRUweKJy/kt+nIAIMk
	/jYeVl2dgOvyj9CbMe7rnk+f+nINAV1cSS2Lw9k+ard2lxqZHS9nndrm3t2DXuHKtDvkH2L/g+a5r
	lP4otGv/mtYNXtHTVSGatq+n51p0SIgeYbmKtmntvMsNFuXa0R5/yae21oP3cYqxVqVQC2S4PmIDw
	MIRuoPCGCMTwn3K+GDug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGKuS-0006jA-1j; Fri, 04 Oct 2019 10:34:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGKuH-0006ij-RQ
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 10:33:55 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CADE0207FF;
 Fri,  4 Oct 2019 10:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570185233;
 bh=jgt/r+sRNwXtAKe39bVuRcd1vyFJqdUHlYQDN+QWJ64=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=swpoBU9iyGUa+yCdYAjHOITl9V35cphlIiR+L6WB6xqTrFBgfpXO0U3u3va5NFsVZ
 VKi6I8XrfWm1rDUijDYWSpsPfTV25fF8ji6Or0BtCi5d25WRfe8w/btbR6BCLC5yb1
 WNmLUtv0ASw4BnuG/sJHJiQV8CubQ1hkCDb/mp7E=
Date: Fri, 4 Oct 2019 11:33:50 +0100
From: Will Deacon <will@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 4/4] arm64: ftrace: Ensure synchronisation in PLT setup
 for Neoverse-N1 #1542419
Message-ID: <20191004103349.ohrhmiweda7m5gr3@willie-the-truck>
References: <20191002094935.48848-1-james.morse@arm.com>
 <20191002094935.48848-5-james.morse@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002094935.48848-5-james.morse@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_033353_907449_94A58C6A 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 10:49:35AM +0100, James Morse wrote:
> CPUs affected by Neoverse-N1 #1542419 may execute a stale instruction if
> it was recently modified. The affected sequence requires freshly written
> instructions to be executable before a branch to them is updated.
> 
> There are very few places in the kernel that modify executable text,
> all but one come with sufficient synchronisation:
>  * The module loader's flush_module_icache() calls flush_icache_range(),
>    which does a kick_all_cpus_sync()
>  * bpf_int_jit_compile() calls flush_icache_range().
>  * Kprobes calls aarch64_insn_patch_text(), which does its work in
>    stop_machine().
>  * static keys and ftrace both patch between nops and branches to
>    existing kernel code (not generated code).
> 
> The affected sequence is the interaction between ftrace and modules.
> The module PLT is cleaned using __flush_icache_range() as the trampoline
> shouldn't be executable until we update the branch to it.
> 
> Drop the double-underscore so that this path runs kick_all_cpus_sync()
> too.
> 
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
>  arch/arm64/kernel/ftrace.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)

I'll take this one as a fix, since it's not reliant on a firmware update.
One other thing -- please can you update silicon-errata.rst as part of the
other patches?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
