Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7C71AB254
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 22:12:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bo0R8vyLWlC+dHF3grjHSKtgC1kZIQJJIsFa4ijHapA=; b=sVX
	rug25JzLPYOcez+b2lXGyn01p6RY7v2khZw/lPn20SFbsAUyJM6bf8HC8jyvbo1LmUf4bVwpmqRDk
	mKkgKWVTziPbxdxXfIJFUaFpmumEY9rj0Ls8RCMU5TmUbdoXRG5LEqbYmJcDmlxpANC1UVkgMeT1r
	9wGsQxT49zISlYJgC4V8hdQiKFO3jRm9PWapJxOUNk+juSQaFfld+X0tm7aFdxb3FONhBvjcZRFe/
	ZAx4RmVwJSuAuFQMOS0tKJxAcQbWMjO6ag6W6zk99XjbMdKMC0Ej8TVjAC3ENZfrofORvyXsJQpjC
	0n9yUviUo0T/E5l+y1qltSFHp9/fJ8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOoOp-00067M-Ss; Wed, 15 Apr 2020 20:12:43 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOoOg-00066s-AY
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 20:12:37 +0000
Received: by mail-wm1-x341.google.com with SMTP id c195so837299wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 13:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=fvXqzMHbMJp2j4B2lInx24GEHI2N8OZM9NDxrCv9Xyc=;
 b=dtLslw7ceM0JZWnrKJqjNzgGGOmyxBG57q1zTSmgKHUPakZcr7anEilneJpoolo8Ee
 HPcAwuQprNBpXMxD7AqP7XI8FUt/t1hTwtZTdX3eDjGNAtP1S9qErvW4JT29nb8UAW0n
 jCzY6UNlkiNwXy0UA9r5m0sRsIUuRMhgOP0EZAqSRbMAgL20frPQ07HQg8RCJCZ0tot7
 ret0qwvT7lUPs9IudJuwBQgm4ijT2LRJ7N8ebitd+YVo+fXsCrHFOWgt11Cphdf8rXh+
 +H9Y4401vkKcNs8nFRXmLLg1+ZMQECKpcGOljsVh58aBYnpvKsATv3t5r8B2ukJL11EQ
 WdbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=fvXqzMHbMJp2j4B2lInx24GEHI2N8OZM9NDxrCv9Xyc=;
 b=tNucrbMTzErXllTXW3Eif3+Twb8UqHtiQNCR218o3F/hePC6aO7aadWgRxNKNcJ624
 o6OgjgDse3v2lm9IfvSGBPUFiwFLQbw9E5e74uf2hNQ1tGQKaliApZiPidmIijH/wczH
 vuoNBzzmAvMxJs4+Eg+lW2UYw1+0pw5Z/GWmiDM8F6Ky3ciU8yOPn+kvycEoS/gAjuIn
 Eqza7MuvpB7ZUOaFGtXs3hMPQd+mWqoen0Sy4nCdRZazGVBewPUHwyspQrDMQ8GInbpx
 E2bYHlSvKBjhTsrFhVRRMqOK0pLAwPjh6rDR64AghTbvXir+Y/lu11y1jhZIs+8IOACB
 9BSw==
X-Gm-Message-State: AGi0Pua8/QiRgCc+T1LMJOqygzIA2TLu4VN45O5Mp/CcWBKky7haDR0v
 WhI5NZih0rjwTkGyDBwDXlEoGA==
X-Google-Smtp-Source: APiQypLHrQERecjU6IWFmwl7YFKyLqM/PAxye+ao6jO+WXzd66KK8k3W0wD4IXNpZMAW9QIjAiDwoA==
X-Received: by 2002:a05:600c:2c47:: with SMTP id
 r7mr976048wmg.50.1586981553123; 
 Wed, 15 Apr 2020 13:12:33 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:8bee:312:6092:58f2])
 by smtp.gmail.com with ESMTPSA id f18sm789372wrq.29.2020.04.15.13.12.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 13:12:32 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org
Subject: [PATCH] dt-bindings: qcom: Add CTI options for qcom msm8916
Date: Wed, 15 Apr 2020 21:12:30 +0100
Message-Id: <20200415201230.15766-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_131234_376546_49B75F68 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mike Leach <mike.leach@linaro.org>, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds system and CPU bound CTI definitions for Qualcom msm8916 platform
(Dragonboard DB410C).
System CTIs 2-11 are omitted as no information available at present.

Tested on Linux 5.7-rc1.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 85 +++++++++++++++++++++++++--
 1 file changed, 81 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index a88a15f2352b..194d5e45f4e5 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/reset/qcom,gcc-msm8916.h>
 #include <dt-bindings/clock/qcom,rpmcc.h>
 #include <dt-bindings/thermal/thermal.h>
+#include <dt-bindings/arm/coresight-cti-dt.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -1424,7 +1425,7 @@
 			cpu = <&CPU3>;
 		};
 
-		etm@85c000 {
+		etm0: etm@85c000 {
 			compatible = "arm,coresight-etm4x", "arm,primecell";
 			reg = <0x85c000 0x1000>;
 
@@ -1443,7 +1444,7 @@
 			};
 		};
 
-		etm@85d000 {
+		etm1: etm@85d000 {
 			compatible = "arm,coresight-etm4x", "arm,primecell";
 			reg = <0x85d000 0x1000>;
 
@@ -1462,7 +1463,7 @@
 			};
 		};
 
-		etm@85e000 {
+		etm2: etm@85e000 {
 			compatible = "arm,coresight-etm4x", "arm,primecell";
 			reg = <0x85e000 0x1000>;
 
@@ -1481,7 +1482,7 @@
 			};
 		};
 
-		etm@85f000 {
+		etm3: etm@85f000 {
 			compatible = "arm,coresight-etm4x", "arm,primecell";
 			reg = <0x85f000 0x1000>;
 
@@ -1500,6 +1501,82 @@
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
