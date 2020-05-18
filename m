Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0611D7934
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 15:04:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rNNIu7BAiiWrjw7fF21VIb0wqqwe8KetKeUirPh69zo=; b=kHaeVERGkqf2Oh
	6IYmVG/ckf7Gq8AtQB+qfk7A8GlXHsb75CBJZ1YRBlGECD8eK4yQrTthJKGbzwga9OS+ONN7RDlFb
	xwtzzxfbV/cJ2xiAhzbMzoaLprsxfizUtxGJJS7B7zT56kkTFmBQsCKrzNJyBonyHJjlHwCRzh8jb
	SrWVS36r6cPeN6+/z4cvbOaALDXo+VFUn9HTKUYcIQQS02ikpxa+ROdyu+cvhqABNVdjCgSUU847o
	umSRHndytCSg+XeDhIl1hfO+lF9simzJmPpIiCvrzrWPMnK5QJ3Bo+K+3T94CaxvJYHA0Mwu5ZMMM
	lECHUU/2HgUDD7GNMUPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jafQu-0001sc-7V; Mon, 18 May 2020 13:03:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jafQk-0001rg-IL
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 13:03:43 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5893B207D3;
 Mon, 18 May 2020 13:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589807022;
 bh=cqBFppFXywtZsKM/FNOE0/NVU4loKWJIwGTdFBK4NK4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AQzs1Mwk69tSsp5qxInzTbdXkv04DyufsIs1+gjF3sXZ9S60tnJpxVJ7p0o34FOVa
 0UDle+HFNXG2qYLjQrqK2hI0w2jrwrTjxLLvyI2MTmKnJRaV/nZ3Qi4Lg3FNyK9O2D
 MfKT2JzwFunN6II9sHmMU3UzvAPLXEJaYoucP8vI=
Date: Mon, 18 May 2020 14:03:36 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 3/6] arm64: scs: Use 'scs_sp' register alias for x18
Message-ID: <20200518130335.GC32394@willie-the-truck>
References: <20200515172756.27185-1-will@kernel.org>
 <20200515172756.27185-4-will@kernel.org>
 <20200518115547.GC1957@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518115547.GC1957@C02TD0UTHF1T.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_060342_621031_49ED472D 
X-CRM114-Status: GOOD (  19.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Sami Tolvanen <samitolvanen@google.com>, kernel-team@android.com,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 12:55:47PM +0100, Mark Rutland wrote:
> On Fri, May 15, 2020 at 06:27:53PM +0100, Will Deacon wrote:
> > x18 holds the SCS stack pointer value, so introduce a register alias to
> > make this easier to read in assembly code.
> > 
> > Signed-off-by: Will Deacon <will@kernel.org>
> 
> I scanned through arm64 for all instances of x18, and it looks like
> you've covered all the relevant uses here. In kvm we save/restore x18 a
> bunch becasue it might be a platform register, but we do that
> unconditionally and without knowledge of what it contains, so I think
> that's fine to leave as-is. Therefore:
> 
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> 
> As an aside, the comment in entry-ftrace.S is now stale where it says
> that x18 is safe to clobber. I can send a patch to clean that up, unless
> you want to do that yourself.

Thanks, I'll fix that up (see below). Also, apologies for typo'ing your
email address when I sent this out on Friday.

Will

--->8

From 7e86208cd6541c1229bc1fcd206596308d1727f8 Mon Sep 17 00:00:00 2001
From: Will Deacon <will@kernel.org>
Date: Mon, 18 May 2020 14:01:01 +0100
Subject: [PATCH] arm64: entry-ftrace.S: Update comment to indicate that x18 is
 live

The Shadow Call Stack pointer is held in x18, so update the ftrace
entry comment to indicate that it cannot be safely clobbered.

Reported-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/entry-ftrace.S | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/entry-ftrace.S b/arch/arm64/kernel/entry-ftrace.S
index 833d48c9acb5..a338f40e64d3 100644
--- a/arch/arm64/kernel/entry-ftrace.S
+++ b/arch/arm64/kernel/entry-ftrace.S
@@ -23,8 +23,9 @@
  *
  * ... where <entry> is either ftrace_caller or ftrace_regs_caller.
  *
- * Each instrumented function follows the AAPCS, so here x0-x8 and x19-x30 are
- * live, and x9-x18 are safe to clobber.
+ * Each instrumented function follows the AAPCS, so here x0-x8 and x18-x30 are
+ * live (x18 holds the Shadow Call Stack pointer), and x9-x17 are safe to
+ * clobber.
  *
  * We save the callsite's context into a pt_regs before invoking any ftrace
  * callbacks. So that we can get a sensible backtrace, we create a stack record
-- 
2.26.2.761.g0e0b3e54be-goog

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
