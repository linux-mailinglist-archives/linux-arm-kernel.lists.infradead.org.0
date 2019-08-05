Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF99816C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:17:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0eeAkZ0K3n3Zg8ZnleV+dtej91j7vEfT8AwuQ3VY9N0=; b=rAcdEA4roewGxx
	Nvx4l3d0TeHMQqymIrbGVyxIJM8BYZPB3qB5vmSMGj/aKdoea1MpLVhiyTjer8FJ+TMiaNPgLsji5
	1oCF3UioFKOM0OmTOiB3Xi15CxHHAdbOalLzStQ4Zujp2xa0z7EWQUHsEyKzE9ciqygcTzsxiujsK
	nvuKEvGevT8eg81Mmts0Yk7Fygxlj8CVxyWHYS0H1laxQncDlEBeNPa4aMvXhj3Ib7Q6UBurKVIeP
	ihTk7RG9cNQ33yE3oMZPc2B/MSO1Sk0Fbdaj4r+8tW+HRkoS8JXgZwd6jLm6CbngxDqLARz952VSk
	ufvXhQ7FSBOwKM0pSQYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hua3B-0004Fy-RK; Mon, 05 Aug 2019 10:17:09 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hua2U-0003oL-5u
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:16:29 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 4548D20009;
 Mon,  5 Aug 2019 10:16:17 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 2/3] dt-bindings: cp110: document the new CP115 pinctrl
 compatible
Date: Mon,  5 Aug 2019 12:16:06 +0200
Message-Id: <20190805101607.29811-3-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190805101607.29811-1-miquel.raynal@bootlin.com>
References: <20190805101607.29811-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_031626_376549_EF2BDF47 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
 Nadav Haklai <nadavh@marvell.com>, linux-gpio@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Grzegorz Jaszczyk <jaz@semihalf.com>

A new compatible is going to be used for Armada CP115 pinctrl block,
document it.

Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
[<miquel.raynal@bootlin.com>: split the documentation out of the
driver commit]
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../bindings/arm/marvell/cp110-system-controller.txt          | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/marvell/cp110-system-controller.txt b/Documentation/devicetree/bindings/arm/marvell/cp110-system-controller.txt
index 4db4119a6d19..f982a8ed9396 100644
--- a/Documentation/devicetree/bindings/arm/marvell/cp110-system-controller.txt
+++ b/Documentation/devicetree/bindings/arm/marvell/cp110-system-controller.txt
@@ -78,8 +78,8 @@ Documentation/devicetree/bindings/pinctrl/marvell,mvebu-pinctrl.txt.
 
 Required properties:
 
-- compatible: "marvell,armada-7k-pinctrl",
-  "marvell,armada-8k-cpm-pinctrl" or "marvell,armada-8k-cps-pinctrl"
+- compatible: "marvell,armada-7k-pinctrl", "marvell,armada-8k-cpm-pinctrl",
+  "marvell,armada-8k-cps-pinctrl" or "marvell,cp115-standalone-pinctrl"
   depending on the specific variant of the SoC being used.
 
 Available mpp pins/groups and functions:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
