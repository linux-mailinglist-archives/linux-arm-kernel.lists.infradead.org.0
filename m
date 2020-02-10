Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 753CD15851E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 22:42:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PVzNbu9CWfuvqQX0HZby0f45l0raMS5LNiZjkiek8Rg=; b=l3RXyxVUif+aspcXRksvY4uZDv
	xLR5WLClxrhocEOX/YlSm8DsgmsXVQkd8Qh5Ywd696VJlTpRRLLwbb6yB9H0F8K4PGFGUdBRH48Sv
	KUILzttCd5v8qGol5ur/WO0Bgkraphnf+3pyez0lZ2rAJ7aZFgpxLpYF2yINHXYyfo6HkbyyOxYxG
	UJwy4Tq/2lwAz2gQcJpB2HDcn9xMps7m2VEppEKtUr9CGu++Sji+XHjVhCdcbZT7aqo6OkzGqpFav
	ROoXHt208SAibJ2TemFl0i/GPu+Rq1sZ2a5MoMG/A1oVk4bIoKh+XPWfprT4PnGUOIdAvc54CQgKv
	V9NefoWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1God-0005ak-2e; Mon, 10 Feb 2020 21:42:03 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Gmk-0002t5-08
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 21:40:09 +0000
Received: by mail-wm1-f65.google.com with SMTP id t23so935876wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 13:40:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=C1WY7m7LZykVt5uJs3pBqs/4NQKr7Ot6cOn9UjLkSJM=;
 b=m595dQRGCxQ2u1fqafnlK1isvgOXjuOK0l1YeRCmEj/cI7AepSdtOBx7DD9hML0QkY
 xBx31A5vdqNkk7kpLz2N+0pqvSSmEomEt6LsZM3N/G+dqzU9xA9+YyjUiCEI+/Q96+hE
 163z38xlu4D5R/8ypttpnbU1QbbZdAjBvfFE4HRM0j9queioaJW9pv8OoJAovbbGIVH7
 a5WaMiBg2tUsv/CZDBoBI75mPYSFxU3fDtH4KoQQz7B8nXCPkMOt69IvVj7jeWLvXWm7
 HTxO8ruYjBPTix13y7P3V26UvoAoOCn3ubhB+dKb7uqMSZLx1h14r66rY/ppD+zqR6CN
 m9Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=C1WY7m7LZykVt5uJs3pBqs/4NQKr7Ot6cOn9UjLkSJM=;
 b=GlT7KYydlCOvWK1w6pM9ULDGbp5dhZYqmN9UtYdCaFPQbjAY4FxpAY8K4Zo+Hl6Iq8
 2VEkBkgubxTmHI3YPrVXKSETKDuxRrwp//KzQykwG6BgVCtSXmzXsu7/TCIZk5dIUPRO
 67KP0HpC/3EgBVg8TwkCIYHjSdwuOBHjRczOA7ExxycHyWrkHpiOZ05M5zGC1LdeAw5S
 O3ZKINh2bbwR5dSH1H8ZSkXmLCtuLkLxXXRWPZ19iO40YcX7yj93jjCYz9J9QToBRSLC
 GsAXDPyeB/IFDlPNpTOcXKVbk/SCl9EaL1D+M9H4OD0nuRcFYD/bG9VfxCSPdufDDq1A
 Agaw==
X-Gm-Message-State: APjAAAUx29sDTURhCJKBxNg6ySeUgwAubxWfY93GUQPysSN09I86F7Qi
 SM+r8Vsj60Xs6IFPQw24tUbetQ==
X-Google-Smtp-Source: APXvYqzXmPFVDvYGGO1lCbsNxXyqlxO/kA1C/Zdq1de/H66qIAbSiiNtf3Ha+C06PxLj3o/ajaSvhw==
X-Received: by 2002:a1c:67c3:: with SMTP id b186mr1016506wmc.36.1581370802162; 
 Mon, 10 Feb 2020 13:40:02 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:a1cf:b00b:5683:ed40])
 by smtp.gmail.com with ESMTPSA id u14sm2118582wrm.51.2020.02.10.13.40.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 13:40:01 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v9 10/15] dt-bindings: qcom: Add CTI options for qcom msm8916
Date: Mon, 10 Feb 2020 21:39:19 +0000
Message-Id: <20200210213924.20037-11-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200210213924.20037-1-mike.leach@linaro.org>
References: <20200210213924.20037-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_134006_224116_99D6DDA2 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: lorenzo.pieralisi@arm.com, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com, linux-arm-msm@vger.kernel.org, corbet@lwn.net,
 liviu.dudau@arm.com, agross@kernel.org, robh+dt@kernel.org, maxime@cerno.tech,
 sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds system and CPU bound CTI definitions for Qualcom msm8916 platform
(Dragonboard DB410C).
System CTIs 2-11 are omitted as no information available at present.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 85 +++++++++++++++++++++++++--
 1 file changed, 81 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 9f31064f2374..d13b5fb5c4d6 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/reset/qcom,gcc-msm8916.h>
 #include <dt-bindings/clock/qcom,rpmcc.h>
 #include <dt-bindings/thermal/thermal.h>
+#include <dt-bindings/arm/coresight-cti-dt.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -1409,7 +1410,7 @@
 			cpu = <&CPU3>;
 		};
 
-		etm@85c000 {
+		etm0: etm@85c000 {
 			compatible = "arm,coresight-etm4x", "arm,primecell";
 			reg = <0x85c000 0x1000>;
 
@@ -1427,7 +1428,7 @@
 			};
 		};
 
-		etm@85d000 {
+		etm1: etm@85d000 {
 			compatible = "arm,coresight-etm4x", "arm,primecell";
 			reg = <0x85d000 0x1000>;
 
@@ -1445,7 +1446,7 @@
 			};
 		};
 
-		etm@85e000 {
+		etm2: etm@85e000 {
 			compatible = "arm,coresight-etm4x", "arm,primecell";
 			reg = <0x85e000 0x1000>;
 
@@ -1463,7 +1464,7 @@
 			};
 		};
 
-		etm@85f000 {
+		etm3: etm@85f000 {
 			compatible = "arm,coresight-etm4x", "arm,primecell";
 			reg = <0x85f000 0x1000>;
 
@@ -1481,6 +1482,82 @@
 			};
 		};
 
+		/* System CTIs */
+		/* CTI 0 - TMC connections */
+		cti@810000 {
+			compatible = "arm,coresight-cti", "arm,primecell";
+			reg = <0x810000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>;
+			clock-names = "apb_pclk";
+		};
+
+		/* CTI 1 - TPIU connections */
+		cti@811000 {
+			compatible = "arm,coresight-cti", "arm,primecell";
+			reg = <0x811000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>;
+			clock-names = "apb_pclk";
+		};
+
+		/* CTIs 2-11 - no information - not instantiated */
+
+		/* Core CTIs; CTIs 12-15 */
+		/* CTI - CPU-0 */
+		cti@858000 {
+			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
+				     "arm,primecell";
+			reg = <0x858000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>;
+			clock-names = "apb_pclk";
+
+			cpu = <&CPU0>;
+			arm,cs-dev-assoc = <&etm0>;
+
+		};
+
+		/* CTI - CPU-1 */
+		cti@859000 {
+			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
+				     "arm,primecell";
+			reg = <0x859000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>;
+			clock-names = "apb_pclk";
+
+			cpu = <&CPU1>;
+			arm,cs-dev-assoc = <&etm1>;
+		};
+
+		/* CTI - CPU-2 */
+		cti@85a000 {
+			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
+				     "arm,primecell";
+			reg = <0x85a000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>;
+			clock-names = "apb_pclk";
+
+			cpu = <&CPU2>;
+			arm,cs-dev-assoc = <&etm2>;
+		};
+
+		/* CTI - CPU-3 */
+		cti@85b000 {
+			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
+				     "arm,primecell";
+			reg = <0x85b000 0x1000>;
+
+			clocks = <&rpmcc RPM_QDSS_CLK>;
+			clock-names = "apb_pclk";
+
+			cpu = <&CPU3>;
+			arm,cs-dev-assoc = <&etm3>;
+		};
+
+
 		venus: video-codec@1d00000 {
 			compatible = "qcom,msm8916-venus";
 			reg = <0x01d00000 0xff000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
