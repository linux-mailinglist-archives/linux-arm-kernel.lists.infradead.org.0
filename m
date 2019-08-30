Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB338A34E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 12:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G/F7wfC4bFYleyf8XuKgMUhpWvrA25SzOCZCJF8JMIY=; b=PlGROwUoRlGg7Q
	3GMm/88mRFSOODVbi0rLP076+9HwwCQnApWRf5We4GE44T1CcYxYXGNRuWo1AZIDsn/CPZ1iwPbLx
	T5um2cnqWPiSCCzAXYLNUHrnv5q1waJssWyywrz7VJxliFqA6MuOZj+YnC3unsbncWh8ali6C9m//
	P7AJtHjFFwU01HLCSoIgoscJwZubBhg72rpglvCQ9Mhdat0pLIMQXi/9cduEiXQFCDsKvX18ccZJw
	5Gnu2+L/3P31qLSvqx+4cUJ27jBHY54F3Dcgy80lwFpD6seD2A8lfPuXYA4GJLgDmd/w/+PizdHKA
	xMbh6XiTBF9JcSUnQdag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3e3X-0003XT-OR; Fri, 30 Aug 2019 10:22:59 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3e3M-0003Uv-5M
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 10:22:49 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7UAMkc5095647;
 Fri, 30 Aug 2019 05:22:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567160566;
 bh=y3uyxvjdUkwCH5ZHJ6JpzG3r8jtoTFEwymS+1egN52w=;
 h=From:To:CC:Subject:Date;
 b=ZwX6Z0kYY5VNu7fCSrzzQ15JPlx3/1rSNX0L7B1dsvWG4xFcovoFRqg3lVha+mcEs
 unz0FMA9kkR18P7d3Ys91C4CxN9dy6oBlFJsKYdmZJFq2MlV0CqP6XpTT2mxQlPEVn
 EjD33AuJVg7SHiHZNMp3H22IUkl8gU/o3wEKHHdg=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7UAMkmm002008
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 30 Aug 2019 05:22:46 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 30
 Aug 2019 05:22:45 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 30 Aug 2019 05:22:45 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7UAMhiK129161;
 Fri, 30 Aug 2019 05:22:44 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <nsekhar@ti.com>, <bgolaszewski@baylibre.com>
Subject: [PATCH] ARM: davinci: dm644x-evm: Add Fixed regulators needed for
 tlv320aic33
Date: Fri, 30 Aug 2019 13:23:08 +0300
Message-ID: <20190830102308.22586-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_032248_287314_53847041 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The codec driver needs correct regulators in order to probe.
Both VCC_3.3V and VCC_1.8V is always on fixed regulators on the board.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 arch/arm/mach-davinci/board-dm644x-evm.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/mach-davinci/board-dm644x-evm.c b/arch/arm/mach-davinci/board-dm644x-evm.c
index 9d87d4e440ea..8406c82e1da4 100644
--- a/arch/arm/mach-davinci/board-dm644x-evm.c
+++ b/arch/arm/mach-davinci/board-dm644x-evm.c
@@ -29,6 +29,8 @@
 #include <linux/v4l2-dv-timings.h>
 #include <linux/export.h>
 #include <linux/leds.h>
+#include <linux/regulator/fixed.h>
+#include <linux/regulator/machine.h>
 
 #include <media/i2c/tvp514x.h>
 
@@ -653,6 +655,19 @@ static struct i2c_board_info __initdata i2c_info[] =  {
 	},
 };
 
+/* Fixed regulator support */
+static struct regulator_consumer_supply fixed_supplies_3_3v[] = {
+	/* Baseboard 3.3V: 5V -> TPS54310PWP -> 3.3V */
+	REGULATOR_SUPPLY("AVDD", "1-001b"),
+	REGULATOR_SUPPLY("DRVDD", "1-001b"),
+};
+
+static struct regulator_consumer_supply fixed_supplies_1_8v[] = {
+	/* Baseboard 1.8V: 5V -> TPS54310PWP -> 1.8V */
+	REGULATOR_SUPPLY("IOVDD", "1-001b"),
+	REGULATOR_SUPPLY("DVDD", "1-001b"),
+};
+
 #define DM644X_I2C_SDA_PIN	GPIO_TO_PIN(2, 12)
 #define DM644X_I2C_SCL_PIN	GPIO_TO_PIN(2, 11)
 
@@ -831,6 +846,11 @@ static __init void davinci_evm_init(void)
 
 	dm644x_register_clocks();
 
+	regulator_register_always_on(0, "fixed-dummy", fixed_supplies_1_8v,
+				     ARRAY_SIZE(fixed_supplies_1_8v), 1800000);
+	regulator_register_always_on(1, "fixed-dummy", fixed_supplies_3_3v,
+				     ARRAY_SIZE(fixed_supplies_3_3v), 3300000);
+
 	dm644x_init_devices();
 
 	ret = dm644x_gpio_register();
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
