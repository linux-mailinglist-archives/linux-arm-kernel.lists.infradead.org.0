Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5BC2D6AF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 09:44:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sNeC0CcY6lwVUXMcZhAg/Spau6msJwPnJzKCLeoSo5U=; b=MV0NRerbv37aTd
	jB12VbuSL46w6QoNSqNuey6B0cpgVWPRBY+L74LHp/DzrOO86USoBkfGEqpq8gpP4UO6XYqAKT8M4
	jIu+G9mPPyZpXBXX1kyP68PKlrz2bd+GweREPd60hJA6V+H/O2KJ2NhwqNbF/EfYN8+rzTsX3zgbJ
	PWSSVxpmcovneqkhVSeAg2Qpo/fLe7raYyVAD60/VzSujEadaM/NwKcrixOL2BcFY+NijsxQaJyLh
	ASQDpdIntdOr9vZ4h8dfZ2JRZc50neUhN/wcaVnMhaKv9R25y2tNhGoFfCCPc8nS9P0WHlH2GMRTV
	6DdpHnJTTINqcauNi49w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtG2-0005tN-6o; Wed, 29 May 2019 07:44:22 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtFu-0005sQ-EU; Wed, 29 May 2019 07:44:16 +0000
X-UUID: 237604ef599b4344b4e665349ceff1a0-20190528
X-UUID: 237604ef599b4344b4e665349ceff1a0-20190528
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 257585043; Tue, 28 May 2019 23:44:10 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 May 2019 00:44:09 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 May 2019 15:44:05 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 29 May 2019 15:44:04 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Heikki Krogerus
 <heikki.krogerus@linux.intel.com>
Subject: [PATCH v6 01/10] dt-binding: usb: add usb-role-switch property
Date: Wed, 29 May 2019 15:43:39 +0800
Message-ID: <1559115828-19146-2-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1559115828-19146-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1559115828-19146-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_004414_490383_11F47140 
X-CRM114-Status: GOOD (  10.70  )
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
 Hans de Goede <hdegoede@redhat.com>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 Yu Chen <chenyu56@huawei.com>, linux-kernel@vger.kernel.org,
 Biju Das <biju.das@bp.renesas.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Adam
 Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a property usb-role-switch to tell the driver that use
USB Role Switch framework to handle the role switch,
it's useful when the driver has already supported other ways,
such as extcon framework etc.

Cc: Biju Das <biju.das@bp.renesas.com>
Cc: Yu Chen <chenyu56@huawei.com>
Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
---
v6:
    1. merge into this series patch
    2. add Reviewed-by

(no v4, v5)

v3:
    add property type, modify description suggested by Heikki

v2:
    describe it in terms of h/w functionality suggested by Rob

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
 Documentation/devicetree/bindings/usb/generic.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/generic.txt b/Documentation/devicetree/bindings/usb/generic.txt
index 0a74ab8dfdc2..cf5a1ad456e6 100644
--- a/Documentation/devicetree/bindings/usb/generic.txt
+++ b/Documentation/devicetree/bindings/usb/generic.txt
@@ -30,6 +30,10 @@ Optional properties:
 			optional for OTG device.
  - adp-disable: tells OTG controllers we want to disable OTG ADP, ADP is
 			optional for OTG device.
+ - usb-role-switch: boolean, indicates that the device is capable of assigning
+			the USB data role (USB host or USB device) for a given
+			USB connector, such as Type-C, Type-B(micro).
+			see connector/usb-connector.txt.
 
 This is an attribute to a USB controller such as:
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
