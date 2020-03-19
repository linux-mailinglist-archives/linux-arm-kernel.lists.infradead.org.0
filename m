Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7674D18BC88
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 17:29:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6CXOtUC3q2Xuqw+Y455q2QMqDCWHf7KYgyfJO5TwH9g=; b=JPxhWP8xJwvIlM
	HMzbgTz2IC7iAim+7U1bRysmQ75+PY5RA80azIXQAzm/yhTeM1OVXS3OmDNIKqUHKWwCZGitqUutd
	/OQH5cmks9uUthWVvQkqRGOZA64oRUKowlg44eOm2CIG3VVkRXgWOD4lUd6rek5ske5vN0wpYzh8P
	Wze74gMvmv3fqhrfqVIW8YnJnq70UUmFvfoJVmRMmyEJqTPTetexqEQIYrr0NVWn9rRtNK4zvLm/o
	eT0S3XhjgleWvVj0lJdJA+RQh1SV/0yt2PBtrkg6nPx3buVZHp0kK114zCnAlaxmjuNKjVK3IgWHs
	p2BmpeNngGEQcrLZBoow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEy2a-0006rb-OW; Thu, 19 Mar 2020 16:29:04 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEy1o-0006WK-AT
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 16:28:17 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02JGSCEg026895;
 Thu, 19 Mar 2020 11:28:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584635292;
 bh=YYDaI6ZUYjz6psO0DCBs/8lPMQsvbzmxovEzYI6G5/Y=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=gIvshiTiiBSpOCQOA0IEMnyQfDq9TuNXKWwizQc3vuxbsXlJ6iBx7nceXnOXXlGOp
 7EvsyxyOdy0TKWLifQKGzS+/Wv0n2FWEJ7UKm99vmrN+7DnVvS+oiihRP2sa4ANp5B
 pvwOGqCygUd777pznXqQDrpf2gqn2wmA3CGfYgGQ=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02JGSCTx110542
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 19 Mar 2020 11:28:12 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 19
 Mar 2020 11:28:12 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 19 Mar 2020 11:28:12 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02JGSB9r109960;
 Thu, 19 Mar 2020 11:28:11 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, Rob Herring <robh+dt@kernel.org>, 
 Tero Kristo <t-kristo@ti.com>, "David S . Miller" <davem@davemloft.net>,
 netdev <netdev@vger.kernel.org>, Roger Quadros <rogerq@ti.com>,
 <devicetree@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v5 01/11] phy: ti: gmii-sel: simplify config
 dependencies between net drivers and gmii phy
Date: Thu, 19 Mar 2020 18:27:56 +0200
Message-ID: <20200319162806.25705-2-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319162806.25705-1-grygorii.strashko@ti.com>
References: <20200319162806.25705-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_092816_442164_B6D95B3F 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
