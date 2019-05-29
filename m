Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B53122DD8F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 14:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3c8oa05GyP4tH29af2TlGxxbUg+rGh39MNDleXkS45s=; b=tq99tUOyFVz4w6
	3579sVyZArGLkhq/wDI87jSnN7S49dpnunjc7qNFTEA25YMWduHhhbHkMCn4OFv4Elwm7pwaWMMUT
	9RPi+68bFPCv8Feg6tlYCBYt9UF7v7EN9UOoiTaJ5GIGiqOuhx4qXUXR53KuUdmtCPcsuZPtFzDI7
	wOztMnBzypLo9hIpRW1MeFBfQeB/CCUHGxiP5UASWv4XW1yaqhDCx9ZQuYEXeP+zCS9+3NTATCpTC
	ALdegbOFW/EmiqDl8DnK0aoK2+I+UvBLRoLCgUZIhdgwYcKjK6IpVrR+hFM4TUpGxPZkaJYSO4Mup
	FnVb7UaOsEMhmaU5CdwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVy7o-00011e-9o; Wed, 29 May 2019 12:56:12 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVy7i-00011P-UL
 for linux-arm-kernel@bombadil.infradead.org; Wed, 29 May 2019 12:56:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ezJqmdGXuDFxk+yC+s5MBTQ1KIOcOFXTVhZGERGaSZE=; b=GlIPp6vvSyNmSfpucVORXmllw
 pd6siyW81asRf2ZdtAIS1jQ9/wJI9KaTwqbIbKdhI9h3ZL0hyNPzAqkIWLLa+XuEN8iNy0VN2UmAH
 qWBOipPXbwNNMpZHZynDOd29JWUf7t+JU5gAAtILJ3Tm2lg8Gx15ajtXObX+Bj0OMaE2LBRNNXOLc
 hDI85tePcrSd6ry+er24xVvzMF6EX92SG6ScHFjbgg+BblcNdhD+xxiY1Is+CPpGUfoWHr8MDHm3X
 1BeGmc6P4QKi3dM/zYBltiNYi3ZPvOQz1HAPegPptnpI6AbT89OLR94zb3NxA79nj0DDQZsIBmcl0
 v/Ou1OZsA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVy7a-0004qc-BV; Wed, 29 May 2019 12:55:58 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 23099201D5ACB; Wed, 29 May 2019 14:55:57 +0200 (CEST)
Date: Wed, 29 May 2019 14:55:57 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
Message-ID: <20190529125557.GU2623@hirez.programming.kicks-ass.net>
References: <1559046689-24091-1-git-send-email-92siuyang@gmail.com>
 <20190528140103.GT2623@hirez.programming.kicks-ass.net>
 <20190528153224.GE20758@fuggles.cambridge.arm.com>
 <20190528173228.GW2623@hirez.programming.kicks-ass.net>
 <20190529091733.GA4485@fuggles.cambridge.arm.com>
 <20190529101042.GN2623@hirez.programming.kicks-ass.net>
 <20190529102022.GC4485@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529102022.GC4485@fuggles.cambridge.arm.com>
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
Cc: mark.rutland@arm.com, Young Xiao <92siuyang@gmail.com>, mpe@ellerman.id.au,
 jolsa@redhat.com, x86@kernel.org, linux@armlinux.org.uk, eranian@google.com,
 linux-kernel@vger.kernel.org, acme@redhat.com, mingo@redhat.com, bp@alien8.de,
 hpa@zytor.com, ravi.bangoria@linux.vnet.ibm.com, fweisbec@gmail.com,
 linux-arm-kernel@lists.infradead.org, kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 11:20:22AM +0100, Will Deacon wrote:
> Anyway, you can add my ack to your patch, but I bet we can remove that mm
> check :D

I've ended up with the below. Ravi, can you test if that does indeed
obsolete your PPC patch?

---
Subject: perf: Fix perf_sample_regs_user()
From: Peter Zijlstra <peterz@infradead.org>
Date: Wed May 29 14:37:24 CEST 2019

perf_sample_regs_user() uses 'current->mm' to test for the presence of
userspace, but this is insufficient, consider use_mm().

A better test is: '!(current->flags & PF_KTHREAD)', exec() clears
PF_KTHREAD after it sets the new ->mm but before it drops to userspace
for the first time.

Possibly obsoletes: bf05fc25f268 ("powerpc/perf: Fix oops when kthread execs user process")

Reported-by: Ravi Bangoria <ravi.bangoria@linux.vnet.ibm.com>
Reported-by: Young Xiao <92siuyang@gmail.com>
Cc: Ravi Bangoria <ravi.bangoria@linux.vnet.ibm.com>
Cc: Naveen N. Rao <naveen.n.rao@linux.vnet.ibm.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Frederic Weisbecker <fweisbec@gmail.com>
Cc: Stephane Eranian <eranian@google.com>
Cc: Arnaldo Carvalho de Melo <acme@redhat.com>
Acked-by: Will Deacon <will.deacon@arm.com>
Fixes: 4018994f3d87 ("perf: Add ability to attach user level registers dump to sample")
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
---
 kernel/events/core.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/kernel/events/core.c
+++ b/kernel/events/core.c
@@ -5923,7 +5923,7 @@ static void perf_sample_regs_user(struct
 	if (user_mode(regs)) {
 		regs_user->abi = perf_reg_abi(current);
 		regs_user->regs = regs;
-	} else if (current->mm) {
+	} else if (!(current->flags & PF_KTHREAD)) {
 		perf_get_regs_user(regs_user, regs, regs_user_copy);
 	} else {
 		regs_user->abi = PERF_SAMPLE_REGS_ABI_NONE;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
