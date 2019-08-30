Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBF5A3082
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 09:15:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PUOuoxfyl3OlCWiY5Wbz/bu1H3XYkajDF5AfqxcEadQ=; b=CAtCeywemFD1du
	klm4CDMBhWuoOpDsszADjMjShJ1p8XKUEX2ElS9I/AEb25FqMXg4a6tLdG9POr92YT793G894vgUT
	6W1OO1b8xnXsW3032eEi7m9crDPRYUmA8jmKSHIOe5BSAicntvem8vpWOb81IW6OER1A5DIW5nZ2e
	G1xw2OqugJAabQhk+FZRQ8MLX6KfzVA5jTJB7h71Xt6pyp/Fzdnuhe88SF2XzlfkzValcXXywV6jY
	eErYYEq2Dhwb+vPMx2VTNp4D4tQ+zhcoM//F/jZxcd1KcacyO2pxU+uTb9AnzFnoaA2iOPJdY8ONV
	2YSu1kP9MewPgLxDUUJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3b8W-0006Lt-5y; Fri, 30 Aug 2019 07:15:56 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3b7p-000649-Bw; Fri, 30 Aug 2019 07:15:14 +0000
X-UUID: 4535188c1e454476993ca89aa3277672-20190829
X-UUID: 4535188c1e454476993ca89aa3277672-20190829
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 382252351; Thu, 29 Aug 2019 23:15:10 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 30 Aug 2019 00:15:08 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 30 Aug 2019 15:15:06 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 30 Aug 2019 15:15:05 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 02/11] dt-bindings: phy-mtk-tphy: make the ref clock
 optional
Date: Fri, 30 Aug 2019 15:14:49 +0800
Message-ID: <1567149298-29366-2-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1567149298-29366-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1567149298-29366-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 8AA4EE7C93101D4575B204A05C0D3FBBCF809858BAA0767AF37DB9BC4E6BA8B72000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_001513_409284_07F4B1A3 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make the ref clock optional, then we no need refer to a fixed-clock
in DTS anymore when the clock of USB3 PHY comes from oscillator
directly

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v2: no changes
---
 .../devicetree/bindings/phy/phy-mtk-tphy.txt        | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
index ce6abfbdfbe1..1f4a36dd80e0 100644
--- a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
+++ b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
@@ -34,12 +34,6 @@ Optional properties (controller (parent) node):
 
 Required properties (port (child) node):
 - reg		: address and length of the register set for the port.
-- clocks	: a list of phandle + clock-specifier pairs, one for each
-		  entry in clock-names
-- clock-names	: must contain
-		  "ref": 48M reference clock for HighSpeed analog phy; and 26M
-			reference clock for SuperSpeed analog phy, sometimes is
-			24M, 25M or 27M, depended on platform.
 - #phy-cells	: should be 1 (See second example)
 		  cell after port phandle is phy type from:
 			- PHY_TYPE_USB2
@@ -48,6 +42,13 @@ Required properties (port (child) node):
 			- PHY_TYPE_SATA
 
 Optional properties (PHY_TYPE_USB2 port (child) node):
+- clocks	: a list of phandle + clock-specifier pairs, one for each
+		  entry in clock-names
+- clock-names	: may contain
+		  "ref": 48M reference clock for HighSpeed anolog phy; and 26M
+			reference clock for SuperSpeed anolog phy, sometimes is
+			24M, 25M or 27M, depended on platform.
+
 - mediatek,eye-src	: u32, the value of slew rate calibrate
 - mediatek,eye-vrt	: u32, the selection of VRT reference voltage
 - mediatek,eye-term	: u32, the selection of HS_TX TERM reference voltage
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
