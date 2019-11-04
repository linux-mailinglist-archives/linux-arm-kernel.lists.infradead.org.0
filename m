Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 467AEEE1C7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 15:00:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/a3PuBvAtZGSMtzDORElctdjkivmabCA23cHc13yn0=; b=HkcUWctauH421v
	Qy6boGSL/tlFWe2YdqsPXIBZ3D6gierTj3SC9p5TTqs+ZZu47hpHe0q0AS9Fg+uomehnT0OU6i9+C
	TXj7DsHxNv2mMnaJwE8Ss68yUlHNPoyOr9v4eBpBv9XuQWGXKDc3lgpTt5+stzFurw8ZCgn8av+2O
	awll9gRavYYoSfAhvij/YTlTonAAO81D0nktTVU+MxIvMaWaL4YZ8q/zPWM+SrbZEnL+1+pOim36s
	VT1C/BzsUHO2bgaogeiElZG7kkzr1z3m6oVGP3EVbc5EtdZzwTEWT0xUiCYoRJ5CUKXxIVD/1QaKM
	CKv/L457ueo8DUTeX+8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRcuZ-0006Bg-KJ; Mon, 04 Nov 2019 14:00:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRcuE-0005zk-GD
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 14:00:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7498F1FB;
 Mon,  4 Nov 2019 06:00:25 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 371433F6C4;
 Mon,  4 Nov 2019 06:00:23 -0800 (PST)
Date: Mon, 4 Nov 2019 14:00:21 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCHv2 2/8] module/ftrace: handle patchable-function-entry
Message-ID: <20191104140020.GI45140@lakrids.cambridge.arm.com>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <20191029165832.33606-3-mark.rutland@arm.com>
 <20191030150302.GA965@suse.de> <20191031090231.GA3340@blommer>
 <20191031114223.GA11684@suse.de> <20191031130022.GB3477@blommer>
 <20191104082810.70f1b72a@grimm.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104082810.70f1b72a@grimm.local.home>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_060030_589431_7CAB900B 
X-CRM114-Status: GOOD (  11.66  )
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
Cc: jthierry@redhat.com, linux-parisc@vger.kernel.org, peterz@infradead.org,
 catalin.marinas@arm.com, Torsten Duwe <duwe@suse.de>, jpoimboe@redhat.com,
 linux-kernel@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 takahiro.akashi@linaro.org, will@kernel.org, mingo@redhat.com,
 james.morse@arm.com, Jessica Yu <jeyu@kernel.org>, amit.kachhap@arm.com,
 svens@stackframe.org, Helge Deller <deller@gmx.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 08:28:10AM -0500, Steven Rostedt wrote:
> On Thu, 31 Oct 2019 13:00:22 +0000
> Mark Rutland <mark.rutland@arm.com> wrote:
> 
> > Sure. I've folded the above into this patch, and pushed out an updated branch:
> > 
> >   https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/log/?h=arm64/ftrace-with-regs
> 
> Just to keep this change in lore, can you at a minimum reply to this
> patch's thread with the new update?

The new change is below (with all else unchanged). I can send a v3 of
the series if you want the whole patch?

Thanks,
Mark.

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index dae64600ccbf..a9c4e4721434 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -110,17 +110,17 @@
 #endif
 
 #ifdef CONFIG_FTRACE_MCOUNT_RECORD
-#ifdef CC_USING_PATCHABLE_FUNCTION_ENTRY
-#define MCOUNT_REC()   . = ALIGN(8);                           \
-                       __start_mcount_loc = .;                 \
-                       KEEP(*(__patchable_function_entries))   \
-                       __stop_mcount_loc = .;
-#else
+/*
+ * The ftrace call sites are logged to a section whose name depends on the
+ * compiler option used. A given kernel image will only use one, AKA
+ * FTRACE_CALLSITE_SECTION. We capture all of them here to avoid header
+ * dependencies for FTRACE_CALLSITE_SECTION's definition.
+ */
 #define MCOUNT_REC()   . = ALIGN(8);                           \
                        __start_mcount_loc = .;                 \
                        KEEP(*(__mcount_loc))                   \
+                       KEEP(*(__patchable_function_entries))   \
                        __stop_mcount_loc = .;
-#endif
 #else
 #define MCOUNT_REC()
 #endif


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
