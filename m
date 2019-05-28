Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D42EE2C83A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 16:01:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=guy8LRXQcFt47WBqGpVXae9K6timapUfQbrcVSHups8=; b=accGuUgXNsZPIV
	zT7/NmNTd1I2OhciyJ0LpGjeSl71S9vTaKC1A3pbAQmHKSIkjcaSef+WwCWzxYbx8DwtDRUpOFswl
	sDnEOdwbd2/xgC+GntJqtjyLM94Oij26UYTWID1wtiYepOCrPuP7l7i+zDEf9YlFTxaoHyO7rIwip
	hi8/I4QgKvqFWSfqqOOlQCxRi65qbTRFy7WFqVnj9vUHFjq4m0lXjxxyb72oxyFjiHrma4OmDQ3ur
	05nND4jn+BmgsRKvazSpFXbSrnejkDNmjMaID0910ctikKFa01QL+qUqRGcgoz1cdHmv1iO9ZHoih
	FJ/+S5k31rURptDy/W/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVcfG-0002wc-LE; Tue, 28 May 2019 14:01:18 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVcf9-0002wM-Iq
 for linux-arm-kernel@bombadil.infradead.org; Tue, 28 May 2019 14:01:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RHFIELNrUiKWmxjlgPJ3LzHRq0bFqXpskNHoAt804ps=; b=l/LvPD5MyWWRIiU9Smo5YF9Nd
 xBFGXeALAK/XWxiLNt//wf+7kBkq/yHesupIddaDcnQwc9Xu6ypU8BnJyD4BT+QrJjDYiNwUOqrHU
 AcTqwDaQdhteBKquda44uagE5y7zAFPvPV7L3/zM2zUksn3i0S36x9dCYnr05JqjQIEGfayPx2VRe
 hHoC5iNnNzO46hMWPyzesh9xsiEc2eoDjbGfAgQxW5EDqEaTghHjp/rWXZ009dVpH5ZeOr32e6lx0
 SPCtBjSsTvjL8gf/4b/jNJaDf2JCVycdzYpn03O163Y9oyWu4RYrr1O7hsHWxfCqwUhQ6shULmiFs
 5EObilnNg==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVcf3-0004OY-AW; Tue, 28 May 2019 14:01:05 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id CED6620750761; Tue, 28 May 2019 16:01:03 +0200 (CEST)
Date: Tue, 28 May 2019 16:01:03 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Young Xiao <92siuyang@gmail.com>
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
Message-ID: <20190528140103.GT2623@hirez.programming.kicks-ass.net>
References: <1559046689-24091-1-git-send-email-92siuyang@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559046689-24091-1-git-send-email-92siuyang@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, mpe@ellerman.id.au, x86@kernel.org,
 will.deacon@arm.com, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 ravi.bangoria@linux.vnet.ibm.com, linux-arm-kernel@lists.infradead.org,
 kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 08:31:29PM +0800, Young Xiao wrote:
> When a kthread calls call_usermodehelper() the steps are:
>   1. allocate current->mm
>   2. load_elf_binary()
>   3. populate current->thread.regs
> 
> While doing this, interrupts are not disabled. If there is a perf
> interrupt in the middle of this process (i.e. step 1 has completed
> but not yet reached to step 3) and if perf tries to read userspace
> regs, kernel oops.
> 
> Fix it by setting abi to PERF_SAMPLE_REGS_ABI_NONE when userspace
> pt_regs are not set.
> 
> See commit bf05fc25f268 ("powerpc/perf: Fix oops when kthread execs
> user process") for details.

Why the hell do we set current->mm before it is complete? Note that
normally exec() builds the new mm before attaching it, see exec_mmap()
in flush_old_exec().

Also, why did those PPC folks 'fix' this in isolation? And why didn't
you Cc them?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
