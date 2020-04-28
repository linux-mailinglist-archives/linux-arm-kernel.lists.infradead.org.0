Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C53901BC51C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:25:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r6uQ782dypLQcYeznsH47GjwXwhII9ULIkgy35i5HXQ=; b=rXudHBKD5D6Pje
	LteDoEJCVLU9hROTjEityURObiyxpfPFY8KeMHSNtfvojCGruzRgPXx+hXI2XHoSB5yIvE3rMwL6d
	IMfPg/ExJ2GNzwpvnposBz4KbYBIBeX4fHYhKSMsDUTnlQgCDJI9go3Pl6lw5KQqzu9USTYhlqyLZ
	hBgetnJOeJuiumkGKy5VAQtKlrQ8medQlCmgH/B9Y7wGcQ74cUd3SxBXROpydckw2AjykXbTyuZqy
	azIklA87I2Qr9khScabQI3ZdXz5dA31G3Erv3v3gAagSQip1M0HTLtoxPVYZF78Qp1RUDoP3rMex7
	ElhREdkxRxOsybS6I3Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTT2y-0000fb-Ih; Tue, 28 Apr 2020 16:25:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTT2m-0008Ui-EA
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:25:14 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D76420730;
 Tue, 28 Apr 2020 16:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588091112;
 bh=OIYrr8tIQebz40NzbM410r4H2U4XJ+1rGGTGR4pYCCM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=z6kRAipPpHWQay0yKi8xLRAw0+2bxpEXLUw1ktERG8pkM0hLJrjWNrvFYT4xxyG0E
 Kl7LBNokvPssCaI8MwKECjm0BJDsspA3Gig6MuLYVilAZbIRE3YTXdoa21YcxkbXoP
 /oQW55XJT06z2xgJvwIyCWKi9Vt2WFhKLtwt4GNs=
Date: Tue, 28 Apr 2020 17:25:07 +0100
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH] arm64: vdso: Fix ldflags for -Bsymbolic
Message-ID: <20200428162506.GE12697@willie-the-truck>
References: <20200428150854.33130-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428150854.33130-1-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_092512_552489_7FAC3A6F 
X-CRM114-Status: GOOD (  20.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Geoff Levand <geoff@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 04:08:54PM +0100, Vincenzo Frascino wrote:
> The vDSO library adds -Bsymbolic to the ldflags because when the shared
> library is built it adds a flag in the dynamic section of the binary
> called DT_SYMBOLIC which alters the dynamic linker's symbol resolution
> algorithm to search for references for a symbol inside the library first
> and then into the executable.
> 
> In the current implementation of the library for arm64 the flag has been
> wrongly added to VDSO_LDFLAGS which is never used.
> 
> Restore the correct behavior adding the flag to ldflags.
> 
> Note: -Bsymbolic has been added for consistency with arm and future
> proof.
> 
> Fixes: 28b1a824a4f44 ("arm64: vdso: Substitute gettimeofday() with C implementation")
> Cc: Will Deacon <will@kernel.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Ard Biesheuvel <ardb@kernel.org>
> Reported-by: Geoff Levand <geoff@infradead.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/kernel/vdso/Makefile | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)

Thanks. I'll queue this, but I've tweaked the commit message and the comment
so that they make more sense to me (see below)

Will

--->8

Subject: [PATCH] arm64: vdso: Add '-Bsymbolic' to ldflags

Commit 28b1a824a4f44 ("arm64: vdso: Substitute gettimeofday() with C
implementation") introduced an unused 'VDSO_LDFLAGS' variable to the
vdso Makefile, suggesting that we should be passing '-Bsymbolic' to the
linker, as we do when linking the compat vDSO.

Although it's not strictly necessary to pass this flag, it would be
required if we were to add any internal references to the exported
symbols. It's also consistent with how we link the compat vdso so, since
there's no real downside from passing it, add '-Bsymbolic' to the ldflags
for the native vDSO.

Fixes: 28b1a824a4f44 ("arm64: vdso: Substitute gettimeofday() with C implementation")
Reported-by: Geoff Levand <geoff@infradead.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Ard Biesheuvel <ardb@kernel.org>
Link: https://lore.kernel.org/r/20200428150854.33130-1-vincenzo.frascino@arm.com
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/vdso/Makefile | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index dd2514bb1511..abf61c96edbc 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -17,14 +17,16 @@ obj-vdso := vgettimeofday.o note.o sigreturn.o
 targets := $(obj-vdso) vdso.so vdso.so.dbg
 obj-vdso := $(addprefix $(obj)/, $(obj-vdso))
 
+# -Bsymbolic has been added for consistency with arm, the compat vDSO and
+# potential future proofing if we end up with internal calls to the exported
+# routines, as x86 does (see 6f121e548f83 ("x86, vdso: Reimplement vdso.so
+# preparation in build-time C")).
 ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 --hash-style=sysv \
-		--build-id -n -T
+		-Bsymbolic --build-id -n -T
 
 ccflags-y := -fno-common -fno-builtin -fno-stack-protector -ffixed-x18
 ccflags-y += -DDISABLE_BRANCH_PROFILING
 
-VDSO_LDFLAGS := -Bsymbolic
-
 CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
 KBUILD_CFLAGS			+= $(DISABLE_LTO)
 KASAN_SANITIZE			:= n


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
