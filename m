Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B91CFA76B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 04:40:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rzLkYvYSj9/IWQwggm87NL2lCZRmctEDQl3Q03FYMGk=; b=tnRnkgJLCA69tN
	SxjvVM+lVETbYFRKrggInCti8dDObw4HsydoB0q5hIY2uTl+yR7pimHKgNAeLXXjpqAMkqDyzJwqM
	5muiebDIOJ3RgyHxtRpztqelcgIWVsugvRyZGlJgfJum9AcQrFBWlvf7Hbiu9drwjGBCegYucqRIP
	BL3+WwtgwmjXVCbJig/P1Zcj9PuldGy5pCImlaGXzPh3kNoiFi5ifOtPMVSaSDGIkxNje29AtIX8c
	RX41J13XVATW4mNyIw+ifEql+Cf8ULdHg6LyTVrQaEyMPeNtzO99VXUXolkp6+teBp7pWhoGLbcPr
	EpfvOMGY5qmy7CeEeVKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUjW4-0004oc-Ke; Wed, 13 Nov 2019 03:40:24 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUjVQ-0003Zn-PP; Wed, 13 Nov 2019 03:39:46 +0000
X-UUID: b0195e6669a04cf8b90ddce4846b0a27-20191112
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=bfRQ0Dzw2bXkHJSpdBAaflQgVggmHGlR1uabujVny0c=; 
 b=de+DJUBGAzxk2cLrk8w0YUgyK7sdZmXC85wUysWQYOJQ/srVgguIXQB4oNfWcFMRJQVTA0b9OOSd8AgJkKjxU0ts//f1jdz9D07MnqGQhfWiTrt6oxHzAlVS+YY8BN1o4a4FXsBQS3zFGdYSsxBrPQsniVcdp8n+t8RWBeHa11I=;
X-UUID: b0195e6669a04cf8b90ddce4846b0a27-20191112
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ming-fan.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1206725115; Tue, 12 Nov 2019 19:39:32 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 12 Nov 2019 19:39:32 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 13 Nov 2019 11:39:24 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 13 Nov 2019 11:39:24 +0800
From: Ming-Fan Chen <ming-fan.chen@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v1 1/2] dt-bindings: mediatek: Add binding for MT6779 SMI
Date: Wed, 13 Nov 2019 11:39:21 +0800
Message-ID: <1573616362-2557-2-git-send-email-ming-fan.chen@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1573616362-2557-1-git-send-email-ming-fan.chen@mediatek.com>
References: <1573616362-2557-1-git-send-email-ming-fan.chen@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 18B0C01BE9F437EA852D0133948A87BA80A87B372A75DD0B5CDA87B20C5DC0AF2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_193944_843961_7AF0C733 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Joerg Roedel <jroedel@suse.de>,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, linux-mediatek@lists.infradead.org,
 Ming-Fan Chen <ming-fan.chen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add description for MT6779 SMI.

Signed-off-by: Ming-Fan Chen <ming-fan.chen@mediatek.com>
---
 .../memory-controllers/mediatek,smi-common.txt     |    3 ++-
 .../memory-controllers/mediatek,smi-larb.txt       |    3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt
index b478ade..a5a7273 100644
--- a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt
+++ b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt
@@ -5,7 +5,7 @@ The hardware block diagram please check bindings/iommu/mediatek,iommu.txt
 Mediatek SMI have two generations of HW architecture, here is the list
 which generation the SoCs use:
 generation 1: mt2701 and mt7623.
-generation 2: mt2712, mt8173 and mt8183.
+generation 2: mt2712, mt6779, mt8173 and mt8183.
 
 There's slight differences between the two SMI, for generation 2, the
 register which control the iommu port is at each larb's register base. But
@@ -18,6 +18,7 @@ Required properties:
 - compatible : must be one of :
 	"mediatek,mt2701-smi-common"
 	"mediatek,mt2712-smi-common"
+	"mediatek,mt6779-smi-common"
 	"mediatek,mt7623-smi-common", "mediatek,mt2701-smi-common"
 	"mediatek,mt8173-smi-common"
 	"mediatek,mt8183-smi-common"
diff --git a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
index 4b369b3..8f19dfe 100644
--- a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
+++ b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
@@ -6,6 +6,7 @@ Required properties:
 - compatible : must be one of :
 		"mediatek,mt2701-smi-larb"
 		"mediatek,mt2712-smi-larb"
+		"mediatek,mt6779-smi-larb"
 		"mediatek,mt7623-smi-larb", "mediatek,mt2701-smi-larb"
 		"mediatek,mt8173-smi-larb"
 		"mediatek,mt8183-smi-larb"
@@ -21,7 +22,7 @@ Required properties:
   - "gals": the clock for GALS(Global Async Local Sync).
   Here is the list which has this GALS: mt8183.
 
-Required property for mt2701, mt2712 and mt7623:
+Required property for mt2701, mt2712, mt6779 and mt7623:
 - mediatek,larb-id :the hardware id of this larb.
 
 Example:
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
