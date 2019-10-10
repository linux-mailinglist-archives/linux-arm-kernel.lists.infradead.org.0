Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FA7D1D43
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 02:13:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5CRfMQzwxHbi74+KgbPfhyuIl6C6X+DcOy5T7wVoE8A=; b=ff1mY7fcFvPy8o
	F6JHINJ9FLho8IR+LTEEKQmidflQwSqHh7UnWC0FCHiGLN+N99bWTiptSmVWgI15bzwG//eRVWIaM
	RrtpXM+KbDRi8jJTQnDFYehY8zmGcwc534NIJEI3lZyD1Jw0SQasoZ+6RvGQgrv6SDT8hHC48ivzf
	Zolb8iK5PIZoSY/ZQqUBL/FWZ/FyMvjZBCB7OFrTjdsUqQUloU/uxm/j/QBBbe3GGmanHS9WeplUI
	kZBdaqW8XJWFGEKoKUMSxbJLcfuaJezzixgwJCFmVfiHf/k67ayF3mgoLfmdacxwCj5oEyvm6Uoo8
	mTVBVyCJbrMuKqHBdRIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIM5Q-00087I-7l; Thu, 10 Oct 2019 00:13:44 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIM4G-0007Cc-Td
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 00:12:34 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 1FAB88200;
 Thu, 10 Oct 2019 00:13:06 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 4/8] ARM: OMAP2+: Update 4430 voltage controller operating
 points
Date: Wed,  9 Oct 2019 17:12:20 -0700
Message-Id: <20191010001224.41826-5-tony@atomide.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191010001224.41826-1-tony@atomide.com>
References: <20191010001224.41826-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_171232_989294_66685EFB 
X-CRM114-Status: UNSURE (   9.53  )
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

The current operating points in the mainline kernel are out of date for
at least omap4430. Let's use the values from Motorola Mapphone Linux
Android kernel as presumably those have been verified.

Note that these are only used by voltage controller, they do not enable
any new operating points for cpufreq. Looking at the recent omap3 cpufreq
related patches posted, that's a totally separate series of patches.

Cc: Merlijn Wajer <merlijn@wizzup.org>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Sebastian Reichel <sre@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/control.h      |  1 +
 arch/arm/mach-omap2/opp4xxx_data.c | 16 +++++++++-------
 2 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-omap2/control.h b/arch/arm/mach-omap2/control.h
--- a/arch/arm/mach-omap2/control.h
+++ b/arch/arm/mach-omap2/control.h
@@ -195,6 +195,7 @@
 #define OMAP44XX_CONTROL_FUSE_MPU_OPP100	0x243
 #define OMAP44XX_CONTROL_FUSE_MPU_OPPTURBO	0x246
 #define OMAP44XX_CONTROL_FUSE_MPU_OPPNITRO	0x249
+#define OMAP44XX_CONTROL_FUSE_MPU_OPPNITROSB	0x24C
 #define OMAP44XX_CONTROL_FUSE_CORE_OPP50	0x254
 #define OMAP44XX_CONTROL_FUSE_CORE_OPP100	0x257
 #define OMAP44XX_CONTROL_FUSE_CORE_OPP100OV	0x25A
diff --git a/arch/arm/mach-omap2/opp4xxx_data.c b/arch/arm/mach-omap2/opp4xxx_data.c
--- a/arch/arm/mach-omap2/opp4xxx_data.c
+++ b/arch/arm/mach-omap2/opp4xxx_data.c
@@ -32,20 +32,22 @@
 
 #define OMAP4430_VDD_MPU_OPP50_UV		1025000
 #define OMAP4430_VDD_MPU_OPP100_UV		1200000
-#define OMAP4430_VDD_MPU_OPPTURBO_UV		1313000
-#define OMAP4430_VDD_MPU_OPPNITRO_UV		1375000
+#define OMAP4430_VDD_MPU_OPPTURBO_UV		1325000
+#define OMAP4430_VDD_MPU_OPPNITRO_UV		1388000
+#define OMAP4430_VDD_MPU_OPPNITROSB_UV		1398000
 
 struct omap_volt_data omap443x_vdd_mpu_volt_data[] = {
 	VOLT_DATA_DEFINE(OMAP4430_VDD_MPU_OPP50_UV, OMAP44XX_CONTROL_FUSE_MPU_OPP50, 0xf4, 0x0c),
 	VOLT_DATA_DEFINE(OMAP4430_VDD_MPU_OPP100_UV, OMAP44XX_CONTROL_FUSE_MPU_OPP100, 0xf9, 0x16),
 	VOLT_DATA_DEFINE(OMAP4430_VDD_MPU_OPPTURBO_UV, OMAP44XX_CONTROL_FUSE_MPU_OPPTURBO, 0xfa, 0x23),
 	VOLT_DATA_DEFINE(OMAP4430_VDD_MPU_OPPNITRO_UV, OMAP44XX_CONTROL_FUSE_MPU_OPPNITRO, 0xfa, 0x27),
+	VOLT_DATA_DEFINE(OMAP4430_VDD_MPU_OPPNITROSB_UV, OMAP44XX_CONTROL_FUSE_MPU_OPPNITROSB, 0xfa, 0x27),
 	VOLT_DATA_DEFINE(0, 0, 0, 0),
 };
 
-#define OMAP4430_VDD_IVA_OPP50_UV		1013000
-#define OMAP4430_VDD_IVA_OPP100_UV		1188000
-#define OMAP4430_VDD_IVA_OPPTURBO_UV		1300000
+#define OMAP4430_VDD_IVA_OPP50_UV		 950000
+#define OMAP4430_VDD_IVA_OPP100_UV		1114000
+#define OMAP4430_VDD_IVA_OPPTURBO_UV		1291000
 
 struct omap_volt_data omap443x_vdd_iva_volt_data[] = {
 	VOLT_DATA_DEFINE(OMAP4430_VDD_IVA_OPP50_UV, OMAP44XX_CONTROL_FUSE_IVA_OPP50, 0xf4, 0x0c),
@@ -54,8 +56,8 @@ struct omap_volt_data omap443x_vdd_iva_volt_data[] = {
 	VOLT_DATA_DEFINE(0, 0, 0, 0),
 };
 
-#define OMAP4430_VDD_CORE_OPP50_UV		1025000
-#define OMAP4430_VDD_CORE_OPP100_UV		1200000
+#define OMAP4430_VDD_CORE_OPP50_UV		 962000
+#define OMAP4430_VDD_CORE_OPP100_UV		1127000
 
 struct omap_volt_data omap443x_vdd_core_volt_data[] = {
 	VOLT_DATA_DEFINE(OMAP4430_VDD_CORE_OPP50_UV, OMAP44XX_CONTROL_FUSE_CORE_OPP50, 0xf4, 0x0c),
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
