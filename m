Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7AC8EEAC3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 22:10:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QvCkEQG8ERaJX8gqt1UwQVTR0tDdZTcgNEAKY2HsjmE=; b=m7JKBeQ4rRruiR
	crJ1JheIAuTafNQorvkVJzxJW899nwo8fE7UqzoYQ2QwzbxFLJ8k4SWV7wkP6jocQYu1tKY3en69b
	vYi86UpF30/n+2kh9GH4Q6fBr4WEHCqRMAR90FP1Qu8nICiMqztkhObCAzAXIUyfEpQavO1NMy5/c
	hApmrG8+TtoCLQq5ui8U5GudlHETUaJQRi0z/DTYHq6gHPkEbmQBT25/Ckz52YTBOIbN61KDPOqxh
	H4kVPGw93Zg9uIdt4nZCItosrsToTd/+JYe2B2ghBENRSa2WpqFW9QvYjtV5QVbL11YEDoi1BsQgA
	v/iv3Nqy1ByFOJeiregQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRjcJ-0004Ky-M0; Mon, 04 Nov 2019 21:10:27 +0000
Received: from mail.z3ntu.xyz ([128.199.32.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRjbt-0002wH-AM
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 21:10:04 +0000
Received: from localhost.localdomain (80-110-127-196.cgn.dynamic.surfer.at
 [80.110.127.196])
 by mail.z3ntu.xyz (Postfix) with ESMTPSA id 834C3C5B23;
 Mon,  4 Nov 2019 21:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=z3ntu.xyz; s=z3ntu;
 t=1572901796; bh=X7KfnX/lprvOh4vju0aGg+UDLNblv8w6QZlnFOibC4U=;
 h=From:To:Cc:Subject:Date;
 b=c7GMwmxlAq2ZdxtnTqMeUJjRqhH9srvarMl/YqhYZISdTNWu/oHQ0x3uRLe39+Gx3
 FojDkzFI3LHfSdeHuolB48PCOPHl93x79nVWaxlI+bXRP+FkJw2FCSeNcz80ujQVfN
 9yA77x/Qn6MAwQxPiYtJeuPrL+pGK7fBiFtutVHY=
From: Luca Weiss <luca@z3ntu.xyz>
To: linux-arm-msm@vger.kernel.org
Subject: [PATCH 1/2] ARM: qcom_defconfig: Regenerate
Date: Mon,  4 Nov 2019 22:09:40 +0100
Message-Id: <20191104210943.101393-1-luca@z3ntu.xyz>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_131002_190173_77958F5D 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.5 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.5 FROM_SUSPICIOUS_NTLD   From abused NTLD
 2.0 FROM_SUSPICIOUS_NTLD_FP From abused NTLD
 1.2 UPPERCASE_75_100       message body is 75-100% uppercase
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
Cc: linux-kernel@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Luca Weiss <luca@z3ntu.xyz>,
 Jordan Crouse <jcrouse@codeaurora.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, Brian Masney <masneyb@onstation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Several options were dropped a while ago and the options QCOM_ADSP_PIL
and QCOM_Q6V5_PIL have been renamed.

Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
---
 arch/arm/configs/qcom_defconfig | 45 ++++++++++++---------------------
 1 file changed, 16 insertions(+), 29 deletions(-)

diff --git a/arch/arm/configs/qcom_defconfig b/arch/arm/configs/qcom_defconfig
index 9792dd0aae0c..94d5e1a8c61a 100644
--- a/arch/arm/configs/qcom_defconfig
+++ b/arch/arm/configs/qcom_defconfig
@@ -1,6 +1,7 @@
 CONFIG_SYSVIPC=y
 CONFIG_NO_HZ=y
 CONFIG_HIGH_RES_TIMERS=y
+CONFIG_PREEMPT=y
 CONFIG_IKCONFIG=y
 CONFIG_IKCONFIG_PROC=y
 CONFIG_CGROUPS=y
@@ -11,32 +12,28 @@ CONFIG_EMBEDDED=y
 # CONFIG_SLUB_DEBUG is not set
 # CONFIG_COMPAT_BRK is not set
 CONFIG_PROFILING=y
-CONFIG_OPROFILE=y
-CONFIG_KPROBES=y
-CONFIG_MODULES=y
-CONFIG_MODULE_UNLOAD=y
-CONFIG_MODULE_FORCE_UNLOAD=y
-CONFIG_MODVERSIONS=y
-CONFIG_PARTITION_ADVANCED=y
 CONFIG_ARCH_QCOM=y
 CONFIG_ARCH_MSM8X60=y
 CONFIG_ARCH_MSM8960=y
 CONFIG_ARCH_MSM8974=y
 CONFIG_ARCH_MDM9615=y
-CONFIG_PCI=y
-CONFIG_PCI_MSI=y
-CONFIG_PCIE_QCOM=y
 CONFIG_SMP=y
-CONFIG_PREEMPT=y
 CONFIG_HIGHMEM=y
-CONFIG_CLEANCACHE=y
 CONFIG_ARM_APPENDED_DTB=y
 CONFIG_ARM_ATAG_DTB_COMPAT=y
 CONFIG_CPU_IDLE=y
 CONFIG_ARM_CPUIDLE=y
 CONFIG_VFP=y
 CONFIG_NEON=y
+CONFIG_OPROFILE=y
+CONFIG_KPROBES=y
+CONFIG_MODULES=y
+CONFIG_MODULE_UNLOAD=y
+CONFIG_MODULE_FORCE_UNLOAD=y
+CONFIG_MODVERSIONS=y
+CONFIG_PARTITION_ADVANCED=y
 # CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS is not set
+CONFIG_CLEANCACHE=y
 CONFIG_CMA=y
 CONFIG_NET=y
 CONFIG_PACKET=y
@@ -47,18 +44,17 @@ CONFIG_IP_MULTIPLE_TABLES=y
 CONFIG_IP_ROUTE_VERBOSE=y
 CONFIG_IP_PNP=y
 CONFIG_IP_PNP_DHCP=y
-# CONFIG_INET_XFRM_MODE_TRANSPORT is not set
-# CONFIG_INET_XFRM_MODE_TUNNEL is not set
-# CONFIG_INET_XFRM_MODE_BEET is not set
 # CONFIG_IPV6 is not set
 CONFIG_CFG80211=m
 CONFIG_MAC80211=m
 CONFIG_RFKILL=y
+CONFIG_PCI=y
+CONFIG_PCI_MSI=y
+CONFIG_PCIE_QCOM=y
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_MTD=y
 CONFIG_MTD_BLOCK=y
-CONFIG_MTD_M25P80=y
 CONFIG_MTD_RAW_NAND=y
 CONFIG_MTD_NAND_QCOM=y
 CONFIG_MTD_SPI_NOR=y
@@ -113,7 +109,6 @@ CONFIG_SERIO_LIBPS2=y
 CONFIG_SERIAL_MSM=y
 CONFIG_SERIAL_MSM_CONSOLE=y
 CONFIG_HW_RANDOM=y
-CONFIG_I2C=y
 CONFIG_I2C_CHARDEV=y
 CONFIG_I2C_QUP=y
 CONFIG_SPI=y
@@ -140,7 +135,6 @@ CONFIG_QCOM_TSENS=y
 CONFIG_MFD_PM8XXX=y
 CONFIG_MFD_QCOM_RPM=y
 CONFIG_MFD_SPMI_PMIC=y
-CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED_VOLTAGE=y
 CONFIG_REGULATOR_QCOM_RPM=y
 CONFIG_REGULATOR_QCOM_SMD_RPM=y
@@ -149,13 +143,11 @@ CONFIG_MEDIA_SUPPORT=y
 CONFIG_DRM=y
 CONFIG_DRM_MSM=m
 CONFIG_DRM_PANEL_SIMPLE=y
-CONFIG_FB=y
-CONFIG_FRAMEBUFFER_CONSOLE=y
-# CONFIG_LCD_CLASS_DEVICE is not set
 CONFIG_BACKLIGHT_CLASS_DEVICE=y
 # CONFIG_BACKLIGHT_GENERIC is not set
 CONFIG_BACKLIGHT_LM3630A=y
 CONFIG_BACKLIGHT_LP855X=y
+CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_SOUND=y
 CONFIG_SND=y
 CONFIG_SND_DYNAMIC_MINORS=y
@@ -169,15 +161,12 @@ CONFIG_USB_ANNOUNCE_NEW_DEVICES=y
 CONFIG_USB_OTG=y
 CONFIG_USB_MON=y
 CONFIG_USB_EHCI_HCD=y
-CONFIG_USB_EHCI_MSM=y
 CONFIG_USB_ACM=y
 CONFIG_USB_CHIPIDEA=y
 CONFIG_USB_CHIPIDEA_UDC=y
 CONFIG_USB_CHIPIDEA_HOST=y
-CONFIG_USB_CHIPIDEA_ULPI=y
 CONFIG_USB_SERIAL=y
 CONFIG_USB_HSIC_USB4604=y
-CONFIG_USB_MSM_OTG=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DEBUG_FILES=y
 CONFIG_USB_GADGET_VBUS_DRAW=500
@@ -185,7 +174,6 @@ CONFIG_USB_CONFIGFS=y
 CONFIG_USB_CONFIGFS_NCM=y
 CONFIG_USB_CONFIGFS_ECM=y
 CONFIG_USB_CONFIGFS_F_FS=y
-CONFIG_USB_ULPI_BUS=y
 CONFIG_USB_ETH=m
 CONFIG_MMC=y
 CONFIG_MMC_BLOCK_MINORS=32
@@ -215,13 +203,13 @@ CONFIG_MSM_LCC_8960=y
 CONFIG_MDM_LCC_9615=y
 CONFIG_MSM_MMCC_8960=y
 CONFIG_MSM_MMCC_8974=y
-CONFIG_MSM_IOMMU=y
 CONFIG_HWSPINLOCK=y
 CONFIG_HWSPINLOCK_QCOM=y
 CONFIG_MAILBOX=y
+CONFIG_MSM_IOMMU=y
 CONFIG_REMOTEPROC=y
-CONFIG_QCOM_ADSP_PIL=y
-CONFIG_QCOM_Q6V5_PIL=y
+CONFIG_QCOM_Q6V5_MSS=y
+CONFIG_QCOM_Q6V5_PAS=y
 CONFIG_QCOM_WCNSS_PIL=y
 CONFIG_RPMSG_CHAR=y
 CONFIG_RPMSG_QCOM_SMD=y
@@ -257,7 +245,6 @@ CONFIG_EXT2_FS_XATTR=y
 CONFIG_EXT3_FS=y
 CONFIG_FUSE_FS=y
 CONFIG_VFAT_FS=y
-CONFIG_TMPFS=y
 CONFIG_JFFS2_FS=y
 CONFIG_NFS_FS=y
 CONFIG_NFS_V3_ACL=y
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
