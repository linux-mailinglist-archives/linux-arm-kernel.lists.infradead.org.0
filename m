Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE7571EB3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 20:07:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kPs/lKNuHc6GXjvvx+mTAwuTCYO/bqfr6ITzTb1OhXU=; b=c1i
	REprB5pkoErY6Kr09yi1g4ddgyylEO7sS9EHvoKz0v3qE1NdQVU24FfFY074QZ2SUazwpkhNiUypB
	S+hA3QqB/6Oft7R8VfifOAfu5HH/sDm/0KlIF37d//yC/CEBRNrYWNueSU4NmdSnIYL4ZeeKz3hNU
	rTvbSyHOI3LFp9S9RadYeKKmkfjKJxWT6uv1nQtRcQnGvGHj/1xLk0GPAC18mP9nVFLWzykX/zvgb
	yRs2OgUz9VlUp6boQAQFUL6tEPXngjNZPMHlv8NxbWwKw646cXQHSY4uTwtMPNnIsLKYj9RmXUu8L
	tG83Jhrm3ppuVxFrLrb3m1HTbmkKJrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpzBp-0005Ow-Eq; Tue, 23 Jul 2019 18:07:05 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpz8d-0001j7-2S
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 18:03:49 +0000
Received: by mail-pl1-x644.google.com with SMTP id y8so20908948plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 11:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=1TIOqRhmss/ILQ6dGAsRS8I/11uneux/Ft/KPtslfz8=;
 b=f8dCI0zhMHEiSPY68o35pzenvfQ4+eFDAAeztNaIKAjxUT6m+g0rg7aUtW4mVRjL/i
 tQf+INL0+wqUOztKJnEIti5HzkDVD/ZkFSWhNONSFaX0BBxq+WlUO5QAGK0CLgzOsDSX
 K3as7ykZpv5UKhPM2s5LPtUA/6xnl7rUoZNku0s8cbaO5CNdjti0w5cT9Qs08rB2ir5I
 683t6whwZT/JemGszEs49iRfFgkZAdtLhpYsA8mhZxGEt9a3+0fei8dW9U1t1MDIfpIk
 kviMom8TLtxmxRpAZ1jKztJQKvW1VtIbrLuMaT13+LcR7bJxTDBm11cbpOW78xsEHRa1
 K1Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=1TIOqRhmss/ILQ6dGAsRS8I/11uneux/Ft/KPtslfz8=;
 b=K8eLztWCJeXFMXc3/5KFEyCVXx4L1JzaFzJAwkdGIDc2gVkMgvErQ2mLTof/A7Jlwp
 Bl5HZdE7iDGKcBrPbxi+zTV3W7p4R5SEhnve7EnoYFWBRcL+xaLgiYm6zvAJ+JRJrw9Q
 wPVREI9jjHdhfDVHrJE3k39jP1Pweq9jVcjY/UtLmvXKg5OvVJR+aYET/WG54iGd0KEY
 WhGNdMiaHzWAhOmYm6kt9t2NgtttbDHFQ/N5swKe0Y34D7rwsfQd64oSMqTJpG7Mw+cB
 LIwOGIKluUEU55IyNLsMRwdCbVqyhtbZdR1X6TRTgM7YFpdLKi2mZwHeDPYmCi61ZuRY
 6YOA==
X-Gm-Message-State: APjAAAX3uqd43Rxpx72yIYxqrnIBgHHqe0euI8nhE8xhD2qvv7jWaRjN
 a+VlmdMXkq0kYiXSi6IQRwk=
X-Google-Smtp-Source: APXvYqwkNMk/D1dT8XUrS0aDZ7DSLZPr9tlvafvfKtUG3xc4qiopu2JFr4HthixHv2hp5VO8Y1IsuA==
X-Received: by 2002:a17:902:9f8e:: with SMTP id
 g14mr35835075plq.67.1563905025772; 
 Tue, 23 Jul 2019 11:03:45 -0700 (PDT)
Received: from localhost.localdomain (KD118155013174.ppp-bb.dion.ne.jp.
 [118.155.13.174])
 by smtp.gmail.com with ESMTPSA id v138sm50594318pfc.15.2019.07.23.11.03.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 23 Jul 2019 11:03:45 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: ulcb-kf: sort nodes
Date: Wed, 24 Jul 2019 03:03:35 +0900
Message-Id: <1563905015-2911-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_110347_283499_233BC365 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

This patch is based on the devel branch of Simon Horman's renesas tree.

 arch/arm64/boot/dts/renesas/ulcb-kf.dtsi | 118 +++++++++++++++----------------
 1 file changed, 59 insertions(+), 59 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi b/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
index 27851a7..5ac22a8 100644
--- a/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
+++ b/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
@@ -100,13 +100,6 @@
 			line-name = "Audio_Out_OFF";
 		};
 
-		sd-wifi-mux {
-			gpio-hog;
-			gpios = <5 GPIO_ACTIVE_HIGH>;
-			output-low;	/* Connect WL1837 */
-			line-name = "SD WiFi mux";
-		};
-
 		hub_pwen {
 			gpio-hog;
 			gpios = <6 GPIO_ACTIVE_HIGH>;
@@ -121,6 +114,13 @@
 			line-name = "HUB rst";
 		};
 
+		otg_extlpn {
+			gpio-hog;
+			gpios = <9 GPIO_ACTIVE_HIGH>;
+			output-high;
+			line-name = "OTG EXTLPn";
+		};
+
 		otg_offvbusn {
 			gpio-hog;
 			gpios = <8 GPIO_ACTIVE_HIGH>;
@@ -128,11 +128,11 @@
 			line-name = "OTG OFFVBUSn";
 		};
 
-		otg_extlpn {
+		sd-wifi-mux {
 			gpio-hog;
-			gpios = <9 GPIO_ACTIVE_HIGH>;
-			output-high;
-			line-name = "OTG EXTLPn";
+			gpios = <5 GPIO_ACTIVE_HIGH>;
+			output-low;	/* Connect WL1837 */
+			line-name = "SD WiFi mux";
 		};
 
 		snd_rst {
@@ -279,14 +279,50 @@
 		power-source = <3300>;
 	};
 
+	sound_pcm_pins: sound-pcm {
+		groups = "ssi349_ctrl", "ssi3_data", "ssi4_data";
+		function = "ssi";
+	};
+
 	usb0_pins: usb0 {
 		groups = "usb0";
 		function = "usb0";
 	};
+};
 
-	sound_pcm_pins: sound-pcm {
-		groups = "ssi349_ctrl", "ssi3_data", "ssi4_data";
-		function = "ssi";
+&rcar_sound {
+	pinctrl-0 = <&sound_pins
+		     &sound_clk_pins
+		     &sound_pcm_pins>;
+
+	ports {
+		/* rsnd_port0/1 are on salvator-common */
+		rsnd_port2: port@2 {
+			reg = <2>;
+			rsnd_for_pcm3168a_play: endpoint {
+				remote-endpoint = <&pcm3168a_endpoint_p>;
+
+				dai-format = "i2s";
+				bitclock-master = <&rsnd_for_pcm3168a_play>;
+				frame-master = <&rsnd_for_pcm3168a_play>;
+				dai-tdm-slot-num = <8>;
+
+				playback = <&ssi3>;
+			};
+		};
+		rsnd_port3: port@3 {
+			reg = <3>;
+			rsnd_for_pcm3168a_capture: endpoint {
+				remote-endpoint = <&pcm3168a_endpoint_c>;
+
+				dai-format = "i2s";
+				bitclock-master = <&rsnd_for_pcm3168a_capture>;
+				frame-master = <&rsnd_for_pcm3168a_capture>;
+				dai-tdm-slot-num = <6>;
+
+				capture  = <&ssi4>;
+			};
+		};
 	};
 };
 
@@ -322,17 +358,6 @@
 	};
 };
 
-&usb2_phy0 {
-	pinctrl-0 = <&usb0_pins>;
-	pinctrl-names = "default";
-
-	status = "okay";
-};
-
-&xhci0 {
-	status = "okay";
-};
-
 &sound_card {
 	dais = <&rsnd_port0	/* ak4613 */
 		&rsnd_port1	/* HDMI0  */
@@ -341,42 +366,17 @@
 		>;
 };
 
-&rcar_sound {
-	pinctrl-0 = <&sound_pins
-		     &sound_clk_pins
-		     &sound_pcm_pins>;
-
-	ports {
-		/* rsnd_port0/1 are on salvator-common */
-		rsnd_port2: port@2 {
-			reg = <2>;
-			rsnd_for_pcm3168a_play: endpoint {
-				remote-endpoint = <&pcm3168a_endpoint_p>;
-
-				dai-format = "i2s";
-				bitclock-master = <&rsnd_for_pcm3168a_play>;
-				frame-master = <&rsnd_for_pcm3168a_play>;
-				dai-tdm-slot-num = <8>;
-
-				playback = <&ssi3>;
-			};
-		};
-		rsnd_port3: port@3 {
-			reg = <3>;
-			rsnd_for_pcm3168a_capture: endpoint {
-				remote-endpoint = <&pcm3168a_endpoint_c>;
+&ssi4 {
+	shared-pin;
+};
 
-				dai-format = "i2s";
-				bitclock-master = <&rsnd_for_pcm3168a_capture>;
-				frame-master = <&rsnd_for_pcm3168a_capture>;
-				dai-tdm-slot-num = <6>;
+&usb2_phy0 {
+	pinctrl-0 = <&usb0_pins>;
+	pinctrl-names = "default";
 
-				capture  = <&ssi4>;
-			};
-		};
-	};
+	status = "okay";
 };
 
-&ssi4 {
-	shared-pin;
+&xhci0 {
+	status = "okay";
 };
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
