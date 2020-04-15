Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3013A1AA3A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 15:14:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mkB8zAwxbtE7RV7xhoTO6yjpOan0EoPnWa0GYYG/j+U=; b=jsRx+ct50nJJpO
	lsyPKrsuEcZOCJDRLIFXAneHdNNrc/+5TKFX+OrctXWdBW0HFqdp15/AKjyJtp61yk3kZys//EoTC
	ybvY4SepyuicoMJQRNT0IarJxnquCI38ASNED5RTk5NSq8pbMkQEHc4Nr3OIhCksz19S7Q9irMi7c
	WtTsY2tAS2CPnCq/nw5yCvHt6BvTIbVJ2IWJ2EW/MTnX2N6bwc1eo288eKI6jj+lmANvnCGTDCSZe
	sR8iZABykW2OkgyKLq/HxIFm26bXchnjA9VDOvt57qzK2v5/Y2f/tdizUcaCWyyyj4Te7HmKhzRsZ
	/h4RWYl3cGNwA5uhmehw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhsE-0003C5-4Z; Wed, 15 Apr 2020 13:14:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhpz-0001GI-Jw
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 13:12:22 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 849752137B;
 Wed, 15 Apr 2020 13:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586956338;
 bh=YRxAOOTsBNmnikEOzTnkcRuh5LaeQ+PTkpJrq6Ppr1I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VK4ltqdEilDXfpDvKSEHX3TOb9G3QdWMgrK8fgqv8nQCPqkwJo6dZpH76kEQ+kgEI
 KAADd6d6JpXgE2guAUpOHb6xI61tN+0vAk2wS2hfcQr0e9J2OvO950SBVVHTIwp/oF
 EbKcn81LIfBV1NuYd6+yuepRuFs7OBA36Iiu0MrA=
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH 09/10] arm64: vdso: Force the vDSO to be linked as BTI when
 built for BTI
Date: Wed, 15 Apr 2020 14:07:48 +0100
Message-Id: <20200415130750.18645-10-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415130750.18645-1-broonie@kernel.org>
References: <20200415130750.18645-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_061219_687376_8BCA4122 
X-CRM114-Status: GOOD (  11.12  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
fail to provide a vDSO that is not built and annotated for BTI when the
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
