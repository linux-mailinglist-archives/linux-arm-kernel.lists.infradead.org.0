Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E93914E550
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 23:06:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AFaWZ0/MYM9kSvTd63qdHSY3WHEO0NeT6mmRO+Q4Tx0=; b=ANWufAVJDNhqtU
	SKJFyG5JeuiBaHKnth75IauEi4yLLlUgONnZ/zOCr1MuG6eZaMyledKPbFr6zGEb6R7DQq0OPPu0P
	dZmf6CCQinrg3dRxKdMYuFkML73DxWzjujcoVkI1Drgu+0fIWNEM9tF9sZl8KoGf0JNcgc0gcUlKB
	Gq1Vx+Twycm3ZSl49AybZQljEgpD1nnHcrV8y1CF2vLKccY6nCpYFvi656yr2xrJ7B71szKffse5J
	LJUDgdHNmX/7IbOVAcvRVjHgBiODLr7MHVeHB8o4cBD3eE2dOUZTIyJlsdItG24mKLqP9Ucsws0ya
	KYbrCBECUlzdcEMli3pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixHx8-0000k3-N6; Thu, 30 Jan 2020 22:06:22 +0000
Received: from smtprelay0187.hostedemail.com ([216.40.44.187]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixHx0-0000jS-5O
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 22:06:15 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 0503849961A;
 Thu, 30 Jan 2020 22:06:00 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,
X-HE-Tag: heat78_8b0a421ba2a53
X-Filterd-Recvd-Size: 11101
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf09.hostedemail.com (Postfix) with ESMTPA;
 Thu, 30 Jan 2020 22:05:55 +0000 (UTC)
Message-ID: <9f8a0a8e09893e7087d2212fb0eeb94a908b7be1.camel@perches.com>
Subject: Re: [PATCH 2/2] ARM: configs: Cleanup old Kconfig options
From: Joe Perches <joe@perches.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Russell King
 <linux@armlinux.org.uk>,  Alexander Shiyan <shc_work@mail.ru>, Uwe
 =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam
 <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, Vladimir
 Zapolskiy <vz@mleia.com>, Aaro Koskinen <aaro.koskinen@iki.fi>, Tony
 Lindgren <tony@atomide.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,  Liviu Dudau
 <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Avi Fishman
 <avifishman70@gmail.com>, Tomer Maimon <tmaimon77@gmail.com>, Tali Perry
 <tali.perry1@gmail.com>, Patrick Venture <venture@google.com>, Nancy Yuen
 <yuenn@google.com>, Benjamin Fair <benjaminfair@google.com>, Olof Johansson
 <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org,
 linux-omap@vger.kernel.org,  linux-stm32@st-md-mailman.stormreply.com,
 openbmc@lists.ozlabs.org,  arm@kernel.org, soc@kernel.org
Date: Thu, 30 Jan 2020 14:04:49 -0800
In-Reply-To: <20200130195525.4525-2-krzk@kernel.org>
References: <20200130195525.4525-1-krzk@kernel.org>
 <20200130195525.4525-2-krzk@kernel.org>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_140614_328760_23B1A474 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.187 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-01-30 at 20:55 +0100, Krzysztof Kozlowski wrote:
> CONFIG_MMC_BLOCK_BOUNCE is gone since commit c3dccb74be28 ("mmc: core:
> Delete bounce buffer Kconfig option").
> 
> CONFIG_LBDAF is gone since commit 72deb455b5ec ("block: remove
> CONFIG_LBDAF").
> 
> CONFIG_IOSCHED_DEADLINE and CONFIG_IOSCHED_CFQ are gone since
> commit f382fb0bcef4 ("block: remove legacy IO schedulers").
> 
> The IOSCHED_DEADLINE was replaced by MQ_IOSCHED_DEADLINE and it will be
> now enabled by default (along with MQ_IOSCHED_KYBER).
> 
> The IOSCHED_BFQ seems to replace IOSCHED_CFQ so select it in configs
> previously choosing the latter.
> 
> CONFIG_CROSS_COMPILE is gone since commit f1089c92da79 ("kbuild: remove
> CONFIG_CROSS_COMPILE support").

Hi Krzysztof.

There seems there are a lot more of these unused CONFIG_<foo>
symbols in various defconfigs. (just for arm and treewide below)

ARM defconfigs:

--------------------------------------------------------------------

# find all defined config symbols in Kconfig files

$ git grep -P -oh '^\s*(?:menu)?config\s+\w+' -- '*/Kconfig*' | \
  sed -r -e 's/\s*config\s+//' -e 's/\s*menuconfig\s+//' | \
  sort | uniq > config_symbols

# find CONFIG_ symbols in arm defconfigs

$ git grep -w -oh -P 'CONFIG_\w+' 'arch/arm*/*defconfig*' | \
  sort | uniq > used_in_arm_defconfigs

# find all the unused symbols

$ cat used_in_arm_defconfigs | \
  while read line ; do \
    echo -n "$line " ; grep -w -c ${line/CONFIG_/} config_symbols ; \
  done | \
  grep " 0" | \
  sed 's/ 0//'
CONFIG_ARCH_AUTCPU12
CONFIG_ARCH_CDB89712
CONFIG_ARCH_CLEP7312
CONFIG_ARCH_EDB7211
CONFIG_ARCH_P720T
CONFIG_ARCH_R8A7796
CONFIG_BT_HCIBTUART
CONFIG_CC_STACKPROTECTOR_REGULAR
CONFIG_CHR_DEV_OSST
CONFIG_CIFS_STATS
CONFIG_CROSS_COMPILE
CONFIG_DEBUG_SPINLOCK_SLEEP
CONFIG_DETECT_SOFTLOCKUP
CONFIG_DM9000_DEBUGLEVEL
CONFIG_DRM_TINYDRM
CONFIG_EXT3_DEFAULTS_TO_ORDERED
CONFIG_EXT3_FS_XATTR
CONFIG_FB_XGI
CONFIG_GPIO_MOXART
CONFIG_HOTPLUG
CONFIG_INET6_XFRM_MODE_BEET
CONFIG_INET6_XFRM_MODE_TRANSPORT
CONFIG_INET6_XFRM_MODE_TUNNEL
CONFIG_INET_XFRM_MODE_BEET
CONFIG_INET_XFRM_MODE_TRANSPORT
CONFIG_INET_XFRM_MODE_TUNNEL
CONFIG_IOSCHED_CFQ
CONFIG_IOSCHED_DEADLINE
CONFIG_IP_NF_MATCH_ADDRTYPE
CONFIG_IP_NF_TARGET_LOG
CONFIG_IPX
CONFIG_IRCOMM
CONFIG_IRDA
CONFIG_IRDA_CACHE_LAST_LSAP
CONFIG_IRDA_DEBUG
CONFIG_IRDA_FAST_RR
CONFIG_IRDA_ULTRA
CONFIG_IRLAN
CONFIG_IRNET
CONFIG_IRTTY_SIR
CONFIG_KALLSYMS_EXTRA_PASS
CONFIG_LBDAF
CONFIG_LEDS_CPU
CONFIG_LEDS_TIMER
CONFIG_MAC80211_RC_PID
CONFIG_MACH_BIGDISK
CONFIG_MACH_D2NET
CONFIG_MACH_DOVE_DT
CONFIG_MACH_EDMINI_V2_DT
CONFIG_MACH_LINKSTATION_LSCHL
CONFIG_MACH_MSS2
CONFIG_MACH_U300_SPIDUMMY
CONFIG_MACH_VOICEBLUE
CONFIG_MEDIA_TUNER_CUSTOMISE
CONFIG_MMC_BLOCK_BOUNCE
CONFIG_MMP_SPI
CONFIG_MTD_DEBUG
CONFIG_MTD_DEBUG_VERBOSE
CONFIG_MTD_DOC2000
CONFIG_MTD_DOC2001
CONFIG_MTD_DOC2001PLUS
CONFIG_MTD_DOCPROBE_ADDRESS
CONFIG_MTD_DOCPROBE_ADVANCED
CONFIG_MTD_DOCPROBE_HIGH
CONFIG_MTD_M25P80
CONFIG_NET_CADENCE
CONFIG_NET_DMA
CONFIG_NET_ETHERNET
CONFIG_NET_PCI
CONFIG_NET_PCMCIA
CONFIG_NET_VENDOR_SMC
CONFIG_NF_CONNTRACK_IPV4
CONFIG_NF_CONNTRACK_IPV6
CONFIG_PCIE_AXXIA
CONFIG_PM_RUNTIME
CONFIG_PROC_DEVICETREE
CONFIG_PXA_FICP
CONFIG_QCOM_ADSP_PIL
CONFIG_QCOM_Q6V5_PIL
CONFIG_SA1100_FIR
CONFIG_SCSI_MULTI_LUN
CONFIG_SMB_FS
CONFIG_SMB_NLS_DEFAULT
CONFIG_SOC_CAMERA_OV2640
CONFIG_SOC_CAMERA_PLATFORM
CONFIG_SOUND_DMAP
CONFIG_SOUND_OSS
CONFIG_SOUND_PRIME
CONFIG_SOUND_TRACEINIT
CONFIG_SOUND_VIDC
CONFIG_SOUND_WAVEARTIST
CONFIG_SOUND_YM3812
CONFIG_SUSPEND_TIME
CONFIG_SYSCTL_SYSCALL
CONFIG_TIMER_STATS
CONFIG_UID_STAT
CONFIG_USB_CHIPIDEA_ULPI
CONFIG_USB_EHCI_HCD_AXXIA
CONFIG_USB_EHCI_MSM
CONFIG_USB_GADGET_DUMMY_HCD
CONFIG_USB_MSM_OTG
CONFIG_V4L_USB_DRIVERS
CONFIG_VIDEO_HELPER_CHIPS_AUTO
CONFIG_WAN_ROUTER
CONFIG_WAN_ROUTER_DRIVERS
CONFIG_WINBOND_FIR

--------------------------------------------------------------------

And treewide defconfigs:

$ git grep -P -oh '^\s*(?:menu)?config\s+\w+' -- '*/Kconfig*' | \
  sed -r -e 's/\s*config\s+//' -e 's/\s*menuconfig\s+//' | \
  sort | uniq > config_symbols

$ git grep -w -oh -P 'CONFIG_\w+' '*defconfig*' | \
  sort | uniq >  used_in_defconfigs

$ cat used_in_defconfigs | \
  while read line ; do \
    echo -n "$line " ; grep -w -c ${line/CONFIG_/} config_symbols ;  \
  done | \
  grep " 0" | \
  sed 's/ 0//'
CONFIG_ALI_FIR
CONFIG_ARCH_AUTCPU12
CONFIG_ARCH_CDB89712
CONFIG_ARCH_CLEP7312
CONFIG_ARCH_EDB7211
CONFIG_ARCH_P720T
CONFIG_ARCH_R8A7796
CONFIG_ARCPGU_DISPTYPE
CONFIG_ARCPGU_RGB888
CONFIG_ARPD
CONFIG_ATH79_MACH_AP121
CONFIG_ATH79_MACH_AP136
CONFIG_ATH79_MACH_AP81
CONFIG_ATH79_MACH_DB120
CONFIG_ATH79_MACH_PB44
CONFIG_ATH79_MACH_UBNT_XM
CONFIG_BLK_DEV_RAM_DAX
CONFIG_BOARD_EVM6457
CONFIG_BOARD_EVM6472
CONFIG_BOARD_EVM6474
CONFIG_BOARD_EVM6678
CONFIG_BT_HCIBTUART
CONFIG_CC_STACKPROTECTOR_REGULAR
CONFIG_CFQ_GROUP_IOSCHED
CONFIG_CGROUP_MEMCG
CONFIG_CGROUP_MEMCG_SWAP
CONFIG_CHR_DEV_OSST
CONFIG_CIFS_STATS
CONFIG_CROSS_COMPILE
CONFIG_CRYPTO_AES_586
CONFIG_CSKY_MPTIMER
CONFIG_DEBUG_SPINLOCK_SLEEP
CONFIG_DEFAULT_DEADLINE
CONFIG_DEFAULT_NOOP
CONFIG_DETECT_SOFTLOCKUP
CONFIG_DEVPTS_MULTIPLE_INSTANCES
CONFIG_DM9000_DEBUGLEVEL
CONFIG_DRM_TINYDRM
CONFIG_DSCC4
CONFIG_DVB_FE_CUSTOMISE
CONFIG_ENABLE_WARN_DEPRECATED
CONFIG_EXOFS_FS
CONFIG_EXPERIMENTAL
CONFIG_EXT2_FS_XIP
CONFIG_EXT3_DEFAULTS_TO_ORDERED
CONFIG_EXT3_FS_XATTR
CONFIG_FB_SH7785FB
CONFIG_FB_XGI
CONFIG_GPIO_MOXART
CONFIG_HEADERS_CHECK
CONFIG_HID_SUPPORT
CONFIG_HOTPLUG
CONFIG_I2C_PARPORT_LIGHT
CONFIG_INET6_XFRM_MODE_BEET
CONFIG_INET6_XFRM_MODE_ROUTEOPTIMIZATION
CONFIG_INET6_XFRM_MODE_TRANSPORT
CONFIG_INET6_XFRM_MODE_TUNNEL
CONFIG_INET_LRO
CONFIG_INET_XFRM_MODE_BEET
CONFIG_INET_XFRM_MODE_TRANSPORT
CONFIG_INET_XFRM_MODE_TUNNEL
CONFIG_INFINIBAND_CXGB3
CONFIG_IOSCHED_CFQ
CONFIG_IOSCHED_DEADLINE
CONFIG_IP_NF_MATCH_ADDRTYPE
CONFIG_IP_NF_TARGET_LOG
CONFIG_IPV6_PRIVACY
CONFIG_IPX
CONFIG_IRCOMM
CONFIG_IRDA
CONFIG_IRDA_CACHE_LAST_LSAP
CONFIG_IRDA_DEBUG
CONFIG_IRDA_FAST_RR
CONFIG_IRDA_ULTRA
CONFIG_IRLAN
CONFIG_IRNET
CONFIG_IRTTY_SIR
CONFIG_KALLSYMS_EXTRA_PASS
CONFIG_KINGSUN_DONGLE
CONFIG_KS959_DONGLE
CONFIG_KSDAZZLE_DONGLE
CONFIG_LBDAF
CONFIG_LEDS_CPU
CONFIG_LEDS_TIMER
CONFIG_MAC80211_RC_PID
CONFIG_MACH_BIGDISK
CONFIG_MACH_D2NET
CONFIG_MACH_DOVE_DT
CONFIG_MACH_EDMINI_V2_DT
CONFIG_MACH_LINKSTATION_LSCHL
CONFIG_MACH_MSS2
CONFIG_MACH_U300_SPIDUMMY
CONFIG_MACH_VOICEBLUE
CONFIG_MCS_FIR
CONFIG_MEDIA_TUNER_CUSTOMISE
CONFIG_MFD_SH_MOBILE_SDHI
CONFIG_MMC_BLOCK_BOUNCE
CONFIG_MMP_SPI
CONFIG_MTD_CHAR
CONFIG_MTD_DEBUG
CONFIG_MTD_DEBUG_VERBOSE
CONFIG_MTD_DOC2000
CONFIG_MTD_DOC2001
CONFIG_MTD_DOC2001PLUS
CONFIG_MTD_DOCPROBE_ADDRESS
CONFIG_MTD_DOCPROBE_ADVANCED
CONFIG_MTD_DOCPROBE_HIGH
CONFIG_MTD_M25P80
CONFIG_MTD_PARTITIONS
CONFIG_NCP_FS
CONFIG_NCPFS_EXTRAS
CONFIG_NCPFS_IOCTL_LOCKING
CONFIG_NCPFS_NFS_NS
CONFIG_NCPFS_NLS
CONFIG_NCPFS_OS2_NS
CONFIG_NCPFS_PACKET_SIGNING
CONFIG_NCPFS_SMALLDOS
CONFIG_NCPFS_STRONG
CONFIG_NET_CADENCE
CONFIG_NET_DCCPPROBE
CONFIG_NETDEV_1000
CONFIG_NETDEV_10000
CONFIG_NET_DMA
CONFIG_NET_ETHERNET
CONFIG_NET_PACKET_ENGINE
CONFIG_NET_PCI
CONFIG_NET_PCMCIA
CONFIG_NET_TCPPROBE
CONFIG_NET_VENDOR_EXAR
CONFIG_NET_VENDOR_SMC
CONFIG_NF_CONNTRACK_IPV4
CONFIG_NF_CONNTRACK_IPV6
CONFIG_NF_NAT_IPV4
CONFIG_NF_NAT_IPV6
CONFIG_NR_DMA_CHANNELS
CONFIG_NR_DMA_CHANNELS_BOOL
CONFIG_NSC_FIR
CONFIG_OCTEON_ETHERNET
CONFIG_OCTEON_USB
CONFIG_PCIEASPM_DEBUG
CONFIG_PCIE_AXXIA
CONFIG_PCI_LEGACY
CONFIG_PERF_COUNTERS
CONFIG_PHONE
CONFIG_PM_RUNTIME
CONFIG_PROC_DEVICETREE
CONFIG_PUV3_AC97
CONFIG_PUV3_MMC
CONFIG_PUV3_MUSB
CONFIG_PUV3_NAND
CONFIG_PUV3_UART
CONFIG_PUV3_UMAL
CONFIG_PXA_FICP
CONFIG_QCOM_ADSP_PIL
CONFIG_QCOM_Q6V5_PIL
CONFIG_RCU_CPU_STALL_INFO
CONFIG_SA1100_FIR
CONFIG_SBC834x
CONFIG_SCSI_MULTI_LUN
CONFIG_SCSI_OSD_INITIATOR
CONFIG_SCSI_OSD_ULD
CONFIG_SECURITY_SELINUX_BOOTPARAM_VALUE
CONFIG_SH_SIR
CONFIG_SIGMATEL_FIR
CONFIG_SMB_FS
CONFIG_SMB_NLS_DEFAULT
CONFIG_SMC_IRCC_FIR
CONFIG_SND_FSI_AK4642
CONFIG_SND_FSI_DA7210
CONFIG_SOC_CAMERA_MT9T112
CONFIG_SOC_CAMERA_OV2640
CONFIG_SOC_CAMERA_OV772X
CONFIG_SOC_CAMERA_PLATFORM
CONFIG_SOC_CAMERA_TW9910
CONFIG_SOUND_DMAP
CONFIG_SOUND_OSS
CONFIG_SOUND_PRIME
CONFIG_SOUND_TRACEINIT
CONFIG_SOUND_VIDC
CONFIG_SOUND_WAVEARTIST
CONFIG_SOUND_YM3812
CONFIG_SPI_XILINX_PLTFM
CONFIG_STAGING_EXCLUDE_BUILD
CONFIG_SUSPEND_TIME
CONFIG_SYSCTL_SYSCALL
CONFIG_TIMER_STATS
CONFIG_TOSHIBA_FIR
CONFIG_TREE_PREEMPT_RCU
CONFIG_UID_STAT
CONFIG_UIO_PDRV
CONFIG_USB_CHIPIDEA_ULPI
CONFIG_USB_CMMB_INNOFIDEI
CONFIG_USB_EHCI_HCD_AXXIA
CONFIG_USB_EHCI_MSM
CONFIG_USB_GADGET_DUMMY_HCD
CONFIG_USB_GADGET_M66592
CONFIG_USB_IRDA
CONFIG_USB_MSM_OTG
CONFIG_USB_WLAN_HED_AQ3
CONFIG_V4L_USB_DRIVERS
CONFIG_VIA_FIR
CONFIG_VIDEO_ALLOW_V4L1
CONFIG_VIDEO_HELPER_CHIPS_AUTO
CONFIG_VIDEO_SH_MOBILE_CEU
CONFIG_VLSI_FIR
CONFIG_W1_SLAVE_DS2760
CONFIG_WAN_ROUTER
CONFIG_WAN_ROUTER_DRIVERS
CONFIG_WINBOND_FIR
CONFIG_WLAN_80211



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
