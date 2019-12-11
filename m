Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D24611A25F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 03:56:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xS4uzrxczpM0ZRl8Le73sUtnaLLvqyx9+Rrlr7tJp5U=; b=DbZ
	knpxU3Zs5gP1Vmn/Orp+tZo6V+7UHIiTCrR5DrIN9kJ4b2jMOklZxh9Gyj1eW0n9c+nqj4HS/RT69
	8sIKm4KNfyyLdCBNupFx+0gsVVSoDPXBus7AINEX2o+X0LRXloZt0Cxp8+5H9Kfxcf0cWuLpkpts/
	uqz7mFAwmBjtEESCh1GW/FfZc9NeIPEgtTfiXnqkoP+4JLS47y1pmmg7QG9U8rB7AJM2gicDx4p/Q
	Nu999yCDi2WMcI+03m2n1A1No2gCfo36DfcaHgq9tftXCKAIrnCGzaCDImJ8NGRgIP976JNGl9SJk
	/5SG55rulcxdltj69lzt32ufO9GvwGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iesAo-00075Z-7l; Wed, 11 Dec 2019 02:56:22 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iesAd-00073f-F6
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 02:56:12 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id ECDBA1A0599;
 Wed, 11 Dec 2019 03:56:07 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6E0FF1A057A;
 Wed, 11 Dec 2019 03:56:03 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 9C68F402AE;
 Wed, 11 Dec 2019 10:55:57 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: linux@armlinux.org.uk, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, tglx@linutronix.de,
 gregkh@linuxfoundation.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2] ARM: imx: Enable ARM_ERRATA_814220 for i.MX6UL and i.MX7D
Date: Wed, 11 Dec 2019 10:53:36 +0800
Message-Id: <1576032816-23373-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_185611_643548_BED973E0 
X-CRM114-Status: UNSURE (   6.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARM_ERRATA_814220 has below description:

The v7 ARM states that all cache and branch predictor maintenance
operations that do not specify an address execute, relative to
each other, in program order.
However, because of this erratum, an L2 set/way cache maintenance
operation can overtake an L1 set/way cache maintenance operation.
This ERRATA only affected the Cortex-A7 and present in r0p2, r0p3,
r0p4, r0p5.

i.MX6UL and i.MX7D have Cortex-A7 r0p5 inside, need to enable
ARM_ERRATA_814220 for proper workaround.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- Add errata description and ARM core version in commit message.
---
 arch/arm/mach-imx/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 593bf15..4326c8f 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -520,6 +520,7 @@ config SOC_IMX6UL
 	bool "i.MX6 UltraLite support"
 	select PINCTRL_IMX6UL
 	select SOC_IMX6
+	select ARM_ERRATA_814220
 
 	help
 	  This enables support for Freescale i.MX6 UltraLite processor.
@@ -556,6 +557,7 @@ config SOC_IMX7D
 	select PINCTRL_IMX7D
 	select SOC_IMX7D_CA7 if ARCH_MULTI_V7
 	select SOC_IMX7D_CM4 if ARM_SINGLE_ARMV7M
+	select ARM_ERRATA_814220
 	help
 		This enables support for Freescale i.MX7 Dual processor.
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
