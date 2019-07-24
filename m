Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A51572B03
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 11:03:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KhZd3s2FeoDZT9KV7MUgiB2PKctTDYe5rPUsBrlRytc=; b=ewVa1lpraR7uZc
	tnoxg/mBKXo1kHRi2M4jZXy+AwtnNtoU2jhylMKycOs2OK8YE1k6eonT99CdJvCrXEdfCNvUFu12t
	34NqJCuZ/QBBdd8FL99u/sylUtCht8n8QMSJ441A2G3XGf7ggkldLFyAp3vodvq5j5+dlOBE6exFL
	cs6eqL5eIsug0ZrYJOfgKIAT+8t1rSLTpsY771z1HEHS1SGyRxTLLoTTHpJ/ODuCOXa4pbGHiiypn
	GygryKGssAhxLiynyXcLLukQ3YBP7xeiRZaInpBnM5D8jiTMucav4090ei6w5pI7K5YUBefob/D/o
	x3FtOjfuICbX//noltKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqDBK-00033E-2J; Wed, 24 Jul 2019 09:03:31 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqD9Y-0002ZE-1E; Wed, 24 Jul 2019 09:01:41 +0000
X-UUID: ff41210beb2f431fb9ddae858432d7a8-20190724
X-UUID: ff41210beb2f431fb9ddae858432d7a8-20190724
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@kernel.org>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1393072591; Wed, 24 Jul 2019 01:01:11 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 24 Jul 2019 02:01:10 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 24 Jul 2019 17:01:02 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 24 Jul 2019 17:01:02 +0800
From: <ryder.lee@kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 2/2] dt-bindings: gpu: mali-utgard: add mediatek,
 mt7623-mali compatible
Date: Wed, 24 Jul 2019 17:01:00 +0800
Message-ID: <efeadefe3895bcadf1d2e9847b82206dd8c7ec35.1563867856.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <af7b5a2e00eb3a4b6262807c378e43afd5f74779.1563867856.git.ryder.lee@mediatek.com>
References: <af7b5a2e00eb3a4b6262807c378e43afd5f74779.1563867856.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_020140_171044_02E392BC 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Weijie Gao <weijie.gao@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sean Wang <sean.wang@mediatek.com>

The MediaTek MT7623 SoC contains a Mali-450, so add a compatible for it
and define its own vendor-specific properties.

Signed-off-by: Sean Wang <sean.wang@mediatek.com>
Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/gpu/arm,mali-utgard.txt | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.txt b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.txt
index ae63f09fda7d..73021e2dda25 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.txt
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.txt
@@ -17,6 +17,7 @@ Required properties:
       + amlogic,meson8b-mali
       + amlogic,meson-gxbb-mali
       + amlogic,meson-gxl-mali
+      + mediatek,mt7623-mali
       + rockchip,rk3036-mali
       + rockchip,rk3066-mali
       + rockchip,rk3188-mali
@@ -88,6 +89,10 @@ to specify one more vendor-specific compatible, among:
     Required properties:
       * resets: phandle to the reset line for the GPU
 
+  - mediatek,mt7623-mali
+     Required properties:
+      * resets: phandle to the reset line for the GPU
+
   - Rockchip variants:
     Required properties:
       * resets: phandle to the reset line for the GPU
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
