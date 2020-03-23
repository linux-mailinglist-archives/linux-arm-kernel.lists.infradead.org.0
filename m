Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39EF2190145
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 23:53:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=agSRye81FdfnrH0uGQILDu3tnB+vqIj/+B6V9Lev24U=; b=T2i8F6HDLgbe45
	Yfv7M3K8KjaGQ4MB9g/ibbCuQqFU9xRQgMh+btkF3RBl3N/OveHejXQZSGu6YaEcoF5onpo5J2Pqw
	FpKSL5V8K33s89/HQeI2dWtbMq1G7eXeMPaq3QhRB4aiPBTk0u1PzMjN3cxhE99dpclhnoHTjQtPr
	Sk/NxjJvvlEKxS3GhwJYafG1jUUdpmd47yJXUyyghtcQmM9e+hWps3Z28rmOo3uiZC597HuENbpkd
	x2AUMPfOJQvH8sgqo+zSOzzM4ONC+sbUK+ooEPsFttUJgBAT5+2CvT03K10E2W8n8R6ipBFVqgPR7
	5tiA1G9JsNqSzJYrkdAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGVwe-00032w-0a; Mon, 23 Mar 2020 22:53:20 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGVwN-00031d-Hd
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 22:53:05 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02NMqwLU046211;
 Mon, 23 Mar 2020 17:52:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585003978;
 bh=r+sfqraITYcKJAQvGWd1Eaf2bkxsbyuiSdj02KQUtLM=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=qDU3xfydhzoAMTW4OURb+SlNnr7hjs0MAbuNLcFHEASMQxcdn35YME5oRldzz8456
 G6ZG0/UEhJklk3NbAQHXRutZ2/ujMOJ61jAdd+VQERcJxTa/KK8fGtvibdnKc/3Rvx
 mUtPy+SAXkGUo1mHuETYiQELsLijo7cUp7B2PHNA=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02NMqwWW049927
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 23 Mar 2020 17:52:58 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 23
 Mar 2020 17:52:58 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 23 Mar 2020 17:52:58 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02NMqvjJ125515;
 Mon, 23 Mar 2020 17:52:57 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, Rob Herring <robh@kernel.org>,
 Tero Kristo <t-kristo@ti.com>, "David S . Miller" <davem@davemloft.net>,
 netdev <netdev@vger.kernel.org>, Roger Quadros <rogerq@ti.com>,
 <devicetree@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v6 01/11] phy: ti: gmii-sel: simplify config
 dependencies between net drivers and gmii phy
Date: Tue, 24 Mar 2020 00:52:44 +0200
Message-ID: <20200323225254.12759-2-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323225254.12759-1-grygorii.strashko@ti.com>
References: <20200323225254.12759-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_155303_687066_6C8EE028 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Grygorii Strashko <grygorii.strashko@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Murali Karicheri <m-karicheri2@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The phy-gmii-sel can be only auto selected in Kconfig and now the pretty
complex Kconfig dependencies are defined for phy-gmii-sel driver, which
also need to be updated every time phy-gmii-sel is re-used for any new
networking driver.

Simplify Kconfig definition for phy-gmii-sel PHY driver - drop all
dependencies and from networking drivers and rely on using 'imply
PHY_TI_GMII_SEL' in Kconfig definitions for networking drivers instead.

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
Acked-by: Kishon Vijay Abraham I <kishon@ti.com>
Tested-by: Murali Karicheri <m-karicheri2@ti.com>
Tested-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/net/ethernet/ti/Kconfig | 1 +
 drivers/phy/ti/Kconfig          | 3 ---
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/ti/Kconfig b/drivers/net/ethernet/ti/Kconfig
index bf98e0fa7d8b..8a6ca16eee3b 100644
--- a/drivers/net/ethernet/ti/Kconfig
+++ b/drivers/net/ethernet/ti/Kconfig
@@ -53,6 +53,7 @@ config TI_CPSW
 	select MFD_SYSCON
 	select PAGE_POOL
 	select REGMAP
+	imply PHY_TI_GMII_SEL
 	---help---
 	  This driver supports TI's CPSW Ethernet Switch.
 
diff --git a/drivers/phy/ti/Kconfig b/drivers/phy/ti/Kconfig
index 6dbe9d0b9ff3..15a3bcf32308 100644
--- a/drivers/phy/ti/Kconfig
+++ b/drivers/phy/ti/Kconfig
@@ -106,11 +106,8 @@ config TWL4030_USB
 
 config PHY_TI_GMII_SEL
 	tristate
-	default y if TI_CPSW=y || TI_CPSW_SWITCHDEV=y
-	depends on TI_CPSW || TI_CPSW_SWITCHDEV || COMPILE_TEST
 	select GENERIC_PHY
 	select REGMAP
-	default m
 	help
 	  This driver supports configuring of the TI CPSW Port mode depending on
 	  the Ethernet PHY connected to the CPSW Port.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
