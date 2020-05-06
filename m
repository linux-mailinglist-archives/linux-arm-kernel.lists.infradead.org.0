Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D2E1C76D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 18:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aRpM5tyrxGLdtgqea4Xt1r7OMf9KoVBExVWR+0P9UDU=; b=orknie6QEgwG/RZZi++MZVRkdu
	JE0p0iq5gYQrNEoGhlkHQk8kYk/9TjWQdpfMryUYAiRPIq4UIzUMyzmnvt1Q6c1cRozvEonsUyQQ7
	1n6tUPUV0BZr4S4l7/08uKje26zCnlloXIvthothZWuk2QopzNRcWJUmZP6+ZvHJzvRRG2W8BWk0j
	fdd7Qxm8qPdXeH/PsgVzhv9ehMQuBnfJND1922GiB5yvOe9o8v+QySucQfQxa4AJdQOY+wFZzR4RK
	eeEwbKj4olB7tlFYSdIE4Y9WfXJRiXu0+iliws5W09k5i+HOLCtOWpyvW4cW8Kj1b28PEIyiD25Ay
	zTEcVK5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWNA3-0000qY-V5; Wed, 06 May 2020 16:44:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWN9g-0000ec-HC
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 16:44:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C1461101E;
 Wed,  6 May 2020 09:44:19 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 72E953F305;
 Wed,  6 May 2020 09:44:18 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/7] firmware: smccc: Add HAVE_ARM_SMCCC_DISCOVERY to
 identify SMCCC v1.1 and above
Date: Wed,  6 May 2020 17:44:05 +0100
Message-Id: <20200506164411.3284-2-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506164411.3284-1-sudeep.holla@arm.com>
References: <20200506164411.3284-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_094420_609794_7E469933 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>, harb@amperecomputing.com,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SMCCC v1.0 lacked discoverability of version and features. To accelerate
adoption of few mitigations and protect systems more rapidly from various
vulnerability, PSCI v1.0 was updated to add SMCCC discovery mechanism
though the PSCI firmware implementation of PSCI_FEATURES(SMCCC_VERSION)
which returns success on firmware compliant to SMCCC v1.1 and above.

This inturn makes SMCCC v1.1 and above dependent on ARM_PSCI_FW for
backward compatibility. Let us introduce a new hidden config for the
same to build more features on top of SMCCC v1.1 and above.

While at it, also sort alphabetically the psci entry.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/Kconfig       |  6 ++----
 drivers/firmware/smccc/Kconfig | 17 +++++++++++++++++
 2 files changed, 19 insertions(+), 4 deletions(-)
 create mode 100644 drivers/firmware/smccc/Kconfig

diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index 8007d4aa76dc..4843e94713a4 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -295,15 +295,13 @@ config TURRIS_MOX_RWTM
 	  other manufacturing data and also utilize the Entropy Bit Generator
 	  for hardware random number generation.
 
-config HAVE_ARM_SMCCC
-	bool
-
-source "drivers/firmware/psci/Kconfig"
 source "drivers/firmware/broadcom/Kconfig"
 source "drivers/firmware/google/Kconfig"
 source "drivers/firmware/efi/Kconfig"
 source "drivers/firmware/imx/Kconfig"
 source "drivers/firmware/meson/Kconfig"
+source "drivers/firmware/psci/Kconfig"
+source "drivers/firmware/smccc/Kconfig"
 source "drivers/firmware/tegra/Kconfig"
 source "drivers/firmware/xilinx/Kconfig"
 
diff --git a/drivers/firmware/smccc/Kconfig b/drivers/firmware/smccc/Kconfig
new file mode 100644
index 000000000000..d93f1ab52cb2
--- /dev/null
+++ b/drivers/firmware/smccc/Kconfig
@@ -0,0 +1,17 @@
+# SPDX-License-Identifier: GPL-2.0-only
+config HAVE_ARM_SMCCC
+	bool
+	help
+	  Include support for the Secure Monitor Call (SMC) and Hypervisor
+	  Call (HVC) instructions on Armv7 and above architectures.
+
+config HAVE_ARM_SMCCC_DISCOVERY
+	bool
+	depends on ARM_PSCI_FW
+	default y
+	help
+	 SMCCC v1.0 lacked discoverability and hence PSCI v1.0 was updated
+	 to add SMCCC discovery mechanism though the PSCI firmware
+	 implementation of PSCI_FEATURES(SMCCC_VERSION) which returns
+	 success on firmware compliant to SMCCC v1.1 and above.
+
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
