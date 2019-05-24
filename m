Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A998529630
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:43:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t5TBqLGlIjZAq6LwBNOShvegjx/nU497SNZbQmVvbnU=; b=gHispdSZQAkYdE
	Zijjgsutj0lYqGaCUtbUooPaYbPeHr4AfRKqXHW93xDbZf+3e56HmznU47MhdxXQAW1smrfWWjJUR
	W14CcgpQ0GLumOkFmJbdv1AqRLmkAhLku4dLEXp776RF4SXrwTYdU+ia/nyf8paZ5r6bhQqnfmqNh
	BFZ8OQNRUlgi5oQF8WDMGy7yIK4j0+hbkZWdQ+G3mBp1Nr/Fc7S6jIB+cciQH/pMq92DidmIB/eEd
	dhH8AzXDMsUCN44O74qbC/BlZpSYeHxUNwQOCuw5ZEkVb5XKWjppDzLUPK5EIo1gVxND4zMVu6lm9
	G/wgIb/VYMzf1LnOl4/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU7g4-0002Dc-9M; Fri, 24 May 2019 10:43:56 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU7fs-00028V-UF
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:43:48 +0000
Received: by mail-pf1-x441.google.com with SMTP id b76so5101450pfb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 03:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qNTSCPsOEC2W2+GNT7l2VKFB0+zY6ZYUs+njP7ZZryY=;
 b=MMbn8v2Zd2qsn/V/zb6Mt7MtfVlWEps+yV995UvWXL1qqyAQ3BZmYedcZmufHrmzso
 pmn/HjUvKsI28wdzVni96j2suAg2VF2NOyBYHDWkoag8/K6d/bRvl3k9S3+JbubG81qG
 C/PJWR2X8Czf3xVJnt9ALXMpfquiiK0chagBE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qNTSCPsOEC2W2+GNT7l2VKFB0+zY6ZYUs+njP7ZZryY=;
 b=FEjnj0Rch19ahFM1vk6T2vGHnsmmjNVAPqkGrlfNpkfvtkUXe3V4pmeB/wZh7RxZW1
 3TRW2704uWhuyk9NiYtNAjDaI7YTziqV3zRIPMa06654jaykXxD74HA0yDpE5kSeB+/J
 0DdHCaxUTc25B8BEKEJcKYvSPK0Qv+1Lle7HgMLGrXJY7c3lduqIFeptRadywXCoOsHg
 D50qW+YvMLYggYpRp81gtXIqS68MXaiMLHLf4a6FdGvOpOhJm1/m8x1mFpamcZQ3gGNK
 +riNV1ANukdwRIgmDb9z9uedZqkgRAxzaqPx8bOFQ0VFGD2xyQ3YyeDHX7QDUvGuRQkH
 f2ng==
X-Gm-Message-State: APjAAAXrMR45d5+cBOX8qFoouzxJU2KCNnZyMQVWnW+wWWrUyqulCfuU
 guYSOpfMvR+VmrOqThp/Tl05bw==
X-Google-Smtp-Source: APXvYqwKcohDIPUT5/aEC255pUPB2TXqU3TOva/kNXfG24c8fTCD7t9u2h8RQ7FYuSxfiGAGamTVqQ==
X-Received: by 2002:a62:5653:: with SMTP id
 k80mr110389226pfb.144.1558694623629; 
 Fri, 24 May 2019 03:43:43 -0700 (PDT)
Received: from localhost.localdomain ([183.82.227.60])
 by smtp.gmail.com with ESMTPSA id h11sm2303416pfn.170.2019.05.24.03.43.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 03:43:43 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 4/6] dt-bindings: display: bridge: Add ICN6211 MIPI-DSI to
 RGB converter bridge
Date: Fri, 24 May 2019 16:13:15 +0530
Message-Id: <20190524104317.20287-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190524104317.20287-1-jagan@amarulasolutions.com>
References: <20190524104317.20287-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_034345_005878_A8A5374E 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ICN6211 is MIPI-DSI/RGB converter bridge from chipone.
It has a flexible configuration of MIPI DSI signal input
and produce RGB565, RGB666, RGB888 output format.

Add dt-bingings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../display/bridge/chipone,icn6211.txt        | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/chipone,icn6211.txt

diff --git a/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.txt b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.txt
new file mode 100644
index 000000000000..53a9848ef8b6
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.txt
@@ -0,0 +1,78 @@
+Chipone ICN6211 MIPI-DSI to RGB Converter Bridge
+
+ICN6211 is MIPI-DSI/RGB converter bridge from chipone.
+It has a flexible configuration of MIPI DSI signal input
+and produce RGB565, RGB666, RGB888 output format.
+
+Required properties for RGB:
+- compatible: must be "chipone,icn6211"
+- reg: the virtual channel number of a DSI peripheral
+- reset-gpios: a GPIO phandle for the reset pin
+
+The device node can contain following 'port' child nodes,
+according to the OF graph bindings defined in [1]:
+  0: DSI Input, not required, if the bridge is DSI controlled
+  1: RGB Output, mandatory
+
+[1]: Documentation/devicetree/bindings/media/video-interfaces.txt
+
+Example:
+
+	panel {
+		compatible = "bananapi,s070wv20-ct16", "simple-panel";
+		enable-gpios = <&pio 1 7 GPIO_ACTIVE_HIGH>; /* LCD-PWR-EN: PB7 */
+		backlight = <&backlight>;
+
+		port {
+			panel_out_bridge: endpoint {
+				remote-endpoint = <&bridge_out_panel>;
+			};
+		};
+	};
+
+&dsi {
+	vcc-dsi-supply = <&reg_dcdc1>;		/* VCC-DSI */
+	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		dsi_out: port@0 {
+			reg = <0>;
+
+			dsi_out_bridge: endpoint {
+				remote-endpoint = <&bridge_out_dsi>;
+			};
+		};
+	};
+
+	bridge@0 {
+		compatible = "chipone,icn6211";
+		reg = <0>;
+		reset-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* LCD-RST: PL5 */
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			bridge_in: port@0 {
+				reg = <0>;
+
+				bridge_out_dsi: endpoint {
+					remote-endpoint = <&dsi_out_bridge>;
+				};
+			};
+
+			bridge_out: port@1 {
+				reg = <1>;
+
+				bridge_out_panel: endpoint {
+					remote-endpoint = <&panel_out_bridge>;
+				};
+			};
+		};
+	};
+};
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
