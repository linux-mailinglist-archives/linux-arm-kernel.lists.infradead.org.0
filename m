Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A69190F6F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 14:26:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8aV8/zWIhRJuC1xgJB84gQRX2Vm3XkWVQGFlQ0Nr4y0=; b=WF/Db7SXcOdAma2TIRhHJrh3tk
	ShfyG1FR7u1hbQpujA9fWTiDoNc4nnpQYTiOXUIJsw4ZgEa1pE3dZin7KUzJ3yLARWHkffMRTm4WZ
	kw6W7eIu8+dkfNmg4kBT2xD8NUvGUhYeLXhYuftistoG+PcU+YrA4YWWxBAWX1F/7TXf/a70b8Hi1
	cfe3KwopwB81wVLNaWe6wguaDzO5lKAiLxVweJFHtm1AgJYtl9EH3cEOM9Wy/m19c67JbhlFKcQQD
	GZDQm0a4nd2Wpr2tG/6gR58HvGEoZgeRqBdBV54Fgi3XvllUN6s1K3RN4lNzGLbjW8M4RuBfvzbMU
	tqEAsvnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGjZk-0004Kn-Py; Tue, 24 Mar 2020 13:26:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGjXM-0000vj-Fa
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 13:24:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 26B3F1063;
 Tue, 24 Mar 2020 06:24:08 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CBF853F52E;
 Tue, 24 Mar 2020 06:24:06 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: "David S . Miller" <davem@davemloft.net>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Subject: [PATCH v3 09/14] net: axienet: Drop MDIO interrupt registers from
 ethtools dump
Date: Tue, 24 Mar 2020 13:23:42 +0000
Message-Id: <20200324132347.23709-10-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324132347.23709-1-andre.przywara@arm.com>
References: <20200324132347.23709-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_062408_582772_9EC3A71B 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 Robert Hancock <hancock@sedsystems.ca>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Newer revisions of the IP don't have these registers. Since we don't
really use them, just drop them from the ethtools dump.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 drivers/net/ethernet/xilinx/xilinx_axienet.h      | 7 -------
 drivers/net/ethernet/xilinx/xilinx_axienet_main.c | 4 ----
 2 files changed, 11 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet.h b/drivers/net/ethernet/xilinx/xilinx_axienet.h
index 04e51af32178..fb7450ca5c53 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet.h
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet.h
@@ -165,13 +165,6 @@
 #define XAE_MDIO_MCR_OFFSET	0x00000504 /* MII Management Control */
 #define XAE_MDIO_MWD_OFFSET	0x00000508 /* MII Management Write Data */
 #define XAE_MDIO_MRD_OFFSET	0x0000050C /* MII Management Read Data */
-#define XAE_MDIO_MIS_OFFSET	0x00000600 /* MII Management Interrupt Status */
-/* MII Mgmt Interrupt Pending register offset */
-#define XAE_MDIO_MIP_OFFSET	0x00000620
-/* MII Management Interrupt Enable register offset */
-#define XAE_MDIO_MIE_OFFSET	0x00000640
-/* MII Management Interrupt Clear register offset. */
-#define XAE_MDIO_MIC_OFFSET	0x00000660
 #define XAE_UAW0_OFFSET		0x00000700 /* Unicast address word 0 */
 #define XAE_UAW1_OFFSET		0x00000704 /* Unicast address word 1 */
 #define XAE_FMI_OFFSET		0x00000708 /* Filter Mask Index */
diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index 60c8cde365f8..217f58bed2c5 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -1258,10 +1258,6 @@ static void axienet_ethtools_get_regs(struct net_device *ndev,
 	data[20] = axienet_ior(lp, XAE_MDIO_MCR_OFFSET);
 	data[21] = axienet_ior(lp, XAE_MDIO_MWD_OFFSET);
 	data[22] = axienet_ior(lp, XAE_MDIO_MRD_OFFSET);
-	data[23] = axienet_ior(lp, XAE_MDIO_MIS_OFFSET);
-	data[24] = axienet_ior(lp, XAE_MDIO_MIP_OFFSET);
-	data[25] = axienet_ior(lp, XAE_MDIO_MIE_OFFSET);
-	data[26] = axienet_ior(lp, XAE_MDIO_MIC_OFFSET);
 	data[27] = axienet_ior(lp, XAE_UAW0_OFFSET);
 	data[28] = axienet_ior(lp, XAE_UAW1_OFFSET);
 	data[29] = axienet_ior(lp, XAE_FMI_OFFSET);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
