Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDBE115100
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 14:30:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jl8qu3ySicSuJ0ea6/I3405/IyEQyMmxmIa00m+HpB4=; b=UnxREw+nt4/Zx6
	rqMyyNFTbLX9o/eLD+PcjITPVApkznpU8kQldrNGmlAGvAUBlTYts+Bt+3xgu9mFP7ayEeiQZZalS
	BYYVblAeRAcbxk2obj3IfERTrhLzAILvtGAg1XPWfFPgdnm/E2yWrrVYMjQscMrh43bue94961VwW
	3r6dVo1t7IKjiXndTA0En3kh84kkGtdi3yCqJMf/5BnaYiA1waQTFbu0gTdCWZP9bTKkzyky5tUuH
	JKX508Br0W+Ea8wRW9ZcN2TNF3D1YSMMnlXtHPGfWO7zK7vFdnuYiv5lqJ0ao6CoJHC7k88GCSxNN
	fgBESIZkPWx2iI55B7xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idDgR-0000pz-CC; Fri, 06 Dec 2019 13:30:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idDgB-0000pZ-Cm
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 13:29:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A37991FB;
 Fri,  6 Dec 2019 05:29:54 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 BE3483F52E; Fri,  6 Dec 2019 05:29:53 -0800 (PST)
Date: Fri, 6 Dec 2019 13:29:51 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: ftrace: fix ifdeffery
Message-ID: <20191206132951.GF32767@arrakis.emea.arm.com>
References: <20191206130129.31357-1-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206130129.31357-1-mark.rutland@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_052955_475854_BB30A3FB 
X-CRM114-Status: GOOD (  13.44  )
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
Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>, Torsten Duwe <duwe@lst.de>,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 06, 2019 at 01:01:29PM +0000, Mark Rutland wrote:
> When I tweaked the ftrace entry assembly in commit:
> 
>   3b23e4991fb66f6d ("arm64: implement ftrace with regs")
> 
> ... my ifdeffery tweaks left ftrace_graph_caller undefined for
> CONFIG_DYNAMIC_FTRACE && CONFIG_FUNCTION_GRAPH_TRACER when ftrace is
> based on mcount.
> 
> The kbuild test robot reported that this issue is detected at link time:
> 
> | arch/arm64/kernel/entry-ftrace.o: In function `skip_ftrace_call':
> | arch/arm64/kernel/entry-ftrace.S:238: undefined reference to `ftrace_graph_caller'
> | arch/arm64/kernel/entry-ftrace.S:238:(.text+0x3c): relocation truncated to fit: R_AARCH64_CONDBR19 against undefined symbol
> | `ftrace_graph_caller'
> | arch/arm64/kernel/entry-ftrace.S:243: undefined reference to `ftrace_graph_caller'
> | arch/arm64/kernel/entry-ftrace.S:243:(.text+0x54): relocation truncated to fit: R_AARCH64_CONDBR19 against undefined symbol
> | `ftrace_graph_caller'
> 
> This patch fixes the ifdeffery so that the mcount version of
> ftrace_graph_caller doesn't depend on CONFIG_DYNAMIC_FTRACE. At the same
> time, a redundant #else is removed from the ifdeffery for the
> patchable-function-entry version of ftrace_graph_caller.
> 
> Fixes: 3b23e4991fb66f6d ("arm64: implement ftrace with regs")
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Torsten Duwe <duwe@lst.de>
> Cc: Will Deacon <will@kernel.org>

Queued for 5.5-rc1. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
