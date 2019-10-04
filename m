Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FFDCBD35
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:29:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nYTxJ5KyPw5iRskWj7BErT3djso6v62jIy7IenzTYbk=; b=VpXFFGnVORPIi5
	rpcXmMqzZgACJ1Xpyyx1RI9hAcIbEyLPSHByAMCRcSfaJXMxJdr57OWDvFvlOGC4AswLsGQP3ZX1h
	ijq3GKp8oP2eo+pbWSPuXsSkuzxWl/ruaKw+vzNfG7YtSk+VkLmZ3r6goP/+s/cAGmhR6qquYeQV3
	1G0sw7j1e2vnjmzqFje0q6cYNRMG6Mo1gOO1ZC2QO5wJxog7GCwRDQKUIDeDCXMG9QT5w/Gf0f1hv
	y5OIvZ/AaRTMvZpvUOB7bofhIV9vBz2cVo7o0IGvibFz7yGz9jecL2xanOg+wrqxVxObzIhlTSK+i
	ToIESbtNXdxA16JGBCWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOaB-00068Q-RD; Fri, 04 Oct 2019 14:29:23 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOYk-0004ta-6t
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:27:57 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 9E997C000E;
 Fri,  4 Oct 2019 14:27:44 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 03/21] dt-bindings: ap80x: replace AP806 with AP80x
Date: Fri,  4 Oct 2019 16:27:20 +0200
Message-Id: <20191004142738.7370-4-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004142738.7370-1-miquel.raynal@bootlin.com>
References: <20191004142738.7370-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_072754_423037_E7061A5E 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Yan Markman <ymarkman@marvell.com>,
 Rob Herring <robh@kernel.org>, Antoine Tenart <antoine.tenart@bootlin.com>,
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
Reviewed-by: Rob Herring <robh@kernel.org>
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
