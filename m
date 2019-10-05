Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E95CCA6A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 16:21:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5ly9OCCImqHQ4Zd2pc7g83wOG8CF3b50gk66Rn2vd8=; b=Hm3mrZB4LFHKVV
	n/dLLZUGRPeIOeUc3fJzZCII2EnMEKUEI/Mz7oWQGUQiAqt5v5jG7gMhrEU4LovZ9szJdi8LeeEnb
	rtvqiGRxjFymBJjWOkJ7vDTQg3mdJUiQVNozmBXgHlUOH0wittn6QSaA/6aTgRBQnBJPVSoIHlW1W
	l0uB6u5RYtnYftulwAYHEZOjg2o5YfEFLKGF1enmIRgxHSqbrmnsvEmAcR5GHIWbr99roTBcHPKeZ
	SoBg5DrlM8G8Krvf9/Oy26UA2lurl1ur4Ip/dbLN3kQnDdbN3gMGIgO/usGU3IQXm01DPcIBfiUFe
	ZhMwN7ZbZYLCVg8O1jTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGkvi-000633-1U; Sat, 05 Oct 2019 14:21:06 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGkuP-0003uV-US
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 14:19:47 +0000
Received: by mail-pf1-x443.google.com with SMTP id a2so5649537pfo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 07:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5sUB0RooONzqGELXbytY+LCL6wUVKNVeZUfz3wJVzw4=;
 b=h43kBO4gkvkkFs9AcbIQ2JN0yVcInn0HaBvXKvfGyM9qcSJgl/vsmd1u+bgYJOE0cx
 3qeTR/2h78QA02/D/R+EcsDBWI1dkXb4qutu8bWvyVpXe4iCghv3OV5MdTu357cqf9d3
 1jAGQ/5oRtDxAiYN9K3zXBPrxycQVfbLe414o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5sUB0RooONzqGELXbytY+LCL6wUVKNVeZUfz3wJVzw4=;
 b=R4Sm9wzPjpeWvYMH1tWvN3cA2VtjU7mbRy4LNjcEF4Qqcf1ZApYJkOdkEQxxfPaVLP
 SdNe6sFb56QGKDVnj7k7Gm4jjLRM0t7vXMvYPljGw3u2RGDi3bV9ZQXuaIYO34F5F2Sl
 cQqt2yPkxSkF1mm/errdqL1KN8GesYJzaj5YYgCfnWjrOdIHU3N+XntPxe3K/zyvm1Md
 Oo7aH+cBqRerPdvspVhlbBGNba8HqnG5IBx27jW6JYNK+BpdFTZIzZbDub9C1+xRjeHm
 d5uO4X/FlCAOdUVy/XaRY/qijM7oBekAQhGonTrwf9CidJ9yhq9+AqtlzDhIXn+s5857
 FGIw==
X-Gm-Message-State: APjAAAW9YTBcC/6F6crH9BJzqEASc8kWraAefFO9vw5WLsPW/igJSDq2
 Td7jMAlva5TT8N0uCEP/M+T7gw==
X-Google-Smtp-Source: APXvYqx10j7PRU3fLEOZ4azx/txsZuy2oIBSXEvFfbkS6wRKhiOEl3gRVIzJmlphFdU23Kz8OymjUg==
X-Received: by 2002:a63:d34c:: with SMTP id u12mr1238630pgi.88.1570285184885; 
 Sat, 05 Oct 2019 07:19:44 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id y138sm8977604pfb.174.2019.10.05.07.19.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 07:19:44 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v10 5/6] arm64: dts: allwinner: a64: Add MIPI DSI pipeline
Date: Sat,  5 Oct 2019 19:49:12 +0530
Message-Id: <20191005141913.22020-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191005141913.22020-1-jagan@amarulasolutions.com>
References: <20191005141913.22020-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_071946_006508_A4DD229D 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add MIPI DSI pipeline for Allwinner A64.

- dsi node, with A64 compatible since it doesn't support
  DSI_SCLK gating unlike A33
- dphy node, with A64 compatible with A33 fallback since
  DPHY on A64 and A33 is similar
- finally, attach the dsi_in to tcon0 for complete MIPI DSI

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Tested-by: Merlijn Wajer <merlijn@wizzup.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 69128a6dfc46..ad4170b8aee0 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -382,6 +382,12 @@
 					#address-cells = <1>;
 					#size-cells = <0>;
 					reg = <1>;
+
+					tcon0_out_dsi: endpoint@1 {
+						reg = <1>;
+						remote-endpoint = <&dsi_in_tcon0>;
+						allwinner,tcon-channel = <1>;
+					};
 				};
 			};
 		};
@@ -1003,6 +1009,38 @@
 			status = "disabled";
 		};
 
+		dsi: dsi@1ca0000 {
+			compatible = "allwinner,sun50i-a64-mipi-dsi";
+			reg = <0x01ca0000 0x1000>;
+			interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_MIPI_DSI>;
+			clock-names = "bus";
+			resets = <&ccu RST_BUS_MIPI_DSI>;
+			phys = <&dphy>;
+			phy-names = "dphy";
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port {
+				dsi_in_tcon0: endpoint {
+					remote-endpoint = <&tcon0_out_dsi>;
+				};
+			};
+		};
+
+		dphy: d-phy@1ca1000 {
+			compatible = "allwinner,sun50i-a64-mipi-dphy",
+				     "allwinner,sun6i-a31-mipi-dphy";
+			reg = <0x01ca1000 0x1000>;
+			clocks = <&ccu CLK_BUS_MIPI_DSI>,
+				 <&ccu CLK_DSI_DPHY>;
+			clock-names = "bus", "mod";
+			resets = <&ccu RST_BUS_MIPI_DSI>;
+			status = "disabled";
+			#phy-cells = <0>;
+		};
+
 		hdmi: hdmi@1ee0000 {
 			compatible = "allwinner,sun50i-a64-dw-hdmi",
 				     "allwinner,sun8i-a83t-dw-hdmi";
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
