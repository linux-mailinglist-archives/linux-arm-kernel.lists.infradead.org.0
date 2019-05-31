Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E3130688
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 04:13:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rqFCBtUhzc2Frs+SfbqqwgZy7PlGmOOeOTzNEjyia9w=; b=ny4p7rMpk2XbXn
	pQNJpMPdk4dG/+y4reCbLVtmldFuq8qQ80QIeYKEHHyf/OsywmqN6Pz/ZUxOxve5uCbPnSgiivUsz
	ddvpBU+yPncf5qms+F0BPRCACO97hFmRtAv7/ctAXqSOGDRwDnmbh+v0YLSiuOsJ4KmKGmk+LyJwT
	k5kSOf5CLfXsVR8MKCtWySbY+EXHvBAWMmV/yYA/+ZeSPWZbPljgdG9FFYx9qhWoC/S6IwjvPJE/B
	DuL9YPFfTg3gctY6E7dlFj6eRPlaMcOW0/gIYV1QuStJcN1/HjJk6i6bBNn3t3YABa15uxmYHqQgH
	KsI0S+e7/X0MAhmk/3Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWX3A-0004gu-HG; Fri, 31 May 2019 02:13:44 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWX2t-0004Zg-Ic
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 02:13:28 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4V2DOXo098765;
 Thu, 30 May 2019 21:13:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559268804;
 bh=ihidVVcFNIyittejhS+bbU/Ve3sebgl4qU990HXA5s8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=UBaLIbXlctcH4PNdaixSS3Mbp8yqO0KBGnTQ9FHrZg7p8jKtRYBmC4dX18uUwTGUK
 ofDRtlgXsXZnq334I1Lkwc4oEhhJUXehInrqx1ebF9G7ql4zH4NWoIPWpetWBGq3n3
 s5pToFqLwE3iqO80FvAF5nrOw5yfnyZsuCOTtlzU=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4V2DO8k111177
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 30 May 2019 21:13:24 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 30
 May 2019 21:13:24 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 30 May 2019 21:13:24 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4V2DNxG008960;
 Thu, 30 May 2019 21:13:24 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x4V2DNm18132; 
 Thu, 30 May 2019 21:13:23 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 2/3] hwspinlock/omap: Add support for TI K3 SoCs
Date: Thu, 30 May 2019 21:13:20 -0500
Message-ID: <20190531021321.14025-3-s-anna@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190531021321.14025-1-s-anna@ti.com>
References: <20190531021321.14025-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_191327_695112_F64E1D83 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-remoteproc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A HwSpinlock IP is also present on the newer TI K3 AM65x and J721E
family of SoCs within the Main NavSS sub-module. Reuse the existing
OMAP Hwspinlock driver to extend the support for this IP on K3 AM65x
SoCs as well. The IP has slightly different bit-fields in the
SYSCONFIG and SYSSTATUS registers.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 drivers/hwspinlock/Kconfig           | 2 +-
 drivers/hwspinlock/omap_hwspinlock.c | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/hwspinlock/Kconfig b/drivers/hwspinlock/Kconfig
index 7869c67e5b6b..37740e992cfa 100644
--- a/drivers/hwspinlock/Kconfig
+++ b/drivers/hwspinlock/Kconfig
@@ -9,7 +9,7 @@ menuconfig HWSPINLOCK
 config HWSPINLOCK_OMAP
 	tristate "OMAP Hardware Spinlock device"
 	depends on HWSPINLOCK
-	depends on ARCH_OMAP4 || SOC_OMAP5 || SOC_DRA7XX || SOC_AM33XX || SOC_AM43XX
+	depends on ARCH_OMAP4 || SOC_OMAP5 || SOC_DRA7XX || SOC_AM33XX || SOC_AM43XX || ARCH_K3
 	help
 	  Say y here to support the OMAP Hardware Spinlock device (firstly
 	  introduced in OMAP4).
diff --git a/drivers/hwspinlock/omap_hwspinlock.c b/drivers/hwspinlock/omap_hwspinlock.c
index 625844e0abef..a4d7a7bc863a 100644
--- a/drivers/hwspinlock/omap_hwspinlock.c
+++ b/drivers/hwspinlock/omap_hwspinlock.c
@@ -171,6 +171,7 @@ static int omap_hwspinlock_remove(struct platform_device *pdev)
 
 static const struct of_device_id omap_hwspinlock_of_match[] = {
 	{ .compatible = "ti,omap4-hwspinlock", },
+	{ .compatible = "ti,am654-hwspinlock", },
 	{ /* end */ },
 };
 MODULE_DEVICE_TABLE(of, omap_hwspinlock_of_match);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
