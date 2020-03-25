Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD855192566
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 11:22:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9MrbkiTcxNA2xYFAhUonkpx8ORldkJYfaqaym7sjY2U=; b=k3GhUAbGDGj/ww
	HqK2ZvEhTpBCBDoSGDDFewya+mTtLTQsmi0yMiYSpWZ+sQXzxxxwgjrzozMXEXEEBaD7SWOpKklxR
	MW/rTSL2hBy3ou1nao7QAiw2s0ET7xUpB+2X2huVACLdPSnchZrC3MdHX0uShi+GuJlfOAQeVhi7X
	rsXiHkxOJViyik3CK73hrJPMJXq+I7XGxnSLF3ckCs7/7ZEtbA6wI2O/9pl60S6L5kaL0RJvt5NBG
	tP94cskpLvlAQwo9HYeTn+xD1fWKynaHbWC69YnIfLCZojLPREJbAYP4yRMFf5uJxZl0Tt0Il8KgU
	sHvuWF7x8SctnrZYwstQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH3BL-0001Sf-JT; Wed, 25 Mar 2020 10:22:43 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH3BD-0001S9-Dx
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 10:22:36 +0000
IronPort-SDR: /CHA92gX0MykXpSbXcRWQmLcUqCbCuqZwh+NUYFhQlFsJVFbK9W1p2FlX5V8mQPVnJxa9+APY9
 Da9H/y0rOoGekcZWEEetHZLJe8ha72/dmIOsK0MY/v7bUB7rH4x7qZ42mUTbmcj49hmA8U9VeV
 8BgyvCDOWAVlnng4T+UHWh039pDYLJCdRp3I+cP4aQIsXQstIO29zkkro6izREjo8oX5rIKLXe
 H8Ps+i9wNdG2HhQ2RdvLvsqAKZ4HIBF5fbHbeaoR5YK5/Zm6iL4YC7GR+RyN1UnC4zM6Uzsr4p
 4B4=
X-IronPort-AV: E=Sophos;i="5.72,304,1580799600"; d="scan'208";a="73430215"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Mar 2020 03:22:34 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 25 Mar 2020 03:22:33 -0700
Received: from ROB-ULT-M18282.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 25 Mar 2020 03:22:28 -0700
From: Eugen Hristev <eugen.hristev@microchip.com>
To: <alexandre.belloni@bootlin.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <eugen.hristev@microchip.com>
Subject: [PATCH 1/2] ARM: configs: at91: sama5: enable SAMA5D2_PIOBU
Date: Wed, 25 Mar 2020 12:22:22 +0200
Message-ID: <20200325102223.24827-1-eugen.hristev@microchip.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_032235_476687_335CEE75 
X-CRM114-Status: UNSURE (   6.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Razvan Stefanescu <razvan.stefanescu@microchip.com>

Driver is enabled as a module.

Signed-off-by: Razvan Stefanescu <razvan.stefanescu@microchip.com>
---
 arch/arm/configs/sama5_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/sama5_defconfig b/arch/arm/configs/sama5_defconfig
index bab7861443dc..258a18e659a5 100644
--- a/arch/arm/configs/sama5_defconfig
+++ b/arch/arm/configs/sama5_defconfig
@@ -128,6 +128,7 @@ CONFIG_SPI=y
 CONFIG_SPI_ATMEL=y
 CONFIG_SPI_GPIO=y
 CONFIG_GPIO_SYSFS=y
+CONFIG_GPIO_SAMA5D2_PIOBU=m
 CONFIG_POWER_SUPPLY=y
 CONFIG_BATTERY_ACT8945A=y
 CONFIG_POWER_RESET=y
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
