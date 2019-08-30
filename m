Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D29C3A34DF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 12:22:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tnbX4JnsovjzE3h/J8aP8daaPkw8VOJVJbA9V5t+HBc=; b=HN+Xtme1pKkDsu
	jQ0I40mY2t3WhqhoKU20Iyu2cV/HIzh38AgFoZNcsooDI4EnL2kM2du33gF3t6x/UPK+fQNSoMNPA
	n6Xzpk3NwIRVuptL6qBOU4y13cYDOgttS+lCmPuByYA+dI0ZToSif4TIqhPhSMMWsYs+P+hn55a1W
	I7OfYN/e73r3XNKHzqiMFo0BOF1yc+j6aN8KnoqpplZm3gcj0CHkdrNYu3gniwxtqKYIdDsIxHcP+
	03EtUspgKC2TIw/M9UOaUAnc1De+1X+v166xfYQYgnrLF3rhdUh1Rb5WZwwuDfzA3pyGeVrSNYJrH
	95V84AZYqFjAicshIi5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3e3H-0003JZ-Qf; Fri, 30 Aug 2019 10:22:43 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3e38-0003Ir-2A
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 10:22:35 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7UAMUsa118099;
 Fri, 30 Aug 2019 05:22:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567160550;
 bh=sMtdUddDm3BxWRkgzL2yPe7GjHlr/FVEJmm1oUpWeSE=;
 h=From:To:CC:Subject:Date;
 b=dJVUFId3uQGVtwlqshRRez1ix+yF9kb5Zdwa+31ahl1HbefxMGBXCExNAufc1zGi/
 hCCYLQQaUfGGwYIXtkuoJZSq6M5eHWPwx74TbV3mh3zfXGn9yp2fOed8QCqjwdsT/G
 b85mJajD8TAV2S+oLZ1g3sEa5KbARtLMZ3GU+sIc=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7UAMUMl033471
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 30 Aug 2019 05:22:30 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 30
 Aug 2019 05:22:30 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 30 Aug 2019 05:22:30 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7UAMSl6128974;
 Fri, 30 Aug 2019 05:22:28 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <nsekhar@ti.com>, <bgolaszewski@baylibre.com>
Subject: [PATCH] ARM: davinci: dm365-evm: Add Fixed regulators needed for
 tlv320aic3101
Date: Fri, 30 Aug 2019 13:22:52 +0300
Message-ID: <20190830102252.22488-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_032234_185889_03102D58 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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
Both VCC_3V3 and VCC_1V8 is always on fixed regulators on the board.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 arch/arm/mach-davinci/board-dm365-evm.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/mach-davinci/board-dm365-evm.c b/arch/arm/mach-davinci/board-dm365-evm.c
index 150a36f333df..2328b15ac067 100644
--- a/arch/arm/mach-davinci/board-dm365-evm.c
+++ b/arch/arm/mach-davinci/board-dm365-evm.c
@@ -30,6 +30,8 @@
 #include <linux/spi/eeprom.h>
 #include <linux/v4l2-dv-timings.h>
 #include <linux/platform_data/ti-aemif.h>
+#include <linux/regulator/fixed.h>
+#include <linux/regulator/machine.h>
 
 #include <asm/mach-types.h>
 #include <asm/mach/arch.h>
@@ -245,6 +247,19 @@ static struct davinci_i2c_platform_data i2c_pdata = {
 	.bus_delay	= 0	/* usec */,
 };
 
+/* Fixed regulator support */
+static struct regulator_consumer_supply fixed_supplies_3_3v[] = {
+	/* Baseboard 3.3V: 5V -> TPS767D301 -> 3.3V */
+	REGULATOR_SUPPLY("AVDD", "1-0018"),
+	REGULATOR_SUPPLY("DRVDD", "1-0018"),
+	REGULATOR_SUPPLY("IOVDD", "1-0018"),
+};
+
+static struct regulator_consumer_supply fixed_supplies_1_8v[] = {
+	/* Baseboard 1.8V: 5V -> TPS767D301 -> 1.8V */
+	REGULATOR_SUPPLY("DVDD", "1-0018"),
+};
+
 static int dm365evm_keyscan_enable(struct device *dev)
 {
 	return davinci_cfg_reg(DM365_KEYSCAN);
@@ -800,6 +815,11 @@ static __init void dm365_evm_init(void)
 	if (ret)
 		pr_warn("%s: GPIO init failed: %d\n", __func__, ret);
 
+	regulator_register_always_on(0, "fixed-dummy", fixed_supplies_1_8v,
+				     ARRAY_SIZE(fixed_supplies_1_8v), 1800000);
+	regulator_register_always_on(1, "fixed-dummy", fixed_supplies_3_3v,
+				     ARRAY_SIZE(fixed_supplies_3_3v), 3300000);
+
 	nvmem_add_cell_table(&davinci_nvmem_cell_table);
 	nvmem_add_cell_lookups(&davinci_nvmem_cell_lookup, 1);
 
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
