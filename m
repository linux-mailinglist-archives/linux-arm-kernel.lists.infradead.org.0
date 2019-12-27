Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F073D12B525
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 15:25:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g9tjvq4yBfuUz8SLdj5SGdooVc+7OLaTwWx5gw5wv0A=; b=UfSY+ds8FEg2Be
	sTvtkYFhFY5Gta4bGPWcaVuPE22nQl/OVTGtyyxxb3AfoDlXMD/D1xfKk3GCyMmlLkvQs5wm3L1zq
	GTWnDvhqdNNEZ/35nh3ma0pnq6WwllkMU39K/sktoQ4TOVALUF9VQkwxY7xLQ+Ex3jN8p286NrJAn
	p1ePrwfe4PRiF8nNCkGe3ySlshKA00x2/+jaH0Vd7XAvea6hv3RuBsiC2HZ5APICX62WVXRF4fZaw
	GkDJoSHoDz6vrQtxRJwpwks20EMrm0Rmkc1eG1ZBGRppQc+dkAYL3AHBN3edRoYxiLkBo1UwZsEL0
	LS8zXlWrRizksCPSqcZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikqYR-0000a3-H2; Fri, 27 Dec 2019 14:25:27 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikqYH-0000ZU-Tf; Fri, 27 Dec 2019 14:25:19 +0000
X-UUID: 62f24943bdb84c23aa77f9b309ddbc7b-20191227
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=1zRXQBBd4HgmvNxvuWR+gqGoagId5f7H7dFTXUFOo1Q=; 
 b=Vul3stcgS+VJfvN3abysF4cArcwPp0abSUrWHnV4nqJF4IZtgMHK+WMPSlo2AamnfD4qdNXBGxKPCA+4aRQh/+Rx0F0KLzHXej5UwxgNCheSmHW1vYDJFxGq5A2jipIep4l4CCmr37VJcOTm/lS9XUMO4iV4HauVb1H2lPYngEQ=;
X-UUID: 62f24943bdb84c23aa77f9b309ddbc7b-20191227
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.liang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 85024612; Fri, 27 Dec 2019 06:25:14 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Dec 2019 06:15:21 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Dec 2019 22:14:33 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 27 Dec 2019 22:15:26 +0800
From: Yong Liang <yong.liang@mediatek.com>
To: <matthias.bgg@gmail.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <wim@linux-watchdog.org>,
 <linux@roeck-us.net>, <linux-watchdog@vger.kernel.org>
Subject: [PATCH v3 2/2] dt-bindings: mt8183: Add watchdog dt-binding
Date: Fri, 27 Dec 2019 22:14:05 +0800
Message-ID: <20191227141405.3396-3-yong.liang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191227141405.3396-1-yong.liang@mediatek.com>
References: <20191227141405.3396-1-yong.liang@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: AC0E245F852230B6D0DBCBF49B10D944B4A66F6B530D98FD61051C746FE4C2FD2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_062517_965792_324BF4B7 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "yong.liang" <yong.liang@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "yong.liang" <yong.liang@mediatek.com>

This patch add watchdog binding documentation for
watchdog on MTK Socs.

Signed-off-by: yong.liang <yong.liang@mediatek.com>
---
 Documentation/devicetree/bindings/watchdog/mtk-wdt.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
index fd380eb28df5..3ee625d0812f 100644
--- a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
+++ b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
@@ -9,6 +9,7 @@ Required properties:
 	"mediatek,mt7622-wdt", "mediatek,mt6589-wdt": for MT7622
 	"mediatek,mt7623-wdt", "mediatek,mt6589-wdt": for MT7623
 	"mediatek,mt7629-wdt", "mediatek,mt6589-wdt": for MT7629
+	"mediatek,mt8183-wdt", "mediatek,mt6589-wdt": for MT8183
 	"mediatek,mt8516-wdt", "mediatek,mt6589-wdt": for MT8516
 
 - reg : Specifies base physical address and size of the registers.
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
