Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55219D08D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 09:52:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PpM7cPJowY5mkD8ilOVpGU6fLxjzeXiIlJfDiXK5SHo=; b=ajiXbKtS4Sd7Ke
	H0WAn/a7/gKBJA2ZSFXOMehfc1ICv+gKVbXtNwd7buQ5h0YZ2UdnRKi05vo15DWrxNwE4zi8f07nM
	XauEohM6/6Sk0CjCSQbfr2aoqwiPKs/R268aG21d2ORieizriWsThOaw7bGfxyt1wHWtugnycIkzd
	NnFq5U4nFkpVlgVpDyw7Itfhj3o0IEmkIggKwj0c1i2/KuWf4cONGAosoASfOgGm0F3lt7IYMjzUL
	WAK8RIs0SVMqaVajbKHufcW96hWb7c42BuUfmzNJrH1Wj8EYIQfbyoKMmdgkY6lbsc630WXOxBV/K
	yOpzCbTRPX71NFCQl0vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6lt-0006m5-CF; Wed, 09 Oct 2019 07:52:33 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6ke-0005kE-Pa; Wed, 09 Oct 2019 07:51:18 +0000
X-UUID: 9db0166750b94ec9b6f518501c238d37-20191008
X-UUID: 9db0166750b94ec9b6f518501c238d37-20191008
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1072312643; Tue, 08 Oct 2019 23:51:38 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 00:41:12 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 15:41:08 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 9 Oct 2019 15:41:07 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>
Subject: [RESEND PATCH v3 05/11] dt-bindings: phy-mtk-tphy: add the properties
 about address mapping
Date: Wed, 9 Oct 2019 15:40:28 +0800
Message-ID: <1570606834-5644-5-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1570606834-5644-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1570606834-5644-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: C05F62D1C5E751FB6397A3C160DCD05478728B7C988E223A8B72F79807F3C4242000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_005116_878831_8310F7E3 
X-CRM114-Status: GOOD (  13.06  )
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

Add three required properties about the address mapping, including
'#address-cells', '#size-cells' and 'ranges'

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
v3: no changes

v2: add Reviewed-by Rob
---
 Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
index a859b0db4051..dd75b676b71d 100644
--- a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
+++ b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
@@ -14,6 +14,16 @@ Required properties (controller (parent) node):
 		  make use of "mediatek,generic-tphy-v1" on mt2701 instead and
 		  "mediatek,generic-tphy-v2" on mt2712 instead.
 
+- #address-cells:	the number of cells used to represent physical
+		base addresses.
+- #size-cells:	the number of cells used to represent the size of an address.
+- ranges:	the address mapping relationship to the parent, defined with
+		- empty value: if optional 'reg' is used.
+		- non-empty value: if optional 'reg' is not used. should set
+			the child's base address to 0, the physical address
+			within parent's address space, and the length of
+			the address map.
+
 Required nodes	: a sub-node is required for each port the controller
 		  provides. Address range information including the usual
 		  'reg' property is used inside these nodes to describe
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
