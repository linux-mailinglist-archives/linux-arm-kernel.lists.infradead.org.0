Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A81D2251E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 16:25:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2nOWzIak+0eT69wv2D+1BT9BQoku1tsKE1EbTU9fW9M=; b=ZiJ2CvfcVmTRM0
	GBiIjOakvlFg3iS8dFKX1WGOqH3MxkxGXY5ywtCMqKL68W0qPY+Q3clffvugsfAyrplLTbkb6R7ma
	oZlErQk4K/e2wOyDuH8YCLwxge8VK61V8iP0sfe60RcPbjD2IqFQk6sONbXrP8BxYpTcvzwAh4edR
	cJ0Tssj6Ey4BH7XN8YfGj0FEOCVI1ip6zdFYqkV8kew74qKbzB8I+hv1j//XNGQLdljMxBgjnEU9B
	5VTXb7GQ6WIn3MVMuuKZDZ70nZmw9RUrd7mu7VaGe5h4VduQ5+s1gsn4SnLbMyAnRpxYjS6w6Fieb
	VnmVcGoreMU/xV8itdqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT5i5-0005od-Cv; Tue, 21 May 2019 14:25:45 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT5hl-0005Y4-K2
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 14:25:29 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost.localdomain
 (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr [90.88.22.185])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 9DDFEFF816;
 Tue, 21 May 2019 14:25:11 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH resend 1/2] arm64: dts: marvell: Change core numbering in
 AP806 thermal-node
Date: Tue, 21 May 2019 16:25:03 +0200
Message-Id: <20190521142504.31558-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190521142504.31558-1-miquel.raynal@bootlin.com>
References: <20190521142504.31558-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_072525_935426_13D128AD 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Antoine Tenart <antoine.tenart@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When adding thermal nodes, the CPUs have been named from 1 to 4 while
usually everywhere else they are referred as 0-3. Let's change this to
be consistent with later changes when we will use CPUfreq and CPU
phandles as cooling devices to avoid inconsistencies in the nodes
numbering.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/marvell/armada-ap806.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-ap806.dtsi b/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
index 28e9dbcf47e3..df90e8b1daa8 100644
--- a/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
@@ -324,7 +324,7 @@
 			cooling-maps { };
 		};
 
-		ap_thermal_cpu1: ap-thermal-cpu1 {
+		ap_thermal_cpu0: ap-thermal-cpu0 {
 			polling-delay-passive = <1000>;
 			polling-delay = <1000>;
 
@@ -334,7 +334,7 @@
 			cooling-maps { };
 		};
 
-		ap_thermal_cpu2: ap-thermal-cpu2 {
+		ap_thermal_cpu1: ap-thermal-cpu1 {
 			polling-delay-passive = <1000>;
 			polling-delay = <1000>;
 
@@ -344,7 +344,7 @@
 			cooling-maps { };
 		};
 
-		ap_thermal_cpu3: ap-thermal-cpu3 {
+		ap_thermal_cpu2: ap-thermal-cpu2 {
 			polling-delay-passive = <1000>;
 			polling-delay = <1000>;
 
@@ -354,7 +354,7 @@
 			cooling-maps { };
 		};
 
-		ap_thermal_cpu4: ap-thermal-cpu4 {
+		ap_thermal_cpu3: ap-thermal-cpu3 {
 			polling-delay-passive = <1000>;
 			polling-delay = <1000>;
 
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
