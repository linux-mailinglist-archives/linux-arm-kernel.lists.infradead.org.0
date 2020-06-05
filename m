Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA661EF8CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:19:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SFguc9YvBSc1RgsxQivx04xgR4U6JgCGyPCTwqZ/Irc=; b=FpeRuJVEn0ku3P
	fa6EfRw19nVBVoFiJXhtNOjbQdbnWxjD9sW5+1sCmAutcph9ifS7tldwU3PkvWZHkTDCib+d68MSE
	WZyOcybhJNlwDDswUxWD+jC9+Mmjihi6Nz0cbGcOumIYudEDIoI2GjeK+Mvm5jgTGg3dYlK3AwrFX
	rK6CM0SLsMWiK7OrkywIWq3o5m5cjF64FP2LhxJS0j5TkWFWTToD78fJeYpR9deewMqkIFlRhmYiN
	ADhdLD9jFm8L0EfL/E0Mj9ev8uD7vZ4gGOWhuLba66dEKBMt+7zsF7WeuepgNc9lL57DKd5xlZiyv
	z6kLBvMOuqkQV27bT49A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCFW-00024z-Ff; Fri, 05 Jun 2020 13:19:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCFA-0001uK-FI
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:18:45 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AE328206DB;
 Fri,  5 Jun 2020 13:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591363124;
 bh=oI8DhZG9Ga1dZhRQARhgXjRNn7929rR+4ykoYjhNGG4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RSbb4yxeAo7d8wq9R2t/WeIh6fgg79ToxNORF0EoFqL72G5FGQhgMwb51pcxi62xb
 6UelS3K/BpE2Pc68YgnK6ydEvGTet6h6JIP+GNMfSAJFRUfB70t7EFkQPCnzW52FUn
 m81kHLkZb8+iWnFGwfYTm9Mwqw9DDh21XY2eTCr8=
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH 1/5] arm64: vdso: Provide a define when building the vDSO
Date: Fri,  5 Jun 2020 14:11:27 +0100
Message-Id: <20200605131131.16491-2-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200605131131.16491-1-broonie@kernel.org>
References: <20200605131131.16491-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_061844_527597_0CD8CFEB 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Brown <broonie@kernel.org>, Andrei Vagin <avagin@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Provide a define identifying if code is being built for the vDSO to help
with writing headers that are shared between the kernel and the vDSO.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index 556d424c6f52..279b1b9fb956 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -27,7 +27,7 @@ ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 --hash-style=sysv \
 		-Bsymbolic --eh-frame-hdr --build-id -n $(btildflags-y) -T
 
 ccflags-y := -fno-common -fno-builtin -fno-stack-protector -ffixed-x18
-ccflags-y += -DDISABLE_BRANCH_PROFILING
+ccflags-y += -DDISABLE_BRANCH_PROFILING -D__VDSO__
 
 CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS)
 KBUILD_CFLAGS			+= $(DISABLE_LTO)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
