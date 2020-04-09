Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA771A2EDA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 07:50:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mTuG4YGala17m7xDGUtMGqoQ3NHVuMZIx9MB9+F3oAE=; b=aD4QEgHii5Rpwi
	iiLoXGMcAzjngYpMd4hz3JMrpu1UpYdmoFbAglt8OPXlVx7syAczkPcFVgHt6BSOZrAs2I3a0EFed
	nuWRD/V0wEcgdJXfuCvx7PARQFodde1YCCKDxVGZYyqjFUEZt+rp485iPxsMdIzQVFGjtOP93Pf+l
	kELnWbK3qK4FejmOoT4/r8rsIkTZ/DdsMt9eCW8hO1VgZl4fdMDeRB/Nq6MfIHxTEvmisFHPOQJaJ
	BRqP4u5JX3ox1MsjE3bNwsnQskl8g/3NGudOllmtSdH9g3aWL9VbUc+ybUf0DpYvKwxEVHK0S1Akj
	aldqS7S+ywNd3EqqZM/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMQ58-0006eV-BG; Thu, 09 Apr 2020 05:50:30 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMQ52-0006dj-Js
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 05:50:26 +0000
Received: by mail-pl1-x632.google.com with SMTP id v2so2070219plp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 22:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oD+3H5EUXyXsIZqvMLC6/CrJcPMIkJIU4sPceYOTfRs=;
 b=F1npRqchyAr0X0Lz8WopTJ4+ES+oIcIfoiGvDxtYi2XSm8IP40UWH46FMGHafKnYGr
 XB4qW92qvkHjtS+KUYVDdB62YtBL3aPuusfHH+Cf0KWY159W+Xj5RcIvtBa635UW7aab
 d9HzZdAscSUZIsTJP7zcM9NPOrAbilWA6706Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oD+3H5EUXyXsIZqvMLC6/CrJcPMIkJIU4sPceYOTfRs=;
 b=WF1ab0FLRdMO6SPM90Lfel23oIap/YOGhouZkJKlf7riya0RpRBR/5EKC5IFK1Be+D
 a6VV6TYpPtggvedkZOKJNXB0gZS82NR9ziQDBgsKXFFy0uYMUrR2GKaSOGmxhrMv6jfa
 n6zdhOB77F93FygKuujPBaoT6dovseIMsgXZQaI7vZq65F0WrjXmiMB4qz3AdOQwC6Jb
 Gf6dII0AbRLJwEkrVC/0cGsfcYVjSClmzR4ziuROhGqe2rE1u7KT+FZqLCfspbgWah0a
 K8JuCKfzDtR5Pdrz4rTaFikhJzmO3pUB2fvVXGiyD9HosEzrJsl5hx2mn3fZKXvlTgwq
 veHA==
X-Gm-Message-State: AGi0PuZpAiqlgB7EAyL7zDYJMn1/eezFhUW2LfQRtYBh4S8Ci7EtaWxm
 ikONmDKQ1DN7syjbihp/4pPET45HW2s=
X-Google-Smtp-Source: APiQypLK+pYxgG3+6e6LhdOWp0EqgJ5nl8iuNInYwCrYi/OgrCelBK9E5/cYQjucscbvzheyUhVjbA==
X-Received: by 2002:a17:902:7897:: with SMTP id
 q23mr10557900pll.312.1586411421919; 
 Wed, 08 Apr 2020 22:50:21 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id 198sm18471721pfa.87.2020.04.08.22.50.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 22:50:21 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64: dts: mt8173: Add gce setting in mmsys and display
 node
Date: Thu,  9 Apr 2020 13:50:12 +0800
Message-Id: <20200409055012.199320-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_225024_677339_C3150464 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:632 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 linux-kernel@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to use GCE function, we need add some informations
into display node (mboxes, mediatek,gce-client-reg, mediatek,gce-events).

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
---
change log:
v1->v2: align with
19d8e335d58a ("dt-binding: gce: remove atomic_exec in mboxes property")
60fa8c13ab1a ("drm/mediatek: Move gce event property to mutex device node")
---
 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index ccb8e88a60c5..8337ba42845d 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -549,7 +549,7 @@ gce: mailbox@10212000 {
 			interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_LOW>;
 			clocks = <&infracfg CLK_INFRA_GCE>;
 			clock-names = "gce";
-			#mbox-cells = <3>;
+			#mbox-cells = <2>;
 		};
 
 		mipi_tx0: mipi-dphy@10215000 {
@@ -916,6 +916,9 @@ mmsys: clock-controller@14000000 {
 			assigned-clocks = <&topckgen CLK_TOP_MM_SEL>;
 			assigned-clock-rates = <400000000>;
 			#clock-cells = <1>;
+			mboxes = <&gce 0 CMDQ_THR_PRIO_HIGHEST>,
+				 <&gce 1 CMDQ_THR_PRIO_HIGHEST>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0 0x1000>;
 		};
 
 		mdp_rdma0: rdma@14001000 {
@@ -996,6 +999,7 @@ ovl0: ovl@1400c000 {
 			clocks = <&mmsys CLK_MM_DISP_OVL0>;
 			iommus = <&iommu M4U_PORT_DISP_OVL0>;
 			mediatek,larb = <&larb0>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xc000 0x1000>;
 		};
 
 		ovl1: ovl@1400d000 {
@@ -1006,6 +1010,7 @@ ovl1: ovl@1400d000 {
 			clocks = <&mmsys CLK_MM_DISP_OVL1>;
 			iommus = <&iommu M4U_PORT_DISP_OVL1>;
 			mediatek,larb = <&larb4>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xd000 0x1000>;
 		};
 
 		rdma0: rdma@1400e000 {
@@ -1016,6 +1021,7 @@ rdma0: rdma@1400e000 {
 			clocks = <&mmsys CLK_MM_DISP_RDMA0>;
 			iommus = <&iommu M4U_PORT_DISP_RDMA0>;
 			mediatek,larb = <&larb0>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xe000 0x1000>;
 		};
 
 		rdma1: rdma@1400f000 {
@@ -1026,6 +1032,7 @@ rdma1: rdma@1400f000 {
 			clocks = <&mmsys CLK_MM_DISP_RDMA1>;
 			iommus = <&iommu M4U_PORT_DISP_RDMA1>;
 			mediatek,larb = <&larb4>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xf000 0x1000>;
 		};
 
 		rdma2: rdma@14010000 {
@@ -1036,6 +1043,7 @@ rdma2: rdma@14010000 {
 			clocks = <&mmsys CLK_MM_DISP_RDMA2>;
 			iommus = <&iommu M4U_PORT_DISP_RDMA2>;
 			mediatek,larb = <&larb4>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0 0x1000>;
 		};
 
 		wdma0: wdma@14011000 {
@@ -1046,6 +1054,7 @@ wdma0: wdma@14011000 {
 			clocks = <&mmsys CLK_MM_DISP_WDMA0>;
 			iommus = <&iommu M4U_PORT_DISP_WDMA0>;
 			mediatek,larb = <&larb0>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x1000 0x1000>;
 		};
 
 		wdma1: wdma@14012000 {
@@ -1056,6 +1065,7 @@ wdma1: wdma@14012000 {
 			clocks = <&mmsys CLK_MM_DISP_WDMA1>;
 			iommus = <&iommu M4U_PORT_DISP_WDMA1>;
 			mediatek,larb = <&larb4>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x2000 0x1000>;
 		};
 
 		color0: color@14013000 {
@@ -1064,6 +1074,7 @@ color0: color@14013000 {
 			interrupts = <GIC_SPI 187 IRQ_TYPE_LEVEL_LOW>;
 			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
 			clocks = <&mmsys CLK_MM_DISP_COLOR0>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x3000 0x1000>;
 		};
 
 		color1: color@14014000 {
@@ -1072,6 +1083,7 @@ color1: color@14014000 {
 			interrupts = <GIC_SPI 188 IRQ_TYPE_LEVEL_LOW>;
 			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
 			clocks = <&mmsys CLK_MM_DISP_COLOR1>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x4000 0x1000>;
 		};
 
 		aal@14015000 {
@@ -1080,6 +1092,7 @@ aal@14015000 {
 			interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_LOW>;
 			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
 			clocks = <&mmsys CLK_MM_DISP_AAL>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x5000 0x1000>;
 		};
 
 		gamma@14016000 {
@@ -1088,6 +1101,7 @@ gamma@14016000 {
 			interrupts = <GIC_SPI 190 IRQ_TYPE_LEVEL_LOW>;
 			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
 			clocks = <&mmsys CLK_MM_DISP_GAMMA>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x6000 0x1000>;
 		};
 
 		merge@14017000 {
@@ -1193,6 +1207,8 @@ mutex: mutex@14020000 {
 			interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_LOW>;
 			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
 			clocks = <&mmsys CLK_MM_MUTEX_32K>;
+			mediatek,gce-events = <CMDQ_EVENT_MUTEX0_STREAM_EOF>,
+                                              <CMDQ_EVENT_MUTEX1_STREAM_EOF>;
 		};
 
 		larb0: larb@14021000 {
-- 
2.26.0.292.g33ef6b2f38-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
