Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEB4153D33
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 04:07:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=etIxbJgGERdmsB0OOAKb5RIjzwI70ZF5n44nvVSbtWU=; b=ooQeOXMqv3B7Gq
	qyDOPUrpd6797ftyQboI9r1wL0A95XBnbXF/SZkWrg9E2ucYp1jeHydiz0v3MeEX/1XvT+uugbRng
	g6djpwKVMAYBYAfPGUlMvKaVmVoA0fGgOhCCzR0OshPaJSf4joTkQHtzlGQG2PaD3BDRnmruA+79Y
	r6YqQWLe0wVgvtqE72tNpbraADY57C65gx8W5UqoVJB8cG6Ci18p7zMga+qV4pRjRuahuerVWoTGB
	bidR639N0A8+Q1ydjP3z7h33nr59ZxS5pkG+zbLV2+RmM/IaBsgUD/W5kR1/7DONBN4SA8kHJEZrj
	wjPQUtYTZswWVSDldCqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izXWA-0007ix-LH; Thu, 06 Feb 2020 03:07:50 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izXW3-0007hQ-Q7; Thu, 06 Feb 2020 03:07:45 +0000
X-UUID: 4df135f21a2443c9896dadde49bdfaee-20200205
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=IFBpKCBLntnrD936dW2wE51Gs3HdrtGpolS+5RFA77U=; 
 b=i81dfHppyu5sM7qjxdW1BUYGw3pOTfWvBhRRJwtOF7c0am+8Us+Y+ae+eYPxWoqJtAFFlWIv5eCVp5gjvFXZ2cSEr7xsDfA1myKopMT/+0fUW0dAl2FmpcAK368/cSPVL4lJf3AC99bh/f6ZH3CHSmAp1oF6JKROrZ/CFdtGZDo=;
X-UUID: 4df135f21a2443c9896dadde49bdfaee-20200205
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <wen.su@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 395867143; Wed, 05 Feb 2020 19:07:37 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 5 Feb 2020 19:08:03 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 6 Feb 2020 11:06:49 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 6 Feb 2020 11:07:53 +0800
From: Wen Su <Wen.Su@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Mark
 Brown" <broonie@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2 1/4] dt-bindings: regulator: Add document for MT6359
 regulator
Date: Thu, 6 Feb 2020 11:06:48 +0800
Message-ID: <1580958411-2478-2-git-send-email-Wen.Su@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1580958411-2478-1-git-send-email-Wen.Su@mediatek.com>
References: <1580958411-2478-1-git-send-email-Wen.Su@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_190743_854262_E202FA88 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark
 Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, wen.su@mediatek.com,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Wen Su" <wen.su@mediatek.com>

add dt-binding document for MediaTek MT6359 PMIC

Signed-off-by: Wen Su <wen.su@mediatek.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/regulator/mt6359-regulator.txt        | 58 ++++++++++++++++++++++
 1 file changed, 58 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/mt6359-regulator.txt

diff --git a/Documentation/devicetree/bindings/regulator/mt6359-regulator.txt b/Documentation/devicetree/bindings/regulator/mt6359-regulator.txt
new file mode 100644
index 0000000..c86aaa9
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/mt6359-regulator.txt
@@ -0,0 +1,58 @@
+Mediatek MT6359 Regulator
+
+Required properties:
+- compatible: "mediatek,mt6359-regulator"
+- mt6359regulator: List of regulators provided by this controller. It is named
+  according to its regulator type, buck_<name> and ldo_<name>.
+  The definition for each of these nodes is defined using the standard binding
+  for regulators at Documentation/devicetree/bindings/regulator/regulator.txt.
+
+The valid names for regulators are:
+BUCK:
+  buck_vs1, buck_vgpu11, buck_vmodem, buck_vpu, buck_vcore, buck_vs2,
+  buck_vpa, buck_vproc2, buck_vproc1, buck_vcore_sshub
+LDO:
+  ldo_vaud18, ldo_vsim1, ldo_vibr, ldo_vrf12, ldo_vusb, ldo_vsram_proc2,
+  ldo_vio18, ldo_vcamio, ldo_vcn18, ldo_vfe28, ldo_vcn13, ldo_vcn33_1_bt,
+  ldo_vcn13_1_wifi, ldo_vaux18, ldo_vsram_others, ldo_vefuse, ldo_vxo22,
+  ldo_vrfck, ldo_vbif28, ldo_vio28, ldo_vemc, ldo_vcn33_2_bt, ldo_vcn33_2_wifi,
+  ldo_va12, ldo_va09, ldo_vrf18, ldo_vsram_md, ldo_vufs, ldo_vm18, ldo_vbbck,
+  ldo_vsram_proc1, ldo_vsim2, ldo_vsram_others_sshub
+
+Example:
+	pmic {
+		compatible = "mediatek,mt6359";
+
+		mt6359regulator: mt6359regulator {
+			compatible = "mediatek,mt6359-regulator";
+
+			mt6359_vs1_buck_reg: buck_vs1 {
+				regulator-name = "vs1";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <2200000>;
+				regulator-enable-ramp-delay = <0>;
+				regulator-always-on;
+			};
+			mt6359_vgpu11_buck_reg: buck_vgpu11 {
+				regulator-name = "vgpu11";
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1193750>;
+				regulator-enable-ramp-delay = <200>;
+				regulator-always-on;
+				regulator-allowed-modes = <0 1 2>;
+			};
+			mt6359_vaud18_ldo_reg: ldo_vaud18 {
+				regulator-name = "vaud18";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <240>;
+			};
+			mt6359_vsim1_ldo_reg: ldo_vsim1 {
+				regulator-name = "vsim1";
+				regulator-min-microvolt = <1700000>;
+				regulator-max-microvolt = <3100000>;
+				regulator-enable-ramp-delay = <480>;
+			};
+		};
+	};
+
-- 
1.9.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
