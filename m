Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A696B192568
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 11:23:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Rc8dIcBHFZcCKCt782HGXuFbE6EENkX/YypeTLXHq0=; b=mRaK7FmGF7PSOc
	DMgTVIP9cUGDK41FtWltqI0Fsorvm1AXGCDi/4u3Xvc9Wf2gBwoXZHmQioUzpewqKG7iXX6oDeE+a
	iDIofclKZfmajYX77kGkC1QVuNfyUsN5ATW9kW5942+tPV+Z+nsglPIdc8U6ZC0kF1ioldYZSAanr
	ItQChtsVljKg1dj3avuxt70vZfTH+wkKLUHRMQHsvqZtuiHYMQ4d0BUk8wgDFQQ/bIZ/7KRtZckwL
	/2mCwE2EXJvrdrCToBZnztv6m24R0+3qtjk8wUyoDBrwFk7zY2nTNGfLcHj6iEsUUQwqhyFXtGmuP
	CoNE7LkLCDaND9shmWmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH3BZ-0001cj-PT; Wed, 25 Mar 2020 10:22:57 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH3BK-0001YT-Qi
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 10:22:44 +0000
IronPort-SDR: Oe845Alq/eyfnjnsM2JZU8lRGMbiWmIKyQTHYmgQ9TIsoI1OgeHaPpC4ojMufaXMFTe3N6jonJ
 4j2NnJC0oktoQ7H9HYedUQ9tMvqcWsgBP5PDIxQL5LL+SoW1oGYesCYjduVq0b8ir1yzpXyJBx
 00sUp8UmGWGy0cnHdA4UU79PeGPEmkMYX9ev8XGQIQt/RX2DeUbuThi2nFw5iVOdPn+j1cvcOX
 i+NHDXwA+zEkWppT57AA0bm48f4Q33ZcbpyG+dzya8+WcM/QmwvhBEJEvzatVbZdS+Cu1CwRJo
 Qvg=
X-IronPort-AV: E=Sophos;i="5.72,304,1580799600"; d="scan'208";a="73430236"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Mar 2020 03:22:42 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 25 Mar 2020 03:22:48 -0700
Received: from ROB-ULT-M18282.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 25 Mar 2020 03:22:35 -0700
From: Eugen Hristev <eugen.hristev@microchip.com>
To: <alexandre.belloni@bootlin.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <eugen.hristev@microchip.com>
Subject: [PATCH 2/2] ARM: configs: at91: sama5: enable MCP16502 regulator
Date: Wed, 25 Mar 2020 12:22:23 +0200
Message-ID: <20200325102223.24827-2-eugen.hristev@microchip.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200325102223.24827-1-eugen.hristev@microchip.com>
References: <20200325102223.24827-1-eugen.hristev@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_032242_921243_1249DF40 
X-CRM114-Status: UNSURE (   7.20  )
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

Driver is built as a module.

Signed-off-by: Razvan Stefanescu <razvan.stefanescu@microchip.com>
---
 arch/arm/configs/sama5_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/sama5_defconfig b/arch/arm/configs/sama5_defconfig
index 258a18e659a5..8e1f78c19920 100644
--- a/arch/arm/configs/sama5_defconfig
+++ b/arch/arm/configs/sama5_defconfig
@@ -143,6 +143,7 @@ CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED_VOLTAGE=y
 CONFIG_REGULATOR_ACT8865=y
 CONFIG_REGULATOR_ACT8945A=y
+CONFIG_REGULATOR_MCP16502=m
 CONFIG_REGULATOR_PWM=m
 CONFIG_MEDIA_SUPPORT=y
 CONFIG_MEDIA_CAMERA_SUPPORT=y
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
