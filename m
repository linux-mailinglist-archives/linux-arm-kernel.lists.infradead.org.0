Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6D3B75DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 11:13:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aATqjj+RnILcqVVPPVfHAlmUkeJiBNBCcZ2i8JYqp/g=; b=RoopXFl9LIX+6e
	APmfGwP0QaS68PSrKMM68VoU2HO39ti13IYthYUCEru5Zi2/BJcqq/pBbvXP37bNtp/6Rx2/tJKrT
	q6pCkFpx5Ai3S1t25n7j/OkgxAzJSzHkAfkkLNK3i3+zTXWDe+cqWBvHnae6SvzHUV2ZhOT4C5aAa
	U2zIzklKqQXtUzGmRHNFssePd5BnsAuvWd7ZD2y12uhOhag+2QiD4RC88sYPXc5otvDKyehi/OMhF
	Pmx0XO0TAdP7PAjvgjo2JdeZoTpD98UWJGViiMTW64KJ1+E871dJ1cFYaeeWhhC9GaHC6TuNrqH5q
	5C+99quEOVT18Bs/sXcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAsUt-0000PG-V5; Thu, 19 Sep 2019 09:13:08 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAsSq-0006rG-A7; Thu, 19 Sep 2019 09:11:02 +0000
X-UUID: e1490ac1f4f3458eb2f5c4f513bf9420-20190919
X-UUID: e1490ac1f4f3458eb2f5c4f513bf9420-20190919
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 766288032; Thu, 19 Sep 2019 01:10:48 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Sep 2019 02:10:47 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Sep 2019 17:10:46 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 19 Sep 2019 17:10:45 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 04/11] dt-bindings: phy-mtk-tphy: add a new reference clock
Date: Thu, 19 Sep 2019 17:10:35 +0800
Message-ID: <1568884242-22775-4-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1568884242-22775-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1568884242-22775-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 1076D48297F3B1D1C748536A194407105791CEF3C454A3BB42181519E9D1DD2E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_021101_035247_610F222B 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Usually the digital and analog phys use the same reference clock,
but on some platforms, they are separated, so add another optional
clock to support it.
In order to keep the clock names consistent with PHY IP's, use
the da_ref for analog phy and ref clock for digital phy.

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
Acked-by: Rob Herring <robh@kernel.org>
---
v3: add acked-by Rob

v2: fix typo of analog and needed
---
 Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
index 48bc1a2e9299..a859b0db4051 100644
--- a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
+++ b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
@@ -41,9 +41,12 @@ Optional properties (PHY_TYPE_USB2 port (child) node):
 - clocks	: a list of phandle + clock-specifier pairs, one for each
 		  entry in clock-names
 - clock-names	: may contain
-		  "ref": 48M reference clock for HighSpeed anolog phy; and 26M
-			reference clock for SuperSpeed anolog phy, sometimes is
+		  "ref": 48M reference clock for HighSpeed (digital) phy; and 26M
+			reference clock for SuperSpeed (digital) phy, sometimes is
 			24M, 25M or 27M, depended on platform.
+		  "da_ref": the reference clock of analog phy, used if the clocks
+			of analog and digital phys are separated, otherwise uses
+			"ref" clock only if needed.
 
 - mediatek,eye-src	: u32, the value of slew rate calibrate
 - mediatek,eye-vrt	: u32, the selection of VRT reference voltage
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
