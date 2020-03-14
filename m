Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 547AC18565E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 22:44:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQ2f/DAQ+XEX8LHSxNKOtB/0Af4HwMwOutaPaiLK14Y=; b=MlpKamzCEEdS6i
	6r9SC3vdbmyPYXc5Xtwv2EhAKpn4ZrKzXvqCbtNE8SEeuw9YVBUiblPyM/6f5foaRdbwZbip9irPn
	s2p9atyAr7ytWqW5rNHZkxyxDqY/MOIUCzRbt4mOQRzxlqPuNYcTDhaLYaxb9bRxpQcq4BhbIFlBs
	P6qOh4sfPG/bf8VP2lxvpipdRaUb+EM1WkSKvJXvUNaeSDXTkqcM0+aSYPUuUtFzbJz8LtgIkpirD
	ailQ9MGnVe8kxm97xVrmuTKydso/L/FgOyoK/00c+B/ZqthYC3S5A/ITAS1sf4Xb5oQFoXd/cGNT6
	Pt1ULwoSv1qHfmf1/Xxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDEZm-0001wn-UN; Sat, 14 Mar 2020 21:44:10 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDEZF-0001nf-B8
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 21:43:38 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 7439D8211;
 Sat, 14 Mar 2020 21:44:20 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 4/7] ARM: omap2plus_defconfig: Enable more droid4 devices as
 loadable modules
Date: Sat, 14 Mar 2020 14:43:25 -0700
Message-Id: <20200314214328.13342-4-tony@atomide.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200314214328.13342-1-tony@atomide.com>
References: <20200314214328.13342-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_144337_424743_E95EDCC9 
X-CRM114-Status: UNSURE (   6.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable more droid4 devices as loadable modules:

- We have an isl29028 proximity sensor

- Battery has an EEPROM that can be read with w1_ds250x

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/configs/omap2plus_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
--- a/arch/arm/configs/omap2plus_defconfig
+++ b/arch/arm/configs/omap2plus_defconfig
@@ -283,6 +283,7 @@ CONFIG_GPIO_PALMAS=y
 CONFIG_GPIO_TWL4030=y
 CONFIG_W1=m
 CONFIG_HDQ_MASTER_OMAP=m
+CONFIG_W1_SLAVE_DS250X=m
 CONFIG_POWER_AVS=y
 CONFIG_POWER_RESET=y
 CONFIG_POWER_RESET_GPIO=y
@@ -504,6 +505,7 @@ CONFIG_IIO_SW_TRIGGER=m
 CONFIG_IIO_ST_ACCEL_3AXIS=m
 CONFIG_CPCAP_ADC=m
 CONFIG_TI_AM335X_ADC=m
+CONFIG_SENSORS_ISL29028=m
 CONFIG_BMP280=m
 CONFIG_PWM=y
 CONFIG_PWM_OMAP_DMTIMER=m
-- 
2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
