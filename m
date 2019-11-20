Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A8B10441C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 20:17:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4u0ytPqJHPF8vKiAtWUDyEZEMIRWyCC+YFvva5W74rg=; b=m2ULX3Af4Ug+Ip
	/WPnsLPW0iVQFKC+BidTnhQTpMOB4aKtVs88KMFPDm2YZbGy3nfao+PDopnQgUw2ELNhqYt2tvpx0
	QbDSoSxAv40IxyIZjr5nBJHblrpU7kXKpF4yX01f4dda8hcvTnsHdhs5/Y4Rzu48kkiXMzLqzOomn
	QHMaNvOZKQ10BYS0KG9k5ZDzrmAbn8HIXGwuzf4PVyHWWu46tq+IEzpUgvrBg2c6tREVp3uH3UNbc
	2mt6pbDBHVi7XPiFssHRyfZx4nUBPj26Q5NyerDVu/FAcWOZ9QPLlGpVU7q89loiLqvLeP8m9Kj5e
	yMQ8ndyqRFT1uRqzmZ5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXVTN-00060B-EE; Wed, 20 Nov 2019 19:17:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXVTE-0005zJ-7V
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 19:16:57 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 27C4120855;
 Wed, 20 Nov 2019 19:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574277414;
 bh=UQU++xEappoMl5G28i/JzcgG4wXZ2fTH42SKjc1j2u4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WziG8xtuqOgZFzbPFcjtcWVQNw9A3GkxdTmLRuZttL6PQH/5hhUSy5PgUF+xggJWh
 Ljq67o33oiP9+FLlDynMRmypUwOSq9pz+0XKfC8jwoLl4mR7wbfOTSkG/r4JeHu7EH
 Dzc6jXuL/zsVIfPXEYHCtIq1vIhRk9OYXypDE8vs=
Date: Wed, 20 Nov 2019 19:16:49 +0000
From: Will Deacon <will@kernel.org>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH] arm64: kernel: memory corruptions due non-disabled PAN
Message-ID: <20191120191648.GB4799@willie-the-truck>
References: <20191119221006.1021520-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119221006.1021520-1-pasha.tatashin@soleen.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_111656_289443_54B46A00 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 steve.capper@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 jmorris@namei.org, linux-kernel@vger.kernel.org, alexios.zavras@intel.com,
 james.morse@arm.com, allison@lohutok.net, gregkh@linuxfoundation.org,
 tglx@linutronix.de, info@metux.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 05:10:06PM -0500, Pavel Tatashin wrote:
> Userland access functions (__arch_clear_user, __arch_copy_from_user,
> __arch_copy_in_user, __arch_copy_to_user), enable and disable PAN
> for the duration of copy. However, when copy fails for some reason,
> i.e. access violation the code is transferred to fixedup section,
> where we do not disable PAN.
> 
> The bug is a security violation as the access to userland is still
> open when it should be disabled, but it also causes memory corruptions
> when software emulated PAN is used: CONFIG_ARM64_SW_TTBR0_PAN=y.
> 
> I was able to reproduce memory corruption problem on Broadcom's SoC
> ARMv8-A like this:
> 
> Enable software perf-events with PERF_SAMPLE_CALLCHAIN so userland's
> stack is accessed and copied.
> 
> The test program performed the following on every CPU and forking many
> processes:
> 
> 	unsigned long *map = mmap(NULL, PAGE_SIZE, PROT_READ|PROT_WRITE,
> 				  MAP_SHARED | MAP_ANONYMOUS, -1, 0);
> 	map[0] = getpid();
> 	sched_yield();
> 	if (map[0] != getpid()) {
> 		fprintf(stderr, "Corruption detected!");
> 	}
> 	munmap(map, PAGE_SIZE);
> 
> From time to time I was getting map[0] to contain pid for a different
> process.
> 
> Fixes: 338d4f49d6f7114 ("arm64: kernel: Add support for Privileged...")
> 
> Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
> ---
>  arch/arm64/lib/clear_user.S     | 1 +
>  arch/arm64/lib/copy_from_user.S | 1 +
>  arch/arm64/lib/copy_in_user.S   | 1 +
>  arch/arm64/lib/copy_to_user.S   | 1 +
>  4 files changed, 4 insertions(+)

Thanks. I've pushed this and your other patch out [1], with some changes
to the commit message. I'm annoyed that I didn't spot this during review
of the initial PAN patches.

Will

[1] https://fixes.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
