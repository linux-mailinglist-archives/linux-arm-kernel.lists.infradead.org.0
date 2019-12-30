Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3FA212D237
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 17:44:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ePfSBMB+sZbhd45J4jXB2y/QbaErIKh79BpVDXfC5hE=; b=iUxCmPnKT+DeTfuMSbf3Bsy8JK
	SrRFulYVYI2PDlX2O4MoBZftfw2ZOFDgAEOWWykJFo9CTzEiQ3Fqum+KLa9wPcK0lnuGHTv7mwKVI
	+VJjsHlM+8+LGrvfiRbl+5zqiAHl4W6JYQMCGRzujPIMJXd5GcUIiyQ9vxk2cvXmch3/8YY2PXzWS
	Aw7c6+xNgqrzj+8oWYiB+bmHRiIQRbn/miq/rrnOJTU5tbAwIcIWgbO9c3RhD332rG63Mf6FXImL4
	PcfPwEBITXkXJwN4afl4aEjNP4bO37wDj4bw/QQxwQx9bNmurAg0NY9k63z8mLoPQwwVukHPlTtrp
	ZJd505gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ily9C-0007R7-VS; Mon, 30 Dec 2019 16:44:03 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ily8R-00074Z-V2
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 16:43:17 +0000
Received: by mail-wr1-x441.google.com with SMTP id q10so33167239wrm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 08:43:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=YB3f30pJRu3JULH7XG/mWzUNFJ0TPVlsc2Y5J8rGS1s=;
 b=Ue9Dh2bNnHoL9o8EcVY3qR9lIVVycoMC1u1NtH9SFNUioxB6SkJz3IKPMgaCQ/UAkt
 0vMGRXrHWGGj2mRu9BhayYSw4X2/dkWxRAvSMi8vfzZpFyPBdLq3+Lkxlke1j/apaCN5
 3YTqtO94MKtRyOAY00LlN6rok4TvaCzWCMRjuh99uUmQmWhucbhqQ2mRUoAzIWkeFN7f
 r+GLhAcRUhSSXY51YjweNm7dFxMnIEWm+9t3t60t8PDJRJhgjEkoT3idhOoP753tQWCJ
 IfI947cQ3mzLdkwDy0YYQa39vg8GFJ8zDshhST0tF8ICm8khyPlHC5dpi4TB1lv5/rff
 1J/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=YB3f30pJRu3JULH7XG/mWzUNFJ0TPVlsc2Y5J8rGS1s=;
 b=fhZS6vq90A81T01o2YwelFLlZP7NW1s8+fvyrdgHPaqHjMKp0RAihP3Psq1lp+h4jB
 Qy5vG6QydU4t0KtdpI1NTJK4IcSFeq80gdQWxXx6uakWX9RMzoLPAbG76XRsOGa2u1TK
 kP1aODgn7KpYHwHWYQFFmAL0+EW1PIXpAqk4nrnELDL1AAgoT3qbYWBXsk94NK1nWIf/
 AopbzZ3JpA2DLUMsbbQzs3WwVbWKEAQInytjf4qaZZD04L0L28Z3dm7k6UCL9Wrd8szI
 Ti5XtqoFiEcGlpHYVr+M+Kb7vc0U6C2Zy5oQ+sUDHHSeGQ7gtdx4en4FHWS5lvomSCI6
 i16g==
X-Gm-Message-State: APjAAAVJ0ene6IVKWtB9IoGJvVkoQwbkhm9KQui6Aa2ntITbrEvjw5Ff
 yT8sGgus1t+ROtIMUjE+uJ0YSYS2ibeYLg==
X-Google-Smtp-Source: APXvYqyditLM4czt6DXltQROybhVhYPGdF3xp/LxygA3E4yhhkZTRYqMwvzcOg1NkjI3oh5TgzYlTg==
X-Received: by 2002:adf:f58a:: with SMTP id f10mr70947710wro.105.1577724193953; 
 Mon, 30 Dec 2019 08:43:13 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:a1cf:b00b:5683:ed40])
 by smtp.gmail.com with ESMTPSA id g25sm344901wmh.3.2019.12.30.08.43.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 08:43:13 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 coresight@lists.linaro.org
Subject: [PATCH v7 10/15] dt-bindings: qcom: Add CTI options for qcom msm8916
Date: Mon, 30 Dec 2019 16:43:06 +0000
Message-Id: <20191230164306.28259-2-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191230164306.28259-1-mike.leach@linaro.org>
References: <20191230164306.28259-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_084316_011110_86E91AAC 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: lorenzo.pieralisi@arm.com, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com, linux-arm-msm@vger.kernel.org, liviu.dudau@arm.com,
 agross@kernel.org, robh+dt@kernel.org, maxime@cerno.tech, sudeep.holla@arm.com,
 Mike Leach <mike.leach@linaro.org>
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
