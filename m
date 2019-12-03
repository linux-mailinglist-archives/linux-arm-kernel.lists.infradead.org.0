Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0768610FF43
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 14:51:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zMOg3R8YMTKON2Mi6F560Txw1XTdhcRWzpFQkNilW4Y=; b=HrowMbzxoyO5NZ
	Z/TiqKtkCfxJfhAAxCsL2u6itbHz05fsytXUTZfMHlsmbIvOgwOtlWa2/ywBFvvhpHaiNyClQfVv7
	YIL6q9OsR43oq7h7FGXcB1xnNK/uK/cxzpVBxMgazCIQtMJ/NccOknircTpskaCt8A7fus73YbESS
	HkzfEjuw/HudfWvgI/pKyRvn4vQiNbhjzZ3kkkjUP6X0SsZyF+mOtTxBy7zOI8gQqU6ME3uyO4RAx
	gpK3gt4XislTRXhloen3JeXJNBDkVwbJlbP2RmcUjh/z/kH2DzsDTPqq1aYvQvgYrTNSs712DKO3c
	tHSwIyjwQkbOUNJpQmGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic8a7-0002el-RG; Tue, 03 Dec 2019 13:51:11 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic8Y1-0000D6-Dk
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 13:49:08 +0000
Received: by mail-pg1-x544.google.com with SMTP id k1so1695558pgg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 05:49:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ke4tL+lHXK0j3bKO8x1UNBlk4yZ+cYr66D3IUPPUdkM=;
 b=N5hZ67OMW5NuOOqE/NDh0govtD9Sh3TvScmIgM02xJ3rDzZEn+fnlKfiPMhsOVb1rn
 g3sCxJHkQpAGiV393wdy0S80Ak21VRYMGbCV0KqGV2WIcBnPkOnu12dWsJi5Rpq3Y+w4
 TXl5GGpQL95s7YsAdjU284KNNVjHwIQ+8rAhQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ke4tL+lHXK0j3bKO8x1UNBlk4yZ+cYr66D3IUPPUdkM=;
 b=OM5W9drC+Jw1hrSRQCj86A3Ga18u1tcgfdjj3QYhkrUx6PlmFvIAYOLCpWMxMjMNgQ
 Z+c798grvZlLDkfjqtV8DZ4zDAxcv5NQMKUmjJSbRRgdhzE7O2qVn6BGSfnqP/bV7ybC
 9S+Wivcq/2/2YXd4ozr/bPvkz8Cx9g7XDzMK7zydhoi8mztW4vf8quenNE3Epc5jIc6J
 WdL2pjpZ9kUSuE6OxcNOB/fVjjIZO2I2v87eunnb4oN0SW7zCt+U+adKJ4s1tXvX7YGw
 HmKs5wHvSj7ZeB4dJBJJqAZYoh7nAZwL/ZmYocpkc6uTY/ryTzNWvW8ETBAmvGjPDX+h
 4+3w==
X-Gm-Message-State: APjAAAVUSEcDRsO6+kCrdAFgGpy0fzAiFJ5t+5lvSRAO8GOOFlmAxumE
 J8Zvn6l9adoo8Jfbe1PfQR676w==
X-Google-Smtp-Source: APXvYqyIJZHBzy4Ips/O+tLpiqsHSAYb0yd7QO+j8JCAANrcld28OPDSbFiPDZGh4m/TpJVtuLBS9Q==
X-Received: by 2002:a63:c849:: with SMTP id l9mr5543294pgi.330.1575380940429; 
 Tue, 03 Dec 2019 05:49:00 -0800 (PST)
Received: from localhost.localdomain ([115.97.190.29])
 by smtp.gmail.com with ESMTPSA id y144sm4397892pfb.188.2019.12.03.05.48.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 05:48:59 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v12 6/7] arm64: dts: allwinner: a64: Add MIPI DSI pipeline
Date: Tue,  3 Dec 2019 19:18:15 +0530
Message-Id: <20191203134816.5319-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191203134816.5319-1-jagan@amarulasolutions.com>
References: <20191203134816.5319-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_054901_527734_B75FFC6D 
X-CRM114-Status: GOOD (  12.01  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
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
Changes for v12:
- none

 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 27e48234f1c2..1db8378f59a4 100644
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
@@ -1014,6 +1020,37 @@
 			status = "disabled";
 		};
 
+		dsi: dsi@1ca0000 {
+			compatible = "allwinner,sun50i-a64-mipi-dsi";
+			reg = <0x01ca0000 0x1000>;
+			interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_MIPI_DSI>;
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
