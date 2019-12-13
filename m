Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0926811DC7B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 04:08:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cUCui+kg3mXsgsPrsyt5LafB7S/zsEyetVd0TM1ufzw=; b=hyunWkWfEqpVmo
	F/vNMXou0D6MkXYp2yI+cMxqZ3qWBi8Kxys/A/8kwfszB+fzvGQhz0kF1Wp3+rZ4F7DYzauF620Q3
	ZlAlIR6hOy5wGc3NI8ypSrDYRvryLzWvB3rvd3To4P+8j3Km2u70P3/0zReXwb8hJgOaU8nT835Uc
	f6jbOB0V0wy/lu3Ll4bkSE9OyLvXfhBJqzPfO92uo/+MBZPdB0p10+fpKR6sJVbr4TgMiwSJukoYt
	TrHLFcfBWkkKI7VGar7b+ro4IVVW7HIRT8oX/6c3ONpoc33lsm5a7Sl0fzu5pmsfFB+xKB+AUANH5
	Yba5dHrBxklFNbiMWYIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifbJY-0006hp-88; Fri, 13 Dec 2019 03:08:24 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifbIO-0005js-Ml
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 03:07:15 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBD379TO088034;
 Thu, 12 Dec 2019 21:07:09 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576206429;
 bh=kRlRIYsKt+gU3zZwmSb+MUKolQB9jPrnYnytPpI7jEc=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=TYNeKFCwEFTrCp6rFmaTzTWPN7UL2owBNI2rKN1k1kJvC+LN12eoBPqc2gzDFhFWH
 B10WPXEOedDhchMvd/xqqL7xyzxevAI5ygpsyNvb09lpphgaTRZ7zXRX5yOSF+3wV9
 meTF+z7ZkQZ0FM/yDX/kSxj3E6gOst0CjKug8mUA=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBD379QX026680;
 Thu, 12 Dec 2019 21:07:09 -0600
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 12
 Dec 2019 21:07:08 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 12 Dec 2019 21:07:08 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBD378f8025240;
 Thu, 12 Dec 2019 21:07:08 -0600
From: Dave Gerlach <d-gerlach@ti.com>
To: Tony Lindgren <tony@atomide.com>, Santosh Shilimkar <ssantosh@kernel.org>
Subject: [PATCH 3/5] ARM: OMAP2+: pm33xx-core: Extend platform_data ops for
 cpuidle
Date: Thu, 12 Dec 2019 21:07:53 -0600
Message-ID: <20191213030755.16096-4-d-gerlach@ti.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213030755.16096-1-d-gerlach@ti.com>
References: <20191213030755.16096-1-d-gerlach@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_190712_818935_6FE57D53 
X-CRM114-Status: GOOD (  18.82  )
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

In order for am335x and am437x to properly enter deeper c-states in
cpuidle they must always call into the sleep33/43xx suspend code and
also sometimes invoke the wkup_m3_ipc driver. These are both controlled
by the pm33xx module so we must provide a method for the platform code
to call back into the module when it is available as the core cpuidle
ops that are invoked by the cpuidle-arm driver must remain as built in.

Extend the init platform op to take an idle function as an argument so
that we can use this to call into the pm33xx module for c-states that
need it. Also add a deinit op so we can unregister this idle function
from the PM core when the pm33xx module gets unloaded.

Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
---
 arch/arm/mach-omap2/pm33xx-core.c    | 20 +++++++++++++++-----
 drivers/soc/ti/pm33xx.c              |  2 +-
 include/linux/platform_data/pm33xx.h |  3 ++-
 3 files changed, 18 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-omap2/pm33xx-core.c b/arch/arm/mach-omap2/pm33xx-core.c
index dc43736f0ae6..388808e90677 100644
--- a/arch/arm/mach-omap2/pm33xx-core.c
+++ b/arch/arm/mach-omap2/pm33xx-core.c
@@ -78,7 +78,7 @@ static int am43xx_check_off_mode_enable(void)
 	return 0;
 }
 
-static int amx3_common_init(void)
+static int amx3_common_init(int (*idle)(u32 wfi_flags))
 {
 	gfx_pwrdm = pwrdm_lookup("gfx_pwrdm");
 	per_pwrdm = pwrdm_lookup("per_pwrdm");
@@ -98,10 +98,12 @@ static int amx3_common_init(void)
 	else
 		omap_set_pwrdm_state(cefuse_pwrdm, PWRDM_POWER_OFF);
 
+	idle_fn = idle;
+
 	return 0;
 }
 
-static int am33xx_suspend_init(void)
+static int am33xx_suspend_init(int (*idle)(u32 wfi_flags))
 {
 	int ret;
 
@@ -112,12 +114,12 @@ static int am33xx_suspend_init(void)
 		return -ENODEV;
 	}
 
-	ret = amx3_common_init();
+	ret = amx3_common_init(idle);
 
 	return ret;
 }
 
-static int am43xx_suspend_init(void)
+static int am43xx_suspend_init(int (*idle)(u32 wfi_flags))
 {
 	int ret = 0;
 
@@ -127,11 +129,17 @@ static int am43xx_suspend_init(void)
 		return ret;
 	}
 
-	ret = amx3_common_init();
+	ret = amx3_common_init(idle);
 
 	return ret;
 }
 
+static int amx3_suspend_deinit(void)
+{
+	idle_fn = NULL;
+	return 0;
+}
+
 static void amx3_pre_suspend_common(void)
 {
 	omap_set_pwrdm_state(gfx_pwrdm, PWRDM_POWER_OFF);
@@ -277,6 +285,7 @@ static void am43xx_prepare_rtc_resume(void)
 
 static struct am33xx_pm_platform_data am33xx_ops = {
 	.init = am33xx_suspend_init,
+	.deinit = amx3_suspend_deinit,
 	.soc_suspend = am33xx_suspend,
 	.cpu_suspend = am33xx_cpu_suspend,
 	.begin_suspend = amx3_begin_suspend,
@@ -292,6 +301,7 @@ static struct am33xx_pm_platform_data am33xx_ops = {
 
 static struct am33xx_pm_platform_data am43xx_ops = {
 	.init = am43xx_suspend_init,
+	.deinit = amx3_suspend_deinit,
 	.soc_suspend = am43xx_suspend,
 	.cpu_suspend = am43xx_cpu_suspend,
 	.begin_suspend = amx3_begin_suspend,
diff --git a/drivers/soc/ti/pm33xx.c b/drivers/soc/ti/pm33xx.c
index ccc6d53fe788..19bdcaca1f21 100644
--- a/drivers/soc/ti/pm33xx.c
+++ b/drivers/soc/ti/pm33xx.c
@@ -503,7 +503,7 @@ static int am33xx_pm_probe(struct platform_device *pdev)
 	suspend_wfi_flags |= WFI_FLAG_WAKE_M3;
 #endif /* CONFIG_SUSPEND */
 
-	ret = pm_ops->init();
+	ret = pm_ops->init(NULL);
 	if (ret) {
 		dev_err(dev, "Unable to call core pm init!\n");
 		ret = -ENODEV;
diff --git a/include/linux/platform_data/pm33xx.h b/include/linux/platform_data/pm33xx.h
index 8e59f2db2adc..644af1d89cfa 100644
--- a/include/linux/platform_data/pm33xx.h
+++ b/include/linux/platform_data/pm33xx.h
@@ -46,7 +46,8 @@ struct am33xx_pm_sram_addr {
 };
 
 struct am33xx_pm_platform_data {
-	int	(*init)(void);
+	int     (*init)(int (*idle)(u32 wfi_flags));
+	int     (*deinit)(void);
 	int	(*soc_suspend)(unsigned int state, int (*fn)(unsigned long),
 			       unsigned long args);
 	int	(*cpu_suspend)(int (*fn)(unsigned long), unsigned long args);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
