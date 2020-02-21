Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0697E166FCC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 07:47:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eBn9Zj7+SXrB9cbASOdPpjiZKvUXThfZQJ+U7RzYerY=; b=qhsJvq0JoHLLnfcW2aH8XAd2aP
	2pyJwYWRj7JZnsQyqgpgkw7iu7xm5KvexLY6AOR2JhMWXJeLbyNiW+oL5HRfmzX4zQj0WTSe24VzF
	lVYzYVn9obQ0YPMUgzOEwMUELa4PLPU2aLe04bae+U+1+RwbDhJd/Hp0ZBjSsyzK2h2b6wLLsibCd
	u7i3378cW2cwZdG/tKpimBpGuZtKUBMvZDT+OmPrfLZZu5C5VBMMv/jWr4o9zsWpXnGFcUj9/rklv
	48WmJNF42B069U+5eVGt9S2VbOj0wC3g975aiXzn1HHGqpb0oO9lf2D1S5IdaeyfoJ/uJ6l1n0Hg1
	FLu5jEoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j526F-0008Pp-50; Fri, 21 Feb 2020 06:47:47 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j525i-000877-HH
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 06:47:15 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1D8891A6D94;
 Fri, 21 Feb 2020 07:47:12 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 27D6D1A6D8D;
 Fri, 21 Feb 2020 07:47:04 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 97AF64042D;
 Fri, 21 Feb 2020 14:46:08 +0800 (SGT)
From: sherry sun <sherry.sun@nxp.com>
To: bp@alien8.de, mchehab@kernel.org, tony.luck@intel.com, james.morse@arm.com,
 rrichter@marvell.com, michal.simek@xilinx.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH 2/3] EDAC: Add synopsys edac driver support for i.MX8MP
Date: Fri, 21 Feb 2020 14:39:15 +0800
Message-Id: <1582267156-20189-3-git-send-email-sherry.sun@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582267156-20189-1-git-send-email-sherry.sun@nxp.com>
References: <1582267156-20189-1-git-send-email-sherry.sun@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_224714_726300_8C87AEEB 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, frank.li@nxp.com, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sherry Sun <sherry.sun@nxp.com>

The i.MX8MP has a memory controller supported by this driver. So here
add edac driver for i.MX8MP based on synopsys edac driver.

Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
---
 drivers/edac/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/edac/Kconfig b/drivers/edac/Kconfig
index fe2eb892a1bd..58a2d67d5513 100644
--- a/drivers/edac/Kconfig
+++ b/drivers/edac/Kconfig
@@ -475,7 +475,7 @@ config EDAC_ARMADA_XP
 
 config EDAC_SYNOPSYS
 	tristate "Synopsys DDR Memory Controller"
-	depends on ARCH_ZYNQ || ARCH_ZYNQMP
+	depends on ARCH_ZYNQ || ARCH_ZYNQMP || ARCH_MXC
 	help
 	  Support for error detection and correction on the Synopsys DDR
 	  memory controller.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
