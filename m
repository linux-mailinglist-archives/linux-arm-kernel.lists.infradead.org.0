Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EA832E8F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 13:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N7O0QPcmo7CxorVu+4LidSQicB6QWI02M5n/bthSVRc=; b=ODKnPq5JHrzf20
	/bhUO39Ya/6v2gRLmmlE9DqfkgjZS3TWqzFXQvq4KRZ1QwVPIbLtIaay+Rvh1zU3IGKVad6bo3oGX
	gfQdC9Jtg/TJ0w76ZbDnKX5pIH6iSXFV6rAwA0TlNCXkhOzuvJyRoziTSKnP16b9CDAJ/eqwmyzz+
	h/UnUXq36R77bfO2Vcv1Ro+8BpTeFSwdfEAs/YunX8sa1eHM9HF/5I4Vna7X+pPzsL0ZWK87p9hxG
	vLSemojdwbaFRArxQ+cXe/WpwwmYXQZDuTng91AV+ByOUsG+dTFmFGx9nyL1xEka5G/1qzDHbl5OF
	MA+2b4Mz0Zn4iNfnvdVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXl4X-0007I1-5q; Mon, 03 Jun 2019 11:24:13 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXl4Q-0007HW-DG
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 11:24:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BB85DA78;
 Mon,  3 Jun 2019 04:24:05 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C56CF3F5AF;
 Mon,  3 Jun 2019 04:24:02 -0700 (PDT)
Date: Mon, 3 Jun 2019 12:23:54 +0100
From: Will Deacon <will.deacon@arm.com>
To: Ravi Bangoria <ravi.bangoria@linux.ibm.com>
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
Message-ID: <20190603112346.GA28296@fuggles.cambridge.arm.com>
References: <20190528140103.GT2623@hirez.programming.kicks-ass.net>
 <20190528153224.GE20758@fuggles.cambridge.arm.com>
 <20190528173228.GW2623@hirez.programming.kicks-ass.net>
 <20190529091733.GA4485@fuggles.cambridge.arm.com>
 <20190529101042.GN2623@hirez.programming.kicks-ass.net>
 <20190529102022.GC4485@fuggles.cambridge.arm.com>
 <20190529125557.GU2623@hirez.programming.kicks-ass.net>
 <efcd5cf4-3501-f3b6-bf47-145a9ef19a53@linux.ibm.com>
 <8b55f79a-c324-0701-e85f-c7797a60a708@linux.ibm.com>
 <20190531153703.GA21288@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531153703.GA21288@fuggles.cambridge.arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_042406_454269_3B4543A4 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, Young Xiao <92siuyang@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, mpe@ellerman.id.au, jolsa@redhat.com,
 x86@kernel.org, linux@armlinux.org.uk, eranian@google.com,
 linux-kernel@vger.kernel.org, acme@redhat.com, mingo@redhat.com, bp@alien8.de,
 hpa@zytor.com, ravi.bangoria@linux.vnet.ibm.com, fweisbec@gmail.com,
 linux-arm-kernel@lists.infradead.org, kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 04:37:15PM +0100, Will Deacon wrote:
> Oh, nice! I think this happens because Power doesn't actually initialise
> the regs after a kthread execs() until late in start_thread(). But the plot
> thickens somewhat, since current_pt_regs() is different to
> task_pt_regs(current) on Power (the former cannot return NULL).
> 
> So a really hideous hack on top of Peter's patch might be:
> 
> diff --git a/arch/arm64/kernel/perf_regs.c b/arch/arm64/kernel/perf_regs.c
> index 0bbac612146e..5bde866024b6 100644
> --- a/arch/arm64/kernel/perf_regs.c
> +++ b/arch/arm64/kernel/perf_regs.c
> @@ -57,6 +57,6 @@ void perf_get_regs_user(struct perf_regs *regs_user,
>  			struct pt_regs *regs,
>  			struct pt_regs *regs_user_copy)
>  {
> -	regs_user->regs = task_pt_regs(current);
> +	regs_user->regs = current_pt_regs();
>  	regs_user->abi = perf_reg_abi(current);

^^^ Bah, this was clearly supposed to be a change in the powerpc code, but
you get the idea.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
