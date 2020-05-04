Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D651C334B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 09:06:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EnzateZnP/8iNjtX7aWw3vi09IiYaxUoj1Z8Ct1uhK8=; b=ecy2Sh8wHuNJ26
	qe5AXoc9+enKSKYqQQ9BKau03YT8YhCdzxtfuEiEPHiwHGB5E7aBRT+nmXy94zkv/m50AeJMzmX8m
	pG1wYSM+OCDXmB0Zs7TnCp+Vc/BnSrL43WBZB/XW8INDgtLro1t+QwFTnTaZgs4XXx5YVfc7XdziS
	CvSSdz4DOoV0wJSqfDUTkB8nCPCVPulhsRsB7Q10DKLcVNXQxgIEKxiAU75rYbgVw8wnco/XUAHU3
	T8SWIB48rnPJlFcwja6ISW0RrSkSDBpAqybt0pVo8CkZeqMk/5cIbKPaT+bJ5HRYSKuJtUY0LVvOI
	DXRd8YssQ7ibG8qJaagg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVVBV-0007D4-0w; Mon, 04 May 2020 07:06:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVVBN-0007CE-UT
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 07:06:31 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4BAE920757;
 Mon,  4 May 2020 07:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588575989;
 bh=GgTeLwA5Gd1K4zgUZfkDshwOzQjQUPTqCCCMLBw7V9g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sgtwM838xnEUDyT27spf4f+v7P2a8KiHduXQYmysZiL5N5dgSfzCF/FBg96u3S+jc
 WvUB5v5g7vXhdz/Hu2RDayrYDi/H4oQeU0Z+D19YSWhThb1wlJmpFq2gNyaoqkjjCl
 ELIxzA1PtlNsvkcr7J1fmsy63ZSHm5vX/nEEsQEs=
Date: Mon, 4 May 2020 08:06:25 +0100
From: Will Deacon <will@kernel.org>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: Re: [PATCH] arm64: perf: Expose some new events via sysfs
Message-ID: <20200504070624.GB2183@willie-the-truck>
References: <1587450713-18048-1-git-send-email-zhangshaokun@hisilicon.com>
 <20200501171237.GA19048@willie-the-truck>
 <970b8ae4-fd9a-d5d1-0066-92152ff07fd5@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <970b8ae4-fd9a-d5d1-0066-92152ff07fd5@hisilicon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_000630_003096_BE6DE227 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 11:46:14AM +0800, Shaokun Zhang wrote:
> Hi Will,
> 
> One more question;-)
> 
> On 2020/5/2 1:12, Will Deacon wrote:
> > On Tue, Apr 21, 2020 at 02:31:53PM +0800, Shaokun Zhang wrote:
> >> Some new PMU events can been detected by PMCEID1_EL0, but it can't
> >> be listed, Let's expose these through sysfs.
> >>
> >> Cc: Will Deacon <will@kernel.org>
> >> Cc: Mark Rutland <mark.rutland@arm.com>
> >> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
> >> ---
> >>  arch/arm64/include/asm/perf_event.h | 19 +++++++++++++++++++
> >>  arch/arm64/kernel/perf_event.c      | 19 +++++++++++++++++++
> >>  2 files changed, 38 insertions(+)
> >>
> >> diff --git a/arch/arm64/include/asm/perf_event.h b/arch/arm64/include/asm/perf_event.h
> >> index e7765b62c712..f1b93d7c4260 100644
> >> --- a/arch/arm64/include/asm/perf_event.h
> >> +++ b/arch/arm64/include/asm/perf_event.h
> >> @@ -72,12 +72,31 @@
> >>  #define ARMV8_PMUV3_PERFCTR_LL_CACHE_RD				0x36
> >>  #define ARMV8_PMUV3_PERFCTR_LL_CACHE_MISS_RD			0x37
> >>  #define ARMV8_PMUV3_PERFCTR_REMOTE_ACCESS_RD			0x38
> >> +#define ARMV8_PMUV3_PERFCTR_L1D_CACHE_LMISS_RD			0x39
> >> +#define ARMV8_PMUV3_PERFCTR_OP_RETIRED				0x3A
> >> +#define ARMV8_PMUV3_PERFCTR_OP_SPEC				0x3B
> >> +#define ARMV8_PMUV3_PERFCTR_STALL				0x3C
> >> +#define ARMV8_PMUV3_PERFCTR_STALL_SLOT_BACKEND			0x3D
> >> +#define ARMV8_PMUV3_PERFCTR_STALL_SLOT_FRONTEND			0x3E
> >> +#define ARMV8_PMUV3_PERFCTR_STALL_SLOT				0x3F
> > 
> > Hmm, looks like the presence of this event implies the presence of the
> > PMMIR_EL1 register. Should we be exposing the "SLOTS" field from that in
> > sysfs? (obviously as a separate patch)
> > 
> 
> Shall I expose it in /sys/devices/system/cpu/cpuX/regs/, right?

No; if we need to expose it (do we?) then it should be alongside the other
PMU files. e.g. /sys/bus/event_source/$pmu_name/caps/slots

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
