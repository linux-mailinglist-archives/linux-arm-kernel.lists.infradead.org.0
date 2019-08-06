Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B631D83496
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 17:00:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JFePR6xBFKQsvLAbKfeavfEAgSMSl72BZ0CfOP9Vjec=; b=OlB4qT03DLjkjt
	efK4f/iuxSfx3DBDhjnzPzDMRpSbfFieGanDeRsjXLilysZKWzhVcZB4SJEseJhwAhNaeDAE8LM46
	bTDmrwv7mJMyg6C+5WtI8VAdc6X1CGLFXp5oLwoyo2UxmFpL9pe4dVm/PKQMkqIrE+oIUk64JlJyn
	Okzw4xF+NJB0ocdxmfLFLZH4TgkDBR1dF6q+CiJcK2Q40Y2RFtDFD8V/QE+TbaeRyeOUENrdKbkNA
	dZ2I9f50i5J/TUHFO1QaRejX01HfmCpqrlm4VBKS+N8tJkBzRMJMqQNHs5j9DwziHbTzoQE+9dANi
	dJ8CZnHyF7sGUUhIr44Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0wq-0006H0-Q0; Tue, 06 Aug 2019 15:00:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0sS-0008K2-Ne
 for linux-arm-kernel@bombadil.infradead.org; Tue, 06 Aug 2019 14:55:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9Bdivd4gwcr2OFdTT2GneHA72Rir8GYGCsDvZY2L9EU=; b=Q4ImspekGimEJdx9LXZDkd1hYs
 Xg9UWGnJtiE+SGNuYU5IYrbEZzC+xYov+2jNqNlyKySGa4Glf2Ka9HFtzmDKmsirEjLB7rSFID4Hl
 WQhag/elsq7nGEdu1t1dACX4hQFF4VQDInBBL9FeKnKN/qRu2tNcm45QG/SvqhEdlI+RLwG9ZSW8D
 obWXlDNz2PNEgJ1ROu/moaCDoZwxh0RnErVoq+hBQpGg018wKKE0KhrhkM/UVb+OSueZPYlNt3SEk
 P2AlIPs+sP6pvyWs53HRkx9X3JpIDAGM1KIpXU7DM/aNFnkhwDt+iRtFtkWyYmlnbKfOVlZRozLJE
 n4NtdzcA==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0se-0008CJ-N9
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 14:56:06 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 2D942E0008;
 Tue,  6 Aug 2019 14:55:09 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 03/20] dt-bindings: ap80x: replace AP806 with AP80x
Date: Tue,  6 Aug 2019 16:54:43 +0200
Message-Id: <20190806145500.24109-4-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806145500.24109-1-miquel.raynal@bootlin.com>
References: <20190806145500.24109-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_155604_825109_BA2CA110 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 Ben Peled <bpeled@marvell.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ben Peled <bpeled@marvell.com>

Rename the text file and update "AP806" into "AP806/AP807" where
relevant.

Signed-off-by: Ben Peled <bpeled@marvell.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 ...-controller.txt => ap80x-system-controller.txt} | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)
 rename Documentation/devicetree/bindings/arm/marvell/{ap806-system-controller.txt => ap80x-system-controller.txt} (91%)

diff --git a/Documentation/devicetree/bindings/arm/marvell/ap806-system-controller.txt b/Documentation/devicetree/bindings/arm/marvell/ap80x-system-controller.txt
similarity index 91%
rename from Documentation/devicetree/bindings/arm/marvell/ap806-system-controller.txt
rename to Documentation/devicetree/bindings/arm/marvell/ap80x-system-controller.txt
index 26410fbb85be..098d932fc963 100644
--- a/Documentation/devicetree/bindings/arm/marvell/ap806-system-controller.txt
+++ b/Documentation/devicetree/bindings/arm/marvell/ap80x-system-controller.txt
@@ -1,15 +1,15 @@
-Marvell Armada AP806 System Controller
+Marvell Armada AP80x System Controller
 ======================================
 
-The AP806 is one of the two core HW blocks of the Marvell Armada 7K/8K
-SoCs. It contains system controllers, which provide several registers
-giving access to numerous features: clocks, pin-muxing and many other
-SoC configuration items. This DT binding allows to describe these
-system controllers.
+The AP806/AP807 is one of the two core HW blocks of the Marvell Armada
+7K/8K/931x SoCs. It contains system controllers, which provide several
+registers giving access to numerous features: clocks, pin-muxing and
+many other SoC configuration items. This DT binding allows to describe
+these system controllers.
 
 For the top level node:
  - compatible: must be: "syscon", "simple-mfd";
- - reg: register area of the AP806 system controller
+ - reg: register area of the AP80x system controller
 
 SYSTEM CONTROLLER 0
 ===================
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
