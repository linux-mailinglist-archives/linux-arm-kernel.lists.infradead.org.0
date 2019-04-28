Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F089DB5F6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 14:28:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Pv0gF/8WUkH7deil5AowIlgrAaNJuurFuKenIHefeV8=; b=VVv7aCj/ON27df
	AfcweuzSk7ra3kg3vvPpFzhHjUpWN0PcenMTsHQU7Z+X0sk7I3CO7z+8ChGAfh1bUt6i3wlRdkz7D
	k0E2xRXxWLe+6vv/kAtLF2fA+trbibRltJo06+fNS0dQSE9TwmKtXBoPwtlcVH/YYyR4BgIoWrjk4
	mIAwBoZHIAu0EF9JU6/sBI8m75S4zBsNUzpyjva5HG6HN8y0H01QwGx2rATjB7bIxm/lISG97iKmx
	Uv8nRrNnxqITTjGO0A1zejE5e6TvWDVsCUTdfpOqtw7JHG4rvdPfu7XleCQM8HTv/gH4YgwMPy2Cl
	D//GMTQ2vH26gBfPJrmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKiv3-0002mE-N7; Sun, 28 Apr 2019 12:28:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKiuw-0002lG-5j; Sun, 28 Apr 2019 12:28:27 +0000
X-UUID: 31519984216d4723a0762054c12839f5-20190428
X-UUID: 31519984216d4723a0762054c12839f5-20190428
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1496967927; Sun, 28 Apr 2019 04:28:22 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 28 Apr 2019 05:28:20 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 28 Apr 2019 20:28:18 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 28 Apr 2019 20:28:17 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] dt-binding: usb: add usb-role-switch property
Date: Sun, 28 Apr 2019 20:27:46 +0800
Message-ID: <5756e05930f5e6a3940ad9d019399c8e63d24f18.1556454324.git.chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_052826_219752_FC3DCC07 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, Felipe
 Balbi <felipe.balbi@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, Yu
 Chen <chenyu56@huawei.com>, linux-kernel@vger.kernel.org,
 Biju Das <biju.das@bp.renesas.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a property usb-role-switch to tell Dual-Role controller driver
that use USB Role Switch framework to handle the role switch between
host mode and device mode, it's useful when the driver has already
supported other ways, such as extcon framework etc.

Cc: Biju Das <biju.das@bp.renesas.com>
Cc: Yu Chen <chenyu56@huawei.com>
Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v1:
the property is discussed in:
[v2,2/7] dt-bindings: usb: renesas_usb3: add usb-role-switch property
https://patchwork.kernel.org/patch/10852497/

Mediatek and Hisilicon also try to use it:
[v4,3/6] dt-bindings: usb: mtu3: add properties about USB Role Switch
https://patchwork.kernel.org/patch/10918385/
[v4,6/6] usb: mtu3: register a USB Role Switch for dual role mode
https://patchwork.kernel.org/patch/10918367/

[v6,10/13] usb: dwc3: Registering a role switch in the DRD code
https://patchwork.kernel.org/patch/10909981/
---
 Documentation/devicetree/bindings/usb/generic.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/generic.txt b/Documentation/devicetree/bindings/usb/generic.txt
index 0a74ab8dfdc2..c73950b72513 100644
--- a/Documentation/devicetree/bindings/usb/generic.txt
+++ b/Documentation/devicetree/bindings/usb/generic.txt
@@ -30,6 +30,9 @@ Optional properties:
 			optional for OTG device.
  - adp-disable: tells OTG controllers we want to disable OTG ADP, ADP is
 			optional for OTG device.
+ - usb-role-switch: tells Dual-Role USB controller driver that we want to use
+			USB Role Switch framework to handle the role switch
+			between host mode and device mode.
 
 This is an attribute to a USB controller such as:
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
