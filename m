Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 546EB1CC081
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 12:45:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=koo5m+pZ+pd34w2YdsKYhqOPeG0oFhYLU829cRMDzZM=; b=ApTvAHL0IUnlBwCn3+QPzN+XNI
	4rp3lj9EvNLgZ/XyAwXNVHHwTw7N9RKGQ/LhUlLuDuRjYa60+TZHlwgejRO2t/Y3b4h8T3AA4DKNl
	QA5ShCBnBtkeoHDbxSTp5tpN2WUMJvMNfUNGpnerhcgjzqojZLkjVrAG1Of0Fkdfxy7DC+WxgbEhg
	qiKV6x/Gh3UeAoQq+hZbiqGZ+yBLqDVkIWUSJ1+ZKesW5UBvkvtFQ9wQHjXKh2dwVmKhM/P3wYx+W
	NBciHLsVHuSWfuxRrx87MMi7q07Y2uaCnoWbHF1JB+KTPR+jjyTnvaErTav2gtwr/bwt2L/mwWlNg
	vZTRcZIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXMz1-0006GC-AI; Sat, 09 May 2020 10:45:27 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXMyF-0004Iy-1x
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 10:44:40 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D9AF7200102;
 Sat,  9 May 2020 12:44:37 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C3F772002EE;
 Sat,  9 May 2020 12:44:34 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 90B0540302;
 Sat,  9 May 2020 18:44:30 +0800 (SGT)
From: Hui Song <hui.song_1@nxp.com>
To: u-boot@linux.nxdi.nxp.com,
	jiafei.pan@nxp.com
Subject: [PATCH v1 3/3] dm: armv8: gpio: include <asm/arch/gpio.h> for
 fsl-layerscape
Date: Sat,  9 May 2020 18:39:56 +0800
Message-Id: <20200509103956.26038-3-hui.song_1@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200509103956.26038-1-hui.song_1@nxp.com>
References: <20200509103956.26038-1-hui.song_1@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_034439_233882_2267CD78 
X-CRM114-Status: UNSURE (   6.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, "hui.song" <hui.song_1@nxp.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-gpio@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "hui.song" <hui.song_1@nxp.com>

Enable the gpio feature on fsl-layerscape platform.

Signed-off-by: hui.song <hui.song_1@nxp.com>
---
 arch/arm/include/asm/gpio.h | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/arch/arm/include/asm/gpio.h b/arch/arm/include/asm/gpio.h
index 333e407b66..7715a01706 100644
--- a/arch/arm/include/asm/gpio.h
+++ b/arch/arm/include/asm/gpio.h
@@ -1,12 +1,8 @@
 #if !defined(CONFIG_ARCH_UNIPHIER) && !defined(CONFIG_ARCH_STI) && \
 	!defined(CONFIG_ARCH_K3) && !defined(CONFIG_ARCH_BCM68360) && \
 	!defined(CONFIG_ARCH_BCM6858) && !defined(CONFIG_ARCH_BCM63158) && \
-	!defined(CONFIG_ARCH_ROCKCHIP) && !defined(CONFIG_ARCH_LX2160A) && \
-	!defined(CONFIG_ARCH_LS1028A) && !defined(CONFIG_ARCH_LS2080A) && \
-	!defined(CONFIG_ARCH_LS1088A) && !defined(CONFIG_ARCH_ASPEED) && \
-	!defined(CONFIG_ARCH_LS1012A) && !defined(CONFIG_ARCH_LS1043A) && \
-	!defined(CONFIG_ARCH_LS1046A) && !defined(CONFIG_ARCH_U8500) && \
-	!defined(CONFIG_CORTINA_PLATFORM)
+	!defined(CONFIG_ARCH_ROCKCHIP) && !defined(CONFIG_ARCH_ASPEED) && \
+	!defined(CONFIG_ARCH_U8500) && !defined(CONFIG_CORTINA_PLATFORM)
 #include <asm/arch/gpio.h>
 #endif
 #include <asm-generic/gpio.h>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
