Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F72819A9B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 12:38:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tnvMXr8BYcLC7dRRWw7Qruq9rfpjcReqUo0BAvqXbc4=; b=FWzUqBqW5Vw3Np
	g0GYpfyEQHjLCxx42ZTIJE5yQOYAo6fEY3e/y5aC1S5c9K+EIhvTmgR07qiSF0NpWhKrRYn9tKtj2
	nauXzbYDwPt5rpfmIUy5ApL9jn9vkf6JMv2FWnXl77VpR2+pQ7ScKTqjZ3z8Zj2+qUoDWafp5RB9T
	vC7myejqTscGjtqHFhzWUEbuiQp+gVyyoCF5M6QL6B7ccfCRaL0n9gYixK8F87LVpOGvuv4lhFEpp
	uTpTRg6/EESf/2x3vnJzy5qyNzLcieHUc6jgoDCz4UAXiFj/YgSllcJAGbBFenqTu4xZUAJKUYASc
	AYAyQrJL3iLQNcquOBlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJakt-0001nt-FA; Wed, 01 Apr 2020 10:37:55 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJaki-0001it-AU
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 10:37:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585737460;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=RUpxmRN4twru0bIi7VknK4K+lKRCP04ScEp4cAJ17Oo=;
 b=cU337rV9yoMGb2tSr7T5HmsEJdlIpm1Wx8SWKjE4MaXDqOM6ifdXYELAuNHy9Wrwzr1yJx
 IjWRJ3CaCnbVFCD1Hg9/tvu8Bicg39zJvqFoq90I0ZYvr2AhG87twUtqaJ3h2it1YYJTsg
 mOz/DCYVZkgCZSybqzJSobbCXxsVyzY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-328-OTHgpj1UNlCNqO1lIN--sg-1; Wed, 01 Apr 2020 06:37:36 -0400
X-MC-Unique: OTHgpj1UNlCNqO1lIN--sg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4EAE18018C8;
 Wed,  1 Apr 2020 10:37:34 +0000 (UTC)
Received: from mail (ovpn-112-247.rdu2.redhat.com [10.10.112.247])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6778F5D9CD;
 Wed,  1 Apr 2020 10:37:31 +0000 (UTC)
Date: Tue, 31 Mar 2020 20:32:03 -0400
From: Andrea Arcangeli <aarcange@redhat.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 3/3] arm64: tlb: skip tlbi broadcast
Message-ID: <20200401003203.GA12536@redhat.com>
References: <20200223192520.20808-1-aarcange@redhat.com>
 <20200223192520.20808-4-aarcange@redhat.com>
 <20200309112242.GB2487@mbp> <20200314031609.GB2250@redhat.com>
 <20200316140906.GA6220@lakrids.cambridge.arm.com>
 <20200331094034.GA1131@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331094034.GA1131@C02TD0UTHF1T.local>
User-Agent: Mutt/1.13.4 (2020-02-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_033744_452254_DA3235F9 
X-CRM114-Status: GOOD (  24.42  )
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: QI Fuli <qi.fuli@fujitsu.com>, Rafael Aquini <aquini@redhat.com>,
 Jon Masters <jcm@jonmasters.org>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Mark Salter <msalter@redhat.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Mark,

On Tue, Mar 31, 2020 at 10:45:11AM +0100, Mark Rutland wrote:
> Hi Andrea,
> 
> On Mon, Mar 16, 2020 at 02:09:07PM +0000, Mark Rutland wrote:
> > AFAICT, this series relies on:
> > 
> > * An ISB completing prior page table walks when updating TTBR. I don't
> >   believe this is necessarily the case, given how things work for an
> >   EL1->EL2 transition where there can be ongoing EL1 walks.
> 
> I've had confirmation that a DSB is necessary (after the MSR and ISB) to
> complete any ongoing translation table walks for the stale context.
> 
> Without a DSB, those walks can observe subsequent stores and encounter
> the usual set of CONSTRAINED UNPREDICTABLE behaviours (e.g. walking into
> MMIO with side-effects, continuing from amalgamted entries, etc). Those
> issues are purely to do with the walk, and apply regardless of whether
> the resulting translations are architecturally consumed.

Ok, sorry I didn't get it earlier... I attempted a quick fix below.

From ab30d8082be62fe24a97eceec5dbfeea8e278511 Mon Sep 17 00:00:00 2001
From: Andrea Arcangeli <aarcange@redhat.com>
Date: Tue, 31 Mar 2020 20:03:43 -0400
Subject: [PATCH 1/1] arm64: tlb: skip tlbi broadcast, fix speculative tlb
 lookups

Without DSB in between "MSR; ISB" and "atomic_dec(&nr_active_mm)"
there's the risk a speculative pagecache lookup may still be walking
pagetables of the unloaded asid after nr_active_mm has been
decreased. In such case the remote CPU could free the pagetables and
reuse the memory without first issuing a tlbi broadcast, while the
speculative tlb lookup still runs on the unloaded asid. For this
reason the speculative pagetable walks needs to be flushed before
decreasing nr_active_mm.

Signed-off-by: Andrea Arcangeli <aarcange@redhat.com>
---
 arch/arm64/include/asm/mmu_context.h | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
index 9c66fe317e2f..d821ea3ce839 100644
--- a/arch/arm64/include/asm/mmu_context.h
+++ b/arch/arm64/include/asm/mmu_context.h
@@ -210,8 +210,18 @@ enter_lazy_tlb(struct mm_struct *mm, struct task_struct *tsk)
 	if (per_cpu(cpu_not_lazy_tlb, cpu) &&
 	    is_idle_task(tsk)) {
 		per_cpu(cpu_not_lazy_tlb, cpu) = false;
-		if (!system_uses_ttbr0_pan())
+		if (!system_uses_ttbr0_pan()) {
 			cpu_set_reserved_ttbr0();
+			/*
+			 * DSB will flush the speculative pagetable
+			 * walks on the old asid. It's required before
+			 * decreasing nr_active_mm because after
+			 * decreasing nr_active_mm the tlbi broadcast
+			 * may not happen on the unloaded asid before
+			 * the pagetables are freed.
+			 */
+			dsb(ish);
+		}
 		atomic_dec(&mm->context.nr_active_mm);
 	}
 	VM_WARN_ON(atomic_read(&mm->context.nr_active_mm) < 0);
@@ -249,6 +259,14 @@ switch_mm(struct mm_struct *prev, struct mm_struct *next,
 	} else if (prev != next) {
 		atomic_inc(&next->context.nr_active_mm);
 		__switch_mm(next, cpu);
+		/*
+		 * DSB will flush the speculative pagetable walks on the old
+		 * asid. It's required before decreasing nr_active_mm because
+		 * after decreasing nr_active_mm the tlbi broadcast may not
+		 * happen on the unloaded asid before the pagetables are
+		 * freed.
+		 */
+		dsb(ish);
 		atomic_dec(&prev->context.nr_active_mm);
 	}
 	VM_WARN_ON(!atomic_read(&next->context.nr_active_mm));


I didn't test it yet, because this being a theoretical issue it is
better reviewed in the source.

> > * Walks never being initiated for `inactive` contexts within the current
> >   translation regime. e.g. while ASID x is installed, never starting a
> >   walk for ASID y. I can imagine that the architecture may permit a form
> >   of this starting with intermediate walk entries in the TLBs.
> 
> I'm still chasing this point.

Appreciated! I'll cross fingers you don't find the speculative lookups
can randomly start on unloaded ASID. That would also imply that it
would be impossible on arm64 to use different asid on different CPUs
as it is normally done on other arches.

Thanks,
Andrea


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
