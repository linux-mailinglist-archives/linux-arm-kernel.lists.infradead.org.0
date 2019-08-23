Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA4A9A951
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:58:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zQn9zW/rOHNjoFQoRdmWE8764fvocoY65kI/RxNQSZA=; b=jV4DO3sEMWW/q0
	V0pPgnrQ9iba8Y5D9WBnuSZXUvBR5pOHNV3szvwqsj+8zXK3W+gQvSR5InHJvab0QBryePwaeqb9M
	RIar0cRFbizRNxS1ZTqMOwVUNAezzukw2DQvwgigGFYqSEyQiOV7v8Gt6R/iVNnFTpM6PTomHtPxM
	3BdKi+3IOExSpxAqVOd1uHWRTnQkGaQ9yD7cnVqUhCpVROXTNRboPUpBeeFzZwo/HibdPK4iRVBs/
	EEdKrlkiNfeq0PsLLDFabQXl7WIQURHM1Gl1huLDiTIoteXpHT0/JS/+n6dseghO4S5MR3kt2FicR
	BQWaUyM99FkvNpYbt90A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14Sa-0006fm-65; Fri, 23 Aug 2019 07:58:12 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14S2-0006P3-Sg; Fri, 23 Aug 2019 07:57:40 +0000
X-UUID: b4102a06655e4a7b9928b452a9307f90-20190822
X-UUID: b4102a06655e4a7b9928b452a9307f90-20190822
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1645797840; Thu, 22 Aug 2019 23:57:32 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 23 Aug 2019 00:57:31 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 23 Aug 2019 15:57:23 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 23 Aug 2019 15:57:22 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Biju Das <biju.das@bp.renesas.com>
Subject: [PATCH next v10 02/11] dt-bindings: connector: add optional
 properties for Type-B
Date: Fri, 23 Aug 2019 15:57:12 +0800
Message-ID: <1566547041-20804-3-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1566547041-20804-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1566547041-20804-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: DD5837F928CF669EDAFCBCD5D94B0709AABC197EEA56CD9489DEDFE789CECE922000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_005738_928716_1CE30738 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
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
 Hans de Goede <hdegoede@redhat.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, linux-mediatek@lists.infradead.org,
 Min Guo <min.guo@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Nagarjuna Kristam <nkristam@nvidia.com>, Adam
 Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add id-gpios, vbus-gpios, vbus-supply and pinctrl properties for
usb-b-connector

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
v6~v10 no changes

v5 changes:
 1. add reviewed by Rob

v4 no changes

v3 changes:
 1. add GPIO direction, and use fixed-regulator for GPIO controlled
    VBUS regulator suggested by Rob;

v2 changes:
 1. describe more clear for vbus-gpios and vbus-supply suggested by Hans
---
 .../bindings/connector/usb-connector.txt           | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/connector/usb-connector.txt b/Documentation/devicetree/bindings/connector/usb-connector.txt
index cef556d4e5ee..d357987181ee 100644
--- a/Documentation/devicetree/bindings/connector/usb-connector.txt
+++ b/Documentation/devicetree/bindings/connector/usb-connector.txt
@@ -17,6 +17,20 @@ Optional properties:
 - self-powered: Set this property if the usb device that has its own power
   source.
 
+Optional properties for usb-b-connector:
+- id-gpios: an input gpio for USB ID pin.
+- vbus-gpios: an input gpio for USB VBUS pin, used to detect presence of
+  VBUS 5V.
+  see gpio/gpio.txt.
+- vbus-supply: a phandle to the regulator for USB VBUS if needed when host
+  mode or dual role mode is supported.
+  Particularly, if use an output GPIO to control a VBUS regulator, should
+  model it as a regulator.
+  see regulator/fixed-regulator.yaml
+- pinctrl-names : a pinctrl state named "default" is optional
+- pinctrl-0 : pin control group
+  see pinctrl/pinctrl-bindings.txt
+
 Optional properties for usb-c-connector:
 - power-role: should be one of "source", "sink" or "dual"(DRP) if typec
   connector has power support.
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
