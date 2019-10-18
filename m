Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFF1DD00D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 22:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+ZVyT491NUQiYvXJH2hx6EZbTQRb8y21TS0Xnghjo8=; b=Kvp+O9sqV8d236
	XckZKoqbT1HSp6JMLXnr9wxoMtHLqqIyg4xwYqP21An9CqjYrHs+2yKnCp9JS59eHGk+slsmZZixR
	YgcdiN+QZb78F5uo88exQv3iciZTb9qM2fnm3scPps1KxwREBOTB4px50nCcZ3y5RmkEdTVQHl60i
	s7BQ3wCpeduoqe0zJ/fyQmMcNE4gYBHnIJduuP87jP7s3B+39tfixPzHgtmd+X1I3TuoLx6wIIs1R
	7rf872VdDHubTxnMB6ty7TUUKxFHFIIYMxsZbyO7UXJhGbejClNPP0MokpdcU4vVQFu1030mSS3HN
	pFpm0u59NC5Oo7oL0YyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLYpm-0006Mo-4Q; Fri, 18 Oct 2019 20:26:50 +0000
Received: from mo6-p04-ob.smtp.rzone.de ([2a01:238:20a:202:5304::3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLYol-0005eT-5I
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 20:25:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1571430344;
 s=strato-dkim-0002; d=goldelico.com;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=6hoERFZim5hfupsdAdPBbE1aZZcYzc6LWGFqjHWxpZ4=;
 b=DbiHUuQ2AqW3OkGIeWEycTPA9hbrvVd2RqnGrFlzHwe66BcyaASLXElSTEEOCgy56P
 1aK3S2G581+WUZMniqmFjWSoYwandakFuj4kUS8IzI57Qtf3ojS5tIx0lahj2t+wvDuR
 Ytnt6g1C+4dLJ/qZxhrRzCke6LF/BXfY3ZqX5VICiegdaJSomkLH5o0Mx50n9+hJK20f
 15X/ACoJLVR9pvj/vr0dpPxYPl2MORdZt5uDsviAnjGXCuts7Uymtle9WYOE6yiZC+0N
 ZaO+o78oiva36Hp0Hdcb7EVkd3d0Ucf8XKZqHsmu77Z28n4kQF5qUUD9Q4mnylMr01IP
 YT6w==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o1mfYzBGHXH6F3CFF60="
X-RZG-CLASS-ID: mo00
Received: from iMac.fritz.box by smtp.strato.de (RZmta 44.28.1 DYNA|AUTH)
 with ESMTPSA id R0b2a8v9IKPaDUr
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Fri, 18 Oct 2019 22:25:36 +0200 (CEST)
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
Subject: [PATCH 5/9] omap: pdata-quirks: remove openpandora quirks for mmc3
 and wl1251
Date: Fri, 18 Oct 2019 22:25:26 +0200
Message-Id: <63f59daa6b6e079905ff128b88282cf2c72e3540.1571430329.git.hns@goldelico.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1571430329.git.hns@goldelico.com>
References: <cover.1571430329.git.hns@goldelico.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_132547_364158_57901F6A 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5304:0:0:3 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 stable@vger.kernel.org, netdev@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With a wl1251 child node of mmc3 in the device tree decoded
in omap_hsmmc.c to handle special wl1251 initialization, we do
no longer need to instantiate the mmc3 through pdata quirks.

We also can remove the wlan regulator and reset/interrupt definitions
and do them through device tree.

Fixes: 81eef6ca9201 ("mmc: omap_hsmmc: Use dma_request_chan() for requesting DMA channel")

Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
Cc: <stable@vger.kernel.org> # 4.7.0
---
 arch/arm/mach-omap2/pdata-quirks.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-omap2/pdata-quirks.c b/arch/arm/mach-omap2/pdata-quirks.c
index d942a3357090..231bf4dc55fa 100644
--- a/arch/arm/mach-omap2/pdata-quirks.c
+++ b/arch/arm/mach-omap2/pdata-quirks.c
@@ -304,14 +304,17 @@ static void __init omap3_logicpd_torpedo_init(void)
 }
 
 /* omap3pandora legacy devices */
-#define PANDORA_WIFI_IRQ_GPIO		21
-#define PANDORA_WIFI_NRESET_GPIO	23
 
 static struct platform_device pandora_backlight = {
 	.name	= "pandora-backlight",
 	.id	= -1,
 };
 
+#if OLD_WL1251
+
+#define PANDORA_WIFI_IRQ_GPIO		21
+#define PANDORA_WIFI_NRESET_GPIO	23
+
 static struct regulator_consumer_supply pandora_vmmc3_supply[] = {
 	REGULATOR_SUPPLY("vmmc", "omap_hsmmc.2"),
 };
@@ -407,15 +410,11 @@ static void __init pandora_wl1251_init(void)
 fail:
 	pr_err("wl1251 board initialisation failed\n");
 }
+#endif
 
 static void __init omap3_pandora_legacy_init(void)
 {
 	platform_device_register(&pandora_backlight);
-	gpiod_add_lookup_table(&pandora_vwlan_gpiod_table);
-	platform_device_register(&pandora_vwlan_device);
-	omap_hsmmc_init(pandora_mmc3);
-	omap_hsmmc_late_init(pandora_mmc3);
-	pandora_wl1251_init();
 }
 #endif /* CONFIG_ARCH_OMAP3 */
 
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
