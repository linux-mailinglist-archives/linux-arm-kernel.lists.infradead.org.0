Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6084C474
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 02:33:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U1km/G5HV94ZWxF+J6PZ7gCX4j5rzRjZHEJkzvWchm0=; b=FdMK91G5fQ9eW1
	Ipr6KDutXQBo4VmSqL7Ten4j5RoJaqwyzP8RME5vm3GRkwxcGq8qN2H6Dyq3gSQG8fidImj2b2z5N
	knD9MeytrA8gkFROfKnWC9K6s7XfPWUoSp51kueTNTfUoWqq4YXYUkP0GXC34apPPuSM6XvTM9rgm
	oK2InojP3DaeOQ/rwBS5ymOizUwRi49QzXWu18vnVa3vWTz5v+5kBHiFP/i2NvkLRQRo3ELB+xxaq
	nhfJG8KiSkcKtZHc5n2pa0ErgihFUJhAaVXREYb+JjOytCzTFrRdPFofrNE3MRlmU8TZPwnRoylTi
	Nm/ZViRuluXOs9uCFXmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdl0v-0008Je-SE; Thu, 20 Jun 2019 00:33:18 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdl0l-0008JM-A2
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 00:33:08 +0000
Received: by mail-pf1-x449.google.com with SMTP id 5so701172pff.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 17:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=X+mFn9cHNXrPrO08PdLE+GlXqr2sZ9XFcYjGhCDrNT0=;
 b=TLklH9nLFOLMs3R7W5xVsUqCq48qjSe8I/QtOVXqNxfoDMw3JYAV9hS2AoxjNp5+CB
 P+5fc9CT6LeOC4KIoIwilv2R9vkqTZTyCQYo9aRk0BdzYMScE4Drq/06MqlWTUBH0noF
 P9NZUhFfIufeB+GQvEtwZN/1VqLYsC7DaEerdpUZYvDpBP3awLFB5AfFoYxkuQ5tUhFX
 n26KPlYJq0rUlyP6s2+t0zipmQFe0aNJ6+8TvgrGf/yuCdrpSwRfOkklvyFRzFxt88Rf
 oxhk4tG/H09xDMRJT0BZYbQj93Re6a488AbXmg4GVGV1HHS+sERPR5GVQ+7petvwmKlA
 Ml9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=X+mFn9cHNXrPrO08PdLE+GlXqr2sZ9XFcYjGhCDrNT0=;
 b=YEwLlx9a+OLt4TuZ6Ne+BtFoL53Mxn2Ib+6HKU89YKFskWFrgOdGizo5ROPIHUT7F/
 A4BmsQ3X9ynN8e7vufSHjM3tLDvrCPJ7xajVOfgwrb2RTsJAGo0+ADsvWttYtPYzh40k
 W8M3e3PyyD5genIfeSq4uKnMk/Se99Y/yqtv5qDVFo7Zzz5qsosDunj+0dSLIQ0yQLpp
 WOk0B1ZjQ3ET9xz+Aw5sHEaSrdmsAyJrhvSiVv6l/oOTlCn+HVRk4ec5UT4NuFe0kn99
 YeUHllbC/sJx67e7b+hwU5TdVg4w+ZQ9xv3fZxE9p7wzDtzTDD7mE8ucWTEGG/y5hR7e
 IyVA==
X-Gm-Message-State: APjAAAW2rrnVXCKhMgAJT5qQIvv1MfS7Cgi0ahK6gfrNYyhLlL5KIgDP
 M87c++0nHe7DgiKJAw2WOVuaaDBCwgNvz+Xucy8=
X-Google-Smtp-Source: APXvYqzzVUV/nQqA+fJUnmpuX9ZNJBhzK4erSvtXYXSI6WT/je4RvhDA6zk5vGGhUNaR2ayYvRuDeBXmvoaoQxBxT1I=
X-Received: by 2002:a63:231c:: with SMTP id j28mr10162444pgj.430.1560990784744; 
 Wed, 19 Jun 2019 17:33:04 -0700 (PDT)
Date: Wed, 19 Jun 2019 17:32:42 -0700
Message-Id: <20190620003244.261595-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH] arm64: defconfig: update and enable CONFIG_RANDOMIZE_BASE
From: Nick Desaulniers <ndesaulniers@google.com>
To: catalin.marinas@arm.com, will.deacon@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_173307_377039_3E414492 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -6.9 (------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-6.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: mark.rutland@arm.com, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Arnd Bergmann <arnd@arndb.de>, ard.biesheuvel@linaro.org,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, broonie@kernel.org,
 Jagan Teki <jagan@amarulasolutions.com>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Generated via:
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make defconfig
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make menuconfig
<enable CONFIG_RANDOMIZE_BASE aka KASLR>
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make savedefconfig
$ mv defconfig arch/arm64/configs/defconfig

Removes explicit enablement of:
CONFIG_TI_SCI_PROTOCOL
CONFIG_TI_MESSAGE_MANAGER
CONFIG_SOC_TI
CONFIG_DEVFREQ_GOV_SIMPLE_ONDEMAND

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm64/configs/defconfig | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4d583514258c..54d35e847836 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -68,6 +68,7 @@ CONFIG_KEXEC=y
 CONFIG_CRASH_DUMP=y
 CONFIG_XEN=y
 CONFIG_COMPAT=y
+CONFIG_RANDOMIZE_BASE=y
 CONFIG_HIBERNATION=y
 CONFIG_WQ_POWER_EFFICIENT_DEFAULT=y
 CONFIG_ARM_CPUIDLE=y
@@ -86,7 +87,6 @@ CONFIG_ARM_TEGRA186_CPUFREQ=y
 CONFIG_ARM_SCPI_PROTOCOL=y
 CONFIG_RASPBERRYPI_FIRMWARE=y
 CONFIG_INTEL_STRATIX10_SERVICE=y
-CONFIG_TI_SCI_PROTOCOL=y
 CONFIG_EFI_CAPSULE_LOADER=y
 CONFIG_IMX_SCU=y
 CONFIG_IMX_SCU_PD=y
@@ -191,7 +191,6 @@ CONFIG_PCIE_QCOM=y
 CONFIG_PCIE_ARMADA_8K=y
 CONFIG_PCIE_KIRIN=y
 CONFIG_PCIE_HISI_STB=y
-CONFIG_UEVENT_HELPER_PATH="/sbin/hotplug"
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_HISILICON_LPC=y
@@ -365,8 +364,8 @@ CONFIG_SPI_PL022=y
 CONFIG_SPI_ROCKCHIP=y
 CONFIG_SPI_QUP=y
 CONFIG_SPI_S3C64XX=y
-CONFIG_SPI_SPIDEV=m
 CONFIG_SPI_SUN6I=y
+CONFIG_SPI_SPIDEV=m
 CONFIG_SPMI=y
 CONFIG_PINCTRL_SINGLE=y
 CONFIG_PINCTRL_MAX77620=y
@@ -658,7 +657,6 @@ CONFIG_ARM_MHU=y
 CONFIG_IMX_MBOX=y
 CONFIG_PLATFORM_MHU=y
 CONFIG_BCM2835_MBOX=y
-CONFIG_TI_MESSAGE_MANAGER=y
 CONFIG_QCOM_APCS_IPC=y
 CONFIG_ROCKCHIP_IOMMU=y
 CONFIG_TEGRA_IOMMU_SMMU=y
@@ -696,9 +694,7 @@ CONFIG_ARCH_TEGRA_210_SOC=y
 CONFIG_ARCH_TEGRA_186_SOC=y
 CONFIG_ARCH_TEGRA_194_SOC=y
 CONFIG_ARCH_K3_AM6_SOC=y
-CONFIG_SOC_TI=y
 CONFIG_TI_SCI_PM_DOMAINS=y
-CONFIG_DEVFREQ_GOV_SIMPLE_ONDEMAND=y
 CONFIG_EXTCON_USB_GPIO=y
 CONFIG_EXTCON_USBC_CROS_EC=y
 CONFIG_MEMORY=y
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
