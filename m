Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B27D1D47
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 02:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=daRFJaWORpMuJpXstr4j/PTBksFYAtjB/zagphSAKOg=; b=e2vQBjGxcBqPY8
	k4c/jia/SKdSpMoeAm2uSzWRK2O88/FXWP67z6lfzjkms0mfZeICtrMo8pckDuXpd+amiqnv+3gk/
	cUJWwH3P6nxEnUVZg+KyZWLycy8CjvgIUPVOitj323st96Siq1RTZ/Mo2mzOv703u0Fsf0R4UdZys
	59UkQ1BjScgGsKZItjcEfGO/flXU8md+SWwzkLZIJBpf8Jkg/B2dpRE4yQBUvAPjqVsP7WsI0QvoB
	kosXMflZLDZekMCVw6wlTFot7anYzi/MByn7cPPjBYaA2S3hvNNd8D92gglWC4iTdYPyz1/Ag9FqA
	/FV312nmZddpn8+LqMXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIM6R-0000Ws-Eb; Thu, 10 Oct 2019 00:14:47 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIM4N-0007J6-E2
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 00:12:40 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id A28A68140;
 Thu, 10 Oct 2019 00:13:12 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 8/8] ARM: OMAP2+: Initialize voltage controller for omap4
Date: Wed,  9 Oct 2019 17:12:24 -0700
Message-Id: <20191010001224.41826-9-tony@atomide.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191010001224.41826-1-tony@atomide.com>
References: <20191010001224.41826-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_171239_522260_EBE8F909 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Merlijn Wajer <merlijn@wizzup.org>, Pavel Machek <pavel@ucw.cz>,
 linux-arm-kernel@lists.infradead.org, Sebastian Reichel <sre@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We're missing initializing the PRM_VOLTCTRL register for voltage
controller. Let's add omap4_vc_init_pmic_signaling() similar to what we
have for omap3 and enable voltage control for retention.

This brings down droid4 power consumption with mainline kernel to somewhere
between 40 and 50mW from about 70 to 80 mW for the whole device when running
idle with LCD and backlight off, WLAN connected, and USB and modem modules
unloaded.

Mostly just rmmod of omap2430, ohci-platform and phy-mapphone-mdm6600 are
needed to idle USB and shut down the modem. And after that measuring idle
power consumption can be done with reading sysfs entry every ten seconds for
/sys/class/power_supply/battery/power_avg. Then rmmod of phy-cpcap-usb will
save few more mW, but will disable the debug UART.

Note that sometimes CM_L4PER_UART1_CLKCTRL at 0x4a009540 does not idle
properly after unloading of phy-mapphone-mdm6600.

Cc: Merlijn Wajer <merlijn@wizzup.org>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Sebastian Reichel <sre@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/vc.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/mach-omap2/vc.c b/arch/arm/mach-omap2/vc.c
--- a/arch/arm/mach-omap2/vc.c
+++ b/arch/arm/mach-omap2/vc.c
@@ -26,6 +26,16 @@
 #include "scrm44xx.h"
 #include "control.h"
 
+#define OMAP4430_AUTO_CTRL_VDD_IVA(x)		((x) << 4)
+#define OMAP4430_AUTO_CTRL_VDD_MPU(x)		((x) << 2)
+#define OMAP4430_AUTO_CTRL_VDD_CORE(x)		((x) << 0)
+#define OMAP4430_AUTO_CTRL_VDD_RET		2
+
+#define OMAP4_VDD_DEFAULT_VAL	\
+	(OMAP4430_AUTO_CTRL_VDD_IVA(OMAP4430_AUTO_CTRL_VDD_RET) | \
+	 OMAP4430_AUTO_CTRL_VDD_MPU(OMAP4430_AUTO_CTRL_VDD_RET) | \
+	 OMAP4430_AUTO_CTRL_VDD_CORE(OMAP4430_AUTO_CTRL_VDD_RET))
+
 /**
  * struct omap_vc_channel_cfg - describe the cfg_channel bitfield
  * @sa: bit for slave address
@@ -542,9 +552,19 @@ static void omap4_set_timings(struct voltagedomain *voltdm, bool off_mode)
 	writel_relaxed(val, OMAP4_SCRM_CLKSETUPTIME);
 }
 
+static void __init omap4_vc_init_pmic_signaling(struct voltagedomain *voltdm)
+{
+	if (vc.vd)
+		return;
+
+	vc.vd = voltdm;
+	voltdm->write(OMAP4_VDD_DEFAULT_VAL, OMAP4_PRM_VOLTCTRL_OFFSET);
+}
+
 /* OMAP4 specific voltage init functions */
 static void __init omap4_vc_init_channel(struct voltagedomain *voltdm)
 {
+	omap4_vc_init_pmic_signaling(voltdm);
 	omap4_set_timings(voltdm, true);
 	omap4_set_timings(voltdm, false);
 }
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
