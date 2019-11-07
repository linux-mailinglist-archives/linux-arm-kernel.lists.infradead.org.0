Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4CDF2C77
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 11:33:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GACE3lTPz84qIYr27hvA+0ZUUj1EPpB+eZy7lWh2fW4=; b=bTLxSrwuT7C6b3
	V9OmXg2k8Kxl0hGu+Ni68hnSGMzPZQgGoGVpAkGTRDSa9Uu/ASRKA1F3pdX8A1XEy9s41NGC93gDI
	PtIIQNcmbHn5+4NWOrWm/b8vgavO3lRgOizJQPUEcwoCWSYobRlY90KSDXc1POntdKUNBRsP7KwjG
	mbC6lYbMG1opZBxbH17YjujD6CJsUYGMAC33NU7IBOD3kY+r/lLfIzBcMlE0hiVCPJrd83uiEYerJ
	tu18lICdWrPeL1Yev0VhTjSJzu6RvE+3ST6jKv5z4bPGR0xKCXGNEVC9wE0hw3VVYetIcE6r8twxy
	67m1AK1UrTCL8Wn9MgBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSf61-0005UI-P7; Thu, 07 Nov 2019 10:32:57 +0000
Received: from mo6-p04-ob.smtp.rzone.de ([2a01:238:20a:202:5304::5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSf4M-0003sT-4B
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 10:31:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1573122661;
 s=strato-dkim-0002; d=goldelico.com;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=mNLH4riRUq1p8a4+5caD9BLFnhL7l1H/pJL1Sfpeh3w=;
 b=GRFpuCFIpshV+BCO4dW17i3BR759I4CmbMMPW1uQcnoM4nYV9CYkjeSWdmKKkG1XSt
 Fj8O5w6WJG+bCSR8Yy3U3WRDqgIlncUxnol7oLJhIEh0AwEWzpNZj4Tlyi4aug4hk3O1
 yteCKRAGhlvGaUXsrAoSfJqC1qRVCtenNpa260HHTqXg9qXWcSzvRwjHJ/kt1F6ALdOw
 n61JjSweH/id1n451BKvobO/c/9m9wca8WYI4vaUfiHDGEpBbON0V8o460ekwRtAFIDq
 ZWZ3T5zdbCW+ArQvFW1sU7MyX8QUte4BQM7lIeGgtm9KKCtBp7yVQ+Kewxp9vWw9VdoX
 6P5g==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o1OAA2UNf2M7PR5/L9P0"
X-RZG-CLASS-ID: mo00
Received: from iMac.fritz.box by smtp.strato.de (RZmta 44.29.0 DYNA|AUTH)
 with ESMTPSA id L09db3vA7AUpdRu
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Thu, 7 Nov 2019 11:30:51 +0100 (CET)
From: "H. Nikolaus Schaller" <hns@goldelico.com>
To: =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Mike Rapoport <rppt@linux.ibm.com>, David Sterba <dsterba@suse.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Petr Mladek <pmladek@suse.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Kefeng Wang <wangkefeng.wang@huawei.com>,
 Yangtao Li <tiny.windzz@gmail.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 John Stultz <john.stultz@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH v3 05/12] omap: pdata-quirks: revert pandora specific gpiod
 additions
Date: Thu,  7 Nov 2019 11:30:38 +0100
Message-Id: <a90b488031c3d5da2feb2f157efa6c4287cf1922.1573122644.git.hns@goldelico.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1573122644.git.hns@goldelico.com>
References: <cover.1573122644.git.hns@goldelico.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_023114_317059_01C291F3 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5304:0:0:5 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, letux-kernel@openphoenux.org,
 linux-mmc@vger.kernel.org, kernel@pyra-handheld.com,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

introduced by commit

efdfeb079cc3b ("regulator: fixed: Convert to use GPIO descriptor only")

We must remove this from mainline first, so that the following patch
to remove the openpandora quirks for mmc3 and wl1251 cleanly applies
to stable v4.9, v4.14, v4.19 where the above mentioned patch is not yet
present.

Since the code affected is removed (no pandora gpios in pdata-quirks
and more), there will be no matching revert-of-the-revert.

Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
---
 arch/arm/mach-omap2/pdata-quirks.c | 19 ++++---------------
 1 file changed, 4 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mach-omap2/pdata-quirks.c b/arch/arm/mach-omap2/pdata-quirks.c
index 2efd18e8824c..800a602c06ec 100644
--- a/arch/arm/mach-omap2/pdata-quirks.c
+++ b/arch/arm/mach-omap2/pdata-quirks.c
@@ -7,7 +7,6 @@
 #include <linux/clk.h>
 #include <linux/davinci_emac.h>
 #include <linux/gpio.h>
-#include <linux/gpio/machine.h>
 #include <linux/init.h>
 #include <linux/kernel.h>
 #include <linux/of_platform.h>
@@ -334,7 +333,9 @@ static struct regulator_init_data pandora_vmmc3 = {
 static struct fixed_voltage_config pandora_vwlan = {
 	.supply_name		= "vwlan",
 	.microvolts		= 1800000, /* 1.8V */
+	.gpio			= PANDORA_WIFI_NRESET_GPIO,
 	.startup_delay		= 50000, /* 50ms */
+	.enable_high		= 1,
 	.init_data		= &pandora_vmmc3,
 };
 
@@ -346,19 +347,6 @@ static struct platform_device pandora_vwlan_device = {
 	},
 };
 
-static struct gpiod_lookup_table pandora_vwlan_gpiod_table = {
-	.dev_id = "reg-fixed-voltage.1",
-	.table = {
-		/*
-		 * As this is a low GPIO number it should be at the first
-		 * GPIO bank.
-		 */
-		GPIO_LOOKUP("gpio-0-31", PANDORA_WIFI_NRESET_GPIO,
-			    NULL, GPIO_ACTIVE_HIGH),
-		{ },
-	},
-};
-
 static void pandora_wl1251_init_card(struct mmc_card *card)
 {
 	/*
@@ -380,6 +368,8 @@ static struct omap2_hsmmc_info pandora_mmc3[] = {
 	{
 		.mmc		= 3,
 		.caps		= MMC_CAP_4_BIT_DATA | MMC_CAP_POWER_OFF_CARD,
+		.gpio_cd	= -EINVAL,
+		.gpio_wp	= -EINVAL,
 		.init_card	= pandora_wl1251_init_card,
 	},
 	{}	/* Terminator */
@@ -418,7 +408,6 @@ static void __init pandora_wl1251_init(void)
 static void __init omap3_pandora_legacy_init(void)
 {
 	platform_device_register(&pandora_backlight);
-	gpiod_add_lookup_table(&pandora_vwlan_gpiod_table);
 	platform_device_register(&pandora_vwlan_device);
 	omap_hsmmc_init(pandora_mmc3);
 	omap_hsmmc_late_init(pandora_mmc3);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
