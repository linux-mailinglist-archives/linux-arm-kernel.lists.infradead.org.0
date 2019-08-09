Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A1F87653
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 11:37:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dd9LzxpRyQKDxnmteXbjhdbymWBpS4xnoWKOGqml/GA=; b=EmuGZc1kOXcWEp
	/LmMgHOFhJx0SfrIlKIFPz/oI/P6iLPkpx2mPmLFRkPp9xlJkIIjjzzzRPFBAtYOoZLldhucy6Fru
	RDxKbgfvQ4no47NmwuWT2SiQ9lRMXKwiOAhbeki/cYf0wNL0FxSl3QLvQGX6M0fiN3mbSXwZkvmRF
	wiicoLvvuZnUzAdwELRHYCfkKNcDv/JUy9WCd2p3zvL2roYhvzIGMsVfZc2mBDPXB8Se4hsltekF8
	wonurmzYkiK9MbA//hhfB/+OnsUkjv7JEPvo70f5xkpos6PG5Zyz0Cc5zg4NgBqCcF8cZiirDLV4i
	qQG2vjFdr+JCCgya7v+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw1KY-0000R5-BM; Fri, 09 Aug 2019 09:37:02 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw1H7-0003zE-OC
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 09:33:34 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 0461CD63CE;
 Fri,  9 Aug 2019 11:33:28 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id v27WjyBWDM32; Fri,  9 Aug 2019 11:33:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 4EAF4D63D8;
 Fri,  9 Aug 2019 11:32:34 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id X3W2dcg5nWQn; Fri,  9 Aug 2019 11:32:30 +0200 (CEST)
Received: from furthur.local (ip-37-188-137-236.eurotel.cz [37.188.137.236])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 2D4FAD63CC;
 Fri,  9 Aug 2019 11:32:24 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH 17/19] ARM: mmp: remove MMP3 USB PHY registers from regs-usb.h
Date: Fri,  9 Aug 2019 11:31:56 +0200
Message-Id: <20190809093158.7969-18-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190809093158.7969-1-lkundrak@v3.sk>
References: <20190809093158.7969-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_023330_141385_06A2DB07 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Nothing in mach-mmp/ uses them and they belong to the PHY driver.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/mach-mmp/regs-usb.h | 94 ------------------------------------
 1 file changed, 94 deletions(-)

diff --git a/arch/arm/mach-mmp/regs-usb.h b/arch/arm/mach-mmp/regs-usb.h
index d9f08c1601542..ed0d1aa0ad6c9 100644
--- a/arch/arm/mach-mmp/regs-usb.h
+++ b/arch/arm/mach-mmp/regs-usb.h
@@ -121,100 +121,6 @@
 
 #define UTMI_OTG_ADDON_OTG_ON			(1 << 0)
 
-/* For MMP3 USB Phy */
-#define USB2_PLL_REG0		0x4
-#define USB2_PLL_REG1		0x8
-#define USB2_TX_REG0		0x10
-#define USB2_TX_REG1		0x14
-#define USB2_TX_REG2		0x18
-#define USB2_RX_REG0		0x20
-#define USB2_RX_REG1		0x24
-#define USB2_RX_REG2		0x28
-#define USB2_ANA_REG0		0x30
-#define USB2_ANA_REG1		0x34
-#define USB2_ANA_REG2		0x38
-#define USB2_DIG_REG0		0x3C
-#define USB2_DIG_REG1		0x40
-#define USB2_DIG_REG2		0x44
-#define USB2_DIG_REG3		0x48
-#define USB2_TEST_REG0		0x4C
-#define USB2_TEST_REG1		0x50
-#define USB2_TEST_REG2		0x54
-#define USB2_CHARGER_REG0	0x58
-#define USB2_OTG_REG0		0x5C
-#define USB2_PHY_MON0		0x60
-#define USB2_RESETVE_REG0	0x64
-#define USB2_ICID_REG0		0x78
-#define USB2_ICID_REG1		0x7C
-
-/* USB2_PLL_REG0 */
-/* This is for Ax stepping */
-#define USB2_PLL_FBDIV_SHIFT_MMP3		0
-#define USB2_PLL_FBDIV_MASK_MMP3		(0xFF << 0)
-
-#define USB2_PLL_REFDIV_SHIFT_MMP3		8
-#define USB2_PLL_REFDIV_MASK_MMP3		(0xF << 8)
-
-#define USB2_PLL_VDD12_SHIFT_MMP3		12
-#define USB2_PLL_VDD18_SHIFT_MMP3		14
-
-/* This is for B0 stepping */
-#define USB2_PLL_FBDIV_SHIFT_MMP3_B0		0
-#define USB2_PLL_REFDIV_SHIFT_MMP3_B0		9
-#define USB2_PLL_VDD18_SHIFT_MMP3_B0		14
-#define USB2_PLL_FBDIV_MASK_MMP3_B0		0x01FF
-#define USB2_PLL_REFDIV_MASK_MMP3_B0		0x3E00
-
-#define USB2_PLL_CAL12_SHIFT_MMP3		0
-#define USB2_PLL_CALI12_MASK_MMP3		(0x3 << 0)
-
-#define USB2_PLL_VCOCAL_START_SHIFT_MMP3	2
-
-#define USB2_PLL_KVCO_SHIFT_MMP3		4
-#define USB2_PLL_KVCO_MASK_MMP3			(0x7<<4)
-
-#define USB2_PLL_ICP_SHIFT_MMP3			8
-#define USB2_PLL_ICP_MASK_MMP3			(0x7<<8)
-
-#define USB2_PLL_LOCK_BYPASS_SHIFT_MMP3		12
-
-#define USB2_PLL_PU_PLL_SHIFT_MMP3		13
-#define USB2_PLL_PU_PLL_MASK			(0x1 << 13)
-
-#define USB2_PLL_READY_MASK_MMP3		(0x1 << 15)
-
-/* USB2_TX_REG0 */
-#define USB2_TX_IMPCAL_VTH_SHIFT_MMP3		8
-#define USB2_TX_IMPCAL_VTH_MASK_MMP3		(0x7 << 8)
-
-#define USB2_TX_RCAL_START_SHIFT_MMP3		13
-
-/* USB2_TX_REG1 */
-#define USB2_TX_CK60_PHSEL_SHIFT_MMP3		0
-#define USB2_TX_CK60_PHSEL_MASK_MMP3		(0xf << 0)
-
-#define USB2_TX_AMP_SHIFT_MMP3			4
-#define USB2_TX_AMP_MASK_MMP3			(0x7 << 4)
-
-#define USB2_TX_VDD12_SHIFT_MMP3		8
-#define USB2_TX_VDD12_MASK_MMP3			(0x3 << 8)
-
-/* USB2_TX_REG2 */
-#define USB2_TX_DRV_SLEWRATE_SHIFT		10
-
-/* USB2_RX_REG0 */
-#define USB2_RX_SQ_THRESH_SHIFT_MMP3		4
-#define USB2_RX_SQ_THRESH_MASK_MMP3		(0xf << 4)
-
-#define USB2_RX_SQ_LENGTH_SHIFT_MMP3		10
-#define USB2_RX_SQ_LENGTH_MASK_MMP3		(0x3 << 10)
-
-/* USB2_ANA_REG1*/
-#define USB2_ANA_PU_ANA_SHIFT_MMP3		14
-
-/* USB2_OTG_REG0 */
-#define USB2_OTG_PU_OTG_SHIFT_MMP3		3
-
 /* fsic registers */
 #define FSIC_MISC			0x4
 #define FSIC_INT			0x28
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
