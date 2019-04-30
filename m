Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F528F368
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 11:46:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z3wpjBn6QMmQKgCnD6uW2s5o1N0i6HDZtRxGnnxTr8c=; b=uKCKPytDiIlf9Q
	19J0qwMERe+50mgLX45V2BcUxN2qwv/37eNnOa3T/k81eQYr9fiYcPdHhtIMy6Dl6Nhh30mOERhvl
	aa09y3uTjgG3xgPJ9pBLbjXYaYN4/b3lDVGcANjUh4ZmpLOf+OW0vM1q9+CJiMkj0T7kXqMYy7dRq
	YIet+AfZQOaVgdYE2CQys7jSDFOrheXOPjURAfqOfpCGBAOWX0zrW8cBdvNa1bAbAChLDEyFgMsNt
	WJSoQIgm0i0ledoZzs4SNEwKo11k3YXZTu/41Y4XAcTb87C0uBQjyii/FM3BTVErLhtdrgqlZB3De
	adRfibiLOnzMKwVMz+mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPLU-0001HJ-Rn; Tue, 30 Apr 2019 09:46:40 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPKM-000050-O1; Tue, 30 Apr 2019 09:45:32 +0000
X-UUID: 51e14131c20c4e3aa0e8d9bd1a37d2a2-20190430
X-UUID: 51e14131c20c4e3aa0e8d9bd1a37d2a2-20190430
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <henryc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1521918162; Tue, 30 Apr 2019 01:45:28 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 02:45:27 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 17:45:19 +0800
Received: from mtkslt205.mediatek.inc (10.21.15.75) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 30 Apr 2019 17:45:19 +0800
From: Henry Chen <henryc.chen@mediatek.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Viresh Kumar
 <vireshk@kernel.org>, Stephen Boyd <swboyd@chromium.org>
Subject: [RFC V2 04/11] arm64: dts: mt8183: add performance state support of
 scpsys
Date: Tue, 30 Apr 2019 16:50:58 +0800
Message-ID: <1556614265-12745-5-git-send-email-henryc.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556614265-12745-1-git-send-email-henryc.chen@mediatek.com>
References: <1556614265-12745-1-git-send-email-henryc.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_024530_850560_145490AA 
X-CRM114-Status: UNSURE (   9.20  )
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 Nicolas Boichat <drinkcat@google.com>, linux-kernel@vger.kernel.org, Henry
 Chen <henryc.chen@mediatek.com>, Fan Chen <fan.chen@mediatek.com>,
 devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for performance state of scpsys on mt8183 platform.

Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 75c4881..665d561 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -9,6 +9,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/power/mt8183-power.h>
+#include <dt-bindings/soc/mtk,dvfsrc.h>
 
 / {
 	compatible = "mediatek,mt8183";
@@ -251,6 +252,26 @@
 				      "vpu-3", "vpu-4", "vpu-5";
 			infracfg = <&infracfg>;
 			smi_comm = <&smi_common>;
+			operating-points-v2 = <&dvfsrc_opp_table>;
+			dvfsrc_opp_table: opp-table {
+				compatible = "operating-points-v2-level";
+
+				dvfsrc_vol_min: opp1 {
+					opp,level = <MT8183_DVFSRC_LEVEL_1>;
+				};
+
+				dvfsrc_freq_medium: opp2 {
+					opp,level = <MT8183_DVFSRC_LEVEL_2>;
+				};
+
+				dvfsrc_freq_max: opp3 {
+					opp,level = <MT8183_DVFSRC_LEVEL_3>;
+				};
+
+				dvfsrc_vol_max: opp4 {
+					opp,level = <MT8183_DVFSRC_LEVEL_4>;
+				};
+			};
 		};
 
 		apmixedsys: syscon@1000c000 {
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
