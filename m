Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB8311DC7A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 04:08:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9eVV9rzAWgPzdQsR060ov0+SObxVoESM0WGd+kmlrXo=; b=iwnoNU5G3trwur
	42JY7RercMT2tXksZ6VSZDQmfa0kFnjkleDX+zrYDiUH1qK/PP7XG8Ta/DakbyT9rILhljqNtxxlv
	BIVN4ksPqEHjLqHdR0kr8qSAZurpkH3/e6Rvl/xuwHugWelb+d81s65oMABIgySFEH9D5MMV7trWy
	w4ogvpDmnWNHFcnpwFsCU4HAbAwNAOUZ+bHu0HGlzMT+HwdeIqkKLpQmPI09cv9ILBi5cNH5zlOUq
	a+aMsLjoaq3Cz71AUcFzItFqkq7w9pSOepZo5XFJl4f+UAp93IZmaa9kmVCd2Bd72Q475FdKzDHvC
	8byyYBMAbizVDpkGHalg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifbJL-0006Sf-1Y; Fri, 13 Dec 2019 03:08:11 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifbIO-0005jR-95
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 03:07:15 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBD379b5088029;
 Thu, 12 Dec 2019 21:07:09 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576206429;
 bh=wNSqEH38Oed8sIgIM32TSJQF8xXX52B/JVDKh3OpWOw=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=N4/dr+7XOITaQenMSnj+A5PZIsJrqhAWV6RKFqKTUIKX1FRk/ql6r6o5FQQczHJh+
 BqeffP4cDNdmnC8Hhm22vH2HLaXBsydDw5h7lHPzFjRWVLEpAQV74thWOcT7PCQSwE
 ytn0ma5+ob90IWMf1V8oeRY4bDB39pFtHp1739t4=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBD379F8128880
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 12 Dec 2019 21:07:09 -0600
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 12
 Dec 2019 21:07:08 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 12 Dec 2019 21:07:08 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBD3782E019218;
 Thu, 12 Dec 2019 21:07:08 -0600
From: Dave Gerlach <d-gerlach@ti.com>
To: Tony Lindgren <tony@atomide.com>, Santosh Shilimkar <ssantosh@kernel.org>
Subject: [PATCH 2/5] ARM: OMAP2+: pm33xx-core: Add cpuidle_ops for
 am335x/am437x
Date: Thu, 12 Dec 2019 21:07:52 -0600
Message-ID: <20191213030755.16096-3-d-gerlach@ti.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213030755.16096-1-d-gerlach@ti.com>
References: <20191213030755.16096-1-d-gerlach@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_190712_396479_495B6F0C 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Dave Gerlach <d-gerlach@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

am335x and am437x can now make use of the generic cpuidle-arm driver.
This requires that we define init and suspend ops to be passed set as
the cpuidle ops for the SoC. These ops are invoked directly at the last
stage of the cpuidle-arm driver in order to allow low level platform
code to run and bring the CPU the rest of the way into it's desired idle
state. It is required that the CPUIDLE_METHOD_OF_DECLARE be called from
code that is built in so define these ops in pm33xx-core where the
always built-in portion of the PM code for these SoCs lives.

Additionally, although an soc_suspend function is already exposed by the
pm33xx platform code, it contains additional operations needed for full
SoC suspend beyond what is needed for a relatively simple CPU suspend
needed during cpuidle. To get around this introduce cpu_suspend ops to
be used by the am335x and am437x PM driver for the last stage of cpuidle
path.

Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
---
 arch/arm/mach-omap2/pm33xx-core.c    | 117 ++++++++++++++++++++++++++-
 include/linux/platform_data/pm33xx.h |   3 +
 2 files changed, 119 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap2/pm33xx-core.c b/arch/arm/mach-omap2/pm33xx-core.c
index f11442ed3eff..dc43736f0ae6 100644
--- a/arch/arm/mach-omap2/pm33xx-core.c
+++ b/arch/arm/mach-omap2/pm33xx-core.c
@@ -6,11 +6,14 @@
  *	Dave Gerlach
  */
 
+#include <linux/cpuidle.h>
+#include <linux/platform_data/pm33xx.h>
+#include <asm/cpuidle.h>
 #include <asm/smp_scu.h>
 #include <asm/suspend.h>
 #include <linux/errno.h>
-#include <linux/platform_data/pm33xx.h>
 #include <linux/clk.h>
+#include <linux/cpu.h>
 #include <linux/platform_data/gpio-omap.h>
 #include <linux/pinctrl/pinmux.h>
 #include <linux/wkup_m3_ipc.h>
@@ -34,6 +37,14 @@ static struct clockdomain *gfx_l4ls_clkdm;
 static void __iomem *scu_base;
 static struct omap_hwmod *rtc_oh;
 
+static int (*idle_fn)(u32 wfi_flags);
+
+struct amx3_idle_state {
+	int wfi_flags;
+};
+
+static struct amx3_idle_state *idle_states;
+
 static int am43xx_map_scu(void)
 {
 	scu_base = ioremap(scu_a9_get_base(), SZ_256);
@@ -177,6 +188,43 @@ static int am43xx_suspend(unsigned int state, int (*fn)(unsigned long),
 	return ret;
 }
 
+static int am33xx_cpu_suspend(int (*fn)(unsigned long), unsigned long args)
+{
+	int ret = 0;
+
+	if (omap_irq_pending() || need_resched())
+		return ret;
+
+	ret = cpu_suspend(args, fn);
+
+	return ret;
+}
+
+static int am43xx_cpu_suspend(int (*fn)(unsigned long), unsigned long args)
+{
+	int ret = 0;
+
+	if (!scu_base)
+		return 0;
+
+	scu_power_mode(scu_base, SCU_PM_DORMANT);
+	ret = cpu_suspend(args, fn);
+	scu_power_mode(scu_base, SCU_PM_NORMAL);
+
+	return ret;
+}
+
+static void amx3_begin_suspend(void)
+{
+	cpu_idle_poll_ctrl(true);
+}
+
+static void amx3_finish_suspend(void)
+{
+	cpu_idle_poll_ctrl(false);
+}
+
+
 static struct am33xx_pm_sram_addr *amx3_get_sram_addrs(void)
 {
 	if (soc_is_am33xx())
@@ -230,6 +278,9 @@ static void am43xx_prepare_rtc_resume(void)
 static struct am33xx_pm_platform_data am33xx_ops = {
 	.init = am33xx_suspend_init,
 	.soc_suspend = am33xx_suspend,
+	.cpu_suspend = am33xx_cpu_suspend,
+	.begin_suspend = amx3_begin_suspend,
+	.finish_suspend = amx3_finish_suspend,
 	.get_sram_addrs = amx3_get_sram_addrs,
 	.save_context = am33xx_save_context,
 	.restore_context = am33xx_restore_context,
@@ -242,6 +293,9 @@ static struct am33xx_pm_platform_data am33xx_ops = {
 static struct am33xx_pm_platform_data am43xx_ops = {
 	.init = am43xx_suspend_init,
 	.soc_suspend = am43xx_suspend,
+	.cpu_suspend = am43xx_cpu_suspend,
+	.begin_suspend = amx3_begin_suspend,
+	.finish_suspend = amx3_finish_suspend,
 	.get_sram_addrs = amx3_get_sram_addrs,
 	.save_context = am43xx_save_context,
 	.restore_context = am43xx_restore_context,
@@ -277,3 +331,64 @@ int __init amx3_common_pm_init(void)
 
 	return 0;
 }
+
+static int __init amx3_idle_init(struct device_node *cpu_node, int cpu)
+{
+	struct device_node *state_node;
+	struct amx3_idle_state states[CPUIDLE_STATE_MAX];
+	int i;
+	int state_count = 1;
+
+	for (i = 0; ; i++) {
+		state_node = of_parse_phandle(cpu_node, "cpu-idle-states", i);
+		if (!state_node)
+			break;
+
+		if (!of_device_is_available(state_node))
+			continue;
+
+		if (i == CPUIDLE_STATE_MAX) {
+			pr_warn("%s: cpuidle states reached max possible\n",
+				__func__);
+			break;
+		}
+
+		states[state_count].wfi_flags = 0;
+
+		if (of_property_read_bool(state_node, "ti,idle-wkup-m3"))
+			states[state_count].wfi_flags |= WFI_FLAG_WAKE_M3 |
+							 WFI_FLAG_FLUSH_CACHE;
+
+		state_count++;
+	}
+
+	idle_states = kcalloc(state_count, sizeof(*idle_states), GFP_KERNEL);
+	if (!idle_states)
+		return -ENOMEM;
+
+	for (i = 1; i < state_count; i++)
+		idle_states[i].wfi_flags = states[i].wfi_flags;
+
+	return 0;
+}
+
+static int amx3_idle_enter(unsigned long index)
+{
+	struct amx3_idle_state *idle_state = &idle_states[index];
+
+	if (!idle_state)
+		return -EINVAL;
+
+	if (idle_fn)
+		idle_fn(idle_state->wfi_flags);
+
+	return 0;
+}
+
+static struct cpuidle_ops amx3_cpuidle_ops __initdata = {
+	.init = amx3_idle_init,
+	.suspend = amx3_idle_enter,
+};
+
+CPUIDLE_METHOD_OF_DECLARE(pm33xx_idle, "ti,am3352", &amx3_cpuidle_ops);
+CPUIDLE_METHOD_OF_DECLARE(pm43xx_idle, "ti,am4372", &amx3_cpuidle_ops);
diff --git a/include/linux/platform_data/pm33xx.h b/include/linux/platform_data/pm33xx.h
index dd5971937a64..8e59f2db2adc 100644
--- a/include/linux/platform_data/pm33xx.h
+++ b/include/linux/platform_data/pm33xx.h
@@ -49,6 +49,9 @@ struct am33xx_pm_platform_data {
 	int	(*init)(void);
 	int	(*soc_suspend)(unsigned int state, int (*fn)(unsigned long),
 			       unsigned long args);
+	int	(*cpu_suspend)(int (*fn)(unsigned long), unsigned long args);
+	void    (*begin_suspend)(void);
+	void    (*finish_suspend)(void);
 	struct  am33xx_pm_sram_addr *(*get_sram_addrs)(void);
 	void __iomem *(*get_rtc_base_addr)(void);
 	void (*save_context)(void);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
