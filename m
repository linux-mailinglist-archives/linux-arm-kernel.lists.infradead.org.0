Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 053D6188FFA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 22:02:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B3CLwzxNd3f+OnZ0Kd1RnPypI/NcsbBGrO6bR+wr9W4=; b=Cw+KNp2xNxD69b
	nnYqhYv02pj4yO01X1hFXpL/4MGsNZZxsVc2MUv8t/gTT6RC2vR0gA3+kFfIJXph7agUhA/jgSq3R
	zDxe1EXJfqsAZgIJV8yP/Pyn7WTnm79bWX5OQEz5grqZ3/rnkQg+G3cUY0X8UIkaKZohDhqTsTbl8
	PArAvCl0l3v7ZCBAx2eVOKU5tiWi1ERW/59RWRq+gG6AmzfAnqgP6eAdrXAu1g0zjpxwnk7VjlmG1
	1uKAGLOqdTvdBZcpVWN7jEfac8XZSqeSFnlxXaDrgMvfnVaA2o8p4BCNGkg0SiqSqI2JP6JmKkqZQ
	qN8qNZcV1a9676jjb5ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEJLk-0007xz-Kz; Tue, 17 Mar 2020 21:02:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEJLb-0007xP-TQ
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 21:02:01 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 251D42051A;
 Tue, 17 Mar 2020 21:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584478919;
 bh=U57LyJghsjeiPtAtTLPXCjGsnVcnXSXPnKEiXhlMHk4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AdjUeQBkECR3/3jMUEzPlKStC/EKe86EYt7MekRUU8J7qVCc2PecOGBC5Q0RvTnjl
 2SYKAlC4uFBF0S2+SkBPdbAlFN2dxNJvdXWD95/IItFhmZkAZRDqtYhkfoydnRP1M+
 e2r2otpHwEJOtVu886GnbWU00FAjpDxRH2wRPWrY=
Date: Tue, 17 Mar 2020 21:01:54 +0000
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [RFC PATCH] arm64: fix the missing ktpi= cmdline check in
 arm64_kernel_unmapped_at_el0()
Message-ID: <20200317210154.GA19752@willie-the-truck>
References: <20200317114708.109283-1-yaohongbo@huawei.com>
 <20200317121050.GH8831@lakrids.cambridge.arm.com>
 <20200317124323.GA16200@willie-the-truck>
 <20200317135719.GH3971@sirena.org.uk>
 <20200317151813.GA16579@willie-the-truck>
 <20200317163638.GI3971@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317163638.GI3971@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_140159_996624_397C5A54 
X-CRM114-Status: GOOD (  28.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 Hongbo Yao <yaohongbo@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 04:36:38PM +0000, Mark Brown wrote:
> On Tue, Mar 17, 2020 at 03:18:14PM +0000, Will Deacon wrote:
> > On Tue, Mar 17, 2020 at 01:57:19PM +0000, Mark Brown wrote:
> > > On Tue, Mar 17, 2020 at 12:43:24PM +0000, Will Deacon wrote:
> > > > On Tue, Mar 17, 2020 at 12:10:51PM +0000, Mark Rutland wrote:
> > > > > On Tue, Mar 17, 2020 at 07:47:08PM +0800, Hongbo Yao wrote:
> 
> > > > > > -	return arm64_use_ng_mappings;
> > > > > > +	return arm64_use_ng_mappings &&
> > > > > > +		cpus_have_const_cap(ARM64_UNMAP_KERNEL_AT_EL0);
> 
> > > > This probably isn't the right fix, since this will mean that early mappings
> > > > will be global and we'll have to go through the painful page-table rewrite
> > > > logic when the cap gets enabled for KASLR-enabled kernels.
> 
> > > Aren't we looking for a rewrite from non-global to global here (disable
> > > KPTI where we would otherwise have it), which we don't currently have
> > > code for?
> 
> > What I mean is that cpus_have_const_cap() will be false initially, so we'll
> > put down global mappings early on because PTE_MAYBE_NG will be 0, which
> > means that we'll have to invoke the rewriting code if we then realise we
> > want non-global mappings after the caps are finalised.
> 
> Ah, I see - a different case to the one originally reported but also an
> issue.
> 
> > > That is probably a good idea but I think that runs too late to affect
> > > the early mappings, they're done based on kaslr_requires_kpti() well
> > > before we start secondaries.  My first pass not having paged everything
> > > back in yet is that there needs to be command line parsing in
> > > kaslr_requires_kpti() but as things stand the command line isn't
> > > actually ready then...
> 
> > Yeah, and I think you probably run into chicken and egg problems mapping
> 
> The whole area is just a mess.
> 
> > the thing. With the change above, it's true that /some/ mappings will
> > still be nG if you pass kpti=off, but I was hoping that didn't really matter
> > :)
> 
> > What was the behaviour prior to your patch? If it used to work without
> > any nG mappings, then I suppose we should try to restore that behaviour.
> 
> I'd need to go back and retest to confirm but it looks like always had
> the issue that we'd install some nG mappings early even with KPTI
> disabled on the command line so your change is just restoring the
> previous behaviour and we're no worse than we were before.

Urgh, this code brings back really bad memories :( :( :(

I just ran 5.4 and it looks like we leave everything non-global with KASLR,
even when "kpti=off". Great -- that means we're ok with my patch! Well, we
would be except that when we finalise the linear mapping we'll end up trying
to transition the old non-global entry to global, which is a break-before-make
violation (we panic early in __create_pgd_mapping()).

Staring more at the code, I think we're conflating the global/non-global
mappings with whether or not the kpti trampoline is active and it looks like
this might lead to other issues in mainline right now -- for example, I
don't think we clear TPIDRRO_EL0 properly for native tasks because the
arm64_kernel_unmapped_at_el0() check in tls_thread_switch() will defer the
zeroing to the trampoline code, but that might not even run!

So I've hacked the following, which appears to work but damn I'd like
somebody else to look at this. I also have a nagging feeling that you
implemented it like this at some point, but we tried to consolidate things
during review.

Thoughts?

Will

--->8

diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index e4d862420bb4..d79ce6df9e12 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -29,11 +29,9 @@ typedef struct {
  */
 #define ASID(mm)	((mm)->context.id.counter & 0xffff)
 
-extern bool arm64_use_ng_mappings;
-
 static inline bool arm64_kernel_unmapped_at_el0(void)
 {
-	return arm64_use_ng_mappings;
+	return cpus_have_const_cap(ARM64_UNMAP_KERNEL_AT_EL0);
 }
 
 typedef void (*bp_hardening_cb_t)(void);
diff --git a/arch/arm64/include/asm/pgtable-prot.h b/arch/arm64/include/asm/pgtable-prot.h
index 6f87839f0249..1305e28225fc 100644
--- a/arch/arm64/include/asm/pgtable-prot.h
+++ b/arch/arm64/include/asm/pgtable-prot.h
@@ -23,11 +23,13 @@
 
 #include <asm/pgtable-types.h>
 
+extern bool arm64_use_ng_mappings;
+
 #define _PROT_DEFAULT		(PTE_TYPE_PAGE | PTE_AF | PTE_SHARED)
 #define _PROT_SECT_DEFAULT	(PMD_TYPE_SECT | PMD_SECT_AF | PMD_SECT_S)
 
-#define PTE_MAYBE_NG		(arm64_kernel_unmapped_at_el0() ? PTE_NG : 0)
-#define PMD_MAYBE_NG		(arm64_kernel_unmapped_at_el0() ? PMD_SECT_NG : 0)
+#define PTE_MAYBE_NG		(arm64_use_ng_mappings ? PTE_NG : 0)
+#define PMD_MAYBE_NG		(arm64_use_ng_mappings ? PMD_SECT_NG : 0)
 
 #define PROT_DEFAULT		(_PROT_DEFAULT | PTE_MAYBE_NG)
 #define PROT_SECT_DEFAULT	(_PROT_SECT_DEFAULT | PMD_MAYBE_NG)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
