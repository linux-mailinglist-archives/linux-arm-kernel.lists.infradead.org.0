Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B93931BE9CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:23:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LF1xvLEMezchZdPyrenttL1rRvXaitx2Q5/oycS4TLI=; b=WOEFjwS8t+gM6G
	JF5S2TlGtnMQZm5eigfISyH9+biPy26o9wU5x1bAf9Yq2j4R2t1ve5elYD6B7K/zDk2e+UdB9b7gX
	5RpE4AcwEmdTIZt590l0kyyqdZudsqucr7dAe79oPyrKEaXWkuHNJd05Lu3F9ofzCrSKq9ECb3zvz
	YO2pAuP0BEp9dMD1oz55yyG/j7M53ADhYpHjUjKYxlbFgkBWA7o9/Dzu1ZGwDMDBKoimPz3kdYLu2
	hcHgWsuZBbDkcOyeEW5HKsWa6K79Pf9vuFvv8ZTSVynkTEz95uEtPakmBMMMkg/RBd0HJg8seBitE
	sNpEjKYXZ+vR+KF9G2nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTuAy-0002hD-Cj; Wed, 29 Apr 2020 21:23:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTu7x-0000JB-QM
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:20:25 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E370E20731;
 Wed, 29 Apr 2020 21:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588195221;
 bh=nN0xiFH8ErMuJYGZfz//1n1GAqVt1Kpll/JZZJN0000=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=k+m2aH+vwIBkRyIufhZPQBM9zRdFvDQ/M5Rk//NvmrXQ698z4aKN3u6YQl3VV/6iL
 NUdgEfV7iJpMCbejZD3mrgIFrrXMfxWEwu03C1HYVx6QehukpDJkDE4H+0JWXQVRnq
 pLKvtJAxTqFUb1wdGdBQbE5exzOLBPX91zVCmBBQ=
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v2 09/10] arm64: vdso: Force the vDSO to be linked as BTI when
 built for BTI
Date: Wed, 29 Apr 2020 22:16:40 +0100
Message-Id: <20200429211641.9279-10-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429211641.9279-1-broonie@kernel.org>
References: <20200429211641.9279-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_142023_592308_3E521D00 
X-CRM114-Status: GOOD (  11.01  )
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
Cc: Mark Brown <broonie@kernel.org>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the kernel and hence vDSO are built with BTI enabled force the linker
to link the vDSO as BTI. This will cause the linker to warn if any of the
input files do not have the BTI annotation, ensuring that we don't silently
fail to provide a vDSO that is built and annotated for BTI when the
kernel is being built with BTI.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/vdso/Makefile | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index dd2514bb1511..51ad1cce8133 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -17,8 +17,10 @@ obj-vdso := vgettimeofday.o note.o sigreturn.o
 targets := $(obj-vdso) vdso.so vdso.so.dbg
 obj-vdso := $(addprefix $(obj)/, $(obj-vdso))
 
+btildflags-$(CONFIG_ARM64_BTI_KERNEL) += -z force-bti
+
 ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 --hash-style=sysv \
-		--build-id -n -T
+		--build-id -n $(btildflags-y) -T
 
 ccflags-y := -fno-common -fno-builtin -fno-stack-protector -ffixed-x18
 ccflags-y += -DDISABLE_BRANCH_PROFILING
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
