Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 006CE11C067
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 00:10:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AxOdxrBxxVEcR0C2BQOiDzwaN1y2XES+dqY+MYHh3hw=; b=SSR
	66xSZmrZ4wYA4xC2q1oB97P8ILp7vWq3NgHHTSfLB5TyUXfNFMmFCkM1ogWcIDYt3Le9lMoD5RPLX
	OSmbvgkuzsh5OjEnA0nLwd0Apt7CZSHR1cHJhJqwwXiDcU5a4ctApi/hZYNNYx6azP5XK/5zcMRDa
	qid6j2UkvZU9AmtyvOaAM63FacycYjKtWwA/aLDb8PvgC3jD4eIAlYMnGLx+nXatochuB6G3ObUB8
	YGQUkF8FZgRomTRtmlaHLqywH3Qw9gk9odV0axWw9+bpYQsL6c8SY1iazOqRbmlZJL/jPcHJvzgew
	gIGDvunhJrglW/tydVr97VGUvyNCc6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifB89-00026B-3m; Wed, 11 Dec 2019 23:10:53 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifB6R-00087v-GH
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 23:09:11 +0000
Received: by mail-wr1-x444.google.com with SMTP id t2so552764wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 15:09:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=3xQ5hPAFKzWM3fXARbGtC1d78GhAfc9hvN3EgXVObjE=;
 b=kzgLuY1q5wvKV+L/pkheyq78HxWN0J07IxRVHhd3d8LqFt2ppaN4K2wZBCFu6b7qpy
 4Q0SjLpYqDDEa41BA/8NeIFBf2+9iKb/shT1eKfEHbEv9vEbgwCMbx/ZQhAy0e9x6SNV
 3r4CLWMeGho0w7xCe6ShEB8zsAUlQew5ymU0CBz6A2UEavmbKWul4iGl8OEfUru9+Lcv
 uDE846DT+ovt7Ovs0OWONNKlvIUthBz4e/9B49JLYlicUVn58NeY+IKJs+4smviO7peJ
 C7q3JsLhH6kM08c6F7yWzOAYCHtyiZGK4rzDtNi7gEdBzDb+xffv5AVrwjiyUBwx3cpD
 BNYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=3xQ5hPAFKzWM3fXARbGtC1d78GhAfc9hvN3EgXVObjE=;
 b=kWoMBZRCkeAiPZ1WNK+I1wWIsKDh3RtatXieGrarH9cGlWWi7CJJdbnF8IOXeoAa1F
 yzI5f4o4W02vnhbXH8gM/NPgB4y+L9HEmj7MQ7t7nELiAdET2GUrtgGnJboLmPSJng7w
 G79kQwvCOp86zeOIoC48bl+t9OjXJFeseS8JfpzjJQQNCpjnNBKGIH/JX3b1oSjElbXm
 0B9qhq6neQghO1Na50h64e9IELAf/ClgH7sIsV5M4ywtgBjLRoZwi3LJzuQBeF41c9Jg
 CIiZf39ihuFk5+cWW39JsFx5LnS4yAB+7LPXvKVPkLKgRZn9+m9a206kjYOmhdW4i+5h
 NQHg==
X-Gm-Message-State: APjAAAXzuG+Z+PD5L1dRJziVnJowBcaLCUNyDifSu3K56vFGV70IyOoJ
 1v6awqksMYeWxjO/ZPEhcJUniQ==
X-Google-Smtp-Source: APXvYqzRP7gAc3F4ZrWNyScIFh3oBby9NpO2X9RZtjXnwMPmoQPKox/Vo2rBqFs29Ph2QaldAeGTHQ==
X-Received: by 2002:a5d:630c:: with SMTP id i12mr2446243wru.350.1576105746121; 
 Wed, 11 Dec 2019 15:09:06 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:140f:3f8d:647c:49b0])
 by smtp.gmail.com with ESMTPSA id 4sm3921260wmg.22.2019.12.11.15.09.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 15:09:05 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, linux-arm-kernel@lists.infradead.org,
 coresight@lists.linaro.org, devicetree@vger.kernel.org
Subject: [PATCH v6 10/15] dt-bindings: qcom: Add CTI options for qcom msm8916
Date: Wed, 11 Dec 2019 23:09:02 +0000
Message-Id: <20191211230902.5414-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_150907_568517_B205A14A 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: lorenzo.pieralisi@arm.com, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com, liviu.dudau@arm.com, agross@kernel.org,
 robh+dt@kernel.org, sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds system and CPU bound CTI definitions for Qualcom msm8916 platform
(Dragonboard DB410C).
System CTIs 2-11 are omitted as no information available at present.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 85 +++++++++++++++++++++++++--
 1 file changed, 81 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 8686e101905c..68587968f5c0 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/reset/qcom,gcc-msm8916.h>
 #include <dt-bindings/clock/qcom,rpmcc.h>
 #include <dt-bindings/thermal/thermal.h>
+#include <dt-bindings/arm/coresight-cti-dt.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -1357,7 +1358,7 @@
 			cpu = <&CPU3>;
 		};
 
-		etm@85c000 {
+		etm0: etm@85c000 {
 			compatible = "arm,coresight-etm4x", "arm,primecell";
 			reg = <0x85c000 0x1000>;
 
@@ -1375,7 +1376,7 @@
 			};
 		};
 
-		etm@85d000 {
+		etm1: etm@85d000 {
 			compatible = "arm,coresight-etm4x", "arm,primecell";
 			reg = <0x85d000 0x1000>;
 
@@ -1393,7 +1394,7 @@
 			};
 		};
 
-		etm@85e000 {
+		etm2: etm@85e000 {
 			compatible = "arm,coresight-etm4x", "arm,primecell";
 			reg = <0x85e000 0x1000>;
 
@@ -1411,7 +1412,7 @@
 			};
 		};
 
-		etm@85f000 {
+		etm3: etm@85f000 {
 			compatible = "arm,coresight-etm4x", "arm,primecell";
 			reg = <0x85f000 0x1000>;
 
@@ -1429,6 +1430,82 @@
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
