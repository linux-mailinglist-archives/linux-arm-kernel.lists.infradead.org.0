Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA32D19872D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 00:13:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xbid69S1wURK01Rs+n9JoJg/NwQxsYHDXH9zCuXpwKI=; b=Wejl4YaTpfHiiP
	tv0vJfFz7dTKi//+PfGRDsywdJwCTttHaoUj6Zgzo5tnaLCDdb7ZlbNFPNCYQqMom8oS0iExNQLAv
	FqvkmdSMx4nGGWF04VydYApwY81FwUzuQEwrKjWSN634411wzScj1h1WMdsQKdXlm6Rhjp3z7hwsV
	IpI0mo60Mc1Gwk6Tt11r3uBbQUn/5GE7PYsDWqwh3uidHoLcp7VfPJR8xxHjaaqJCMGPo7Bcwq89T
	0qVCBtGmm7PEYc21UOFljjx4l+5UQtGtq2QAHAwTEX1fZEBFTZfbrwOkEoViNG/NUaHlxerbIYFCV
	ZhNA1nx7OJSjf96XOu+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ2ee-0003DV-1p; Mon, 30 Mar 2020 22:13:12 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ2d4-0001lK-Cg; Mon, 30 Mar 2020 22:11:36 +0000
Received: by mail-wm1-x344.google.com with SMTP id t128so500866wma.0;
 Mon, 30 Mar 2020 15:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0cKp3v348vmyZeRheT+gdcc+gPdXRTpNkP+LQYIKnRY=;
 b=gSjEgukUqEEFV5PGf6eqXlNOdSmlijDI9Trne9JLdp++Q3i8ZTE8F9E1nWyxJs87+s
 2aJapUm5GSI1GekjpCVqG/KT0baw06lJdLtJgesPGw6ljriLeEpfup3I0dm+pbvL7jn/
 xZ27MfgHxZ7b8TiFWchs6Wv/hG27na7pRzCnM7ngQkKA8QgAItsu5rMd4g/aH69NzpkD
 UVyFqzPYcE6drMPOoGh6qk+fRLpE06IG4CVR0cnMM3YqmTRDtNQNIeP4Wc97L79/+A3d
 0z6D4+pKtBh+8MlYKFMtQxa6w+r21JMn0HfSIvk0UuuHYHqGdvKhImwKbdP9MbdnvOLz
 jz+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0cKp3v348vmyZeRheT+gdcc+gPdXRTpNkP+LQYIKnRY=;
 b=bEENqcF5GUjYxcUXf3fKLGTs1oIEkCkz0tgg/gqNDYkX1JX1aWzPlr09Zy02NX4coY
 R+N6ySd3Qmv5Yq4FjEDtkVlTQ4KBTIAUbQwce24kXpyO0Ue36jhls/YklNHEJ9ytcp9F
 12RZGwzX4JwN8w6oA2Z7vkw7ddyBzvkpB/gqTyhOehOq8XrZM5T0FpSkkeh8OVaxQxOL
 L0xX1eI7HU7ZBp67TuJ5jQpAkhKv1qYjl6B9fB9aa2jZ8LFF4h9hd3Ah+/I08KmbfMil
 YS6pK973rMEELlwNpDh0NEYBfYKQv7bbW4Vg750iHeBlzrx1FZoeBhM1f8eKeKk9Kn5n
 fvbA==
X-Gm-Message-State: ANhLgQ3aJdgf2yY6k7qbfvyTMqdIcLCYl35mmdC5RTXGzVKn6VGU4EUw
 nGMUG2njR7uIE+/XloCmclLzlVgy
X-Google-Smtp-Source: ADFU+vvjxSgdZSTx/q1zOs3QcY6XqTZOQEjlrmxJJzC3LdIEuRPhuZATHElr4P4u3rb8X9N0RauShw==
X-Received: by 2002:a7b:c145:: with SMTP id z5mr212421wmi.55.1585606292625;
 Mon, 30 Mar 2020 15:11:32 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F13710ED00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3710:ed00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id b187sm1260509wmc.14.2020.03.30.15.11.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 15:11:32 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, khilman@baylibre.com,
 jbrunet@baylibre.com, narmstrong@baylibre.com
Subject: [RFC v1 4/5] arm64: dts: amlogic: meson-gxm: add the Mali OPP table
 and use DVFS
Date: Tue, 31 Mar 2020 00:11:03 +0200
Message-Id: <20200330221104.3163788-5-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200330221104.3163788-1-martin.blumenstingl@googlemail.com>
References: <20200330221104.3163788-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_151134_571410_A146F7CF 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the OPP table for the Mali-T820 GPU and drop the hardcoded initial
clock configuration. This enables GPU DVFS and thus saves power when the
GPU is not in use while still being able switch to a higher clock on
demand.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxm.dtsi | 45 ++++++++++++++--------
 1 file changed, 30 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi
index b6f89f108e28..0f1d1cf4248f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi
@@ -82,6 +82,35 @@ cpu7: cpu@103 {
 			#cooling-cells = <2>;
 		};
 	};
+
+	gpu_opp_table: opp-table {
+		compatible = "operating-points-v2";
+
+		opp-125000000 {
+			opp-hz = /bits/ 64 <125000000>;
+			opp-microvolt = <950000>;
+		};
+		opp-250000000 {
+			opp-hz = /bits/ 64 <250000000>;
+			opp-microvolt = <950000>;
+		};
+		opp-285714285 {
+			opp-hz = /bits/ 64 <285714285>;
+			opp-microvolt = <950000>;
+		};
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <950000>;
+		};
+		opp-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-microvolt = <950000>;
+		};
+		opp-666666666 {
+			opp-hz = /bits/ 64 <666666666>;
+			opp-microvolt = <950000>;
+		};
+	};
 };
 
 &apb {
@@ -106,21 +135,7 @@ mali: gpu@c0000 {
 		interrupt-names = "job", "mmu", "gpu";
 		clocks = <&clkc CLKID_MALI>;
 		resets = <&reset RESET_MALI_CAPB3>, <&reset RESET_MALI>;
-
-		/*
-		 * Mali clocking is provided by two identical clock paths
-		 * MALI_0 and MALI_1 muxed to a single clock by a glitch
-		 * free mux to safely change frequency while running.
-		 */
-		assigned-clocks = <&clkc CLKID_MALI_0_SEL>,
-				  <&clkc CLKID_MALI_0>,
-				  <&clkc CLKID_MALI>; /* Glitch free mux */
-		assigned-clock-parents = <&clkc CLKID_FCLK_DIV3>,
-					 <0>, /* Do Nothing */
-					 <&clkc CLKID_MALI_0>;
-		assigned-clock-rates = <0>, /* Do Nothing */
-				       <666666666>,
-				       <0>; /* Do Nothing */
+		operating-points-v2 = <&gpu_opp_table>;
 	};
 };
 
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
