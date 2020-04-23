Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 189BC1B58FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 12:20:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sYnTasRWA6JRu9DGeLYmiu/6G3vWOsBu8h63h7+iVAg=; b=Yz8AhpHCZgn+yw
	kqzXsGi1jv3DNnZMOjPPQ0SUp8qPWmDrLzK2Bonu7E6+xETm49jrth0ryW6E57heRLs6Y9R53B1SJ
	kT90KCLR8UGhHu1WWaNqdmLGOntLfxx+Yc7yzixG59yAKOtBwI+iJEZVoR3oUi0qm0vLXb593mJOJ
	Gso6/Tl9LXYaavZPM3i2QAZbCfmd1FgMt/2+m45lCxLAxj1N13WHYxU7wNxgqpQduKIQPAR/RqeYo
	+hnVvXjfsnK4pDjUQII1emMbQE0mGadmTSBJUvlNZ3oFXIzH5SHSl0CUZ6jt9dyYXXYTM13+eLRmQ
	TGdJ3DclQqWworw4vZLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRYyG-00079p-RL; Thu, 23 Apr 2020 10:20:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRYy7-00071S-Lc
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 10:20:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jRYy6-0003ID-GJ; Thu, 23 Apr 2020 12:20:30 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jRYy5-0007WN-PX; Thu, 23 Apr 2020 12:20:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: defconfig: Enable Freescale XGMAC MDIO
Date: Thu, 23 Apr 2020 12:20:28 +0200
Message-Id: <20200423102028.28280-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_032031_710003_B0AE4A15 
X-CRM114-Status: GOOD (  10.61  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Madalin Bucur <madalin.bucur@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The XGMAC MDIO driver is necessary for accessing phy devices on
Layerscape boards (tested on LS1046a-rdb), enable support for it
in the defconfig.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 24e534d85045..e93bda9cb802 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -284,6 +284,7 @@ CONFIG_MACB=y
 CONFIG_THUNDER_NIC_PF=y
 CONFIG_FEC=y
 CONFIG_FSL_FMAN=y
+CONFIG_FSL_XGMAC_MDIO=y
 CONFIG_FSL_DPAA_ETH=y
 CONFIG_FSL_DPAA2_ETH=y
 CONFIG_FSL_ENETC=y
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
