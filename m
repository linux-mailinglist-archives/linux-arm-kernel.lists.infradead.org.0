Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 836C11C2900
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 01:41:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xSYcvON9kDH0lO5iRhskJZ97oT2Eg1kVNWFxDzX0Hv8=; b=u6YYAa3yBFe3tI
	v5G9HXwVhyk07MiOZb7Xw605mYh2Z0DoFMq7jLXcf3MCoZYaMD8SrlECPBNUWzHqK59Lo42CuVKnC
	7gpPXv9890IZLBm0t3HZApkX0L6qjDXFVG/m1socKGa45zLQrzTfRGoJOPuzGRYHG4K418WeQyDHv
	crJgxhDjSOcsp0/g6tNnZi6tBMDy6TdEs3uXxmxVqf+rU1rJrNX5/ZAoSoGIsskZMCRoLYXioQWSN
	0OnWjXyeVEdnNk3xggbAr2D4aLrVHQFe5TXwabp/QJ9F2BY4jKwK1qUgU2XsGLGdngN9n5nY2/Y5y
	mkzhbKAkPaJ+XU0m1EJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jV1kt-0004GO-Je; Sat, 02 May 2020 23:41:11 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jV1ko-0004FY-2u
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 23:41:08 +0000
Received: by mail-pj1-x1041.google.com with SMTP id h12so5562334pjz.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 May 2020 16:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daemons-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=88CioqogjozhrvM+FgYqeMoRRnrnMImszAopGFsVAys=;
 b=Nr85iyQxiiny4w6xvv3lerI8RZPub/UMX2jPXEulRLgSFwAejaZt+usqukZ+S3pt+/
 BxU/qPf/VT8zBfx0ecmwBVPgmi26hHNu4aGoQM8jSOjO3p1uXC8m8oM8XbUGASq+ubCU
 EVo/N0oMVgjLjgGBUR6aXvR6BFEk4T6f7QuLacg6bqK8Uxe00j4g7dSkrHgRXNplsUnS
 rAUP2ewTiIiiJNGiysovWAhPuvICRgYnOaCcSbo8MARarz6w5dTlmH3JG/cUxDKENoBY
 0PRxomvvFE/vrQfSEgRbjCxtyp0drQqVOB/p+nCBwFMChZiIVBzFUQvNRw4GjL/BEYbv
 2UjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=88CioqogjozhrvM+FgYqeMoRRnrnMImszAopGFsVAys=;
 b=PPnFvJHDta94D6O2NA7OT9WXway8LfPhBdKUYD/F4cEvMnWxb+KEczCC4/zXqQObqB
 3i8IlgEitiugnhnI6AC7D+0QqmHSjfrR6aw/DDVKnuevaGboJXlFJlLfhQ5EQ6NPJjds
 Xm/rj/G9JXnRuIXMab6+J3n3eUvpGTEBFKrKE31vJ67pSTcvLPEO84ugTPwJH2hs9YPw
 Mpp8YaCXFGMTZfKj+TKQ90XUhFKHknySxB2IGEKR3dIsvapSphkDF0he9Aq5e6saVQGm
 FdHlBs9eRaM/ppjS74C43jNjqiANnJuCE/COsIgZqs6jECLoUebzcahl7v/lSeHqdcav
 kPXg==
X-Gm-Message-State: AGi0PuYzoSmwIq/uNBlqJ33ArRtBm9HLYTVuHMc7HFqyB3YS9ft3lcyq
 KpwPA/yZ5NIvcwD8aHkTqbq/
X-Google-Smtp-Source: APiQypKFdqH3lf3OhvUb9swHTEUhh1wXXAGCTFhy1/iGbhsmjjb/cnL24HjszHK5V24PxlbqG5NB0g==
X-Received: by 2002:a17:90a:e00c:: with SMTP id
 u12mr8155035pjy.167.1588462864620; 
 Sat, 02 May 2020 16:41:04 -0700 (PDT)
Received: from localhost.localdomain ([47.156.151.166])
 by smtp.googlemail.com with ESMTPSA id u5sm4831278pgi.70.2020.05.02.16.41.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 May 2020 16:41:03 -0700 (PDT)
From: Clay McClure <clay@daemons.net>
To: 
Subject: [PATCH] net: ethernet: ti: Remove TI_CPTS_MOD workaround
Date: Sat,  2 May 2020 16:39:04 -0700
Message-Id: <20200502233910.20851-1-clay@daemons.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_164106_201774_DCC5BB87 
X-CRM114-Status: GOOD (  20.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Tony Lindgren <tony@atomide.com>, linux-kernel@vger.kernel.org,
 Andi Kleen <ak@linux.intel.com>, kbuild test robot <lkp@intel.com>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Murali Karicheri <m-karicheri2@ti.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Wingman Kwok <w-kwok2@ti.com>, Richard Cochran <richardcochran@gmail.com>,
 Clay McClure <clay@daemons.net>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, "Eric W. Biederman" <ebiederm@xmission.com>,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

My recent commit b6d49cab44b5 ("net: Make PTP-specific drivers depend on PTP_1588_CLOCK")
exposes a missing dependency in defconfigs that select TI_CPTS without
selecting PTP_1588_CLOCK, leading to linker errors of the form:

drivers/net/ethernet/ti/cpsw.o: in function `cpsw_ndo_stop':
cpsw.c:(.text+0x680): undefined reference to `cpts_unregister'
drivers/net/ethernet/ti/cpsw.o: in function `cpsw_remove':
cpsw.c:(.text+0x81c): undefined reference to `cpts_release'
drivers/net/ethernet/ti/cpsw.o: in function `cpsw_rx_handler':
cpsw.c:(.text+0x1324): undefined reference to `cpts_rx_timestamp'
drivers/net/ethernet/ti/cpsw.o: in function `cpsw_ndo_open':
cpsw.c:(.text+0x15ec): undefined reference to `cpts_register'
drivers/net/ethernet/ti/cpsw.o: in function `cpsw_probe':
cpsw.c:(.text+0x2468): undefined reference to `cpts_release'

That's because TI_CPTS_MOD (which is the symbol gating the _compilation_
of cpts.c) now depends on PTP_1588_CLOCK, and so is not enabled in these
configurations, but TI_CPTS (which is the symbol gating _calls_ to the
cpts functions) _is_ enabled. So we end up compiling calls to functions
that don't exist, resulting in the linker errors.

The reason we have two symbols (TI_CPTS and TI_CPTS_MOD) for the same
driver is due to commit be9ca0d33c85 ("cpsw/netcp: work around reverse
cpts dependency"), which introduced TI_CPTS_MOD because (quoting the
commit message):

> The dependency is reversed: cpsw and netcp call into cpts,
> but cpts depends on the other two in Kconfig. This can lead
> to cpts being a loadable module and its callers built-in:
>
> drivers/net/ethernet/ti/cpsw.o: In function `cpsw_remove':
> cpsw.c:(.text.cpsw_remove+0xd0): undefined reference to `cpts_release'
> drivers/net/ethernet/ti/cpsw.o: In function `cpsw_rx_handler':
> cpsw.c:(.text.cpsw_rx_handler+0x2dc): undefined reference to `cpts_rx_timestamp'
> drivers/net/ethernet/ti/cpsw.o: In function `cpsw_tx_handler':
> cpsw.c:(.text.cpsw_tx_handler+0x7c): undefined reference to `cpts_tx_timestamp'
> drivers/net/ethernet/ti/cpsw.o: In function `cpsw_ndo_stop':

Both forms of linker error -- those caused by defconfigs that select
TI_CPTS without PTP_1588_CLOCK and those caused by configuring TI_CPSW
as a built-in and TI_CPTS as a module -- can be avoided by using the
IS_REACHABLE() macro to gate calls to cpts functions, and using the
TI_CPTS symbol to gate compilation of cpts.c. cpts.h already provides
the no-op stub implementations of the cpts functions required to make
this work, we just need to change the existing IS_ENABLED(TI_CPTS)
guards to IS_REACHABLE(TI_CPTS).

With this change there is no longer any need for the TI_CPTS_MOD symbol,
so we can remove it.

To preserve the existing behavior of defconfigs that select TI_CPTS, we
must also select PTP_1588_CLOCK so that the dependency is satisfied.
omap2plus_defconfig and keystone_defconfig have not been updated in a
while, so some unrelated no-op changes appear in the diff.

Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Grygorii Strashko <grygorii.strashko@ti.com>
Fixes: b6d49cab44b5 ("net: Make PTP-specific drivers depend on PTP_1588_CLOCK")
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Clay McClure <clay@daemons.net>
---
 arch/arm/configs/keystone_defconfig    | 72 ++++++++++++--------------
 arch/arm/configs/omap2plus_defconfig   |  3 +-
 drivers/net/ethernet/ti/Kconfig        | 13 ++---
 drivers/net/ethernet/ti/Makefile       |  2 +-
 drivers/net/ethernet/ti/cpsw_ethtool.c |  2 +-
 drivers/net/ethernet/ti/cpts.h         |  3 +-
 drivers/net/ethernet/ti/netcp_ethss.c  | 10 ++--
 7 files changed, 45 insertions(+), 60 deletions(-)

diff --git a/arch/arm/configs/keystone_defconfig b/arch/arm/configs/keystone_defconfig
index 11e2211f9007..a66c37efa15b 100644
--- a/arch/arm/configs/keystone_defconfig
+++ b/arch/arm/configs/keystone_defconfig
@@ -1,44 +1,41 @@
 # CONFIG_SWAP is not set
 CONFIG_POSIX_MQUEUE=y
 CONFIG_HIGH_RES_TIMERS=y
+CONFIG_PREEMPT=y
 CONFIG_IKCONFIG=y
 CONFIG_IKCONFIG_PROC=y
 CONFIG_LOG_BUF_SHIFT=14
 CONFIG_CGROUPS=y
+CONFIG_BLK_CGROUP=y
+CONFIG_CGROUP_SCHED=y
 CONFIG_CGROUP_FREEZER=y
 CONFIG_CGROUP_DEVICE=y
 CONFIG_CGROUP_CPUACCT=y
-CONFIG_CGROUP_SCHED=y
-CONFIG_BLK_CGROUP=y
 CONFIG_BLK_DEV_INITRD=y
-CONFIG_KALLSYMS_ALL=y
 # CONFIG_ELF_CORE is not set
 # CONFIG_BASE_FULL is not set
+CONFIG_KALLSYMS_ALL=y
 CONFIG_EMBEDDED=y
 CONFIG_PROFILING=y
-CONFIG_OPROFILE=y
-CONFIG_KPROBES=y
-CONFIG_MODULES=y
-CONFIG_MODULE_FORCE_LOAD=y
-CONFIG_MODULE_UNLOAD=y
-CONFIG_MODULE_FORCE_UNLOAD=y
-CONFIG_MODVERSIONS=y
 CONFIG_ARCH_KEYSTONE=y
 CONFIG_ARM_LPAE=y
-CONFIG_PCI=y
-CONFIG_PCI_MSI=y
-CONFIG_PCI_KEYSTONE=y
 CONFIG_SMP=y
 CONFIG_HOTPLUG_CPU=y
 CONFIG_ARM_PSCI=y
-CONFIG_PREEMPT=y
-CONFIG_AEABI=y
 CONFIG_HIGHMEM=y
-CONFIG_CMA=y
 CONFIG_VFP=y
 CONFIG_NEON=y
 # CONFIG_SUSPEND is not set
 CONFIG_PM=y
+CONFIG_TI_SCI_PROTOCOL=y
+CONFIG_OPROFILE=y
+CONFIG_KPROBES=y
+CONFIG_MODULES=y
+CONFIG_MODULE_FORCE_LOAD=y
+CONFIG_MODULE_UNLOAD=y
+CONFIG_MODULE_FORCE_UNLOAD=y
+CONFIG_MODVERSIONS=y
+CONFIG_CMA=y
 CONFIG_NET=y
 CONFIG_PACKET=y
 CONFIG_UNIX=y
@@ -65,9 +62,6 @@ CONFIG_IP_MROUTE_MULTIPLE_TABLES=y
 CONFIG_IP_PIMSM_V2=y
 CONFIG_INET_AH=y
 CONFIG_INET_IPCOMP=y
-CONFIG_INET6_XFRM_MODE_TRANSPORT=m
-CONFIG_INET6_XFRM_MODE_TUNNEL=m
-CONFIG_INET6_XFRM_MODE_BEET=m
 CONFIG_IPV6_SIT=m
 CONFIG_IPV6_MULTIPLE_TABLES=y
 CONFIG_IPV6_SUBTREES=y
@@ -93,7 +87,6 @@ CONFIG_NETFILTER_XT_MATCH_MARK=y
 CONFIG_NETFILTER_XT_MATCH_MULTIPORT=y
 CONFIG_NETFILTER_XT_MATCH_PKTTYPE=y
 CONFIG_NETFILTER_XT_MATCH_STATE=y
-CONFIG_NF_CONNTRACK_IPV4=y
 CONFIG_IP_NF_IPTABLES=y
 CONFIG_IP_NF_MATCH_AH=y
 CONFIG_IP_NF_MATCH_ECN=y
@@ -114,17 +107,18 @@ CONFIG_VLAN_8021Q=y
 CONFIG_CAN=m
 CONFIG_CAN_C_CAN=m
 CONFIG_CAN_C_CAN_PLATFORM=m
+CONFIG_PCI=y
+CONFIG_PCI_MSI=y
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
-CONFIG_DMA_CMA=y
 CONFIG_MTD=y
 CONFIG_MTD_CMDLINE_PARTS=y
 CONFIG_MTD_BLOCK=y
 CONFIG_MTD_PLATRAM=y
-CONFIG_MTD_M25P80=y
 CONFIG_MTD_RAW_NAND=y
 CONFIG_MTD_NAND_DAVINCI=y
 CONFIG_MTD_SPI_NOR=y
+CONFIG_SPI_CADENCE_QUADSPI=y
 CONFIG_MTD_UBI=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_SRAM=y
@@ -134,8 +128,12 @@ CONFIG_BLK_DEV_SD=y
 CONFIG_NETDEVICES=y
 CONFIG_TI_KEYSTONE_NETCP=y
 CONFIG_TI_KEYSTONE_NETCP_ETHSS=y
-CONFIG_TI_CPTS=y
+CONFIG_DP83867_PHY=y
 CONFIG_MARVELL_PHY=y
+CONFIG_MICREL_PHY=y
+CONFIG_INPUT_EVDEV=m
+CONFIG_INPUT_MISC=y
+CONFIG_INPUT_GPIO_DECODER=m
 CONFIG_SERIAL_8250=y
 CONFIG_SERIAL_8250_CONSOLE=y
 CONFIG_SERIAL_OF_PLATFORM=y
@@ -147,14 +145,16 @@ CONFIG_I2C_DAVINCI=y
 CONFIG_SPI=y
 CONFIG_SPI_DAVINCI=y
 CONFIG_SPI_SPIDEV=y
+CONFIG_PTP_1588_CLOCK=y
 CONFIG_PINCTRL_SINGLE=y
 CONFIG_GPIOLIB=y
 CONFIG_GPIO_SYSFS=y
 CONFIG_GPIO_DAVINCI=y
 CONFIG_GPIO_SYSCON=y
-CONFIG_POWER_SUPPLY=y
+CONFIG_GPIO_PCA953X=m
 CONFIG_POWER_RESET=y
 CONFIG_POWER_RESET_KEYSTONE=y
+CONFIG_POWER_SUPPLY=y
 # CONFIG_HWMON is not set
 CONFIG_WATCHDOG=y
 CONFIG_DAVINCI_WATCHDOG=y
@@ -166,8 +166,8 @@ CONFIG_USB_MON=y
 CONFIG_USB_XHCI_HCD=y
 CONFIG_USB_STORAGE=y
 CONFIG_USB_DWC3=y
-CONFIG_NOP_USB_XCEIV=y
 CONFIG_KEYSTONE_USB_PHY=y
+CONFIG_NOP_USB_XCEIV=y
 CONFIG_MMC=y
 CONFIG_MMC_SDHCI=y
 CONFIG_MMC_SDHCI_PLTFM=y
@@ -180,9 +180,10 @@ CONFIG_LEDS_TRIGGERS=y
 CONFIG_LEDS_TRIGGER_ONESHOT=y
 CONFIG_LEDS_TRIGGER_HEARTBEAT=y
 CONFIG_LEDS_TRIGGER_BACKLIGHT=y
+CONFIG_LEDS_TRIGGER_CPU=y
+CONFIG_LEDS_TRIGGER_ACTIVITY=y
 CONFIG_LEDS_TRIGGER_GPIO=y
 CONFIG_DMADEVICES=y
-CONFIG_TI_EDMA=y
 CONFIG_MAILBOX=y
 CONFIG_TI_MESSAGE_MANAGER=y
 CONFIG_SOC_TI=y
@@ -196,7 +197,6 @@ CONFIG_PWM_TIECAP=m
 CONFIG_KEYSTONE_IRQ=y
 CONFIG_RESET_TI_SCI=m
 CONFIG_RESET_TI_SYSCON=m
-CONFIG_TI_SCI_PROTOCOL=y
 CONFIG_EXT4_FS=y
 CONFIG_EXT4_FS_POSIX_ACL=y
 CONFIG_FANOTIFY=y
@@ -217,10 +217,6 @@ CONFIG_NFSD_V3=y
 CONFIG_NFSD_V3_ACL=y
 CONFIG_NLS_CODEPAGE_437=y
 CONFIG_NLS_ISO8859_1=y
-CONFIG_PRINTK_TIME=y
-CONFIG_DEBUG_INFO=y
-CONFIG_DEBUG_SHIRQ=y
-CONFIG_DEBUG_USER=y
 CONFIG_CRYPTO_USER=y
 CONFIG_CRYPTO_AUTHENC=y
 CONFIG_CRYPTO_CBC=y
@@ -230,12 +226,8 @@ CONFIG_CRYPTO_DES=y
 CONFIG_CRYPTO_ANSI_CPRNG=y
 CONFIG_CRYPTO_USER_API_HASH=y
 CONFIG_CRYPTO_USER_API_SKCIPHER=y
-CONFIG_SPI_CADENCE_QUADSPI=y
-CONFIG_INPUT_MISC=y
-CONFIG_INPUT_EVDEV=m
-CONFIG_INPUT_GPIO_DECODER=m
-CONFIG_GPIO_PCA953X=m
-CONFIG_LEDS_TRIGGER_ACTIVITY=y
-CONFIG_LEDS_TRIGGER_CPU=y
-CONFIG_MICREL_PHY=y
-CONFIG_DP83867_PHY=y
+CONFIG_DMA_CMA=y
+CONFIG_PRINTK_TIME=y
+CONFIG_DEBUG_INFO=y
+CONFIG_DEBUG_SHIRQ=y
+CONFIG_DEBUG_USER=y
diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
index 3cc3ca5fa027..e00f0d871c53 100644
--- a/arch/arm/configs/omap2plus_defconfig
+++ b/arch/arm/configs/omap2plus_defconfig
@@ -57,7 +57,6 @@ CONFIG_CPUFREQ_DT=m
 CONFIG_ARM_TI_CPUFREQ=y
 CONFIG_CPU_IDLE=y
 CONFIG_ARM_CPUIDLE=y
-CONFIG_DT_IDLE_STATES=y
 CONFIG_KERNEL_MODE_NEON=y
 CONFIG_PM_DEBUG=y
 CONFIG_ARM_CRYPTO=y
@@ -189,7 +188,6 @@ CONFIG_SMSC911X=y
 CONFIG_TI_DAVINCI_EMAC=y
 CONFIG_TI_CPSW=y
 CONFIG_TI_CPSW_SWITCHDEV=y
-CONFIG_TI_CPTS=y
 # CONFIG_NET_VENDOR_VIA is not set
 # CONFIG_NET_VENDOR_WIZNET is not set
 CONFIG_DP83848_PHY=y
@@ -274,6 +272,7 @@ CONFIG_SPI_TI_QSPI=m
 CONFIG_HSI=m
 CONFIG_OMAP_SSI=m
 CONFIG_SSI_PROTOCOL=m
+CONFIG_PTP_1588_CLOCK=y
 CONFIG_PINCTRL_SINGLE=y
 CONFIG_DEBUG_GPIO=y
 CONFIG_GPIO_SYSFS=y
diff --git a/drivers/net/ethernet/ti/Kconfig b/drivers/net/ethernet/ti/Kconfig
index 8e348780efb6..f3f8bb724294 100644
--- a/drivers/net/ethernet/ti/Kconfig
+++ b/drivers/net/ethernet/ti/Kconfig
@@ -77,23 +77,18 @@ config TI_CPSW_SWITCHDEV
 	  will be called cpsw_new.
 
 config TI_CPTS
-	bool "TI Common Platform Time Sync (CPTS) Support"
+	tristate "TI Common Platform Time Sync (CPTS) Support"
 	depends on TI_CPSW || TI_KEYSTONE_NETCP || TI_CPSW_SWITCHDEV || COMPILE_TEST
 	depends on COMMON_CLK
-	depends on POSIX_TIMERS
+	depends on PTP_1588_CLOCK
+	default y if TI_CPSW=y || TI_KEYSTONE_NETCP=y || TI_CPSW_SWITCHDEV=y
+	default m
 	---help---
 	  This driver supports the Common Platform Time Sync unit of
 	  the CPSW Ethernet Switch and Keystone 2 1g/10g Switch Subsystem.
 	  The unit can time stamp PTP UDP/IPv4 and Layer 2 packets, and the
 	  driver offers a PTP Hardware Clock.
 
-config TI_CPTS_MOD
-	tristate
-	depends on TI_CPTS
-	depends on PTP_1588_CLOCK
-	default y if TI_CPSW=y || TI_KEYSTONE_NETCP=y || TI_CPSW_SWITCHDEV=y
-	default m
-
 config TI_K3_AM65_CPSW_NUSS
 	tristate "TI K3 AM654x/J721E CPSW Ethernet driver"
 	depends on ARCH_K3 && OF && TI_K3_UDMA_GLUE_LAYER
diff --git a/drivers/net/ethernet/ti/Makefile b/drivers/net/ethernet/ti/Makefile
index 53792190e9c2..cb26a9d21869 100644
--- a/drivers/net/ethernet/ti/Makefile
+++ b/drivers/net/ethernet/ti/Makefile
@@ -13,7 +13,7 @@ obj-$(CONFIG_TI_DAVINCI_EMAC) += ti_davinci_emac.o
 ti_davinci_emac-y := davinci_emac.o davinci_cpdma.o
 obj-$(CONFIG_TI_DAVINCI_MDIO) += davinci_mdio.o
 obj-$(CONFIG_TI_CPSW_PHY_SEL) += cpsw-phy-sel.o
-obj-$(CONFIG_TI_CPTS_MOD) += cpts.o
+obj-$(CONFIG_TI_CPTS) += cpts.o
 obj-$(CONFIG_TI_CPSW) += ti_cpsw.o
 ti_cpsw-y := cpsw.o davinci_cpdma.o cpsw_ale.o cpsw_priv.o cpsw_sl.o cpsw_ethtool.o
 obj-$(CONFIG_TI_CPSW_SWITCHDEV) += ti_cpsw_new.o
diff --git a/drivers/net/ethernet/ti/cpsw_ethtool.c b/drivers/net/ethernet/ti/cpsw_ethtool.c
index fa54efe3be63..19a7370a4188 100644
--- a/drivers/net/ethernet/ti/cpsw_ethtool.c
+++ b/drivers/net/ethernet/ti/cpsw_ethtool.c
@@ -709,7 +709,7 @@ int cpsw_set_ringparam(struct net_device *ndev,
 	return ret;
 }
 
-#if IS_ENABLED(CONFIG_TI_CPTS)
+#if IS_REACHABLE(CONFIG_TI_CPTS)
 int cpsw_get_ts_info(struct net_device *ndev, struct ethtool_ts_info *info)
 {
 	struct cpsw_common *cpsw = ndev_to_cpsw(ndev);
diff --git a/drivers/net/ethernet/ti/cpts.h b/drivers/net/ethernet/ti/cpts.h
index bb997c11ee15..782e24c78e7a 100644
--- a/drivers/net/ethernet/ti/cpts.h
+++ b/drivers/net/ethernet/ti/cpts.h
@@ -8,7 +8,7 @@
 #ifndef _TI_CPTS_H_
 #define _TI_CPTS_H_
 
-#if IS_ENABLED(CONFIG_TI_CPTS)
+#if IS_REACHABLE(CONFIG_TI_CPTS)
 
 #include <linux/clk.h>
 #include <linux/clkdev.h>
@@ -171,5 +171,4 @@ static inline bool cpts_can_timestamp(struct cpts *cpts, struct sk_buff *skb)
 }
 #endif
 
-
 #endif
diff --git a/drivers/net/ethernet/ti/netcp_ethss.c b/drivers/net/ethernet/ti/netcp_ethss.c
index fb36115e9c51..3de1d25128b7 100644
--- a/drivers/net/ethernet/ti/netcp_ethss.c
+++ b/drivers/net/ethernet/ti/netcp_ethss.c
@@ -181,7 +181,7 @@
 
 #define HOST_TX_PRI_MAP_DEFAULT			0x00000000
 
-#if IS_ENABLED(CONFIG_TI_CPTS)
+#if IS_REACHABLE(CONFIG_TI_CPTS)
 /* Px_TS_CTL register fields */
 #define TS_RX_ANX_F_EN				BIT(0)
 #define TS_RX_VLAN_LT1_EN			BIT(1)
@@ -2000,7 +2000,7 @@ static int keystone_set_link_ksettings(struct net_device *ndev,
 	return phy_ethtool_ksettings_set(phy, cmd);
 }
 
-#if IS_ENABLED(CONFIG_TI_CPTS)
+#if IS_REACHABLE(CONFIG_TI_CPTS)
 static int keystone_get_ts_info(struct net_device *ndev,
 				struct ethtool_ts_info *info)
 {
@@ -2532,7 +2532,7 @@ static int gbe_del_vid(void *intf_priv, int vid)
 	return 0;
 }
 
-#if IS_ENABLED(CONFIG_TI_CPTS)
+#if IS_REACHABLE(CONFIG_TI_CPTS)
 
 static void gbe_txtstamp(void *context, struct sk_buff *skb)
 {
@@ -2977,7 +2977,7 @@ static int gbe_close(void *intf_priv, struct net_device *ndev)
 	return 0;
 }
 
-#if IS_ENABLED(CONFIG_TI_CPTS)
+#if IS_REACHABLE(CONFIG_TI_CPTS)
 static void init_slave_ts_ctl(struct gbe_slave *slave)
 {
 	slave->ts_ctl.uni = 1;
@@ -3718,7 +3718,7 @@ static int gbe_probe(struct netcp_device *netcp_device, struct device *dev,
 
 	gbe_dev->cpts = cpts_create(gbe_dev->dev, gbe_dev->cpts_reg, cpts_node);
 	of_node_put(cpts_node);
-	if (IS_ENABLED(CONFIG_TI_CPTS) && IS_ERR(gbe_dev->cpts)) {
+	if (IS_REACHABLE(CONFIG_TI_CPTS) && IS_ERR(gbe_dev->cpts)) {
 		ret = PTR_ERR(gbe_dev->cpts);
 		goto free_sec_ports;
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
