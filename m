Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6C5F8ABF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 09:39:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2T+2HOofS/j6/QQO8Hvk9q1iVon5arKr47KGz/41Oug=; b=LIE+fOVn4i8vcM
	v/jCDfVpVvrrwttnCzwTU/JMU8e/G5dy5ikgjziZsQAwxiph2CEaF2KI7au64YZHI4EunqTijMNa3
	MgN//PnEpSP0v4i1Z08dr9NHr1BzB0HGcneRKugPgcZTiB1XYOOgQMZCdAp1zf9oaYpZLFx21yTDh
	nsu5OT8xqiZRmOWWoq+4YVTawvc9dRDqND0OQcjjzd4/B+tzzs9aD6CEo1pnVpLBnrz8ngxrSMHgB
	AhVpYFWZ7KbkCYOM+xHPfKoyfuEW6YVaI1q64p3LAWeXQAGM+JxqBVV1LsnNmA4ybJ9Fc2V7f4Tv1
	AY2GUCivwBVbhCPrLrRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iURhk-0005LR-PL; Tue, 12 Nov 2019 08:39:16 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iURfp-0003VT-Q3; Tue, 12 Nov 2019 08:37:20 +0000
X-UUID: e45acc4e96324060af1020e14c22bf2b-20191112
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=beLpL3mpnn5wbqtgoKjpnX95i7uSocOadxQQZLFb2fQ=; 
 b=SMnP5LMq92azja5SI8BX/VOBCsI2609WvRDnMm3mTaPrhTqyAamPZZJdVE7lKMdbR0gFbwkwHjr6c2LqU/HC89lQCPhxshC9TIzcuuQIjt77hRgT7VRWCkB4qZp4J4T+q1PjcrtW9BhQ4TOGPUDw0bx4b/htCPEVttgZ5MQO6XI=;
X-UUID: e45acc4e96324060af1020e14c22bf2b-20191112
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1059589784; Tue, 12 Nov 2019 00:37:30 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 12 Nov 2019 00:36:50 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 12 Nov 2019 16:36:47 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 12 Nov 2019 16:36:40 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 03/11] dt-bindings: phy-mtk-tphy: remove unused u3phya_ref
 clock
Date: Tue, 12 Nov 2019 16:36:28 +0800
Message-ID: <1573547796-29566-3-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1573547796-29566-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1573547796-29566-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: AD1E88C89C68627FCAB015EBC72658406F95028591E1CD6A36E98C07CEEFF36F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_003718_025054_09C6CCA6 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The u3phya_ref clock is already moved into sub-node, and
renamed as ref clock, no used anymore now, so remove it
to avoid confusion

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
v3~v4: no changes

v2: add Reviewed-by Rob
---
 Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
index 1f4a36dd80e0..48bc1a2e9299 100644
--- a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
+++ b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
@@ -13,10 +13,6 @@ Required properties (controller (parent) node):
 		  "mediatek,mt8173-u3phy";
 		  make use of "mediatek,generic-tphy-v1" on mt2701 instead and
 		  "mediatek,generic-tphy-v2" on mt2712 instead.
- - clocks	: (deprecated, use port's clocks instead) a list of phandle +
-		  clock-specifier pairs, one for each entry in clock-names
- - clock-names	: (deprecated, use port's one instead) must contain
-		  "u3phya_ref": for reference clock of usb3.0 analog phy.
 
 Required nodes	: a sub-node is required for each port the controller
 		  provides. Address range information including the usual
-- 
2.23.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
