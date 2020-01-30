Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA5614E343
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 20:29:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rR5jrgN1X45AT53RjMyleOUMKVrF0seG/mQQF40Val8=; b=ojq
	dskmKD8VCTU3zAoImZVzQFonJwLx4TAEkaxZj7w+3tSMOECJBBDLP4VvAgsX+M7FZ0hgGAWVLiHNd
	MV7QJ7mctMYTsJ+xqnQFlpdnAjHArmjODUGUSpvsOGJFH/Zp6RreQmGgfM1HUoNGHD/VX9+JhsI/6
	TXdDwJlW+XKnGvqxsZmumvy8lE/sNNVZGaOru7Z6C9/W+ycOGhGTVS6uBIZn9DhSenrJI1aomdFks
	s2aNG3TCYyhqOwKzfoDajuqYltE5QMZ04L9eE86XHg7o0bMbL3/vGLHXbXicqaDn/UF7L0IN6eGTV
	z/2NkBKJiTEjUdLUiOr0wcC69IoHpIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixFVb-0005FE-0S; Thu, 30 Jan 2020 19:29:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixFVT-0005Et-9f
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 19:29:40 +0000
Received: from localhost.localdomain (unknown [194.230.155.229])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 30E7C2082E;
 Thu, 30 Jan 2020 19:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580412579;
 bh=NT3UVOyFjqEBVWiIxTifWBnX6L8l9pz2bc/FL5vNEwE=;
 h=From:To:Cc:Subject:Date:From;
 b=0HyBPdXibj9ZVRtLSPiFwfP3dLIuZ38jThYyMYG31CgIJmRYiRohv0aYj1EGcB+7T
 2z+gZxMreGhN3EQSUeD3J86VTlNvziSue+MzOMSGuxmDDzHurSgIMXO0V8Lmad0FFA
 H7fhOAts+P2IeW0mVJrpD5d1UjsWz5tshLGFJ7b0=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paulburton@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] MIPS: configs: Cleanup old Kconfig options
Date: Thu, 30 Jan 2020 20:29:26 +0100
Message-Id: <20200130192926.3635-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_112939_375244_CE95B46F 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CONFIG_MTD_NAND_IDS is gone and not needed (part of CONFIG_MTD_NAND)
since commit f16bd7ca0457 ("mtd: nand: Kill the MTD_NAND_IDS Kconfig
option").

CONFIG_IOSCHED_DEADLINE, CONFIG_IOSCHED_CFQ and CONFIG_DEFAULT_NOOP are
gone since commit f382fb0bcef4 ("block: remove legacy IO schedulers").

The IOSCHED_DEADLINE was replaced by MQ_IOSCHED_DEADLINE and it will be
now enabled by default (along with MQ_IOSCHED_KYBER).

The BFQ_GROUP_IOSCHED is the only multiqueue scheduler which comes with
group scheduling so select it in configs previously choosing
CFQ_GROUP_IOSCHED.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/mips/configs/ar7_defconfig                 | 1 -
 arch/mips/configs/ath25_defconfig               | 1 -
 arch/mips/configs/ath79_defconfig               | 1 -
 arch/mips/configs/bcm63xx_defconfig             | 2 --
 arch/mips/configs/bmips_be_defconfig            | 2 --
 arch/mips/configs/bmips_stb_defconfig           | 2 --
 arch/mips/configs/db1xxx_defconfig              | 1 -
 arch/mips/configs/generic/board-ni169445.config | 1 -
 arch/mips/configs/lasat_defconfig               | 2 --
 arch/mips/configs/lemote2f_defconfig            | 2 +-
 arch/mips/configs/loongson3_defconfig           | 5 +++--
 arch/mips/configs/msp71xx_defconfig             | 2 --
 arch/mips/configs/pnx8335_stb225_defconfig      | 2 --
 arch/mips/configs/rb532_defconfig               | 1 -
 arch/mips/configs/rt305x_defconfig              | 1 -
 arch/mips/configs/xway_defconfig                | 1 -
 16 files changed, 4 insertions(+), 23 deletions(-)

diff --git a/arch/mips/configs/ar7_defconfig b/arch/mips/configs/ar7_defconfig
index cef2754bd408..cf9c6329b807 100644
--- a/arch/mips/configs/ar7_defconfig
+++ b/arch/mips/configs/ar7_defconfig
@@ -21,7 +21,6 @@ CONFIG_MODULE_UNLOAD=y
 # CONFIG_BLK_DEV_BSG is not set
 CONFIG_PARTITION_ADVANCED=y
 CONFIG_BSD_DISKLABEL=y
-# CONFIG_IOSCHED_CFQ is not set
 CONFIG_NET=y
 CONFIG_PACKET=y
 CONFIG_UNIX=y
diff --git a/arch/mips/configs/ath25_defconfig b/arch/mips/configs/ath25_defconfig
index c35add2fd716..7143441f5476 100644
--- a/arch/mips/configs/ath25_defconfig
+++ b/arch/mips/configs/ath25_defconfig
@@ -22,7 +22,6 @@ CONFIG_HZ_100=y
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
 # CONFIG_BLK_DEV_BSG is not set
-# CONFIG_IOSCHED_CFQ is not set
 # CONFIG_COMPACTION is not set
 CONFIG_NET=y
 CONFIG_PACKET=y
diff --git a/arch/mips/configs/ath79_defconfig b/arch/mips/configs/ath79_defconfig
index 4ffc59cab436..3d14d67dc746 100644
--- a/arch/mips/configs/ath79_defconfig
+++ b/arch/mips/configs/ath79_defconfig
@@ -23,7 +23,6 @@ CONFIG_PCI=y
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
 # CONFIG_BLK_DEV_BSG is not set
-# CONFIG_IOSCHED_CFQ is not set
 CONFIG_NET=y
 CONFIG_PACKET=y
 CONFIG_UNIX=y
diff --git a/arch/mips/configs/bcm63xx_defconfig b/arch/mips/configs/bcm63xx_defconfig
index 54e2f9a659fb..861f680184b9 100644
--- a/arch/mips/configs/bcm63xx_defconfig
+++ b/arch/mips/configs/bcm63xx_defconfig
@@ -21,8 +21,6 @@ CONFIG_PCI=y
 CONFIG_PCCARD=y
 CONFIG_PCMCIA_BCM63XX=y
 # CONFIG_BLK_DEV_BSG is not set
-# CONFIG_IOSCHED_DEADLINE is not set
-# CONFIG_IOSCHED_CFQ is not set
 CONFIG_NET=y
 CONFIG_UNIX=y
 CONFIG_INET=y
diff --git a/arch/mips/configs/bmips_be_defconfig b/arch/mips/configs/bmips_be_defconfig
index f669a40e085b..032bb51defe8 100644
--- a/arch/mips/configs/bmips_be_defconfig
+++ b/arch/mips/configs/bmips_be_defconfig
@@ -12,8 +12,6 @@ CONFIG_NR_CPUS=4
 # CONFIG_SECCOMP is not set
 CONFIG_MIPS_O32_FP64_SUPPORT=y
 # CONFIG_BLK_DEV_BSG is not set
-# CONFIG_IOSCHED_DEADLINE is not set
-# CONFIG_IOSCHED_CFQ is not set
 CONFIG_NET=y
 CONFIG_PACKET=y
 CONFIG_PACKET_DIAG=y
diff --git a/arch/mips/configs/bmips_stb_defconfig b/arch/mips/configs/bmips_stb_defconfig
index a0b775893dba..625bd2d7e685 100644
--- a/arch/mips/configs/bmips_stb_defconfig
+++ b/arch/mips/configs/bmips_stb_defconfig
@@ -21,8 +21,6 @@ CONFIG_CPU_FREQ_GOV_CONSERVATIVE=y
 CONFIG_CPU_FREQ_GOV_SCHEDUTIL=y
 CONFIG_BMIPS_CPUFREQ=y
 # CONFIG_BLK_DEV_BSG is not set
-# CONFIG_IOSCHED_DEADLINE is not set
-# CONFIG_IOSCHED_CFQ is not set
 CONFIG_NET=y
 CONFIG_PACKET=y
 CONFIG_PACKET_DIAG=y
diff --git a/arch/mips/configs/db1xxx_defconfig b/arch/mips/configs/db1xxx_defconfig
index bc9b6ae046b2..e6f3e8e3da39 100644
--- a/arch/mips/configs/db1xxx_defconfig
+++ b/arch/mips/configs/db1xxx_defconfig
@@ -28,7 +28,6 @@ CONFIG_PCMCIA_ALCHEMY_DEVBOARD=y
 CONFIG_FIRMWARE_MEMMAP=y
 CONFIG_BLK_DEV_BSGLIB=y
 CONFIG_PARTITION_ADVANCED=y
-CONFIG_DEFAULT_NOOP=y
 CONFIG_CMA=y
 CONFIG_CMA_DEBUG=y
 CONFIG_NET=y
diff --git a/arch/mips/configs/generic/board-ni169445.config b/arch/mips/configs/generic/board-ni169445.config
index 1ed0d3e8715e..fc3580e4e6bc 100644
--- a/arch/mips/configs/generic/board-ni169445.config
+++ b/arch/mips/configs/generic/board-ni169445.config
@@ -19,7 +19,6 @@ CONFIG_MTD_NAND_ECC_SW_HAMMING=y
 CONFIG_MTD_NAND_ECC_SW_BCH=y
 CONFIG_MTD_RAW_NAND=y
 CONFIG_MTD_NAND_GPIO=y
-CONFIG_MTD_NAND_IDS=y
 
 CONFIG_MTD_UBI=y
 CONFIG_MTD_UBI_BLOCK=y
diff --git a/arch/mips/configs/lasat_defconfig b/arch/mips/configs/lasat_defconfig
index c66ca3785655..00cf461db971 100644
--- a/arch/mips/configs/lasat_defconfig
+++ b/arch/mips/configs/lasat_defconfig
@@ -16,8 +16,6 @@ CONFIG_HZ_1000=y
 # CONFIG_SECCOMP is not set
 CONFIG_PCI=y
 # CONFIG_BLK_DEV_BSG is not set
-# CONFIG_IOSCHED_DEADLINE is not set
-# CONFIG_IOSCHED_CFQ is not set
 CONFIG_NET=y
 CONFIG_PACKET=y
 CONFIG_UNIX=y
diff --git a/arch/mips/configs/lemote2f_defconfig b/arch/mips/configs/lemote2f_defconfig
index f9f93427c9bd..8254d7d1396f 100644
--- a/arch/mips/configs/lemote2f_defconfig
+++ b/arch/mips/configs/lemote2f_defconfig
@@ -26,7 +26,7 @@ CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
 CONFIG_MODVERSIONS=y
 CONFIG_BLK_DEV_INTEGRITY=y
-CONFIG_IOSCHED_DEADLINE=m
+CONFIG_MQ_IOSCHED_DEADLINE=m
 CONFIG_BINFMT_MISC=m
 CONFIG_NET=y
 CONFIG_PACKET=y
diff --git a/arch/mips/configs/loongson3_defconfig b/arch/mips/configs/loongson3_defconfig
index 360c6b2d397a..51675f5000d6 100644
--- a/arch/mips/configs/loongson3_defconfig
+++ b/arch/mips/configs/loongson3_defconfig
@@ -38,8 +38,9 @@ CONFIG_MODULE_UNLOAD=y
 CONFIG_MODULE_FORCE_UNLOAD=y
 CONFIG_MODVERSIONS=y
 CONFIG_PARTITION_ADVANCED=y
-CONFIG_IOSCHED_DEADLINE=m
-CONFIG_CFQ_GROUP_IOSCHED=y
+CONFIG_MQ_IOSCHED_DEADLINE=m
+CONFIG_IOSCHED_BFQ=y
+CONFIG_BFQ_GROUP_IOSCHED=y
 CONFIG_BINFMT_MISC=m
 CONFIG_KSM=y
 CONFIG_NET=y
diff --git a/arch/mips/configs/msp71xx_defconfig b/arch/mips/configs/msp71xx_defconfig
index 0fdc03fda12e..6ad1a2381226 100644
--- a/arch/mips/configs/msp71xx_defconfig
+++ b/arch/mips/configs/msp71xx_defconfig
@@ -14,8 +14,6 @@ CONFIG_PCI=y
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
 CONFIG_MODVERSIONS=y
-# CONFIG_IOSCHED_DEADLINE is not set
-# CONFIG_IOSCHED_CFQ is not set
 CONFIG_NET=y
 CONFIG_UNIX=y
 CONFIG_XFRM_USER=y
diff --git a/arch/mips/configs/pnx8335_stb225_defconfig b/arch/mips/configs/pnx8335_stb225_defconfig
index 738ba3b1374b..d06db6b87959 100644
--- a/arch/mips/configs/pnx8335_stb225_defconfig
+++ b/arch/mips/configs/pnx8335_stb225_defconfig
@@ -14,8 +14,6 @@ CONFIG_HZ_128=y
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
 # CONFIG_BLK_DEV_BSG is not set
-# CONFIG_IOSCHED_DEADLINE is not set
-# CONFIG_IOSCHED_CFQ is not set
 CONFIG_NET=y
 CONFIG_PACKET=y
 CONFIG_UNIX=y
diff --git a/arch/mips/configs/rb532_defconfig b/arch/mips/configs/rb532_defconfig
index 5b947183852b..252d472387aa 100644
--- a/arch/mips/configs/rb532_defconfig
+++ b/arch/mips/configs/rb532_defconfig
@@ -23,7 +23,6 @@ CONFIG_MODULE_UNLOAD=y
 CONFIG_PARTITION_ADVANCED=y
 CONFIG_MAC_PARTITION=y
 CONFIG_BSD_DISKLABEL=y
-# CONFIG_IOSCHED_CFQ is not set
 CONFIG_NET=y
 CONFIG_PACKET=y
 CONFIG_UNIX=y
diff --git a/arch/mips/configs/rt305x_defconfig b/arch/mips/configs/rt305x_defconfig
index 110948bc6b39..8c2ead53007a 100644
--- a/arch/mips/configs/rt305x_defconfig
+++ b/arch/mips/configs/rt305x_defconfig
@@ -21,7 +21,6 @@ CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
 # CONFIG_BLK_DEV_BSG is not set
 CONFIG_PARTITION_ADVANCED=y
-# CONFIG_IOSCHED_CFQ is not set
 # CONFIG_COREDUMP is not set
 # CONFIG_COMPACTION is not set
 CONFIG_NET=y
diff --git a/arch/mips/configs/xway_defconfig b/arch/mips/configs/xway_defconfig
index 49b5ea6eff62..9abbc0debc2a 100644
--- a/arch/mips/configs/xway_defconfig
+++ b/arch/mips/configs/xway_defconfig
@@ -23,7 +23,6 @@ CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
 # CONFIG_BLK_DEV_BSG is not set
 CONFIG_PARTITION_ADVANCED=y
-# CONFIG_IOSCHED_CFQ is not set
 # CONFIG_COREDUMP is not set
 # CONFIG_COMPACTION is not set
 CONFIG_NET=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
