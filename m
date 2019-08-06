Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A43BE83497
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 17:00:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xh0gVSEMpQvqIs13F1TFzX/ZN8sf7NNFcFnWy64sSD4=; b=dMDt+ODZvrpbEc
	hodEuYEProC+u2ViBfRo3J462aMBvKIX8b8rphibS/DIe1C/jBzUI4a/APj0L/+ngL2lZWZSRic92
	l/kG/ZWucJyjcuEa9lzVVnVq3Gr4jV71q3chy2daaSza1T0jirEgZb+Do+FbNG//OOKDVzKdcoZ6J
	ptbQMZgJX16I3UmwPo9bdBcc6KB0gF3aQ8k0KL3D4/SaMvZcyu+slXcyPzsNns55e0psi+4xkisxp
	v0rJh9BGoHpPvVOGmj20rUeMyhTGqt2HKbahlfCS7HbVvP2Fc20FCaHhg7lRh+UQlKbqmzH8xYlwc
	RfBFry0d1w830Fh7xLZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0x2-0006q3-C5; Tue, 06 Aug 2019 15:00:36 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0sU-0008Lj-7j
 for linux-arm-kernel@bombadil.infradead.org; Tue, 06 Aug 2019 14:55:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6a4L/H/xS5Fc9KfyI73GBRznLOPH+Ltpx2TPY/mMfJY=; b=NGG+dpaLVTOCUnlX3gYthGENyh
 dcnJiZ5+l4oXzC9p5cnLeT+vAtBNfN/4yX0GDRgLNHPYK7EM+0v65uhTgsn+5+OBiMma4cXApsNuL
 NYcploVwcvHD+CLnw4XOGYCcLVtiG69L+fImqdGZuO1IudihrneVJ1wezh632isJ9v3u4AvkK5ow2
 jEDd2HjpaWw6E/gf4JJCKqLZCDo7wgN9ob9CQeOHkjQ0QLqUbkyt2eLU3aC3SWI9pjz+e0cIgWq9t
 UqUG9KC+r+RPh6aEy4JG2Qhg8e8NNuvZn46tp1T+nyrdzLPx02xqIm5yY7dXYUA1sCIQ3agEFgXKx
 tL3J+CKQ==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0sg-0008CI-LA
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 14:56:08 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 3C3CCE0003;
 Tue,  6 Aug 2019 14:55:06 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 01/20] arm64: dts: marvell: Enumerate the first AP806 syscon
Date: Tue,  6 Aug 2019 16:54:41 +0200
Message-Id: <20190806145500.24109-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806145500.24109-1-miquel.raynal@bootlin.com>
References: <20190806145500.24109-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_155606_741197_A1113F78 
X-CRM114-Status: GOOD (  10.47  )
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are two system controllers in the AP80x, like for ap_syscon1,
enumerate the first one by renaming it s/ap_syscon/ap_syscon0/.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/marvell/armada-ap806.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-ap806.dtsi b/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
index d06dd198f2c7..a23ddd46efc5 100644
--- a/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
@@ -246,7 +246,7 @@
 				status = "disabled";
 			};
 
-			ap_syscon: system-controller@6f4000 {
+			ap_syscon0: system-controller@6f4000 {
 				compatible = "syscon", "simple-mfd";
 				reg = <0x6f4000 0x2000>;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
