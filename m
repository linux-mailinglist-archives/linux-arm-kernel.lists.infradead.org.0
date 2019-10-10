Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 060F7D32A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:46:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E1bA2alyvf0MBdB5MrwugrVE/jHRiIm4p4BbZk5rtkU=; b=HYoB8FsaVxB0np
	ibE4BLluEM/p9/+RdJDOzx9M03LhUyscm4fp665YpXXTicrV25EH6CBSuQXcNlXwt/szgeDRs+0Mv
	85nbu7c9dEp+2n1oFB26vEKMzhOEnRMHUJbeJn1ezb86Zl2ZDMrcawHSIwZnSn8blIlwT5ZnBjKq1
	nvPEvO3HzuzUnPogRZw9mMGTTpqutk+RigTLnyaRU583ufp8zGI+QMmExQVu4gAH4AhZKPz8OrQZ7
	2eXonBSqZUU88LnRzKYrVi+P23ZSkkkamKIb93ne/zXMpv6IJK9JtGlJvEVGriDcxlQ1WqpTLw1fr
	lWkJAYCROotps0cDymNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfJv-00044V-U2; Thu, 10 Oct 2019 20:45:59 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfJi-00042e-Ss
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:45:48 +0000
X-Originating-IP: 86.202.229.42
Received: from localhost (lfbn-lyo-1-146-42.w86-202.abo.wanadoo.fr
 [86.202.229.42])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 5062DC0006;
 Thu, 10 Oct 2019 20:45:34 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: "David S . Miller" <davem@davemloft.net>
Subject: [PATCH 1/2] dt-bindings: net: lpc-eth: document optional properties
Date: Thu, 10 Oct 2019 22:45:29 +0200
Message-Id: <20191010204530.15150-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_134547_062467_13A56784 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Ethernet controller is also an mdio controller, to be able to parse
children (phys for example), #address-cells and #size-cells must be
present.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 Documentation/devicetree/bindings/net/lpc-eth.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/lpc-eth.txt b/Documentation/devicetree/bindings/net/lpc-eth.txt
index b92e927808b6..53884555db05 100644
--- a/Documentation/devicetree/bindings/net/lpc-eth.txt
+++ b/Documentation/devicetree/bindings/net/lpc-eth.txt
@@ -9,6 +9,8 @@ Optional properties:
 - phy-mode: See ethernet.txt file in the same directory. If the property is
   absent, "rmii" is assumed.
 - use-iram: Use LPC32xx internal SRAM (IRAM) for DMA buffering
+- #address-cells: should be present when child phy is decribed. Must be 1.
+- #size-cells: should be present when child phy is decribed. Must be 0.
 
 Example:
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
