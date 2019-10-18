Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1461DD404
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 00:22:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1zitChBV+tbRSc9u7o0jUsyjiGdk/7i33pXYvJeh8Ao=; b=kX6tneAoVMY4fO
	hdfqmw456hz9y3hvf4TuuNjvGhoUkmV6a7b/j3bpnOoMriLMC0SSWVcDGSw+giagoVmESJCxzz+pV
	akgqB/VAbTAvzc8jtfNRPW7c4W4l3TUVMzCEeUwj1HcSfkwc9O1Il7mUZVrApzkxWllWhH1BY7vq1
	a1H1s19svPqa984TNHw2ozGIBYFz3+WhgG4ypBIueaM5XXR0C7k26F0V8YG88FmaImrT/EvlIJrBz
	4zkYwKgWKTK4/DAlgbSKq0Tq8RqOIPYMvm5t+gEyJDcrt/ld12cE+KKP/CvxWTuYOTGr8heAvFAzC
	KMIMbx36kXIubgPMInow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLad9-0001OF-BY; Fri, 18 Oct 2019 22:21:55 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLaci-0001BM-Sv
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 22:21:30 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 1002D8168;
 Fri, 18 Oct 2019 22:22:00 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 1/2] ARM: OMAP2+: Configure voltage controller for retention
Date: Fri, 18 Oct 2019 15:21:06 -0700
Message-Id: <20191018222107.32917-2-tony@atomide.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191018222107.32917-1-tony@atomide.com>
References: <20191018222107.32917-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_152128_995856_11F86FDD 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Merlijn Wajer <merlijn@wizzup.org>, Pavel Machek <pavel@ucw.cz>,
 linux-arm-kernel@lists.infradead.org, Sebastian Reichel <sre@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Similar to existing omap3_vc_set_pmic_signaling(), let's add omap4
specific omap4_vc_set_pmic_signaling(). This allows the configured
devices to enable voltage controller for retention later on during
init.

Cc: Merlijn Wajer <merlijn@wizzup.org>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Sebastian Reichel <sre@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/vc.c | 32 +++++++++++++++++++++++++++++---
 arch/arm/mach-omap2/vc.h |  2 +-
 2 files changed, 30 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-omap2/vc.c b/arch/arm/mach-omap2/vc.c
--- a/arch/arm/mach-omap2/vc.c
+++ b/arch/arm/mach-omap2/vc.c
@@ -36,15 +36,21 @@
 #define OMAP4430_AUTO_CTRL_VDD_CORE(x)		((x) << 0)
 #define OMAP4430_AUTO_CTRL_VDD_RET		2
 
-#define OMAP4_VDD_DEFAULT_VAL	\
+#define OMAP4430_VDD_I2C_DISABLE_MASK	\
 	(OMAP4430_VDD_IVA_I2C_DISABLE | \
-	 OMAP4430_VDD_MPU_I2C_DISABLE |	 \
-	 OMAP4430_VDD_CORE_I2C_DISABLE | \
+	 OMAP4430_VDD_MPU_I2C_DISABLE | \
+	 OMAP4430_VDD_CORE_I2C_DISABLE)
+
+#define OMAP4_VDD_DEFAULT_VAL	\
+	(OMAP4430_VDD_I2C_DISABLE_MASK | \
 	 OMAP4430_VDD_IVA_PRESENCE | OMAP4430_VDD_MPU_PRESENCE | \
 	 OMAP4430_AUTO_CTRL_VDD_IVA(OMAP4430_AUTO_CTRL_VDD_RET) | \
 	 OMAP4430_AUTO_CTRL_VDD_MPU(OMAP4430_AUTO_CTRL_VDD_RET) | \
 	 OMAP4430_AUTO_CTRL_VDD_CORE(OMAP4430_AUTO_CTRL_VDD_RET))
 
+#define OMAP4_VDD_RET_VAL	\
+	(OMAP4_VDD_DEFAULT_VAL & ~OMAP4430_VDD_I2C_DISABLE_MASK)
+
 /**
  * struct omap_vc_channel_cfg - describe the cfg_channel bitfield
  * @sa: bit for slave address
@@ -299,6 +305,26 @@ void omap3_vc_set_pmic_signaling(int core_next_state)
 	}
 }
 
+void omap4_vc_set_pmic_signaling(int core_next_state)
+{
+	struct voltagedomain *vd = vc.vd;
+	u32 val;
+
+	if (!vd)
+		return;
+
+	switch (core_next_state) {
+	case PWRDM_POWER_RET:
+		val = OMAP4_VDD_RET_VAL;
+		break;
+	default:
+		val = OMAP4_VDD_DEFAULT_VAL;
+		break;
+	}
+
+	vd->write(val, OMAP4_PRM_VOLTCTRL_OFFSET);
+}
+
 /*
  * Configure signal polarity for sys_clkreq and sys_off_mode pins
  * as the default values are wrong and can cause the system to hang
diff --git a/arch/arm/mach-omap2/vc.h b/arch/arm/mach-omap2/vc.h
--- a/arch/arm/mach-omap2/vc.h
+++ b/arch/arm/mach-omap2/vc.h
@@ -117,7 +117,7 @@ extern struct omap_vc_param omap4_iva_vc_data;
 extern struct omap_vc_param omap4_core_vc_data;
 
 void omap3_vc_set_pmic_signaling(int core_next_state);
-
+void omap4_vc_set_pmic_signaling(int core_next_state);
 
 void omap_vc_init_channel(struct voltagedomain *voltdm);
 int omap_vc_pre_scale(struct voltagedomain *voltdm,
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
