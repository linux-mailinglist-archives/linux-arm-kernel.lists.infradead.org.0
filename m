Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9E01843FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 10:45:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H1Xh86hwBQltTjq7vJkVguCRxlmiGwJAT1rqiPO+C8g=; b=E03syB4nZwyaks
	y8xxFvfdXR7am/KP4kDNn6HCKJAgkzyd+Xk7xxygr+2SEWkbXx9cq12YdApfvUJSX3y2voUScJXEe
	nTtG0Rb4FerEBZHa3I15S/r/KpgBP03KzDXUdOqYcPR5NM+b3lGd2C2QawStk24aSheV4h6GvscSq
	dp3It05eVnOpi9HNYavkwyED+/2h4rwdtPXl1OrSLrFICQMu6mTon5i+d7fZmZnh/v5ukiZMQyPri
	SKex/pVlozhV9cx/fuOmhLRvbM9flR0u3gITxzKbUcVXUJimTp6awdEgVnjgnAlTd3KdMX7l8oa33
	FlyJAl5jdJZ+bLu6PUkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgsX-0004je-2J; Fri, 13 Mar 2020 09:45:17 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgs8-0004gH-AL; Fri, 13 Mar 2020 09:44:53 +0000
X-UUID: cc3cdff7b523497e8793031559bd4d66-20200313
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=dHVIssRQ//ChPQ0rQbsqbfW2EvYkungBACJezcgPQ3Y=; 
 b=aAagKIs+v22l9NW7YaL4F0xQ1xdCoKF6ka1VyyjySNEbiNuERrVH0+CIvw9PH1oNWux9MfJA+i8d1eC4b2gzwQdraRQJdYeof/1xRcBt0A5+WcDrbrKK5ShEn+roZqdBzmT5jKjnXPBLSVwlU5lolaN5O6CMOz8yxzhNWd2R4Qk=;
X-UUID: cc3cdff7b523497e8793031559bd4d66-20200313
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <henryc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2461183; Fri, 13 Mar 2020 01:44:44 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Mar 2020 02:34:43 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Mar 2020 17:32:17 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 13 Mar 2020 17:33:41 +0800
From: Henry Chen <henryc.chen@mediatek.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Viresh Kumar
 <vireshk@kernel.org>, Stephen Boyd <swboyd@chromium.org>, Ryan Case
 <ryandcase@chromium.org>, Mark Brown <broonie@kernel.org>
Subject: [PATCH V4 08/13] dt-bindings: interconnect: add MT8183 interconnect
 dt-bindings
Date: Fri, 13 Mar 2020 17:34:21 +0800
Message-ID: <1584092066-24425-9-git-send-email-henryc.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1584092066-24425-1-git-send-email-henryc.chen@mediatek.com>
References: <1584092066-24425-1-git-send-email-henryc.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_024452_372377_452C274F 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@google.com>,
 Mike Turquette <mturquette@linaro.org>, srv_heupstream@mediatek.com,
 James Liao <jamesjj.liao@mediatek.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Henry Chen <henryc.chen@mediatek.com>,
 Fan Chen <fan.chen@mediatek.com>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Arvin Wang <arvin.wang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add interconnect provider dt-bindings for MT8183.

Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
---
 .../devicetree/bindings/soc/mediatek/dvfsrc.txt        |  9 +++++++++
 include/dt-bindings/interconnect/mtk,mt8183-emi.h      | 18 ++++++++++++++++++
 2 files changed, 27 insertions(+)
 create mode 100644 include/dt-bindings/interconnect/mtk,mt8183-emi.h

diff --git a/Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt b/Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt
index 7f43499..da98ec9 100644
--- a/Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt
+++ b/Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt
@@ -12,6 +12,11 @@ Required Properties:
 - clock-names: Must include the following entries:
 	"dvfsrc": DVFSRC module clock
 - clocks: Must contain an entry for each entry in clock-names.
+- #interconnect-cells : should contain 1
+- interconnect : interconnect providers support dram bandwidth requirements.
+	The provider is able to communicate with the DVFSRC and send the dram
+	bandwidth to it. shall contain only one of the following:
+	"mediatek,mt8183-emi"
 
 Example:
 
@@ -20,4 +25,8 @@ Example:
 		reg = <0 0x10012000 0 0x1000>;
 		clocks = <&infracfg CLK_INFRA_DVFSRC>;
 		clock-names = "dvfsrc";
+		ddr_emi: interconnect {
+			compatible = "mediatek,mt8183-emi";
+			#interconnect-cells = <1>;
+		};
 	};
diff --git a/include/dt-bindings/interconnect/mtk,mt8183-emi.h b/include/dt-bindings/interconnect/mtk,mt8183-emi.h
new file mode 100644
index 0000000..2a54856
--- /dev/null
+++ b/include/dt-bindings/interconnect/mtk,mt8183-emi.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __DT_BINDINGS_INTERCONNECT_MTK_MT8183_EMI_H
+#define __DT_BINDINGS_INTERCONNECT_MTK_MT8183_EMI_H
+
+#define MT8183_SLAVE_DDR_EMI			0
+#define MT8183_MASTER_MCUSYS			1
+#define MT8183_MASTER_GPU			2
+#define MT8183_MASTER_MMSYS			3
+#define MT8183_MASTER_MM_VPU			4
+#define MT8183_MASTER_MM_DISP			5
+#define MT8183_MASTER_MM_VDEC			6
+#define MT8183_MASTER_MM_VENC			7
+#define MT8183_MASTER_MM_CAM			8
+#define MT8183_MASTER_MM_IMG			9
+#define MT8183_MASTER_MM_MDP			10
+
+#endif
-- 
1.9.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
