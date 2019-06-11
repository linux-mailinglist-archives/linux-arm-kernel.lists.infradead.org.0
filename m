Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D65433C5B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 10:13:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rXB1tDFCSH8p2EFvfEr361/ffcrpnBpfLkDjLhNHA50=; b=cjHS++fgR2rvhd
	3YgWoya83GH90PmtvkPPOzrdcU5bhqRe9DZAmsrlWfzRjJdO2tvcpCnUD3lci10xYatCKTfI+iVFC
	pRsweMk5/POaL4OZd4syIgzdbrTvtZw7U2Ri7L3XYKV9Yvh5kTyPYHYZzvQdmT8R4ISf4i3Sp/0tn
	MAUfoLkWb5+W10eGs9waIgPgN1NDEmL/YQCJezSyh1dZ79aUYj/2RddstVSous2AUxTUB/zrasqC5
	FMd3MKlsufhzHJD+gZXj4NW2qvFiRx+oPLS9dQqPIO3G2wa613RDA3AA09FD9JRNi2A/OW676PKtp
	L5X3x2XZarJsmHnEKXYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1habuC-0002wc-7L; Tue, 11 Jun 2019 08:13:20 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1habtp-0002tm-2u; Tue, 11 Jun 2019 08:12:58 +0000
X-UUID: c9323b62277d494b8123a4b54869ff54-20190611
X-UUID: c9323b62277d494b8123a4b54869ff54-20190611
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <qii.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 525475109; Tue, 11 Jun 2019 00:12:50 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 01:12:49 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 16:12:48 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 11 Jun 2019 16:12:47 +0800
From: Qii Wang <qii.wang@mediatek.com>
To: <wsa@the-dreams.de>
Subject: [PATCH 1/2] dt-bindings: i2c: Add MediaTek i2c AC timing binding
Date: Tue, 11 Jun 2019 16:11:54 +0800
Message-ID: <1560240715-22595-2-git-send-email-qii.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1560240715-22595-1-git-send-email-qii.wang@mediatek.com>
References: <1560240715-22595-1-git-send-email-qii.wang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_011257_137402_66C707C5 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, qii.wang@mediatek.com,
 srv_heupstream@mediatek.com, leilk.liu@mediatek.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, linux-i2c@vger.kernel.org,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add i2c AC timing binding to binding file. It can give the AC
timing parameters to meet I2C specification at different speed.

Signed-off-by: Qii Wang <qii.wang@mediatek.com>
---
 .../devicetree/bindings/i2c/i2c-mt65xx.txt         |   11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt b/Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt
index 68f6d73..0f92813 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt
+++ b/Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt
@@ -30,6 +30,7 @@ Optional properties:
   - mediatek,have-pmic: platform can control i2c form special pmic side.
     Only mt6589 and mt8135 support this feature.
   - mediatek,use-push-pull: IO config use push-pull mode.
+  - ac-timing: give some AC timing parameters to meet i2c spec fully.
 
 Example:
 
@@ -43,5 +44,15 @@ Example:
 			clock-div = <16>;
 			clocks = <&i2c0_ck>, <&ap_dma_ck>;
 			clock-names = "main", "dma";
+			ac-timing =  /bits/ 16 <
+				0x8001	/* 0:ext */
+				0x0005	/* 1:inter_clk_div */
+				0x0102	/* 2:scl_hl_ratio */
+				0x0102	/* 3:hs_scl_hl_ratio */
+				0x0002	/* 4:scl_mis_comp */
+				0x0002	/* 5:sta_stop */
+				0x0002	/* 6:hs_sta_stop */
+				0x0002	/* 7:sda_timing */
+			>;
 	};
 
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
