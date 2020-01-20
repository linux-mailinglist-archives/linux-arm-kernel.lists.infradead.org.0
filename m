Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A34142491
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 08:58:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hTufaKmaHLmQwjt5HftfTreNdn/RSyeb+4dR2BTIIl4=; b=L96bAM9+BMqLqv
	v2PTUeqnoVAUOJk9759vGSOdk+PkLqq/XU+l38F8cglp65QyNx7oeMhIic6EzlJrO4y6W0GK5Xav7
	Akoja6ynXFvWsXAX/OiXr+dfQkqhQKEH2gAFzCg+jLFoJ6ST5vqOKdAQWoxyzb2UdlHUm1bYOQHe1
	PCs7Q2OMTKFD3zX7fucBFrdzk/9hW6agfZWmzJyI3GGhdBGnLEQVtB7QbxzY9XhdaBncnhxfT0rng
	sa/GrZoXJts7ZCwm0wU9IOsPGndDM7L+yuIXqZauVAD6X+hElS4ugeu2s8Esg/s2P+gCLeyxbL9uq
	63LfiP55HxvZj0ggUAlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itRwv-0007Cn-56; Mon, 20 Jan 2020 07:58:17 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itRwZ-0007Ax-3o; Mon, 20 Jan 2020 07:57:59 +0000
X-UUID: e06dc0ccf7f94229948e2d76031e7f40-20200119
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=Tl5MhNylOi+W3/i1SxKQyFpCuTnUM6aZ6NWfQC1HAHU=; 
 b=MiTRXgNJeZyrkNEP3Hf3wakhMAdZIpZoL0n1VAhcC+UAsiA2oD+q7X8GTdj2YpRJ3KvCD91AhSYfSRyBVXun1Y6K07QKFyLsTCovNWds20bALis6YTCPBRQ5SkZLF4yTlDAK1jBMHVjKPhy7xhHdUtUipc5CyNPdKOXrjM7I9Hg=;
X-UUID: e06dc0ccf7f94229948e2d76031e7f40-20200119
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <wen.su@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1115632523; Sun, 19 Jan 2020 23:57:49 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 19 Jan 2020 23:48:44 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 Jan 2020 15:47:13 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 20 Jan 2020 15:48:39 +0800
From: Wen Su <Wen.Su@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Mark
 Brown" <broonie@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [RESEND 1/4] dt-bindings: regulator: Add document for MT6359 regulator
Date: Mon, 20 Jan 2020 15:47:27 +0800
Message-ID: <1579506450-21830-2-git-send-email-Wen.Su@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1579506450-21830-1-git-send-email-Wen.Su@mediatek.com>
References: <1579506450-21830-1-git-send-email-Wen.Su@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_235755_161733_2DBF6916 
X-CRM114-Status: UNSURE (   9.07  )
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

From: Wen Su <wen.su@mediatek.com>

add dt-binding document for MediaTek MT6359 PMIC

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Wen Su <wen.su@mediatek.com>
---
 .../bindings/regulator/mt6359-regulator.txt        | 59 ++++++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/mt6359-regulator.txt

diff --git a/Documentation/devicetree/bindings/regulator/mt6359-regulator.txt b/Documentation/devicetree/bindings/regulator/mt6359-regulator.txt
new file mode 100644
index 0000000..645ceb6
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/mt6359-regulator.txt
@@ -0,0 +1,59 @@
+Mediatek MT6359 Regulator
+
+Required properties:
+- compatible: "mediatek,mt6359-regulator"
+- mt6359regulator: List of regulators provided by this controller. It is named
+  according to its regulator type, buck_<name> and ldo_<name>.
+  The definition for each of these nodes is defined using the standard binding
+  for regulators at Documentation/devicetree/bindings/regulator/regulator.txt.
+
+The valid names for regulators are::
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
+				compatible = "regulator-fixed";
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
