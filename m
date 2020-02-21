Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D81BC16864A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 19:19:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6yFw9vqezymFql+ch1ha3eUxxMrp/AhIDCeEjLihi7g=; b=PoorLZGAf6ijF5
	boajci1n9n5Q7XKHJiOpajyEiIgkN1hjI1LC5nFbyKF63Jk44MwM9WZByNf64defMjqaxiQMF3Fkf
	1WDDnOLZFKqtPo1+lBecOqRQQeIxWYm6I7Fzyok1GN57v3VHtjXwp5DSSE7vcRnQ92Pqh8Zi8i4pB
	UR9m8T+/hdTF07+Il8p9Zrux7AaXt9J5BOd+1966ri3JcCc0jzJ0/TrhhD5D150KQ0P8Zwvi4UVUK
	rqp3oJck3StWxTwtMdIOLJBI5N6w+XrhFH4NU95GmWVinzwfUWhrT/YEYEfN/R5JiWIYWojaMVv/B
	FC+ddlmxuIHIe4PsDXag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Ctt-0007OQ-Mn; Fri, 21 Feb 2020 18:19:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5CtE-0006y7-B5
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 18:19:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C808831B;
 Fri, 21 Feb 2020 10:19:01 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 42DF23F6CF;
 Fri, 21 Feb 2020 10:19:00 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] arm: clocksource: Add VDSO default clockmode
Date: Fri, 21 Feb 2020 18:18:47 +0000
Message-Id: <20200221181849.40351-2-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200221181849.40351-1-vincenzo.frascino@arm.com>
References: <20200221181849.40351-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_101904_438634_09BA69B0 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark.Rutland@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux@armlinux.org.uk, luto@kernel.org, maz@kernel.org, tglx@linutronix.de,
 vincenzo.frascino@arm.com, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The arm_arch_timer requires that VDSO_CLOCKMODE_ARCHTIMER to be
defined to compile correctly. On arm the vDSO can be disabled and when
this is the case the compilation ends prematurely with an error.

Define VDSO_CLOCKMODE_ARCH_DEFAULT to represent the default vDSO
clockmode for arm_arch_timer.

Cc: Russell King <linux@armlinux.org.uk>
Cc: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm/Kconfig                   |  1 +
 arch/arm/include/asm/clocksource.h | 10 ++++++++++
 2 files changed, 11 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 03bbfc312fe7..97864aabc2a6 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -3,6 +3,7 @@ config ARM
 	bool
 	default y
 	select ARCH_32BIT_OFF_T
+	select ARCH_CLOCKSOURCE_DATA
 	select ARCH_HAS_BINFMT_FLAT
 	select ARCH_HAS_DEBUG_VIRTUAL if MMU
 	select ARCH_HAS_DEVMEM_IS_ALLOWED
diff --git a/arch/arm/include/asm/clocksource.h b/arch/arm/include/asm/clocksource.h
index 73beb7f131de..3f7812d5764f 100644
--- a/arch/arm/include/asm/clocksource.h
+++ b/arch/arm/include/asm/clocksource.h
@@ -1,7 +1,17 @@
 #ifndef _ASM_CLOCKSOURCE_H
 #define _ASM_CLOCKSOURCE_H
 
+struct arch_clocksource_data {
+	/* Empty on purpose */
+};
+
+#ifdef CONFIG_GENERIC_GETTIMEOFDAY
 #define VDSO_ARCH_CLOCKMODES	\
 	VDSO_CLOCKMODE_ARCHTIMER
+#define VDSO_CLOCKMODE_ARCH_DEFAULT	VDSO_CLOCKMODE_ARCHTIMER
+#else
+/* The define below is required because on arm the VDSOs can be disabled */
+#define VDSO_CLOCKMODE_ARCH_DEFAULT	VDSO_CLOCKMODE_NONE
+#endif
 
 #endif
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
