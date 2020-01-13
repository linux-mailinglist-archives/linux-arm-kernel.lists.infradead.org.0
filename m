Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B501139BB5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 22:36:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=q3/CIzVpqjmAlZhfF/0qsAmXoGlPvSrP4XneIr+7FD8=; b=m0PWPNslTePyORT/u1eyJvJNFm
	xn5NcaHTP4NycV5e1IgTxY6M3oSU1noHhsrcsy8zmFS6IkvxpQDVKGV0kpRnqQkRvpwtbIULIiimf
	HMrT+2phNxoRMucuYkmq1SQTjPEjDIZK/uBrgyJ341U1mvMhLFW+t/YUm9Pv99GxIYLQFjogoIaco
	IRCCNYbxxdBqaGfpD7VeIrDn1VKEQDhSVNQJPeHxuCQW82a4E+IXJrFWBrQuhhp+4bIlgZHCvNbe7
	5j36VrI64IVfThmkecgJ1/3TGPQOjRVKtgxVgUZXDAgbAFqszGOAG6fBtp1FKg9bmqPr+G6RZz0m+
	NY4CmVPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir7Nh-0008BG-Bs; Mon, 13 Jan 2020 21:36:17 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir7Jv-00045d-Oq
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 21:32:27 +0000
Received: by mail-wr1-x444.google.com with SMTP id q6so10128480wro.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 13:32:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=BucIs76BJlau9NCsGrtA8TwA9hcR+pRMGii5xstBwn8=;
 b=nzJZGU4lztAZDwPVsk+WiDASq5HW9jkXX7lAaUt95AYAj3SQ3UWvJyV1lHulyG/agD
 oW8EPv3FEn8q+N83l7WeT7Vzgva4wbtSYta4o+1Pnc+MzqbPI3xTRWD9zOGMFn8n+/BL
 a9urR5ei93hbbtw/KyvPHn2vwqEnm+6NfwPEzl6gw0qTlsalBRLoKm6qstAlNQHsv4NJ
 tolLXHSZonMNVh/HF4nPs9pgxzhCWSllrUoBcqPVltzZ6zreuGaRUzwihyD80aWwiP6c
 Q2YKKQiwYnfhJCnj9AhTXobGNI+pXtd7iAia2zRxegnzRvyipnNjoWecxxQh2zKFQQSv
 7PhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=BucIs76BJlau9NCsGrtA8TwA9hcR+pRMGii5xstBwn8=;
 b=fmGQ+gL5ifPAnXpXI9ITQmS3tCnj9a+D8SqOffSae6vLUZrtoqkgrUSjWDsDG2LfSB
 1FYBixxt/umie4MEWvYF+mzm2L4kA7umMevYxaFEbVU9WuMF/kPEO1CSZad7rMUHz39N
 7WBPIS2j2XZGRZMkztjuuK2Fl+kBCVajXesTuTxzUs5NZKnxRAaBJRTTkxKL81ELPUJ0
 lBjUBrnKCwXt3yQSIHK9LJs8Mr0VTZlzkJnYV335brOXp/yey1BWadJBsKZjhY4nxHLL
 /NBkLOCybZf8TSTVcj8nF1eoWFv9CUGFQZNo8w6q2dT9MsQTBS/El7uCbZ9HjMBJIB8I
 qu3g==
X-Gm-Message-State: APjAAAXKTu1f2EByS+oiBIjIgLeqIIJSWrDfcGxVddGHG5EQ/g5hLcZ9
 jSZ6PYPIHgXjZ35WUNNtT9uoyg==
X-Google-Smtp-Source: APXvYqy+sik1nZt/lUJljMtOLRMqFyLGmPFA4pBNBw816bs9QWipTWoImmK/tI9sKx8eShyRkh7+RA==
X-Received: by 2002:a5d:438c:: with SMTP id i12mr21255290wrq.196.1578951142406; 
 Mon, 13 Jan 2020 13:32:22 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:a1cf:b00b:5683:ed40])
 by smtp.gmail.com with ESMTPSA id j12sm16725120wrt.55.2020.01.13.13.32.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 13:32:21 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v8 12/15] dt-bindings: hisilicon: Add CTI bindings for hi-6220
Date: Mon, 13 Jan 2020 21:31:46 +0000
Message-Id: <20200113213149.25599-13-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200113213149.25599-1-mike.leach@linaro.org>
References: <20200113213149.25599-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_133223_939905_C6ADD740 
X-CRM114-Status: GOOD (  11.42  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 suzuki.poulose@arm.com, linux-arm-msm@vger.kernel.org, corbet@lwn.net,
 liviu.dudau@arm.com, agross@kernel.org, robh+dt@kernel.org, maxime@cerno.tech,
 sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds in CTI device tree information for the Hikey620 board.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Tested-by: Leo Yan <leo.yan@linaro.org>
---
 .../boot/dts/hisilicon/hi6220-coresight.dtsi  | 130 ++++++++++++++++--
 1 file changed, 122 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi b/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi
index 651771a73ed6..27f067e87601 100644
--- a/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi
@@ -213,7 +213,7 @@
 			};
 		};
 
-		etm@f659c000 {
+		etm0: etm@f659c000 {
 			compatible = "arm,coresight-etm4x", "arm,primecell";
 			reg = <0 0xf659c000 0 0x1000>;
 
@@ -232,7 +232,7 @@
 			};
 		};
 
-		etm@f659d000 {
+		etm1: etm@f659d000 {
 			compatible = "arm,coresight-etm4x", "arm,primecell";
 			reg = <0 0xf659d000 0 0x1000>;
 
@@ -251,7 +251,7 @@
 			};
 		};
 
-		etm@f659e000 {
+		etm2: etm@f659e000 {
 			compatible = "arm,coresight-etm4x", "arm,primecell";
 			reg = <0 0xf659e000 0 0x1000>;
 
@@ -270,7 +270,7 @@
 			};
 		};
 
-		etm@f659f000 {
+		etm3: etm@f659f000 {
 			compatible = "arm,coresight-etm4x", "arm,primecell";
 			reg = <0 0xf659f000 0 0x1000>;
 
@@ -289,7 +289,7 @@
 			};
 		};
 
-		etm@f65dc000 {
+		etm4: etm@f65dc000 {
 			compatible = "arm,coresight-etm4x", "arm,primecell";
 			reg = <0 0xf65dc000 0 0x1000>;
 
@@ -308,7 +308,7 @@
 			};
 		};
 
-		etm@f65dd000 {
+		etm5: etm@f65dd000 {
 			compatible = "arm,coresight-etm4x", "arm,primecell";
 			reg = <0 0xf65dd000 0 0x1000>;
 
@@ -327,7 +327,7 @@
 			};
 		};
 
-		etm@f65de000 {
+		etm6: etm@f65de000 {
 			compatible = "arm,coresight-etm4x", "arm,primecell";
 			reg = <0 0xf65de000 0 0x1000>;
 
@@ -346,7 +346,7 @@
 			};
 		};
 
-		etm@f65df000 {
+		etm7: etm@f65df000 {
 			compatible = "arm,coresight-etm4x", "arm,primecell";
 			reg = <0 0xf65df000 0 0x1000>;
 
@@ -364,5 +364,119 @@
 				};
 			};
 		};
+
+		/* System CTIs */
+		/* CTI 0 - TMC and TPIU connections */
+		cti@f6403000 {
+			compatible = "arm,coresight-cti", "arm,primecell";
+			reg = <0 0xf6403000 0 0x1000>;
+
+			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
+			clock-names = "apb_pclk";
+		};
+
+		/* CTI - CPU-0 */
+		cti@f6598000 {
+			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
+				     "arm,primecell";
+			reg = <0 0xf6598000 0 0x1000>;
+
+			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
+			clock-names = "apb_pclk";
+
+			cpu = <&cpu0>;
+			arm,cs-dev-assoc = <&etm0>;
+		};
+
+		/* CTI - CPU-1 */
+		cti@f6599000 {
+			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
+				     "arm,primecell";
+			reg = <0 0xf6599000 0 0x1000>;
+
+			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
+			clock-names = "apb_pclk";
+
+			cpu = <&cpu1>;
+			arm,cs-dev-assoc = <&etm1>;
+		};
+
+		/* CTI - CPU-2 */
+		cti@f659a000 {
+			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
+				     "arm,primecell";
+			reg = <0 0xf659a000 0 0x1000>;
+
+			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
+			clock-names = "apb_pclk";
+
+			cpu = <&cpu2>;
+			arm,cs-dev-assoc = <&etm2>;
+		};
+
+		/* CTI - CPU-3 */
+		cti@f659b000 {
+			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
+				     "arm,primecell";
+			reg = <0 0xf659b000 0 0x1000>;
+
+			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
+			clock-names = "apb_pclk";
+
+			cpu = <&cpu3>;
+			arm,cs-dev-assoc = <&etm3>;
+		};
+
+		/* CTI - CPU-4 */
+		cti@f65d8000 {
+			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
+				     "arm,primecell";
+			reg = <0 0xf65d8000 0 0x1000>;
+
+			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
+			clock-names = "apb_pclk";
+
+			cpu = <&cpu4>;
+			arm,cs-dev-assoc = <&etm4>;
+		};
+
+		/* CTI - CPU-5 */
+		cti@f65d9000 {
+			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
+				     "arm,primecell";
+			reg = <0 0xf65d9000 0 0x1000>;
+
+			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
+			clock-names = "apb_pclk";
+
+			cpu = <&cpu5>;
+			arm,cs-dev-assoc = <&etm5>;
+		};
+
+		/* CTI - CPU-6 */
+		cti@f65da000 {
+			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
+				     "arm,primecell";
+			reg = <0 0xf65da000 0 0x1000>;
+
+			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
+			clock-names = "apb_pclk";
+
+			cpu = <&cpu6>;
+			arm,cs-dev-assoc = <&etm6>;
+		};
+
+		/* CTI - CPU-7 */
+		cti@f65db000 {
+			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
+				     "arm,primecell";
+			reg = <0 0xf65db000 0 0x1000>;
+
+			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
+			clock-names = "apb_pclk";
+
+			cpu = <&cpu7>;
+			arm,cs-dev-assoc = <&etm7>;
+		};
 	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
