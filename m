Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A8B717D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 14:11:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1H95VuEyLqUF3yX498xevCPUQnN6BzErUIH+hvTceY=; b=S5lCb6vE6EAH5E
	y831mCp5T2A3knN04tLRZmZHI2kf3NGh5zVGqBaxVXi5FyIdHKj+JRcdtVigZ43mr7n2Z19eVedII
	r5JT4p788Ccn2FDMQBNtnbTHXxdhJUJB5iRDRNqJn4Dn0zIK61F63t0RlajI665lnmqIxH7ALt37R
	8JmiS75m6Uoqyj1NFIMoVE4FR9KOPqsxd38rowbL1IQd0A+ThrlV5R+S07PhSqABaUnDm+sOdh8xx
	d+al1kEy59E9hFyoHwZj6fUfIbzD3jDPbt+xZmj+ILs1tUhbtzHnjXaaEO8cXSdXRmj20qDg5GALc
	PBetDZtH2n4GICdBSTFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptdv-0006PP-0u; Tue, 23 Jul 2019 12:11:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hptdc-0006Kk-Q9
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 12:11:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 450DC337;
 Tue, 23 Jul 2019 05:11:24 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 261F03F71F; Tue, 23 Jul 2019 05:11:23 -0700 (PDT)
Date: Tue, 23 Jul 2019 13:11:21 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Takao Indoh <indou.takao@jp.fujitsu.com>
Subject: Re: [PATCH 2/2] arm64: tlb: Add boot parameter to disable TLB flush
 within the same inner shareable domain
Message-ID: <20190723121120.GB16928@arrakis.emea.arm.com>
References: <20190617143255.10462-1-indou.takao@jp.fujitsu.com>
 <20190617143255.10462-3-indou.takao@jp.fujitsu.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617143255.10462-3-indou.takao@jp.fujitsu.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_051124_994798_ADF56681 
X-CRM114-Status: GOOD (  14.37  )
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
Cc: QI Fuli <qi.fuli@fujitsu.com>, linux-doc@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Takao Indoh <indou.takao@fujitsu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 11:32:55PM +0900, Takao Indoh wrote:
> From: Takao Indoh <indou.takao@fujitsu.com>
> 
> This patch adds new boot parameter 'disable_tlbflush_is' to disable TLB
> flush within the same inner shareable domain for performance tuning.
> 
> In the case of flush_tlb_mm() *without* this parameter, TLB entry is
> invalidated by __tlbi(aside1is, asid). By this instruction, all CPUs within
> the same inner shareable domain check if there are TLB entries which have
> this ASID, this causes performance noise, especially at large-scale HPC
> environment, which has more than thousand nodes with low latency
> interconnect.
> 
> When this new parameter is specified, TLB entry is invalidated by
> __tlbi(aside1, asid) only on the CPUs specified by mm_cpumask(mm).
> Therefore TLB flush is done on minimal CPUs and performance problem does
> not occur.
> 
> Signed-off-by: QI Fuli <qi.fuli@fujitsu.com>
> Signed-off-by: Takao Indoh <indou.takao@fujitsu.com>
[...]
> +void flush_tlb_mm(struct mm_struct *mm)
> +{
> +	if (disable_tlbflush_is)
> +		on_each_cpu_mask(mm_cpumask(mm), ipi_flush_tlb_mm,
> +				 (void *)mm, true);
> +	else
> +		__flush_tlb_mm(mm);
> +}

Could we try instead to call a _nosync variant here when
cpumask_weight() is 1 or the *IS if greater than 1 and avoid the IPI?

Will tried this in the past but because of the task placement after
fork()+execve(), I think we always ended up with a weight of 2 in the
child process. Your first patch "solves" this by flushing the TLBs on
context switch (bar the CnP case). Can you give it a try to see if it
improves things? At least it's a starting point for further
investigation.

I fully agree with Will that we don't want two different TLB handling
implementations in the arm64 kernel and even less desirable to have a
command line option.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
