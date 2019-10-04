Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B38DCBDDE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:50:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=24q9MXVSCIP6pXvhsW05JtAT3MnSHhcynwS3hpk4G0M=; b=K3w
	9zepcvoMhviXkvEmPTERUQ6+EEWeGGOQ/+X03BhO8j/mUKoutAFWET/A0vQpv4C+WKsRgfqCGWqMe
	Y+Vz+iFptauzANiQPGNinyvcwDxyajgequ7MjsEvhgnAbVhnTQ04iambZJBHir0oeRx74DsezAZrL
	xwR25o8VxRVJ2Y1rs72DPO6tvJ1IIwRk0eaF2qGH/e4iv1fAK3hIl82b4Esg79M1fOPs+v4z0Wvtg
	sNUz18zXOMw3YrJDs/YV/Mpiy0ZcPXnLyUr369DfABRblbWVweVtqoEE/mBV6gWcYIHqcCobNbwmO
	x/l0+JB/H7Oh+MXmi9eWmJfV+I1z+AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOty-00037k-K5; Fri, 04 Oct 2019 14:49:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOtq-00037E-IN
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:49:45 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3013220659;
 Fri,  4 Oct 2019 14:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570200582;
 bh=EGMZLrt2o1YzTdLFkdTBon8zThOl8ZzqEt0/T0y1CuU=;
 h=From:To:Cc:Subject:Date:From;
 b=B7knsOIewzRUb51EmPeFWehhuJ6Tq1fCgcE0qhzYXMjcw8FdGmIlJaBUR8+0JmIqZ
 je8gsECgOA+IlYVDIABH/14lvcPa2E744nQeSZH369Yz4fwzG3vdmZ59k5Xni7tK5i
 bvfpK9jMQStorKBG76c5hcbclg+0Gs7YLxHvUM4o=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jiri Kosina <trivial@kernel.org>, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [RESEND TRIVIAL] sound: Fix Kconfig indentation
Date: Fri,  4 Oct 2019 16:49:31 +0200
Message-Id: <20191004144931.3851-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_074942_656975_C8B47380 
X-CRM114-Status: GOOD (  19.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adjust indentation from spaces to tab (+optional two spaces) as in
coding style with command like:
    $ sed -e 's/^        /\t/' -i */Kconfig

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Acked-by: Mark Brown <broonie@kernel.org>
---
 sound/core/Kconfig             | 28 ++++++++++----------
 sound/drivers/Kconfig          | 20 +++++++-------
 sound/firewire/Kconfig         |  6 ++---
 sound/isa/Kconfig              | 18 ++++++-------
 sound/mips/Kconfig             | 12 ++++-----
 sound/pci/Kconfig              |  2 +-
 sound/soc/cirrus/Kconfig       | 14 +++++-----
 sound/soc/codecs/Kconfig       | 32 +++++++++++------------
 sound/soc/intel/Kconfig        |  2 +-
 sound/soc/intel/boards/Kconfig | 48 +++++++++++++++++-----------------
 sound/soc/pxa/Kconfig          | 16 ++++++------
 sound/soc/qcom/Kconfig         | 20 +++++++-------
 sound/soc/samsung/Kconfig      |  8 +++---
 sound/soc/sof/imx/Kconfig      | 12 ++++-----
 sound/soc/sof/intel/Kconfig    | 22 ++++++++--------
 sound/soc/xilinx/Kconfig       | 20 +++++++-------
 sound/soc/zte/Kconfig          | 12 ++++-----
 sound/usb/Kconfig              | 32 +++++++++++------------
 18 files changed, 162 insertions(+), 162 deletions(-)

diff --git a/sound/core/Kconfig b/sound/core/Kconfig
index 4ee79ad6ae22..4044c42d8595 100644
--- a/sound/core/Kconfig
+++ b/sound/core/Kconfig
@@ -72,11 +72,11 @@ config SND_PCM_OSS
 config SND_PCM_OSS_PLUGINS
 	bool "OSS PCM (digital audio) API - Include plugin system"
 	depends on SND_PCM_OSS
-        default y
+	default y
 	help
-          If you disable this option, the ALSA's OSS PCM API will not
-          support conversion of channels, formats and rates. It will
-          behave like most of new OSS/Free drivers in 2.4/2.6 kernels.
+	  If you disable this option, the ALSA's OSS PCM API will not
+	  support conversion of channels, formats and rates. It will
+	  behave like most of new OSS/Free drivers in 2.4/2.6 kernels.
 
 config SND_PCM_TIMER
 	bool "PCM timer interface" if EXPERT
@@ -128,13 +128,13 @@ config SND_SUPPORT_OLD_API
 	  or older).
 
 config SND_PROC_FS
-        bool "Sound Proc FS Support" if EXPERT
-        depends on PROC_FS
-        default y
-        help
-          Say 'N' to disable Sound proc FS, which may reduce code size about
-          9KB on x86_64 platform.
-          If unsure say Y.
+	bool "Sound Proc FS Support" if EXPERT
+	depends on PROC_FS
+	default y
+	help
+	  Say 'N' to disable Sound proc FS, which may reduce code size about
+	  9KB on x86_64 platform.
+	  If unsure say Y.
 
 config SND_VERBOSE_PROCFS
 	bool "Verbose procfs contents"
@@ -142,8 +142,8 @@ config SND_VERBOSE_PROCFS
 	default y
 	help
 	  Say Y here to include code for verbose procfs contents (provides
-          useful information to developers when a problem occurs).  On the
-          other side, it makes the ALSA subsystem larger.
+	  useful information to developers when a problem occurs).  On the
+	  other side, it makes the ALSA subsystem larger.
 
 config SND_VERBOSE_PRINTK
 	bool "Verbose printk"
@@ -164,7 +164,7 @@ config SND_DEBUG_VERBOSE
 	depends on SND_DEBUG
 	help
 	  Say Y here to enable extra-verbose debugging messages.
-	  
+
 	  Let me repeat: it enables EXTRA-VERBOSE DEBUGGING messages.
 	  So, say Y only if you are ready to be annoyed.
 
diff --git a/sound/drivers/Kconfig b/sound/drivers/Kconfig
index 09932cc98e9d..15d6d46acf9c 100644
--- a/sound/drivers/Kconfig
+++ b/sound/drivers/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config SND_MPU401_UART
-        tristate
-        select SND_RAWMIDI
+	tristate
+	select SND_RAWMIDI
 
 config SND_OPL3_LIB
 	tristate
@@ -90,16 +90,16 @@ config SND_DUMMY
 	  will be called snd-dummy.
 
 config SND_ALOOP
-        tristate "Generic loopback driver (PCM)"
-        select SND_PCM
-        help
-          Say 'Y' or 'M' to include support for the PCM loopback device.
+	tristate "Generic loopback driver (PCM)"
+	select SND_PCM
+	help
+	  Say 'Y' or 'M' to include support for the PCM loopback device.
 	  This module returns played samples back to the user space using
 	  the standard ALSA PCM device. The devices are routed 0->1 and
-          1->0, where first number is the playback PCM device and second
+	  1->0, where first number is the playback PCM device and second
 	  number is the capture device. Module creates two PCM devices and
 	  configured number of substreams (see the pcm_substreams module
-          parameter).
+	  parameter).
 
 	  The loopback device allows time sychronization with an external
 	  timing source using the time shift universal control (+-20%
@@ -142,12 +142,12 @@ config SND_MTS64
 	select SND_RAWMIDI
 	help
 	  The ESI Miditerminal 4140 is a 4 In 4 Out MIDI Interface with 
-          additional SMPTE Timecode capabilities for the parallel port.
+	  additional SMPTE Timecode capabilities for the parallel port.
 
 	  Say 'Y' to include support for this device.
 
 	  To compile this driver as a module, chose 'M' here: the module 
-          will be called snd-mts64.
+	  will be called snd-mts64.
 
 config SND_SERIAL_U16550
 	tristate "UART16550 serial MIDI driver"
diff --git a/sound/firewire/Kconfig b/sound/firewire/Kconfig
index b0a904cdb932..995c2cefc222 100644
--- a/sound/firewire/Kconfig
+++ b/sound/firewire/Kconfig
@@ -77,7 +77,7 @@ config SND_BEBOB
 	tristate "BridgeCo DM1000/DM1100/DM1500 with BeBoB firmware"
 	select SND_FIREWIRE_LIB
 	select SND_HWDEP
-        help
+	help
 	 Say Y here to include support for FireWire devices based
 	 on BridgeCo DM1000/DM1100/DM1500 with BeBoB firmware:
 	  * Edirol FA-66/FA-101
@@ -111,8 +111,8 @@ config SND_BEBOB
 	  * M-Audio FireWire 1814/ProjectMix IO
 	  * Digidesign Mbox 2 Pro
 
-          To compile this driver as a module, choose M here: the module
-          will be called snd-bebob.
+	  To compile this driver as a module, choose M here: the module
+	  will be called snd-bebob.
 
 config SND_FIREWIRE_DIGI00X
 	tristate "Digidesign Digi 002/003 family support"
diff --git a/sound/isa/Kconfig b/sound/isa/Kconfig
index b690ed937cbe..6ffa48dd5983 100644
--- a/sound/isa/Kconfig
+++ b/sound/isa/Kconfig
@@ -2,22 +2,22 @@
 # ALSA ISA drivers
 
 config SND_WSS_LIB
-        tristate
-        select SND_PCM
+	tristate
+	select SND_PCM
 	select SND_TIMER
 
 config SND_SB_COMMON
-        tristate
+	tristate
 
 config SND_SB8_DSP
-        tristate
-        select SND_PCM
-        select SND_SB_COMMON
+	tristate
+	select SND_PCM
+	select SND_SB_COMMON
 
 config SND_SB16_DSP
-        tristate
-        select SND_PCM
-        select SND_SB_COMMON
+	tristate
+	select SND_PCM
+	select SND_SB_COMMON
 
 menuconfig SND_ISA
 	bool "ISA sound devices"
diff --git a/sound/mips/Kconfig b/sound/mips/Kconfig
index 8a33402fd415..b497b803c834 100644
--- a/sound/mips/Kconfig
+++ b/sound/mips/Kconfig
@@ -14,15 +14,15 @@ config SND_SGI_O2
 	tristate "SGI O2 Audio"
 	depends on SGI_IP32
 	select SND_PCM
-        help
-                Sound support for the SGI O2 Workstation. 
+	help
+	  Sound support for the SGI O2 Workstation.
 
 config SND_SGI_HAL2
-        tristate "SGI HAL2 Audio"
-        depends on SGI_HAS_HAL2
+	tristate "SGI HAL2 Audio"
+	depends on SGI_HAS_HAL2
 	select SND_PCM
-        help
-                Sound support for the SGI Indy and Indigo2 Workstation.
+	help
+	  Sound support for the SGI Indy and Indigo2 Workstation.
 
 endif	# SND_MIPS
 
diff --git a/sound/pci/Kconfig b/sound/pci/Kconfig
index 7630f808d087..93bc9bef7641 100644
--- a/sound/pci/Kconfig
+++ b/sound/pci/Kconfig
@@ -217,7 +217,7 @@ config SND_CMIPCI
 	  will be called snd-cmipci.
 
 config SND_OXYGEN_LIB
-        tristate
+	tristate
 
 config SND_OXYGEN
 	tristate "C-Media 8786, 8787, 8788 (Oxygen)"
diff --git a/sound/soc/cirrus/Kconfig b/sound/soc/cirrus/Kconfig
index 2333efac758a..8039a8febefa 100644
--- a/sound/soc/cirrus/Kconfig
+++ b/sound/soc/cirrus/Kconfig
@@ -33,13 +33,13 @@ config SND_EP93XX_SOC_AC97
 	select SND_SOC_AC97_BUS
 
 config SND_EP93XX_SOC_SNAPPERCL15
-        tristate "SoC Audio support for Bluewater Systems Snapper CL15 module"
-        depends on SND_EP93XX_SOC && MACH_SNAPPER_CL15 && I2C
-        select SND_EP93XX_SOC_I2S
-        select SND_SOC_TLV320AIC23_I2C
-        help
-          Say Y or M here if you want to add support for I2S audio on the
-          Bluewater Systems Snapper CL15 module.
+	tristate "SoC Audio support for Bluewater Systems Snapper CL15 module"
+	depends on SND_EP93XX_SOC && MACH_SNAPPER_CL15 && I2C
+	select SND_EP93XX_SOC_I2S
+	select SND_SOC_TLV320AIC23_I2C
+	help
+	  Say Y or M here if you want to add support for I2S audio on the
+	  Bluewater Systems Snapper CL15 module.
 
 config SND_EP93XX_SOC_SIMONE
 	tristate "SoC Audio support for Simplemachines Sim.One board"
diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
index bcac95785493..ed8ba18d93d3 100644
--- a/sound/soc/codecs/Kconfig
+++ b/sound/soc/codecs/Kconfig
@@ -258,16 +258,16 @@ config SND_SOC_ALL_CODECS
 	select SND_SOC_WM9705 if (SND_SOC_AC97_BUS || SND_SOC_AC97_BUS_NEW)
 	select SND_SOC_WM9712 if (SND_SOC_AC97_BUS || SND_SOC_AC97_BUS_NEW)
 	select SND_SOC_WM9713 if (SND_SOC_AC97_BUS || SND_SOC_AC97_BUS_NEW)
-        help
-          Normally ASoC codec drivers are only built if a machine driver which
-          uses them is also built since they are only usable with a machine
-          driver.  Selecting this option will allow these drivers to be built
-          without an explicit machine driver for test and development purposes.
+	help
+	  Normally ASoC codec drivers are only built if a machine driver which
+	  uses them is also built since they are only usable with a machine
+	  driver.  Selecting this option will allow these drivers to be built
+	  without an explicit machine driver for test and development purposes.
 
 	  Support for the bus types used to access the codecs to be built must
 	  be selected separately.
 
-          If unsure select "N".
+	  If unsure select "N".
 
 config SND_SOC_88PM860X
 	tristate
@@ -571,8 +571,8 @@ config SND_SOC_CS42XX8_I2C
 
 # Cirrus Logic CS43130 HiFi DAC
 config SND_SOC_CS43130
-        tristate "Cirrus Logic CS43130 CODEC"
-        depends on I2C
+	tristate "Cirrus Logic CS43130 CODEC"
+	depends on I2C
 
 config SND_SOC_CS4341
 	tristate "Cirrus Logic CS4341 CODEC"
@@ -644,19 +644,19 @@ config SND_SOC_L3
        tristate
 
 config SND_SOC_DA7210
-        tristate
+	tristate
 
 config SND_SOC_DA7213
-        tristate
+	tristate
 
 config SND_SOC_DA7218
 	tristate
 
 config SND_SOC_DA7219
-        tristate
+	tristate
 
 config SND_SOC_DA732X
-        tristate
+	tristate
 
 config SND_SOC_DA9055
 	tristate
@@ -718,7 +718,7 @@ config SND_SOC_INNO_RK3036
 	select REGMAP_MMIO
 
 config SND_SOC_ISABELLE
-        tristate
+	tristate
 
 config SND_SOC_LM49453
 	tristate
@@ -989,7 +989,7 @@ config SND_SOC_RT5640
 	tristate
 
 config SND_SOC_RT5645
-        tristate
+	tristate
 
 config SND_SOC_RT5651
 	tristate
@@ -1225,7 +1225,7 @@ config SND_SOC_UDA134X
        tristate
 
 config SND_SOC_UDA1380
-        tristate
+	tristate
 	depends on I2C
 
 config SND_SOC_WCD9335
@@ -1353,7 +1353,7 @@ config SND_SOC_WM8904
 	depends on I2C
 
 config SND_SOC_WM8940
-        tristate
+	tristate
 
 config SND_SOC_WM8955
 	tristate
diff --git a/sound/soc/intel/Kconfig b/sound/soc/intel/Kconfig
index 01c99750212a..597516c0c192 100644
--- a/sound/soc/intel/Kconfig
+++ b/sound/soc/intel/Kconfig
@@ -113,7 +113,7 @@ config SND_SOC_INTEL_SKYLAKE
 	select SND_SOC_INTEL_CNL
 	select SND_SOC_INTEL_CFL
 	help
-          This is a backwards-compatible option to select all devices
+	  This is a backwards-compatible option to select all devices
 	  supported by the Intel SST/Skylake driver. This option is no
 	  longer recommended and will be deprecated when the SOF
 	  driver is introduced.  Distributions should explicitly
diff --git a/sound/soc/intel/boards/Kconfig b/sound/soc/intel/boards/Kconfig
index 5c27f7ab4a5f..882ff36a7c9c 100644
--- a/sound/soc/intel/boards/Kconfig
+++ b/sound/soc/intel/boards/Kconfig
@@ -3,13 +3,13 @@ menuconfig SND_SOC_INTEL_MACH
 	bool "Intel Machine drivers"
 	depends on SND_SOC_INTEL_SST_TOPLEVEL || SND_SOC_SOF_INTEL_TOPLEVEL
 	help
-         Intel ASoC Machine Drivers. If you have a Intel machine that
-         has an audio controller with a DSP and I2S or DMIC port, then
-         enable this option by saying Y
+	 Intel ASoC Machine Drivers. If you have a Intel machine that
+	 has an audio controller with a DSP and I2S or DMIC port, then
+	 enable this option by saying Y
 
-         Note that the answer to this question doesn't directly affect the
-         kernel: saying N will just cause the configurator to skip all
-         the questions about Intel ASoC machine drivers.
+	 Note that the answer to this question doesn't directly affect the
+	 kernel: saying N will just cause the configurator to skip all
+	 the questions about Intel ASoC machine drivers.
 
 if SND_SOC_INTEL_MACH
 
@@ -114,11 +114,11 @@ config SND_SOC_INTEL_CHT_BSW_RT5672_MACH
 	depends on X86_INTEL_LPSS || COMPILE_TEST
 	select SND_SOC_ACPI
 	select SND_SOC_RT5670
-        help
-          This adds support for ASoC machine driver for Intel(R) Cherrytrail & Braswell
-          platforms with RT5672 audio codec.
-          Say Y or m if you have such a device. This is a recommended option.
-          If unsure select "N".
+	help
+	  This adds support for ASoC machine driver for Intel(R) Cherrytrail & Braswell
+	  platforms with RT5672 audio codec.
+	  Say Y or m if you have such a device. This is a recommended option.
+	  If unsure select "N".
 
 config SND_SOC_INTEL_CHT_BSW_RT5645_MACH
 	tristate "Cherrytrail & Braswell with RT5645/5650 codec"
@@ -311,20 +311,20 @@ config SND_SOC_INTEL_KBL_RT5663_MAX98927_MACH
 	  If unsure select "N".
 
 config SND_SOC_INTEL_KBL_RT5663_RT5514_MAX98927_MACH
-        tristate "KBL with RT5663, RT5514 and MAX98927 in I2S Mode"
+	tristate "KBL with RT5663, RT5514 and MAX98927 in I2S Mode"
 	depends on I2C && ACPI
 	depends on MFD_INTEL_LPSS || COMPILE_TEST
-        depends on SPI
-        select SND_SOC_RT5663
-        select SND_SOC_RT5514
-        select SND_SOC_RT5514_SPI
-        select SND_SOC_MAX98927
-        select SND_SOC_HDAC_HDMI
-        help
-          This adds support for ASoC Onboard Codec I2S machine driver. This will
-          create an alsa sound card for RT5663 + RT5514 + MAX98927.
-          Say Y or m if you have such a device. This is a recommended option.
-          If unsure select "N".
+	depends on SPI
+	select SND_SOC_RT5663
+	select SND_SOC_RT5514
+	select SND_SOC_RT5514_SPI
+	select SND_SOC_MAX98927
+	select SND_SOC_HDAC_HDMI
+	help
+	  This adds support for ASoC Onboard Codec I2S machine driver. This will
+	  create an alsa sound card for RT5663 + RT5514 + MAX98927.
+	  Say Y or m if you have such a device. This is a recommended option.
+	  If unsure select "N".
 
 config SND_SOC_INTEL_KBL_DA7219_MAX98357A_MACH
 	tristate "KBL with DA7219 and MAX98357A in I2S Mode"
@@ -393,7 +393,7 @@ config SND_SOC_INTEL_SKL_HDA_DSP_GENERIC_MACH
 	help
 	  This adds support for ASoC machine driver for Intel platforms
 	  SKL/KBL/BXT/APL with iDisp, HDA audio codecs.
-          Say Y or m if you have such a device. This is a recommended option.
+	  Say Y or m if you have such a device. This is a recommended option.
 	  If unsure select "N".
 
 endif ## SND_SOC_INTEL_SKYLAKE_HDAUDIO_CODEC || SND_SOC_SOF_HDA_AUDIO_CODEC
diff --git a/sound/soc/pxa/Kconfig b/sound/soc/pxa/Kconfig
index 213d4dab0346..295cfffa4646 100644
--- a/sound/soc/pxa/Kconfig
+++ b/sound/soc/pxa/Kconfig
@@ -190,14 +190,14 @@ config SND_PXA2XX_SOC_MAGICIAN
 	  HTC Magician.
 
 config SND_PXA2XX_SOC_MIOA701
-        tristate "SoC Audio support for MIO A701"
-        depends on SND_PXA2XX_SOC && MACH_MIOA701
+	tristate "SoC Audio support for MIO A701"
+	depends on SND_PXA2XX_SOC && MACH_MIOA701
 	depends on AC97_BUS=n
-        select SND_PXA2XX_SOC_AC97
-        select SND_SOC_WM9713
-        help
-          Say Y if you want to add support for SoC audio on the
-          MIO A701.
+	select SND_PXA2XX_SOC_AC97
+	select SND_SOC_WM9713
+	help
+	  Say Y if you want to add support for SoC audio on the
+	  MIO A701.
 
 config SND_PXA2XX_SOC_IMOTE2
        tristate "SoC Audio support for IMote 2"
@@ -205,7 +205,7 @@ config SND_PXA2XX_SOC_IMOTE2
        select SND_PXA2XX_SOC_I2S
        select SND_SOC_WM8940
        help
-         Say Y if you want to add support for SoC audio on the
+	 Say Y if you want to add support for SoC audio on the
 	 IMote 2.
 
 config SND_MMP_SOC_BROWNSTONE
diff --git a/sound/soc/qcom/Kconfig b/sound/soc/qcom/Kconfig
index 60086858e920..6530d2462a9e 100644
--- a/sound/soc/qcom/Kconfig
+++ b/sound/soc/qcom/Kconfig
@@ -3,8 +3,8 @@ config SND_SOC_QCOM
 	tristate "ASoC support for QCOM platforms"
 	depends on ARCH_QCOM || COMPILE_TEST
 	help
-          Say Y or M if you want to add support to use audio devices
-          in Qualcomm Technologies SOC-based platforms.
+	  Say Y or M if you want to add support to use audio devices
+	  in Qualcomm Technologies SOC-based platforms.
 
 config SND_SOC_LPASS_CPU
 	tristate
@@ -30,17 +30,17 @@ config SND_SOC_STORM
 	select SND_SOC_LPASS_IPQ806X
 	select SND_SOC_MAX98357A
 	help
-          Say Y or M if you want add support for SoC audio on the
-          Qualcomm Technologies IPQ806X-based Storm board.
+	  Say Y or M if you want add support for SoC audio on the
+	  Qualcomm Technologies IPQ806X-based Storm board.
 
 config SND_SOC_APQ8016_SBC
 	tristate "SoC Audio support for APQ8016 SBC platforms"
 	depends on SND_SOC_QCOM
 	select SND_SOC_LPASS_APQ8016
 	help
-          Support for Qualcomm Technologies LPASS audio block in
-          APQ8016 SOC-based systems.
-          Say Y if you want to use audio devices on MI2S.
+	  Support for Qualcomm Technologies LPASS audio block in
+	  APQ8016 SOC-based systems.
+	  Say Y if you want to use audio devices on MI2S.
 
 config SND_SOC_QCOM_COMMON
 	tristate
@@ -93,9 +93,9 @@ config SND_SOC_MSM8996
 	select SND_SOC_QDSP6
 	select SND_SOC_QCOM_COMMON
 	help
-          Support for Qualcomm Technologies LPASS audio block in
-          APQ8096 SoC-based systems.
-          Say Y if you want to use audio device on this SoCs
+	  Support for Qualcomm Technologies LPASS audio block in
+	  APQ8096 SoC-based systems.
+	  Say Y if you want to use audio device on this SoCs
 
 config SND_SOC_SDM845
 	tristate "SoC Machine driver for SDM845 boards"
diff --git a/sound/soc/samsung/Kconfig b/sound/soc/samsung/Kconfig
index 638983123d8f..9304177de78a 100644
--- a/sound/soc/samsung/Kconfig
+++ b/sound/soc/samsung/Kconfig
@@ -195,10 +195,10 @@ config SND_SOC_ODROID
 	  Say Y here to enable audio support for the Odroid XU3/XU4.
 
 config SND_SOC_ARNDALE_RT5631_ALC5631
-        tristate "Audio support for RT5631(ALC5631) on Arndale Board"
-        depends on I2C
-        select SND_SAMSUNG_I2S
-        select SND_SOC_RT5631
+	tristate "Audio support for RT5631(ALC5631) on Arndale Board"
+	depends on I2C
+	select SND_SAMSUNG_I2S
+	select SND_SOC_RT5631
 
 config SND_SOC_SAMSUNG_TM2_WM5110
 	tristate "SoC I2S Audio support for WM5110 on TM2 board"
diff --git a/sound/soc/sof/imx/Kconfig b/sound/soc/sof/imx/Kconfig
index 5acae75f5750..6315fba8ce71 100644
--- a/sound/soc/sof/imx/Kconfig
+++ b/sound/soc/sof/imx/Kconfig
@@ -5,9 +5,9 @@ config SND_SOC_SOF_IMX_TOPLEVEL
 	depends on ARM64|| COMPILE_TEST
 	depends on SND_SOC_SOF_OF
 	help
-          This adds support for Sound Open Firmware for NXP i.MX platforms.
-          Say Y if you have such a device.
-          If unsure select "N".
+	  This adds support for Sound Open Firmware for NXP i.MX platforms.
+	  Say Y if you have such a device.
+	  If unsure select "N".
 
 if SND_SOC_SOF_IMX_TOPLEVEL
 
@@ -16,8 +16,8 @@ config SND_SOC_SOF_IMX8
 	depends on IMX_SCU
 	depends on IMX_DSP
 	help
-          This adds support for Sound Open Firmware for NXP i.MX8 platforms
-          Say Y if you have such a device.
-          If unsure select "N".
+	  This adds support for Sound Open Firmware for NXP i.MX8 platforms
+	  Say Y if you have such a device.
+	  If unsure select "N".
 
 endif ## SND_SOC_SOF_IMX_IMX_TOPLEVEL
diff --git a/sound/soc/sof/intel/Kconfig b/sound/soc/sof/intel/Kconfig
index d62f51d33be1..56f16e4543c0 100644
--- a/sound/soc/sof/intel/Kconfig
+++ b/sound/soc/sof/intel/Kconfig
@@ -36,7 +36,7 @@ config SND_SOC_SOF_INTEL_PCI
 config SND_SOC_SOF_INTEL_HIFI_EP_IPC
 	tristate
 	help
-          This option is not user-selectable but automagically handled by
+	  This option is not user-selectable but automagically handled by
 	  'select' statements at a higher level
 
 config SND_SOC_SOF_INTEL_ATOM_HIFI_EP
@@ -217,31 +217,31 @@ config SND_SOC_SOF_COMETLAKE_H_SUPPORT
 config SND_SOC_SOF_TIGERLAKE_SUPPORT
 	bool "SOF support for Tigerlake"
 	help
-          This adds support for Sound Open Firmware for Intel(R) platforms
-          using the Tigerlake processors.
-          Say Y if you have such a device.
-          If unsure select "N".
+	  This adds support for Sound Open Firmware for Intel(R) platforms
+	  using the Tigerlake processors.
+	  Say Y if you have such a device.
+	  If unsure select "N".
 
 config SND_SOC_SOF_TIGERLAKE
 	tristate
 	select SND_SOC_SOF_HDA_COMMON
 	help
-          This option is not user-selectable but automagically handled by
+	  This option is not user-selectable but automagically handled by
 	  'select' statements at a higher level
 
 config SND_SOC_SOF_ELKHARTLAKE_SUPPORT
 	bool "SOF support for ElkhartLake"
 	help
-          This adds support for Sound Open Firmware for Intel(R) platforms
-          using the ElkhartLake processors.
-          Say Y if you have such a device.
-          If unsure select "N".
+	  This adds support for Sound Open Firmware for Intel(R) platforms
+	  using the ElkhartLake processors.
+	  Say Y if you have such a device.
+	  If unsure select "N".
 
 config SND_SOC_SOF_ELKHARTLAKE
 	tristate
 	select SND_SOC_SOF_HDA_COMMON
 	help
-          This option is not user-selectable but automagically handled by
+	  This option is not user-selectable but automagically handled by
 	  'select' statements at a higher level
 
 config SND_SOC_SOF_HDA_COMMON
diff --git a/sound/soc/xilinx/Kconfig b/sound/soc/xilinx/Kconfig
index 69973179ef15..1d3586b68db7 100644
--- a/sound/soc/xilinx/Kconfig
+++ b/sound/soc/xilinx/Kconfig
@@ -9,15 +9,15 @@ config SND_SOC_XILINX_I2S
 	  encapsulates PCM in AES format and sends AES data.
 
 config SND_SOC_XILINX_AUDIO_FORMATTER
-        tristate "Audio support for the the Xilinx audio formatter"
-        help
-          Select this option to enable Xilinx audio formatter
-          support. This provides DMA platform device support for
-          audio functionality.
+	tristate "Audio support for the the Xilinx audio formatter"
+	help
+	  Select this option to enable Xilinx audio formatter
+	  support. This provides DMA platform device support for
+	  audio functionality.
 
 config SND_SOC_XILINX_SPDIF
-        tristate "Audio support for the the Xilinx SPDIF"
-        help
-          Select this option to enable Xilinx SPDIF Audio.
-          This provides playback and capture of SPDIF audio in
-          AES format.
+	tristate "Audio support for the the Xilinx SPDIF"
+	help
+	  Select this option to enable Xilinx SPDIF Audio.
+	  This provides playback and capture of SPDIF audio in
+	  AES format.
diff --git a/sound/soc/zte/Kconfig b/sound/soc/zte/Kconfig
index a7842e4b791c..a23d4f13ca19 100644
--- a/sound/soc/zte/Kconfig
+++ b/sound/soc/zte/Kconfig
@@ -18,9 +18,9 @@ config ZX_I2S
 	  ZTE ZX I2S interface
 
 config ZX_TDM
-        tristate "ZTE ZX TDM Driver Support"
-        depends on COMMON_CLK
-        select SND_SOC_GENERIC_DMAENGINE_PCM
-        help
-          Say Y or M if you want to add support for codecs attached to the
-          ZTE ZX TDM interface
+	tristate "ZTE ZX TDM Driver Support"
+	depends on COMMON_CLK
+	select SND_SOC_GENERIC_DMAENGINE_PCM
+	help
+	  Say Y or M if you want to add support for codecs attached to the
+	  ZTE ZX TDM interface
diff --git a/sound/usb/Kconfig b/sound/usb/Kconfig
index e2c53a0841da..059242f15d75 100644
--- a/sound/usb/Kconfig
+++ b/sound/usb/Kconfig
@@ -107,24 +107,24 @@ config SND_USB_US122L
 	  will be called snd-usb-us122l.
 
 config SND_USB_6FIRE
-        tristate "TerraTec DMX 6Fire USB"
-        select FW_LOADER
-        select BITREVERSE
-        select SND_RAWMIDI
-        select SND_PCM
-        select SND_VMASTER
-        help
-          Say Y here to include support for TerraTec 6fire DMX USB interface.
-
-          You will need firmware files in order to be able to use the device
-          after it has been coldstarted. An install script for the firmware
-          and further help can be found at
-          http://sixfireusb.sourceforge.net
+	tristate "TerraTec DMX 6Fire USB"
+	select FW_LOADER
+	select BITREVERSE
+	select SND_RAWMIDI
+	select SND_PCM
+	select SND_VMASTER
+	help
+	  Say Y here to include support for TerraTec 6fire DMX USB interface.
+
+	  You will need firmware files in order to be able to use the device
+	  after it has been coldstarted. An install script for the firmware
+	  and further help can be found at
+	  http://sixfireusb.sourceforge.net
 
 config SND_USB_HIFACE
-        tristate "M2Tech hiFace USB-SPDIF driver"
-        select SND_PCM
-        help
+	tristate "M2Tech hiFace USB-SPDIF driver"
+	select SND_PCM
+	help
 	  Select this option to include support for M2Tech hiFace USB-SPDIF
 	  interface.
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
