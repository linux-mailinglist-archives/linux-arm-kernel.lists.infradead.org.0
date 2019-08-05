Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F17816C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:17:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=to58BwHif27UqfstcII620fkoNag18WA/hazr0G7dqY=; b=snb++hVVMk3JGu
	k1Ovaj4R485YQ8vrF8/wdLQEkM7VNVNWgjpp5BlpWu0czEPhNloYvDXCqej87ns9n9gR6pcaJ1Rfw
	thL1m/couqhN2gsafQmUzeAK+DooOEaHu/28Zeav2Qk4vxw7POFTOkr3ReKDsKuJPsWVGauWMhtHO
	9Zojsps3m/nrOo8CBnvcRzPLcsS5dpmKI337ThkfiqEm0MYTnX/VlJxfLycRPObykrauin5WXdNPS
	d9MetJDNKTP2lGWVO5JhhaLrr5fDNBhzutsRUQKtDKY9B6zmQ+i8NogK/LUhKZSb5BlGeLZc/9aka
	vNTiU4Y04dab6OwxVd2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hua3P-0004VZ-6x; Mon, 05 Aug 2019 10:17:23 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hua2U-0003oM-CX
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:16:29 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id B4D3320002;
 Mon,  5 Aug 2019 10:16:18 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 3/3] pinctrl: mvebu: add additional variant for standalone
 CP115
Date: Mon,  5 Aug 2019 12:16:07 +0200
Message-Id: <20190805101607.29811-4-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190805101607.29811-1-miquel.raynal@bootlin.com>
References: <20190805101607.29811-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_031626_577317_770DC1A8 
X-CRM114-Status: GOOD (  12.03  )
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

With CP115 standalone modules, all MPP configuration are
possible. Handle this new possibility thanks to the new
"marvell,cp115-standalone-pinctrl" compatible property.

Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
[<miquel.raynal@bootlin.com>: mention the new compatible in the
commit log]
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/pinctrl/mvebu/pinctrl-armada-cp110.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/pinctrl/mvebu/pinctrl-armada-cp110.c b/drivers/pinctrl/mvebu/pinctrl-armada-cp110.c
index 85ade9761885..17491b27e487 100644
--- a/drivers/pinctrl/mvebu/pinctrl-armada-cp110.c
+++ b/drivers/pinctrl/mvebu/pinctrl-armada-cp110.c
@@ -32,6 +32,7 @@ enum {
 	V_ARMADA_7K = BIT(0),
 	V_ARMADA_8K_CPM = BIT(1),
 	V_ARMADA_8K_CPS = BIT(2),
+	V_CP115_STANDALONE = BIT(3),
 	V_ARMADA_7K_8K_CPM = (V_ARMADA_7K | V_ARMADA_8K_CPM),
 	V_ARMADA_7K_8K_CPS = (V_ARMADA_7K | V_ARMADA_8K_CPS),
 };
@@ -614,6 +615,10 @@ static const struct of_device_id armada_cp110_pinctrl_of_match[] = {
 		.compatible	= "marvell,armada-8k-cps-pinctrl",
 		.data		= (void *) V_ARMADA_8K_CPS,
 	},
+	{
+		.compatible	= "marvell,cp115-standalone-pinctrl",
+		.data		= (void *) V_CP115_STANDALONE,
+	},
 	{ },
 };
 
@@ -655,16 +660,20 @@ static int armada_cp110_pinctrl_probe(struct platform_device *pdev)
 
 		switch (i) {
 		case 0 ... 31:
-			mvebu_pinctrl_assign_variant(m, V_ARMADA_7K_8K_CPS);
+			mvebu_pinctrl_assign_variant(m, (V_ARMADA_7K_8K_CPS |
+							 V_CP115_STANDALONE));
 			break;
 		case 32 ... 38:
-			mvebu_pinctrl_assign_variant(m, V_ARMADA_7K_8K_CPM);
+			mvebu_pinctrl_assign_variant(m, (V_ARMADA_7K_8K_CPM |
+							 V_CP115_STANDALONE));
 			break;
 		case 39 ... 43:
-			mvebu_pinctrl_assign_variant(m, V_ARMADA_8K_CPM);
+			mvebu_pinctrl_assign_variant(m, (V_ARMADA_8K_CPM |
+							 V_CP115_STANDALONE));
 			break;
 		case 44 ... 62:
-			mvebu_pinctrl_assign_variant(m, V_ARMADA_7K_8K_CPM);
+			mvebu_pinctrl_assign_variant(m, (V_ARMADA_7K_8K_CPM |
+							 V_CP115_STANDALONE));
 			break;
 		}
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
