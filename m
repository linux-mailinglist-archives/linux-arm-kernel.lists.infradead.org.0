Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E61BA8348A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 16:58:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p0DjCrWaNWbuWEnHbHbAoWBFN/ks5ReRW+dWjY34niE=; b=KGhv4lLf6RumIB
	AV0qaxLAhqT8p6KlHUun1lF864n8s7hXfhPCVyJTV2iSFpXohnbqIIq5IIOWJ6B5gsDezdii0kOPC
	XjGebcDSy6h2uAKVvfdbI7hMVOLyUTtGsEE1Gs/J1IqU9+bUwzEgAb2u0TZajNCl2TBWccguckPNU
	kQxqJPfLGggIAZK/lohnW3BcHtZk+xoT5O8e6m3zXgKciAikXGCEnYI6qhOeHR5Bp7s04dpI7cJkg
	XPM0WuUtkBXornFfJa9q3pteM4VEdj1SvGQkogBpXg1Xc+9aeCfxOQ0GiYw5MOPVZON0YPf94tkNk
	aoB9MuRZLsutSFTYf0Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0uq-0002Qo-6Q; Tue, 06 Aug 2019 14:58:20 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0s7-0007vL-VA
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 14:55:33 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id E5BE1E000B;
 Tue,  6 Aug 2019 14:55:28 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 16/20] dt-bindings: marvell: Declare the CN913x SoC compatibles
Date: Tue,  6 Aug 2019 16:54:56 +0200
Message-Id: <20190806145500.24109-17-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806145500.24109-1-miquel.raynal@bootlin.com>
References: <20190806145500.24109-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_075532_170598_40194C85 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Grzegorz Jaszczyk <jaz@semihalf.com>

Describe the compatible properties for the new Marvell SoCs:
* CN9130: 1x AP807-quad + 1x CP115 (1x embedded)
* CN9131: 1x AP807-quad + 2x CP115 (1x embedded + 1x modular)
* CN9132: 1x AP807-quad + 3x CP115 (1x embedded + 2x modular)

CP115 are similar to CP110 in terms of features.

There are three development boards based on these SoCs:
* CN9130-DB: comes as a single mother board (with the CP115 bundled)
* CN9131-DB: same as CN9130-DB with one additional modular CP115
* CN9132-DB: same as CN9130-DB with two additional modular CP115

Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../bindings/arm/marvell/armada-7k-8k.txt           | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
index df98a9c82a8c..8eb34ca4c4f0 100644
--- a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
+++ b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
@@ -1,7 +1,7 @@
 Marvell Armada 7K/8K Platforms Device Tree Bindings
 ---------------------------------------------------
 
-Boards using a SoC of the Marvell Armada 7K or 8K families must carry
+Boards using a SoC of the Marvell Armada 7K/8K or CN913x families must carry
 the following root node property:
 
  - compatible, with one of the following values:
@@ -18,6 +18,17 @@ the following root node property:
    - "marvell,armada8040", "marvell,armada-ap806-quad", "marvell,armada-ap806"
       when the SoC being used is the Armada 8040
 
+   - "marvell,cn9130", "marvell,armada-ap807-quad", "marvell,armada-ap807"
+      when the SoC being used is the Armada CN9130 with no external CP.
+
+   - "marvell,cn9131", "marvell,cn9130",
+     "marvell,armada-ap807-quad", "marvell,armada-ap807"
+      when the SoC being used is the Armada CN9130 with one external CP.
+
+   - "marvell,cn9132", "marvell,cn9131", "marvell,cn9130",
+     "marvell,armada-ap807-quad", "marvell,armada-ap807"
+      when the SoC being used is the Armada CN9130 with two external CPs.
+
 Example:
 
 compatible = "marvell,armada7040-db", "marvell,armada7040",
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
