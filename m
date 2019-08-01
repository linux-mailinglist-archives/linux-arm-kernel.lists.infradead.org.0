Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A197DDC4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 16:23:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LGjGkJxwZnqeOt1tyB/dbp8NUPAwhurlBRh3MKkeOz8=; b=P54
	YEX9xGZpdtDcOT728EtlqLHaRWDDyibiQmKsbaJcj3mw76vI1js3LqS5R+E/4x/BoNQYiGTKJ19ym
	CTZaw2gA0pmS30VzZBk9I7xJc4KWR9drPR52b7ewzyQjL037uJ707ynr4J1ACTHj3XY49StKDy1Ee
	PS2lJhnYaYx/8M1McGtva8YtiQBl26h8jPVMMqnD97GAfbRrQ6vYDUcKWkYTOx6xfOP2DIfB2GiOz
	+uvyuJm8h7YXQeplBeoGaYbtUXlTQ/vqxyUKai6y/TT8Ac9E5NjKfBvyNCAEzIktQRFHXUqHjNTvL
	gXDIax5zkNJa0cJwDsyhs6Hslfyy/mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htBzV-00076w-2q; Thu, 01 Aug 2019 14:23:37 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htBzK-00076S-Jo
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 14:23:27 +0000
Received: by mail-pl1-x643.google.com with SMTP id t14so32276526plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 07:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=d8QqAnaRG9B19aLd/6x1SuCSFj0V3dQnYyNBg9eKsxs=;
 b=FJiMJoQkijSbS7Hw3FvNwGh4jrejEQk1R2ODJ4arB99XCKFl69EUalt+3H6y9IQ0Sh
 do8Hbg6lu5RGw1WEPFX5bYe4hmqBZsxJ05ZO78RPPduWCivOElcI62KojrepLkdEKlvI
 5uDVY+nBBCQDehjzs7qRymxrl4HgsL+Op3BgHtk8+vMv/9nNLxtK8ZTerQW8rFljKt7X
 NXTKM/0ETZERIa06ltgJJApRzjwEilPf/7DrcHc5WLiH5JvikOyJdnveN8XlLVHt3hAN
 2SaYj65GSRMsDYMgIQb7Cax2Mvrv+VXu30eZvhzOpHqJXJuD80RvQZOJs7HXwwlxvdMq
 0t+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=d8QqAnaRG9B19aLd/6x1SuCSFj0V3dQnYyNBg9eKsxs=;
 b=Q0esSUrGh8vNay8Ql1pqgkchoo54EPMngXNZvzw9AwUEoR+B2obuV3WJeS2jPgF0aY
 vNA8JYCuhc5fax29s4ZXjo5xqsauk9yxHAMGmNuMkByMlVpYQROdmkhDH9R4lAKlpx0r
 W9WibJ7a7hNSZs0cuhHk/O75qn5CF/jBNrXdq7io53vJCypIK4BPQXW+jhDoJPFOs2Lq
 hVGeqB6FncgBkEQX+nf6oIb3SE7mCUXEV60Ddv9Nid79RTMDYAzyA0iHHnSYN2x7dAy+
 i7F2pvxOMDsyV6obUJiD2EcQG3tqr/PELgFtFQc/rAu+oXNK8P1xmGAdTiyJiXcIR/c0
 qxog==
X-Gm-Message-State: APjAAAUZSW+778k5L4zPYjiMJTHpWLvc5si2l2qyaIqUdMqo11MkGCh4
 QJ5BXuUobbJOB4bGt9jhLYE=
X-Google-Smtp-Source: APXvYqzchMZ7vwg5+ycc1a3SAgOrqHTC46m69X5XZ5JEfK1atEKZtrEFuq/gOO86ntXKFLHViz/S+g==
X-Received: by 2002:a17:902:2f84:: with SMTP id
 t4mr123020876plb.57.1564669405491; 
 Thu, 01 Aug 2019 07:23:25 -0700 (PDT)
Received: from localhost.localdomain
 (p6796086-ipngn28101marunouchi.tokyo.ocn.ne.jp. [114.165.92.86])
 by smtp.gmail.com with ESMTPSA id k3sm55628686pgq.92.2019.08.01.07.23.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 01 Aug 2019 07:23:24 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: r8a77970-v3msk: sort nodes
Date: Thu,  1 Aug 2019 23:23:17 +0900
Message-Id: <1564669397-22515-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_072326_648565_3AFBD737 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Magnus Damm <magnus.damm@gmail.com>, Simon Horman <horms@verge.net.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sort nodes.

If node address is present
   * Sort by node address, grouping all nodes with the same compat string
     and sorting the group alphabetically.
Else
   * Sort alphabetically

This should not have any run-time effect.

Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
---

This patch is based on the master branch of Geert Uytterhoeven's renesas-devel
tree.

 arch/arm64/boot/dts/renesas/r8a77970-v3msk.dts | 116 ++++++++++++-------------
 1 file changed, 58 insertions(+), 58 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a77970-v3msk.dts b/arch/arm64/boot/dts/renesas/r8a77970-v3msk.dts
index 15cc9fe..d7c7b91 100644
--- a/arch/arm64/boot/dts/renesas/r8a77970-v3msk.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77970-v3msk.dts
@@ -21,6 +21,41 @@
 		stdout-path = "serial0:115200n8";
 	};
 
+	hdmi-out {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con: endpoint {
+				remote-endpoint = <&adv7511_out>;
+			};
+		};
+	};
+
+	lvds-decoder {
+		compatible = "thine,thc63lvd1024";
+		vcc-supply = <&vcc_d3_3v>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				thc63lvd1024_in: endpoint {
+					remote-endpoint = <&lvds0_out>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+				thc63lvd1024_out: endpoint {
+					remote-endpoint = <&adv7511_in>;
+				};
+			};
+		};
+	};
+
 	memory@48000000 {
 		device_type = "memory";
 		/* first 128MB is reserved for secure area. */
@@ -59,41 +94,6 @@
 		regulator-boot-on;
 		regulator-always-on;
 	};
-
-	lvds-decoder {
-		compatible = "thine,thc63lvd1024";
-		vcc-supply = <&vcc_d3_3v>;
-
-		ports {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			port@0 {
-				reg = <0>;
-				thc63lvd1024_in: endpoint {
-					remote-endpoint = <&lvds0_out>;
-				};
-			};
-
-			port@2 {
-				reg = <2>;
-				thc63lvd1024_out: endpoint {
-					remote-endpoint = <&adv7511_in>;
-				};
-			};
-		};
-	};
-
-	hdmi-out {
-		compatible = "hdmi-connector";
-		type = "a";
-
-		port {
-			hdmi_con: endpoint {
-				remote-endpoint = <&adv7511_out>;
-			};
-		};
-	};
 };
 
 &avb {
@@ -128,29 +128,6 @@
 	clock-frequency = <32768>;
 };
 
-&pfc {
-	avb_pins: avb0 {
-		groups = "avb0_mdio", "avb0_rgmii", "avb0_txcrefclk";
-		function = "avb0";
-	};
-
-	i2c0_pins: i2c0 {
-		groups = "i2c0";
-		function = "i2c0";
-	};
-
-	mmc_pins: mmc_3_3v {
-		groups = "mmc_data8", "mmc_ctrl";
-		function = "mmc";
-		power-source = <3300>;
-	};
-
-	scif0_pins: scif0 {
-		groups = "scif0_data";
-		function = "scif0";
-	};
-};
-
 &i2c0 {
 	pinctrl-0 = <&i2c0_pins>;
 	pinctrl-names = "default";
@@ -220,6 +197,29 @@
 	status = "okay";
 };
 
+&pfc {
+	avb_pins: avb0 {
+		groups = "avb0_mdio", "avb0_rgmii", "avb0_txcrefclk";
+		function = "avb0";
+	};
+
+	i2c0_pins: i2c0 {
+		groups = "i2c0";
+		function = "i2c0";
+	};
+
+	mmc_pins: mmc_3_3v {
+		groups = "mmc_data8", "mmc_ctrl";
+		function = "mmc";
+		power-source = <3300>;
+	};
+
+	scif0_pins: scif0 {
+		groups = "scif0_data";
+		function = "scif0";
+	};
+};
+
 &scif0 {
 	pinctrl-0 = <&scif0_pins>;
 	pinctrl-names = "default";
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
