Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 263491E5BEB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 11:31:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UOLZvKsokIrUrnB79FS9uRnet3/nbPAiJhE96xWELE0=; b=angrtZrOnR/kBl
	/HZyzM4/PBR7hsDqfV/HXhpyx+ikUN6LqSkJTTUAyFuB2XfEJua4LmZpdhIwiGUZ2dN3ckmksNvcI
	9EjSzgszcf43dgva2fENRL1f77Ttc5pd9tdbwX01gXxe6IWWK35EfogOuCJzZOwqiHxaZTyQl/yUL
	U7mhIRZCvOoBYKYveJDn0WQEMRWBDDuBz4cXN1OehFsX/Vg2jbDogwvnxQA01NZGwe72Ca7oxEnjY
	YzP4BboNLJaatvcdRyG3NDn96INvZ42Usi6e7AlWPmpNUByitdaSeOlJIZcdcoCBzW8zINag4+nAl
	2I6ZD4yI4ifSj63DhX8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeEt1-0000ai-Fr; Thu, 28 May 2020 09:31:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeEsr-0000Zg-6G
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 09:31:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1jeEsl-0004mo-30; Thu, 28 May 2020 11:31:23 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1jeEsk-0007wT-A8; Thu, 28 May 2020 11:31:22 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 1/3] ARM: imx7d: add enet2 clk sel
Date: Thu, 28 May 2020 11:31:13 +0200
Message-Id: <20200528093115.28268-1-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: str@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_023129_223390_4B5C4269 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add clock source init for the second ethernet port.
This changes the clock direction and clock selection in a way that the
ethernet phy reference clock is routed as an output.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
I know, that this is not a "good solution", but I don't know how we can
handle this in a better way. Open for suggestions.

 arch/arm/mach-imx/mach-imx7d.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-imx/mach-imx7d.c b/arch/arm/mach-imx/mach-imx7d.c
index ebb27592a9f7..2f9c0151d5be 100644
--- a/arch/arm/mach-imx/mach-imx7d.c
+++ b/arch/arm/mach-imx/mach-imx7d.c
@@ -65,6 +65,9 @@ static void __init imx7d_enet_clk_sel(void)
 	if (!IS_ERR(gpr)) {
 		regmap_update_bits(gpr, IOMUXC_GPR1, IMX7D_GPR1_ENET_TX_CLK_SEL_MASK, 0);
 		regmap_update_bits(gpr, IOMUXC_GPR1, IMX7D_GPR1_ENET_CLK_DIR_MASK, 0);
+		regmap_update_bits(gpr, IOMUXC_GPR1, IMX7D_GPR1_ENET2_TX_CLK_SEL_MASK, 0);
+		regmap_update_bits(gpr, IOMUXC_GPR1, IMX7D_GPR1_ENET2_CLK_DIR_MASK,
+				   IMX7D_GPR1_ENET2_CLK_DIR_MASK);
 	} else {
 		pr_err("failed to find fsl,imx7d-iomux-gpr regmap\n");
 	}
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
