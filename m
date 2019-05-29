Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E602D379
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 03:44:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=inEv3pmxDlZISUSAI1pqhRShAehTUT1m4atCvF2h6/0=; b=MuTXo+1QaKmqHB
	X2+htBsOMTF407Nq5DDWChffhZpP0AuQM3QWI5T7c3jrztfNO2dluVA7P+b/DlTVljFJfvRoCPVMh
	ciW8I0hRsROT9rvEJODosiG6OMOsY7pGdzWfRrkb+vzVI8W4qMRmYSsAIPbOM45tvUl4p5vn2QY9/
	Ko0bvQCSTtJ1XPCNVWzAJA02RVbrRH/BgZ4ec5yNjNxoR9rHPYE9aEB2qApLHKSdLT22CtUGeEEW9
	mBjpTqFa05XiZCF6p+wY7gl/RtV9tgXGCBiEdLyrWcOOjAGI7Sk7zZh3Dv5bnFnoablPSqM39AUSN
	0lyod22Fp/kyj7wwBrYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVnda-0000MU-HJ; Wed, 29 May 2019 01:44:18 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVndT-0000Lr-6G
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 01:44:12 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45DD5Z6xB4z9s4V;
 Wed, 29 May 2019 11:44:02 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Peter Zijlstra <peterz@infradead.org>, Young Xiao <92siuyang@gmail.com>
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
In-Reply-To: <20190528140103.GT2623@hirez.programming.kicks-ass.net>
References: <1559046689-24091-1-git-send-email-92siuyang@gmail.com>
 <20190528140103.GT2623@hirez.programming.kicks-ass.net>
Date: Wed, 29 May 2019 11:44:02 +1000
Message-ID: <87a7f6ox0d.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_184411_456958_C3822661 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, x86@kernel.org, will.deacon@arm.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, ravi.bangoria@linux.vnet.ibm.com,
 linux-arm-kernel@lists.infradead.org, kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Peter Zijlstra <peterz@infradead.org> writes:
> On Tue, May 28, 2019 at 08:31:29PM +0800, Young Xiao wrote:
>> When a kthread calls call_usermodehelper() the steps are:
>>   1. allocate current->mm
>>   2. load_elf_binary()
>>   3. populate current->thread.regs
>> 
>> While doing this, interrupts are not disabled. If there is a perf
>> interrupt in the middle of this process (i.e. step 1 has completed
>> but not yet reached to step 3) and if perf tries to read userspace
>> regs, kernel oops.
>> 
>> Fix it by setting abi to PERF_SAMPLE_REGS_ABI_NONE when userspace
>> pt_regs are not set.
>> 
>> See commit bf05fc25f268 ("powerpc/perf: Fix oops when kthread execs
>> user process") for details.
>
> Why the hell do we set current->mm before it is complete? Note that
> normally exec() builds the new mm before attaching it, see exec_mmap()
> in flush_old_exec().
>
> Also, why did those PPC folks 'fix' this in isolation? And why didn't
> you Cc them?

We just assumed it was our bug, 'cause we have plenty of those :)

cheers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
