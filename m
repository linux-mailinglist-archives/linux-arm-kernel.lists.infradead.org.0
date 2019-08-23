Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB299A968
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iRMFmtZ+HCbZJCj2EWDjudx0LQJgFpvSUEZKqszRVFo=; b=NqlmC5dYhVyX3p
	kMo6cfvxIJ/DC+ChAURfmneWLN1MURe75RPHr4/+uRtGnuWEI4JAI8GYkDxBWH89Mf4r9BWyJ8p6w
	N1DwBl+vSmvJyPkUtR/XPoUWruW86iKUzAPg2Ceot2mCpUNI+04kyCJ3HpVuC2L+ZlKXS03OEF1PS
	ns3oHcZUN+URo787OSZpVmdD6qcc6ZSR9NsT9oEhupRocYiGsN5XebvlcZo1gyvPpCrpnYqPmUQkz
	75LnrwA/DvIjZstkjzTLmohcSh1PGiZ4aoIMFbmYNLXr3MXubB1dhgQINtiN5NzoGzD/eQkLN+Cvx
	/alQgVYaUOhuh57QECHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14TF-0007KI-7M; Fri, 23 Aug 2019 07:58:53 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14S3-0006Oz-Vd; Fri, 23 Aug 2019 07:57:41 +0000
X-UUID: 61f965d60d6f4c43aa2a6afeababbf1e-20190822
X-UUID: 61f965d60d6f4c43aa2a6afeababbf1e-20190822
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 588463813; Thu, 22 Aug 2019 23:57:25 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 23 Aug 2019 00:57:24 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 23 Aug 2019 15:57:21 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 23 Aug 2019 15:57:20 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Biju Das <biju.das@bp.renesas.com>
Subject: [PATCH next v10 01/11] dt-binding: usb: add usb-role-switch property
Date: Fri, 23 Aug 2019 15:57:11 +0800
Message-ID: <1566547041-20804-2-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1566547041-20804-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1566547041-20804-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: AA37079CC4B61A5E0B060C3309CB7FB13F234C972090A4050F01F4839DA5D5052000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_005740_237044_0FD66403 
X-CRM114-Status: UNSURE (   9.55  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 Yu Chen <chenyu56@huawei.com>, linux-kernel@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, linux-mediatek@lists.infradead.org,
 Min Guo <min.guo@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Nagarjuna Kristam <nkristam@nvidia.com>, Adam
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
v7~v10: no changes

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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
