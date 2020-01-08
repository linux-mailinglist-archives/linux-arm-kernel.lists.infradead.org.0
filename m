Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF07133A27
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 05:21:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vG4JZOcnisXI5MKdYS87bfXfnOX4h9rxUOn5LQJoTXo=; b=BstOdP0Fd3RnDU
	EIoQJ+yb3yLJjPRs65L95Yg8XVseLy+d33jRGUn8dyhvOXukSMvb0E3Qsl0GUB4SgoOx/VdTw678O
	t+OtxEy4QENxZwW10QTIDAAopOG+6AWiviy0hUY7TsYeN4nFd46LEB9UC1ycLDASqB7Y36S6WBGwf
	MIQhWVkkianCg2exhLbvT/xijhWcOlX787FTmIYhCNwp14WoYqcIcgXydMjnQucGTk3L8s1IDZjqR
	d+40XQDvpOEsmuiS469158SFRbD+8ZaOXAmIE2e6LoQQCcHI4k3M+qF/ygzHftYRqmom5cGDB1I26
	r0Eqz7rTklVm/7ieCEYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip2qZ-0000ej-5k; Wed, 08 Jan 2020 04:21:31 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip2ps-0000A6-GM
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 04:20:50 +0000
Received: by mail-pg1-x542.google.com with SMTP id s64so898130pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 20:20:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a9CbtpSeP2FndDuoSPtr7TkepCmjH+G9q6KhtPvuICk=;
 b=joSnIdykr9M65iSmT897djm+dYgRXOxKaLDa39hQjDBsRFT8cgHHS1HqfrC+8njn0S
 GmKpAfbIz9tI08oB05Mskl3Yrnlr1vqfYvN6GgvGWvX3FoY2D6jbqe2n4AiirNQdshck
 YcSK7KyOEEdgcfT1MDpDMqSH6+KBFM/JsK2panWK+6cq9d4i+8VHPl3LBwb3TRlt9GKC
 HWWP9v7YK8P8Gq1dR6DESgYndv5C65NUgUlKbRcPs16burh5GxlVTZ2qyyHDh2E6urd/
 xOk5klU4x4BpUSEAZqvVBMOap07jbZTKpxI8KR4tyg/7ZBcjNuYba9rroCATi6io/1NX
 eQ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a9CbtpSeP2FndDuoSPtr7TkepCmjH+G9q6KhtPvuICk=;
 b=eyyH7wf9H90W5PFoRVvkzRtCKJPOiRbspF+w/v0NMeJg4JgEg+vK6rRinqGMHOp25+
 mMmPmbu3dKClGNj0xT/3KuTsrJfk1Ns575sKZ0EpqZ8sBgUHqkP9eXzufxzttQLAz5Y/
 OxpcuL88ytlCQ4pEoZKcOAUhxwEjdghykOjeJexFEK2zVTFurLyhd8B+LtHEaS1N9XFu
 rlupBgedMtnwCzBLQklAXSgUZGmt8UsPAS1Bhke642xF00dTEomtbCdMKW3StytLIs5u
 sSYprjvMeMIaqxQPzCc136vQg2iPU2gZzsjLoDzW2yWVAmjENeCvcU6ImmXjJCPM6WDj
 qG5Q==
X-Gm-Message-State: APjAAAXw2QxQ/zMFNaQIUeiM64ElbqUPrifGYxXy4AS/R91lZM8G8IKC
 H0BgGooHICB9a9kGzPqL9aM=
X-Google-Smtp-Source: APXvYqzdjVZCW2V6yoSf9haV6oUXng2MFLJ+MiXr/PXgpLd1X/Um2PrG+0b8+5nZBm4rNj/J3c9wNQ==
X-Received: by 2002:a63:de03:: with SMTP id f3mr3268086pgg.141.1578457247965; 
 Tue, 07 Jan 2020 20:20:47 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id p12sm1133478pjo.5.2020.01.07.20.20.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 20:20:47 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v2 2/4] arm64: dts: allwinner: a64: add cooling maps and
 thermal tripping points
Date: Tue,  7 Jan 2020 20:20:16 -0800
Message-Id: <20200108042018.571251-3-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200108042018.571251-1-anarsoul@gmail.com>
References: <20200108042018.571251-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_202048_540388_9B41F56D 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add cooling maps and thermal tripping points to prevent CPU overheating when
running at the highest frequency. Tripping points are taken from A33 dts since
A64 user manual doesn't mention when we should start throttling.

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 77b33087866d..54a741f3cd8c 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -92,6 +92,7 @@ cpu0: cpu@0 {
 			next-level-cache = <&L2>;
 			clocks = <&ccu CLK_CPUX>;
 			clock-names = "cpu";
+			#cooling-cells = <2>;
 		};
 
 		cpu1: cpu@1 {
@@ -102,6 +103,7 @@ cpu1: cpu@1 {
 			next-level-cache = <&L2>;
 			clocks = <&ccu CLK_CPUX>;
 			clock-names = "cpu";
+			#cooling-cells = <2>;
 		};
 
 		cpu2: cpu@2 {
@@ -112,6 +114,7 @@ cpu2: cpu@2 {
 			next-level-cache = <&L2>;
 			clocks = <&ccu CLK_CPUX>;
 			clock-names = "cpu";
+			#cooling-cells = <2>;
 		};
 
 		cpu3: cpu@3 {
@@ -122,6 +125,7 @@ cpu3: cpu@3 {
 			next-level-cache = <&L2>;
 			clocks = <&ccu CLK_CPUX>;
 			clock-names = "cpu";
+			#cooling-cells = <2>;
 		};
 
 		L2: l2-cache {
@@ -226,6 +230,46 @@ cpu_thermal: cpu0-thermal {
 			polling-delay-passive = <0>;
 			polling-delay = <0>;
 			thermal-sensors = <&ths 0>;
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu_alert0>;
+					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+				map1 {
+					trip = <&cpu_alert1>;
+					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
+			trips {
+				cpu_alert0: cpu_alert0 {
+					/* milliCelsius */
+					temperature = <75000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu_alert1: cpu_alert1 {
+					/* milliCelsius */
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				cpu_crit: cpu_crit {
+					/* milliCelsius */
+					temperature = <110000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
 		};
 
 		gpu0_thermal: gpu0-thermal {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
