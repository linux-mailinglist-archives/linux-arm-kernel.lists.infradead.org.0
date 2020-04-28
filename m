Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A72441BC5AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:47:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I5S+Uasa/MpWVfh26+PTeC/Ap6l8tV5klyaKIGf+KwE=; b=p7IfTdbwNWcV3V
	wViiXXceJ8PKjjz3TNUBMFkbt4CiUeQo4pC7BhBmZfOSr+kpeeg6qaVEjYg95pstKL65a8pZT4gzl
	PYGXQqljgyJFSI//yiY2q6uKP9fSco+chnp4ekdjcTTS6C2X6ho1pPIDci+VxZxHXH2TKS6arGBho
	tkpa+dAgu3hn6frd7FgTx1HzUG8h55HAdH/+guJMB160SL/HIbApc8yW4sKdRZsAxGPB0GMb71q9Y
	ejIjLDkaz7li1+Tw86pqYH2+F/3jyinzYV0aOtwUNQKp5U4PC+qNq713lWusO7ihbmlkEsY3l/MJv
	j8NhOUx5XuTd/PIIbylw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTOg-0002Zq-L5; Tue, 28 Apr 2020 16:47:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTNn-0001D3-GP
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:46:56 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1DAD4208E0;
 Tue, 28 Apr 2020 16:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588092414;
 bh=ctLMv89FgD1n0Y+X07uWnCbZxwvkkqI0IEv2rvEBSJ8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0XIex2RGB5vuYdZDH7nQaRPOyM3fU4XrbywRwE4xONvT9o7/0du3fJEC1p1gN1r4/
 cDiOZ1+v7cPsFbLO5jfcSfvKv8KFd40RXl8+mkvAkvgIcfjVe0QERx6sWOgWreYXvP
 +OWarkcEHUvHw8iKjxIaCNn5nDECG/Dsdu+04Mos=
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH 2/2] arm64: Disable old style assembly annotations
Date: Tue, 28 Apr 2020 17:43:31 +0100
Message-Id: <20200428164331.27289-3-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200428164331.27289-1-broonie@kernel.org>
References: <20200428164331.27289-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_094655_650886_0C45761B 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have converted arm64 over to the new style SYM_ assembler
annotations select ARCH_USE_SYM_ANNOTATIONS so the old macros aren't
available and we don't regress.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 43be825d0730..6f199d8146d4 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -66,6 +66,7 @@ config ARM64
 	select ARCH_USE_GNU_PROPERTY
 	select ARCH_USE_QUEUED_RWLOCKS
 	select ARCH_USE_QUEUED_SPINLOCKS
+	select ARCH_USE_SYM_ANNOTATIONS
 	select ARCH_SUPPORTS_MEMORY_FAILURE
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && (GCC_VERSION >= 50000 || CC_IS_CLANG)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
