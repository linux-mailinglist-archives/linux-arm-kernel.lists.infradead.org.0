Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D32C91C11B3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 13:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I5S+Uasa/MpWVfh26+PTeC/Ap6l8tV5klyaKIGf+KwE=; b=YFN6qeeih53zFi
	ax+frrIPfnho1CPneAf4dhW/GXxRAUdWUMl6BJeEVk4b/Iwy2wasA94OirHpRRPugkFaLHH3V/YbG
	GbkOL+4Ajn1zVM/meWISenRDKUvb5hQmEUTwlm6jL6kGh58KnY3Os7fZOxH/f/z79Fkty3bhubYJO
	Hyfmqk5crInJfZS0fQN3q0VOQ2xU1ttn67JATxEhH9X8ci179/e8/pDpHHUAPo4vuTcURZomIpbEA
	gLkI7/06ASMdHOEFnd8pSwqcu6A8pn1kF3/5n9bN/TKRDgbgtxdKSqe+AdmaOW8RCpn+91I8ZHwn5
	ZwrzQCbzr3hJ2O817rUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUUGg-0000VH-U5; Fri, 01 May 2020 11:55:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUUG0-0006SM-OU
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 11:55:06 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 69C02208C3;
 Fri,  1 May 2020 11:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588334104;
 bh=ctLMv89FgD1n0Y+X07uWnCbZxwvkkqI0IEv2rvEBSJ8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=g62xowO9rOuN+tLRPUkuk8cPnmIPT1onGrhA1GMhGa21FwehzrywIb/6ylqi+MbaM
 yqL7uZA+nCRnyHO58a9p0puq8ne+BuUAzKnOckqR3OtnDY4YF6r9UljpRRaLg/Hfnh
 dY4z4T/aDCo6LWyIEiiAUSJ7KkD1XjzBqMy5O5LI=
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v2 3/3] arm64: Disable old style assembly annotations
Date: Fri,  1 May 2020 12:54:30 +0100
Message-Id: <20200501115430.37315-4-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501115430.37315-1-broonie@kernel.org>
References: <20200501115430.37315-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_045504_880662_9CEE24DC 
X-CRM114-Status: UNSURE (   9.37  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
