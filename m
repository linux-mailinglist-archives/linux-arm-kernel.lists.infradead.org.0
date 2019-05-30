Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF4C2FA5D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 12:35:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=41b6xoNoqMe2f4C6VpzcM8m+6qybDXXwvKpTDxJURu4=; b=IqXPsytyOWkWgA
	sp6PO2THhJhZuCrK8NUGbG3kApM4gbUULH1+ntNS7/7fVHdJ+W3hXrrKpfDvzDeGtX9af2nGBTAKi
	Op5PdBalcd+3gGIBwhHT+M2dcjQhO/oA3uls5MlUAtCMa1njk1DQKDiRChoytEx7e2pt5Sh53J7U5
	qL7j4EmkerybFGtVvuHGoQgQaK4hAJ0iv9eeXsp87+7sS7o/dHaV9nRvz9ZphHreDCZ8KsQqmF9Id
	uxm0/03Ev2j62+6wENaxCu9V3UtPMK495SGO08PuyFGjgyMSUI7UXSgsPozMgeQO00+HIXspioMK0
	VHRl7N8/at+YvNRP//6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWIPX-00042b-Hx; Thu, 30 May 2019 10:35:51 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWIPQ-00041M-Kp
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 10:35:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 153F2374;
 Thu, 30 May 2019 03:35:42 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 429CB3F5AF;
 Thu, 30 May 2019 03:35:39 -0700 (PDT)
Date: Thu, 30 May 2019 11:35:36 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
Message-ID: <20190530103536.GA56046@lakrids.cambridge.arm.com>
References: <20190529101042.GN2623@hirez.programming.kicks-ass.net>
 <20190529102022.GC4485@fuggles.cambridge.arm.com>
 <20190529125557.GU2623@hirez.programming.kicks-ass.net>
 <20190529130521.GA11023@fuggles.cambridge.arm.com>
 <20190529132515.GW2623@hirez.programming.kicks-ass.net>
 <20190529143510.GA11154@fuggles.cambridge.arm.com>
 <20190529161955.GZ2623@hirez.programming.kicks-ass.net>
 <20190529162435.GM31777@lakrids.cambridge.arm.com>
 <20190529163854.GN31777@lakrids.cambridge.arm.com>
 <20190529170313.GE2623@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529170313.GE2623@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_033544_694943_AEC349A0 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Young Xiao <92siuyang@gmail.com>, mpe@ellerman.id.au, jolsa@redhat.com,
 x86@kernel.org, Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 eranian@google.com, linux-kernel@vger.kernel.org, acme@redhat.com,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 ravi.bangoria@linux.vnet.ibm.com, fweisbec@gmail.com,
 linux-arm-kernel@lists.infradead.org, kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 07:03:13PM +0200, Peter Zijlstra wrote:
> On Wed, May 29, 2019 at 05:38:54PM +0100, Mark Rutland wrote:
> > Generally speaking though, if we ever task task_pt_regs() of an idle
> > task we'll get junk, and user_mode() could be true.
> 
> Agreed, but we're not doing that.

Sure.

I just think that might be an argument for having task_pt_regs() return
NULL for kthreads, or having a WARN_ON_ONCE(t->flags & PF_KTHREAD) to
catch missing checks elsewhere.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
