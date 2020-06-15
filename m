Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C201F95A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 13:53:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NpCqVxfAyCTfpWxyTqE7trIScKwkRssqx0r5v9AswIQ=; b=CCCt1NbSh1P8SU
	e5j1aZWPysH9ZfwJTn1F+b63onlYq2zHWngh7Y4iQjAlPMUF2NVMU7Q++hVA9vTdS51hOhJzD34FM
	CkEX7/ZtLeEFvbmphuLXp2yEfwVRn/ionWthNQNslh6vlaebPP5Ix6Xr0oQWw5fVnCBzQBHEnPcHJ
	x8APL8CnAcMm9DAG6aHM+c94uWD0F4s7rlKSzhFl2iF/dBXgM+Rm3EQh82pMjI53PGoEix3hFoyF4
	nqxWJXtaIc+Vdo3omKhJuSFDlvH139tbQ6dTA0/Wl5fnXy/290pimC1oEVuLnQFxP1o0DNj/6nQ35
	ycD3phl201Rw82YQk6EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jknfc-0001dU-Tm; Mon, 15 Jun 2020 11:52:56 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jknfR-0001cB-1f; Mon, 15 Jun 2020 11:52:46 +0000
X-UUID: 67e7021615d64388b9f436bfb1fc2d49-20200615
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=0U69Py6xJu6ZqvOVIJg86E3EGgWobmy8WriwC3AL97U=; 
 b=fnkHOM1PAc+vpc+pbqnxnrJpByBttazQw+wTV4TbPw3EIBUFJ5UQtozepmFfffZMG1q7VKRHfJwbm4qMdeGuv4Xbl87jUsVJtV3xu1riernjT3ivAj/NziZsf1pEk8CCKUU/4WaUCVdtTgvhKg3psXk4gMMduZWbP6xy3njwRYw=;
X-UUID: 67e7021615d64388b9f436bfb1fc2d49-20200615
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <fengping.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 446090815; Mon, 15 Jun 2020 03:52:40 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 04:42:36 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 19:42:34 +0800
Received: from localhost.localdomain (10.15.43.140) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 15 Jun 2020 19:42:35 +0800
From: Fengping Yu <fengping.yu@mediatek.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>, "Yingjoe
 Chen" <yingjoe.chen@mediatek.com>, Pavel Machek <pavel@ucw.cz>, "Jacek
 Anaszewski" <jacek.anaszewski@gmail.com>
Subject: [PATCH v1 1/3] dt-bindings:Add vibrator devicetree documentation
Date: Mon, 15 Jun 2020 19:42:02 +0800
Message-ID: <20200615114203.116656-2-fengping.yu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200615114203.116656-1-fengping.yu@mediatek.com>
References: <20200615114203.116656-1-fengping.yu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 0DC18458E007A158A151B82AFBFCE9BB1DEF7D379C90BCBB88EF689AA94A8F732000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_045245_099863_E9B23E53 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "fengping.yu" <fengping.yu@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "fengping.yu" <fengping.yu@mediatek.com>

Add Mediatek regulator vibrator dt-bindings doc as yaml schema

Signed-off-by: fengping.yu <fengping.yu@mediatek.com>
---
 .../bindings/input/regulator-vibrator.yaml    | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/regulator-vibrator.yaml

diff --git a/Documentation/devicetree/bindings/input/regulator-vibrator.yaml b/Documentation/devicetree/bindings/input/regulator-vibrator.yaml
new file mode 100644
index 000000000000..6511a8a80aff
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/regulator-vibrator.yaml
@@ -0,0 +1,65 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+version: 1
+
+$id: http://devicetree.org/schemas/input/regulator-vibrator.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek's regulator vibrator device tree bindings
+
+maintainer:
+  - Fengping Yu <fengping.yu@mediatek.com>
+
+description: |
+  Registers a regulator device as vibrator, where the on/off capability is controlled by a regulator.
+
+properties:
+  compatible:
+      const: "regulator-vibrator"
+
+	vibr-supply:
+		description: Power supply to the vibrator.
+		refs:Documentation/devicetree/bindings/regulator/regulator.txt for details.
+
+  max-volt:
+    description: The maximum voltage value supplied to the vibrator regulator.
+    						 The unit of the voltage is micro.
+
+  min-volt:
+    description: The minimum voltage value supplied to the vibrator regulator.
+    						 The unit of the voltage is micro.
+
+  min-limit:
+    description: The minimum duration time in ms for vibrator, default is 15ms.
+    						 If user request smaller duration, the default value will be used
+    						 instead. The default value comes from the smallest unit that can
+    						 be sensored.
+
+  max-limit:
+    description: The maximum duration time in ms for vibrator. If not set, it means
+    						 no max limitation.
+
+required:
+  - compatible
+  - min-volt
+  - max-volt
+
+examples:
+  - |
+
+	mt6359_vibr_ldo_reg: ldo_vibr {
+		regulator-name = "vibr";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-enable-ramp-delay = <240>;
+	};
+
+  regulator_vibrator {
+    compatible = "regulator-vibrator";
+    min-volt = <2300000>;
+    max-volt = <3200000>;
+    min-limit = <25>;
+		max-limit = <15000>;
+		vib-supply = <&mt6359_vibr_ldo_reg>;
+  };
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
