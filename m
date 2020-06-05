Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFE51EF5AC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 12:49:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vA6X5wI7Xg+CeOowyz61As/TnwTc+VnWV2qXIbdE9Bw=; b=KHQLdx5aA7/t8q
	E0lTdrTrNL/hxxHkUSklr5FWadDjL0C8xzK82m31zyeGkGM0kFIEafm/Z+1feoLidwnRNi3IQfG3f
	yusytjEfykkg+A1ZZzdylXuhUN4HzHa8GL7lo8efirMnldNA6VpoyxR/9QUrDPijTDxVeGm/SIBKS
	jMtHBs1DZB+hNpAP+tjKkaTa4U1TjNQXgjOObQIrXkVANBtEJfugoNTsbSpHQCr5Cbxl0O4uCGuMH
	E75ZmgkRDl1Hy+GYO4RGya3qewsmmR0xxa56ejmlBA+j9lu5TE2VYr5k8qcvpepIfkhhZhl20Xnr1
	gE6KBbVPm2uh1zPIJmWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh9ud-0002kT-CV; Fri, 05 Jun 2020 10:49:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh9uQ-0002j0-23
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 10:49:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 617481FB;
 Fri,  5 Jun 2020 03:49:09 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.11.98])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4E9553F52E;
 Fri,  5 Jun 2020 03:49:07 -0700 (PDT)
Date: Fri, 5 Jun 2020 11:49:04 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Andrei Vagin <avagin@gmail.com>
Subject: Re: [PATCH RESEND v3 0/6] arm64: add the time namespace support
Message-ID: <20200605104904.GE85498@C02TD0UTHF1T.local>
References: <20200602180259.76361-1-avagin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602180259.76361-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_034914_459089_225FF658 
X-CRM114-Status: GOOD (  19.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Dmitry Safonov <dima@arista.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrei,

As a heads up, in mainline the arm64 vdso code has been refactored since
v5.7, and this series will need to be rebased atop. Given we're in the
middle of the merge window, I would suggest waiting until rc1 before
posting a rebased series.

In the meantime, the relevant patches can be found in arm64's for-next/core
branch:

git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-next/core

... which was merged into mainline in commit:

  533b220f7be4e461 ("Merge tag 'arm64-upstream' of git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux")

Thanks,
Mark.

On Tue, Jun 02, 2020 at 11:02:53AM -0700, Andrei Vagin wrote:
> Allocate the time namespace page among VVAR pages and add the logic
> to handle faults on VVAR properly.
> 
> If a task belongs to a time namespace then the VVAR page which contains
> the system wide VDSO data is replaced with a namespace specific page
> which has the same layout as the VVAR page. That page has vdso_data->seq
> set to 1 to enforce the slow path and vdso_data->clock_mode set to
> VCLOCK_TIMENS to enforce the time namespace handling path.
> 
> The extra check in the case that vdso_data->seq is odd, e.g. a concurrent
> update of the VDSO data is in progress, is not really affecting regular
> tasks which are not part of a time namespace as the task is spin waiting
> for the update to finish and vdso_data->seq to become even again.
> 
> If a time namespace task hits that code path, it invokes the corresponding
> time getter function which retrieves the real VVAR page, reads host time
> and then adds the offset for the requested clock which is stored in the
> special VVAR page.
> 
> v2: Code cleanups suggested by Vincenzo.
> v3: add a comment in __arch_get_timens_vdso_data.
> 
> Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Dmitry Safonov <dima@arista.com>
> 
> v3 on github (if someone prefers `git pull` to `git am`):
> https://github.com/avagin/linux-task-diag/tree/arm64/timens-v3
> 
> Andrei Vagin (6):
>   arm64/vdso: use the fault callback to map vvar pages
>   arm64/vdso: Zap vvar pages when switching to a time namespace
>   arm64/vdso: Add time napespace page
>   arm64/vdso: Handle faults on timens page
>   arm64/vdso: Restrict splitting VVAR VMA
>   arm64: enable time namespace support
> 
>  arch/arm64/Kconfig                            |   1 +
>  .../include/asm/vdso/compat_gettimeofday.h    |  11 ++
>  arch/arm64/include/asm/vdso/gettimeofday.h    |   8 ++
>  arch/arm64/kernel/vdso.c                      | 134 ++++++++++++++++--
>  arch/arm64/kernel/vdso/vdso.lds.S             |   3 +-
>  arch/arm64/kernel/vdso32/vdso.lds.S           |   3 +-
>  include/vdso/datapage.h                       |   1 +
>  7 files changed, 147 insertions(+), 14 deletions(-)
> 
> -- 
> 2.24.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
