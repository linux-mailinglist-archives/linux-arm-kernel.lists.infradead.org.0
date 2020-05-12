Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD7A1CF1CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:40:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2zci4aKd8TwRQZY/U1FurfQxwyyhFm2JCQ67r7CM65Y=; b=J+gnH8qgDDRjj4
	m5X38f89BXsUF19RGWUrtQfSXIA1/iejGHfnlcsFCqIVdGBdmWo3kHovaLpI1vXrm99BBzwjR5kn0
	QaVtYuhOdGO/yYEadOwc6+I5oksCQ+Gpn3IXSeKIzACP00dE6QveeoSXzLV3ygKrYIevfhIiDaxL1
	hu/2TRyFl5JLBGuqx2qozbM4+yppO5drjjJafyeAfJV7VhYslqp7tExRtRWkvCXvbWIvMj0C75Xlu
	KeBf1iOrUEtB89rUunD8oalKdI77HJb2BPFbopIVj1NtiKKEkDKMiHIzb0nkvWsaLsTJQ8euycsza
	BGLGasUytumhMGUyRyHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYROc-0001Bj-01; Tue, 12 May 2020 09:40:18 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYRNm-0000ep-Bd
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:39:28 +0000
Received: by mail-wr1-x441.google.com with SMTP id y3so14507537wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 02:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=exntrZVDrpNC4LfoF62zE8ED3Dungiic5pvW3+dqcrE=;
 b=YI54zt1AshCXbR/9J2FQ3jVLetO9S//XLD3qA1usyzaunxBpK5g6XQVzQvE3dRcAoj
 Nzbsch3Yzon5rMLclMlvOZbTrlyn2AENSVtwzVsKA5aigV+aSt2PagG0vq75UflInWjO
 VyA2LMJ9bSn5/eEQxYGfcEh7EFRFcUh8rRyJlCp5tR4UdNOUwx25toWUgyeyxs19TXEh
 cQnXabZm+r2RMlGcIjEL0fK5m9xTDItuCLJy3u6qwJuWqPsj2gjUIJ/zBrhq9qp+D3kC
 DPpHNHurfHQDE2szd/rsSYRpn2u+SRxeXhVqrkzcPRN/eDk1IC6aOhLkisA6foT2SxOR
 88ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=exntrZVDrpNC4LfoF62zE8ED3Dungiic5pvW3+dqcrE=;
 b=rQqtTKXdPVo6Eoq3FFof6hAdtDwHgqK1IVhJODy/fosM8ucmnTCqz1cq+re9sBth/Y
 V8n+r155eG/N62mEWenXa+K8+FlzyRRQa0rFPBCSEa35vWJ4EiCJhfTDda6zkgpSVnzX
 g0pK6uhBfU4goVvx8NNswSJyMfxgZ8M+WvqnVutc1Udr0mcoVKkfYpMY6QCOtSh+noep
 ++REk6CoJ9/43m3x3kkHcMvpln9D9naUyGwHH5wULld0af0WAiJPGzuZNPbLWos4ZqNf
 fc1iufWdpegcidmNSs2NVdPL0ZYy+HmGfT3KBeTaObQvI/ZRh4sVvFcJ75tNPC7oitFC
 lEJA==
X-Gm-Message-State: AGi0PuanVlZ3/9SgXe8PltKju5J6oTKcWZiHlQ+qCcUyo9/2XXwKkO3U
 EipD15/E8Js/0Qwf65HsP1n1Rw==
X-Google-Smtp-Source: APiQypICdYm6q0coCTYrsv14gsmy5w38/NkkWNMU1pnmoJaS64rsgzMhP/NsIK7fGIEASWdkxrRSyQ==
X-Received: by 2002:a5d:42c9:: with SMTP id t9mr24850040wrr.246.1589276364767; 
 Tue, 12 May 2020 02:39:24 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:4460:3fd3:382:4a71])
 by smtp.gmail.com with ESMTPSA id
 81sm14037092wme.16.2020.05.12.02.39.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 02:39:24 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 2/2] arm64: dts: meson-sm1: add cpu thermal nodes
Date: Tue, 12 May 2020 11:39:16 +0200
Message-Id: <20200512093916.19676-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200512093916.19676-1-narmstrong@baylibre.com>
References: <20200512093916.19676-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_023926_395241_A0B84CED 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add thermal nodes for the Amlogic SM1 SoCs based on the G12A and G12B
thermal nodes.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
index d4ec735fb1a5..71317f5aada1 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
@@ -56,6 +56,7 @@
 			reg = <0x0 0x0>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		cpu1: cpu@1 {
@@ -64,6 +65,7 @@
 			reg = <0x0 0x1>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		cpu2: cpu@2 {
@@ -72,6 +74,7 @@
 			reg = <0x0 0x2>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		cpu3: cpu@3 {
@@ -80,6 +83,7 @@
 			reg = <0x0 0x3>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		l2: l2-cache0 {
@@ -466,6 +470,26 @@
 	compatible = "amlogic,sm1-clkc";
 };
 
+&cpu_thermal {
+	cooling-maps {
+		map0 {
+			trip = <&cpu_passive>;
+			cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+		};
+
+		map1 {
+			trip = <&cpu_hot>;
+			cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 &ethmac {
 	power-domains = <&pwrc PWRC_SM1_ETH_ID>;
 };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
