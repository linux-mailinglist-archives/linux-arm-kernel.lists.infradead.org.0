Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C984B0E29
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 13:42:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mFgNZYRjFu3CoZwYTxrxQwarBFT6GRc04NDgKgvKVNM=; b=K5ckh/Nv7LH5MU
	SspHk0Fu5lbSbs8vlp22XImyqCXT+RurgCZIQ5qAR3BhaELdU+ywvbYRA8azYernO6TduLaAJ3euQ
	da+oR9BXxH9FYI1TcO8ijdyT9qYw/CXiwJbwPMGhff20oxYMCBSiOyygtVsbf+xGC3QGVbOnBMYIq
	qlX8UhVAJInjeakM+Y9mPZ3K3SKCO6YD3DYmymoxL5KBOcrV6neHigPZfj/Jdpz26IhxJZfz1g/6s
	SedMMbTO46JJ8zaR0/WTAvfIiYk73i5HYh837WSsZGLFNjZi8RQLw64rR6MC2KbVOckHD7qMQVeAI
	uGowAbO9KDAHtriZDXtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8NUo-0007hW-AA; Thu, 12 Sep 2019 11:42:42 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8NS1-0004LK-4Q
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 11:39:50 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8CBdkfr116608;
 Thu, 12 Sep 2019 06:39:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1568288386;
 bh=YLleoDeFe+/39hjFYAaiNlP+EU5/AACmJxmEmj1xr2o=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=UKfYta98/Cb+jehL2iHDW+IaIaAYBTcg4S3XxUVBitRtIWUsnJQnZAArtgGPcKQO+
 ogYND/kzWQKNLTTVX/Z9pGz8K1AwX0DfdvS+YZtE55gzMIg8ztgscClffOxcasqJt3
 HQ+iNT6ltMRrf2zVNxm/PMfXKqZ8J02UIVkBW+2g=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8CBdkwk050898
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 12 Sep 2019 06:39:46 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 12
 Sep 2019 06:39:46 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 12 Sep 2019 06:39:46 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8CBdKd1120606;
 Thu, 12 Sep 2019 06:39:44 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <ssantosh@kernel.org>,
 <p.zabel@pengutronix.de>, <robh+dt@kernel.org>, <tony@atomide.com>,
 <s-anna@ti.com>
Subject: [PATCHv5 10/10] ARM: OMAP2+: pdata-quirks: add PRM data for reset
 support
Date: Thu, 12 Sep 2019 14:39:16 +0300
Message-ID: <20190912113916.20093-11-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190912113916.20093-1-t-kristo@ti.com>
References: <20190912113916.20093-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_043949_279341_5E20C7E2 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The parent clockdomain for reset must be in force wakeup mode, otherwise
the reset may never complete. Add pdata quirks for this purpose for PRM
driver.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/mach-omap2/pdata-quirks.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/mach-omap2/pdata-quirks.c b/arch/arm/mach-omap2/pdata-quirks.c
index 6c6f8fce854e..4730f8c0cb0e 100644
--- a/arch/arm/mach-omap2/pdata-quirks.c
+++ b/arch/arm/mach-omap2/pdata-quirks.c
@@ -25,6 +25,7 @@
 #include <linux/platform_data/ti-sysc.h>
 #include <linux/platform_data/wkup_m3.h>
 #include <linux/platform_data/asoc-ti-mcbsp.h>
+#include <linux/platform_data/ti-prm.h>
 
 #include "clockdomain.h"
 #include "common.h"
@@ -565,6 +566,12 @@ void omap_pcs_legacy_init(int irq, void (*rearm)(void))
 	pcs_pdata.rearm = rearm;
 }
 
+static struct ti_prm_platform_data ti_prm_pdata = {
+	.clkdm_deny_idle = clkdm_deny_idle,
+	.clkdm_allow_idle = clkdm_allow_idle,
+	.clkdm_lookup = clkdm_lookup,
+};
+
 /*
  * GPIOs for TWL are initialized by the I2C bus and need custom
  * handing until DSS has device tree bindings.
@@ -664,6 +671,11 @@ static struct of_dev_auxdata omap_auxdata_lookup[] = {
 	/* Common auxdata */
 	OF_DEV_AUXDATA("ti,sysc", 0, NULL, &ti_sysc_pdata),
 	OF_DEV_AUXDATA("pinctrl-single", 0, NULL, &pcs_pdata),
+	OF_DEV_AUXDATA("ti,omap4-prm-inst", 0, NULL, &ti_prm_pdata),
+	OF_DEV_AUXDATA("ti,omap5-prm-inst", 0, NULL, &ti_prm_pdata),
+	OF_DEV_AUXDATA("ti,dra7-prm-inst", 0, NULL, &ti_prm_pdata),
+	OF_DEV_AUXDATA("ti,am3-prm-inst", 0, NULL, &ti_prm_pdata),
+	OF_DEV_AUXDATA("ti,am4-prm-inst", 0, NULL, &ti_prm_pdata),
 	{ /* sentinel */ },
 };
 
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
