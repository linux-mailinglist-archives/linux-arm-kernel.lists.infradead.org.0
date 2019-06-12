Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5FF41BB9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 07:56:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QPyDXmaEt2rz3Hr5ihgUBtUxqoaltqrwmZpbU3XLgos=; b=p27sHOwc8DGEdd
	zzyvjzLX5L+QclodGbrxw5PiM/NVL/PNQ/yi2Xum082dejDsYgqD8+57GuYsRXO3l761ffcLXiuF8
	/g6tk20HFDjrxTp05iF6C09R/t/VSnxNMQVOiSZfvqoRZehYBhkluFNoaIyFcA+lQYEKmKgBwvPdv
	M8JhtEGf4SOrxDfy3dlbDoj1Jf4ldPg75ooiVQbK1W1EGawEUaW3gw2okpoey1KqGkDBn0ZC7hEil
	fniRYziAKbAe1P4XTs7yTCjVD5cBvbLZx4yFx40W5Az07b8xL1UbR2XTHUpEEoVVrueKovE96jWO5
	zLNepJTZkMYS6TP4GvVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hawEl-0003Mz-Go; Wed, 12 Jun 2019 05:55:55 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hawEb-0003LH-TK; Wed, 12 Jun 2019 05:55:47 +0000
X-UUID: f0b85d32d35e49ea8e1c0018403b8152-20190611
X-UUID: f0b85d32d35e49ea8e1c0018403b8152-20190611
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1368809534; Tue, 11 Jun 2019 21:55:43 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 22:55:42 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Jun 2019 13:55:37 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 12 Jun 2019 13:55:31 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 1/5] dt-bindings: usb: mtu3: fix typo of DMA clock name
Date: Wed, 12 Jun 2019 13:55:17 +0800
Message-ID: <5e06482a0be15476c7b5825f155accf98275afa8.1560246390.git.chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_225545_952132_F3618BDA 
X-CRM114-Status: GOOD (  11.36  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Jumin
 Li <jumin.li@mediatek.com>, Mathias Nyman <mathias.nyman@intel.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, Chunfeng
 Yun <chunfeng.yun@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix typo of dma_ck

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
 Documentation/devicetree/bindings/usb/mediatek,mtu3.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/mediatek,mtu3.txt b/Documentation/devicetree/bindings/usb/mediatek,mtu3.txt
index 3382b5cb471d..5d740e9d4525 100644
--- a/Documentation/devicetree/bindings/usb/mediatek,mtu3.txt
+++ b/Documentation/devicetree/bindings/usb/mediatek,mtu3.txt
@@ -16,7 +16,7 @@ Required properties:
 	entry in clock-names
  - clock-names : must contain "sys_ck" for clock of controller,
 	the following clocks are optional:
-	"ref_ck", "mcu_ck" and "dam_ck";
+	"ref_ck", "mcu_ck" and "dma_ck";
  - phys : see usb-hcd.txt in the current directory
  - dr_mode : should be one of "host", "peripheral" or "otg",
 	refer to usb/generic.txt
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
