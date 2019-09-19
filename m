Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B63B72B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 07:31:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cJ9de380d7jU7HClMe4WaXnt+kvde35rDsrfG1kSGpc=; b=kcv6hueGfwrPIv
	qzuE5oud1v6uk2A3q5o/iugCYomYLqcTQoAoWqIF4yqwEnAV1Hra9ErgQ5MhJCIaLWWJwGUqzVNpJ
	6PQTlN7JLJGUdvNTPh4huQOQnXSdDVP9u3beby6HkBQmst6UzXfnFi/MD1IlBDY1PlZP7DMrCchlo
	jgjKVLOtXarI2q5ek4b/OfKg81l6Yw/D/AFH2PTGNPizbWcUVhrNtVdoUJdiyTASYC7dvBrhu+u5k
	hiZs0zCoS/Ejno+Ei458qlznvEualVqAmp8FJSjuaKdIxVcX2tGTLMdV1tJfAj2yI6fuigS8lu6bU
	L01A6ioAKIKAYmHxprfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAp1v-00084U-U1; Thu, 19 Sep 2019 05:31:00 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAp0A-0005JP-5f
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 05:29:11 +0000
Received: by mail-pf1-x442.google.com with SMTP id q7so1489988pfh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 22:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SJDlhm907xyTeLn8eboZhigP+1jC9h49ln8vZf3zaoo=;
 b=fd6AiriFsm5ECQXieYjvYwo3dEkcVTY9IjOW3Fk0LLzlRQG0mt0IXNaSmaSqNOB/Uv
 emPEVfv7t9j4appHb5AVXYwS3SE8mm+9U/5UzlTs7yTymYOJps5Dw3ixojv80GKmX4GT
 XpUkPZWt8A20bfnt8gqyCQDBu45+Jr8aMc1fo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SJDlhm907xyTeLn8eboZhigP+1jC9h49ln8vZf3zaoo=;
 b=LxBBAH/eInCxlKwzSFY4modKoTtPvLOGwk3u5uRXf8lO5ESoKjazp2hQTg1oDzOS/S
 bnvrtoJPEyu/cyz8Fnp0tVUdylnauNhjxLyz3AwDmiYtJwTn5i1EnuLg6q2fFjsgPyq1
 VVbGp6kWEUEQnN+P6t+rN5MLDj7zVdswPUaUwI5On/BBqZKCpNgjzoS7mvBFOcdIKUgh
 FMyr7+7qfUjMLbMb6W1u3aSvpTFNXuD7CfRYsyVskTOQh8N6TJUTigXZ7qJs7acvwTLw
 A04J0FHad7C1eL6b4EOOv2apwWHz5iLyCacD47rvbjC9GLiqtmwYsmUgkbxzeMfLyCv1
 /2NQ==
X-Gm-Message-State: APjAAAVDkfBGig1B/jNbAa5fwCGFj62WgY+N9oT3T6kpKEcbvbD2Qx29
 jiINSWs2roN/nsVBppGHbF4naw==
X-Google-Smtp-Source: APXvYqz8LkQoMxwMIj4ICP+GqPvIhHkETgBA+pziMgTii53NMnmCFKiBfOFnLxpeVQSb2I0N3iEmSQ==
X-Received: by 2002:a65:4782:: with SMTP id e2mr6861393pgs.402.1568870949591; 
 Wed, 18 Sep 2019 22:29:09 -0700 (PDT)
Received: from localhost.localdomain ([49.206.200.127])
 by smtp.gmail.com with ESMTPSA id z20sm5051930pjn.12.2019.09.18.22.29.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 22:29:09 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>,
 Akash Gajjar <akash@openedev.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 6/6] arm64: dts: rockchip: Fix roc-rk3399-pc regulator input
 rails
Date: Thu, 19 Sep 2019 10:58:22 +0530
Message-Id: <20190919052822.10403-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190919052822.10403-1-jagan@amarulasolutions.com>
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_222910_348646_25E70285 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Da Xue <da@lessconfused.com>, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Few, know rk808 pmic regulators VCC[1-4], VCC[6-7], VCC[9-11],
VDD_LOG, VDD_GPU, VDD_CPU_B, VCC3V3_SYS are inputting with vcc_sys
which is 5V power rail from dc_12v.

So, replace the vin-supply of above mentioned regulators
with vcc_sys as per the PMIC-RK808-D page of roc-rk3399-pc
schematics.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../rk3399-libretech-roc-rk3399-pc.dts        | 26 +++++++++----------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts
index 51242ea5447d..1eddb2e00809 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts
@@ -85,7 +85,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		vin-supply = <&dc_12v>;
+		vin-supply = <&vcc_sys>;
 	};
 
 	/* Actually 3 regulators (host0, 1, 2) controlled by the same gpio */
@@ -129,7 +129,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <800000>;
 		regulator-max-microvolt = <1400000>;
-		vin-supply = <&vcc3v3_sys>;
+		vin-supply = <&vcc_sys>;
 	};
 };
 
@@ -202,16 +202,16 @@
 		rockchip,system-power-controller;
 		wakeup-source;
 
-		vcc1-supply = <&vcc3v3_sys>;
-		vcc2-supply = <&vcc3v3_sys>;
-		vcc3-supply = <&vcc3v3_sys>;
-		vcc4-supply = <&vcc3v3_sys>;
-		vcc6-supply = <&vcc3v3_sys>;
-		vcc7-supply = <&vcc3v3_sys>;
+		vcc1-supply = <&vcc_sys>;
+		vcc2-supply = <&vcc_sys>;
+		vcc3-supply = <&vcc_sys>;
+		vcc4-supply = <&vcc_sys>;
+		vcc6-supply = <&vcc_sys>;
+		vcc7-supply = <&vcc_sys>;
 		vcc8-supply = <&vcc3v3_sys>;
-		vcc9-supply = <&vcc3v3_sys>;
-		vcc10-supply = <&vcc3v3_sys>;
-		vcc11-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc_sys>;
+		vcc10-supply = <&vcc_sys>;
+		vcc11-supply = <&vcc_sys>;
 		vcc12-supply = <&vcc3v3_sys>;
 		vddio-supply = <&vcc1v8_pmu>;
 
@@ -385,7 +385,7 @@
 		regulator-ramp-delay = <1000>;
 		regulator-always-on;
 		regulator-boot-on;
-		vin-supply = <&vcc3v3_sys>;
+		vin-supply = <&vcc_sys>;
 
 		regulator-state-mem {
 			regulator-off-in-suspend;
@@ -404,7 +404,7 @@
 		regulator-ramp-delay = <1000>;
 		regulator-always-on;
 		regulator-boot-on;
-		vin-supply = <&vcc3v3_sys>;
+		vin-supply = <&vcc_sys>;
 
 		regulator-state-mem {
 			regulator-off-in-suspend;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
