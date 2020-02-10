Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 754B6157D31
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 15:13:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WyZfhRGqARVViYwcC8jFYRgDpElKla0qttJDnDZG22Y=; b=UjpSmjwQtYXYnN
	Qmw8iGZxMrIKS1lTWFNTM6Ex9XxdtCuK7Dhvy1jG7apuwxGi3HAVllcFNuBRKG9l4x72cHXlP/ExV
	shQXA5lXO/XwlQMlEJrWlADRDa/q1nUAekfcXAcZtcsTGkBvPjJgEAUjtfYlrRhzfAWgmBxfUOr/Y
	ShRIE6S0L5/I5+bmysr4GR/OMAtKq2AR3DLWYWdluwelR3jlKUuD+qqeB0U7lSiFG6vqvib05SO5y
	0duR3ewtYo5qYwPcenIHOCTh6c7EJYD6xx+29WjQctIk/t8jJ5/rjiQ7LibO6UeCVLOdxjqE0YR4D
	VRqnjxDzheubUq7Qc16A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j19ot-0003DJ-TE; Mon, 10 Feb 2020 14:13:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j19oZ-00034y-3z
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 14:13:32 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AFBC42082F;
 Mon, 10 Feb 2020 14:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581344010;
 bh=1Ksq9sSntq5AlQyVIEEudZ7m8YBzrTT24xuJB8Lv5Pg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LM9MCmEPfyhMuJLD1nzYm2cfEhexKk8SzZby6gvTHoGhCO5wKlOE/Kbntnom+E0Bk
 ITBn7lkyrK3xhdulzbRWKSiNSQI0Mw0XvK7yIBJckYJUi2u++musH7NYWPYfTVBoY4
 zrFz/kA/vJQ72F09KjUr0vkI2XircEJcQkRy/HSw=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j19oX-0048kH-1T; Mon, 10 Feb 2020 14:13:29 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [RFC PATCH 1/5] arm: Unplug KVM from the build system
Date: Mon, 10 Feb 2020 14:13:20 +0000
Message-Id: <20200210141324.21090-2-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200210141324.21090-1-maz@kernel.org>
References: <20200210141324.21090-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, pbonzini@redhat.com,
 Christoffer.Dall@arm.com, will@kernel.org, qperret@google.com,
 linux@arm.linux.org.uk, vladimir.murzin@arm.com, anders.berg@lsi.com,
 arnd@arndb.de
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_061331_199384_15CD1577 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Anders Berg <anders.berg@lsi.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Russell King <linux@arm.linux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Quentin Perret <qperret@google.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>, James Morse <james.morse@arm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As we're about to drop KVM/arm on the floor, carefully unplug
it from the build system.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm/Kconfig             | 2 --
 arch/arm/Makefile            | 1 -
 arch/arm/mach-exynos/Kconfig | 2 +-
 3 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 97864aabc2a6..a07bec7f4d8d 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -2091,5 +2091,3 @@ source "drivers/firmware/Kconfig"
 if CRYPTO
 source "arch/arm/crypto/Kconfig"
 endif
-
-source "arch/arm/kvm/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index db857d07114f..b4ce96f55ddd 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -278,7 +278,6 @@ core-$(CONFIG_FPE_NWFPE)	+= arch/arm/nwfpe/
 core-$(CONFIG_FPE_FASTFPE)	+= $(patsubst $(srctree)/%,%,$(wildcard $(srctree)/arch/arm/fastfpe/))
 core-$(CONFIG_VFP)		+= arch/arm/vfp/
 core-$(CONFIG_XEN)		+= arch/arm/xen/
-core-$(CONFIG_KVM_ARM_HOST) 	+= arch/arm/kvm/
 core-$(CONFIG_VDSO)		+= arch/arm/vdso/
 
 # If we have a machine-specific directory, then include it in the build.
diff --git a/arch/arm/mach-exynos/Kconfig b/arch/arm/mach-exynos/Kconfig
index cbbe03e96de8..76838255b5fa 100644
--- a/arch/arm/mach-exynos/Kconfig
+++ b/arch/arm/mach-exynos/Kconfig
@@ -21,7 +21,7 @@ menuconfig ARCH_EXYNOS
 	select EXYNOS_SROM
 	select EXYNOS_PM_DOMAINS if PM_GENERIC_DOMAINS
 	select GPIOLIB
-	select HAVE_ARM_ARCH_TIMER if ARCH_EXYNOS5 && VIRTUALIZATION
+	select HAVE_ARM_ARCH_TIMER if ARCH_EXYNOS5
 	select HAVE_ARM_SCU if SMP
 	select HAVE_S3C2410_I2C if I2C
 	select HAVE_S3C2410_WATCHDOG if WATCHDOG
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
