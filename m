Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9451002B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 11:43:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TYr6uobIc/BWADhiv04eFUlpg3HLY5yQzSLyaQE41cw=; b=u7z/puQlMQzh+N
	rHN2QqQ1FiiI9yVfL2ckK1/Hr3XEvwCTEL+5BT7Ec3ojD43Oq0zBMWXdNYEQ4AN39XiNOpgdYxOxR
	OVs0TuCz79SFhLvSQsE3GZv2CSJTyf5ivBV2/UwIYrYcUdQTN+qeQbRrvboWRiXxHhoWKsFaRzlNQ
	38x7itYMA7P7q8PzucYvZ3QrAhywckhj03EjeXAQFhj2dKTx9d/+yGXW2pehNrb0sfLRJSP+/5uRf
	bbAyNMFt9i0alvKRnCEyIoisqHhTDrBzfM4JTELph17wnEfcsA2jAVSIfWCP1qusAuuzs5TkRKMj6
	mmknyWXRYhWkVwaG8o6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWeVH-00066n-0c; Mon, 18 Nov 2019 10:43:31 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWeV7-00065J-HY
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 10:43:23 +0000
Received: by mail-pg1-x544.google.com with SMTP id k13so9462213pgh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 02:43:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oal8H4KU9ceKzMRCHfIeWqGJ097aAOuBrL6LAkt5Sts=;
 b=GrSgfku+mO66VD5S3fXJy0QqA/u2NkhlTQf4eWsc4mfIDEEYtUYATDd73lu47Uxx8K
 sGgCLMjUfyiasrcvlYBpYXko/hxwYDbDHx5LahBHGesdM+c39jmIh08y23zYqWKD+0+p
 Kqygrm1arCtVRyG/XE/mPiFlhEVQXMWzBSENA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oal8H4KU9ceKzMRCHfIeWqGJ097aAOuBrL6LAkt5Sts=;
 b=LKW0hKL0PVSuiV8klTcINQt1px2W+mAJPpK5PJ0BYWfLTOPa6rV8pS8b3LVG59473x
 n+u7LlcelnlBN5wjhiz1mJ1kMtMS2RUxp5U+lCZKkUYnqNF6yLTRCDNqBdw2Adlih4Fl
 78kRxOadXg0I0zlS51Gr9upUFgD6a9SCkSqo/fVvocp0hqfr1FKsY1Qoi0XvVLXovTD7
 IJmBqhSuqMypHb7awpTMYwSxaDN5gJkrttlSeyE257f4XbQ93gLuoNt4YoR0Nq86ZJNL
 i/+q8A519HzHwZhGcyNgmCpOGXhMNOK7zt5lNdn3EiGZv2bRtIurXhpsNgImLINJZ7KM
 QRAg==
X-Gm-Message-State: APjAAAXr1HjAZs6F6EausM8hBraT9XJevpAD2fQ/v1cc0ujxW/lgMoEu
 BiYEzQ+Q4pHD2Jmwhwd+X39/bw==
X-Google-Smtp-Source: APXvYqz73PCW+T58lexcwbtEkYi/LQt0IUyjR4at8WkiLlPclgUmtqSyac2X2Xajrwp/TEsevh0T3Q==
X-Received: by 2002:a63:db15:: with SMTP id e21mr16299127pgg.21.1574073800047; 
 Mon, 18 Nov 2019 02:43:20 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id p18sm20485310pff.9.2019.11.18.02.43.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 02:43:19 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Subject: [PATCH] arm64: dts: mt8173: Add gce setting in mmsys and display node
Date: Mon, 18 Nov 2019 18:42:53 +0800
Message-Id: <20191118104252.228406-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_024321_607240_C4C0DC1E 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to use GCE function, we need add some informations
into display node (mboxes, mediatek,gce-client-reg, mediatek,gce-events).

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
- This is based on series "support gce on mt8183 platform"
  https://patchwork.kernel.org/cover/11208309/
- gce setting in 8183:
  https://patchwork.kernel.org/patch/11127105/
---
 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index 15f1842f6df3..e84ec3f95d81 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -911,6 +911,11 @@ mmsys: clock-controller@14000000 {
 			assigned-clocks = <&topckgen CLK_TOP_MM_SEL>;
 			assigned-clock-rates = <400000000>;
 			#clock-cells = <1>;
+			mboxes = <&gce 0 CMDQ_THR_PRIO_HIGHEST 1>,
+				 <&gce 1 CMDQ_THR_PRIO_HIGHEST 1>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0 0x1000>;
+			mediatek,gce-events = <CMDQ_EVENT_MUTEX0_STREAM_EOF>,
+					      <CMDQ_EVENT_MUTEX1_STREAM_EOF>;
 		};
 
 		mdp_rdma0: rdma@14001000 {
@@ -991,6 +996,7 @@ ovl0: ovl@1400c000 {
 			clocks = <&mmsys CLK_MM_DISP_OVL0>;
 			iommus = <&iommu M4U_PORT_DISP_OVL0>;
 			mediatek,larb = <&larb0>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xc000 0x1000>;
 		};
 
 		ovl1: ovl@1400d000 {
@@ -1001,6 +1007,7 @@ ovl1: ovl@1400d000 {
 			clocks = <&mmsys CLK_MM_DISP_OVL1>;
 			iommus = <&iommu M4U_PORT_DISP_OVL1>;
 			mediatek,larb = <&larb4>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xd000 0x1000>;
 		};
 
 		rdma0: rdma@1400e000 {
@@ -1011,6 +1018,7 @@ rdma0: rdma@1400e000 {
 			clocks = <&mmsys CLK_MM_DISP_RDMA0>;
 			iommus = <&iommu M4U_PORT_DISP_RDMA0>;
 			mediatek,larb = <&larb0>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xe000 0x1000>;
 		};
 
 		rdma1: rdma@1400f000 {
@@ -1021,6 +1029,7 @@ rdma1: rdma@1400f000 {
 			clocks = <&mmsys CLK_MM_DISP_RDMA1>;
 			iommus = <&iommu M4U_PORT_DISP_RDMA1>;
 			mediatek,larb = <&larb4>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xf000 0x1000>;
 		};
 
 		rdma2: rdma@14010000 {
@@ -1031,6 +1040,7 @@ rdma2: rdma@14010000 {
 			clocks = <&mmsys CLK_MM_DISP_RDMA2>;
 			iommus = <&iommu M4U_PORT_DISP_RDMA2>;
 			mediatek,larb = <&larb4>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0 0x1000>;
 		};
 
 		wdma0: wdma@14011000 {
@@ -1041,6 +1051,7 @@ wdma0: wdma@14011000 {
 			clocks = <&mmsys CLK_MM_DISP_WDMA0>;
 			iommus = <&iommu M4U_PORT_DISP_WDMA0>;
 			mediatek,larb = <&larb0>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x1000 0x1000>;
 		};
 
 		wdma1: wdma@14012000 {
@@ -1051,6 +1062,7 @@ wdma1: wdma@14012000 {
 			clocks = <&mmsys CLK_MM_DISP_WDMA1>;
 			iommus = <&iommu M4U_PORT_DISP_WDMA1>;
 			mediatek,larb = <&larb4>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x2000 0x1000>;
 		};
 
 		color0: color@14013000 {
@@ -1059,6 +1071,7 @@ color0: color@14013000 {
 			interrupts = <GIC_SPI 187 IRQ_TYPE_LEVEL_LOW>;
 			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
 			clocks = <&mmsys CLK_MM_DISP_COLOR0>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x3000 0x1000>;
 		};
 
 		color1: color@14014000 {
@@ -1067,6 +1080,7 @@ color1: color@14014000 {
 			interrupts = <GIC_SPI 188 IRQ_TYPE_LEVEL_LOW>;
 			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
 			clocks = <&mmsys CLK_MM_DISP_COLOR1>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x4000 0x1000>;
 		};
 
 		aal@14015000 {
@@ -1075,6 +1089,7 @@ aal@14015000 {
 			interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_LOW>;
 			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
 			clocks = <&mmsys CLK_MM_DISP_AAL>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x5000 0x1000>;
 		};
 
 		gamma@14016000 {
@@ -1083,6 +1098,7 @@ gamma@14016000 {
 			interrupts = <GIC_SPI 190 IRQ_TYPE_LEVEL_LOW>;
 			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
 			clocks = <&mmsys CLK_MM_DISP_GAMMA>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x6000 0x1000>;
 		};
 
 		merge@14017000 {
-- 
2.24.0.432.g9d3f5f5b63-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
