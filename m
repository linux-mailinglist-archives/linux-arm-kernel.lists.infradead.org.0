Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB2A622D0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 17:29:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cHx7cUZTGJXJCW6+Ew57IjNTK+oNjFNlbALdAxiUiVc=; b=Qq9DXfITShsAHP
	F/VHCwTd9InGSIhxYASgl+djnaBgGF8G7RLEwrFzS7pE8a/TLanLx1pDbQXLJK9TOnFzLeu8xrd3n
	NB55pVkXqz3Xp0Uq4yqnzSgmYWJ1QH/L7Pw+ayv9W1Q65bOrfYNDD2IRmGh4XLhOlv0J1m3aCfmJH
	a4kH2st0Dvf3HyY54o8llIfYSm2z8ivhLf+j0vzOZ+Dz9Fs4VnxmeQSp93pjfS8bQnIihHyk4j06o
	NiggAOKWbF1BWLAFKRnCYmITy7vIQ9sVW2B7loR1RtKVOoRDyLZFVXV0Ug5anI3zKb7qyAjywYS4x
	KuPv7fc3m3PEOr5OXbKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkVaF-00023q-9D; Mon, 08 Jul 2019 15:29:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkVa3-00023N-Fy
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 15:29:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E5D6C360;
 Mon,  8 Jul 2019 08:29:25 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 75ECE3F59C;
 Mon,  8 Jul 2019 08:29:24 -0700 (PDT)
Date: Mon, 8 Jul 2019 16:29:22 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v3 6/9] arm64: perf: Do not call irq_work_run in NMI
 context
Message-ID: <20190708152922.GB36116@lakrids.cambridge.arm.com>
References: <1562596377-33196-1-git-send-email-julien.thierry@arm.com>
 <1562596377-33196-7-git-send-email-julien.thierry@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562596377-33196-7-git-send-email-julien.thierry@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_082927_581672_E9786DD8 
X-CRM114-Status: GOOD (  18.39  )
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
Cc: peterz@infradead.org, liwei391@huawei.com, will.deacon@arm.com,
 acme@kernel.org, alexander.shishkin@linux.intel.com, mingo@redhat.com,
 Catalin Marinas <catalin.marinas@arm.com>, namhyung@kernel.org,
 jolsa@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 08, 2019 at 03:32:54PM +0100, Julien Thierry wrote:
> Function irq_work_run is not NMI safe and should not be called from NMI
> context.
> 
> When PMU interrupt is an NMI do not call irq_work_run. Instead rely on the
> IRQ work IPI to run the irq_work queue once NMI/IRQ contexts have been
> exited.
> 
> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
> Cc: Jiri Olsa <jolsa@redhat.com>
> Cc: Namhyung Kim <namhyung@kernel.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> ---
>  arch/arm64/kernel/perf_event.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> index 878c142..a622139 100644
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
> @@ -794,7 +794,8 @@ static irqreturn_t armv8pmu_handle_irq(struct arm_pmu *cpu_pmu)
>  	 * platforms that can have the PMU interrupts raised as an NMI, this
>  	 * will not work.
>  	 */
> -	irq_work_run();
> +	if (!in_nmi())
> +		irq_work_run();

Could we always defer the IRQ work, or would that be problematic for
non-NMI?

We should probably update the comment to explain why this is safe in
either case.

Thanks,
Mark.

>  
>  	return IRQ_HANDLED;
>  }
> -- 
> 1.9.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
