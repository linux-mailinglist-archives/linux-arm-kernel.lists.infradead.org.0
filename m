Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD7712D239
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 17:44:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=q3/CIzVpqjmAlZhfF/0qsAmXoGlPvSrP4XneIr+7FD8=; b=NyXI3Mo/TlqBTloFr6tEczjvrU
	2EcslBgrQWC6QkvlcdHYOMaYrUXKCl/opVoq/nAZl335aoJiLWPxHpv4wQKa56QpLpwD4ZCzKY1bs
	s5N5M6sy6aaKB7salnq0PkZCLWi7W0JIV1ByHcZlQWD6o8NG3KsyMADxZ3wFaqHge23JeGx1CstDK
	f6ibeMVzvUGT/0hlmxMkkQo7orCNA3JOvH2ra/KXWYkZYiZPyad2xVbD476IY2uhNBiPxTELTCQmd
	mn8kaCOzWFwuJGXslvYpD9HWb7sDVHagVuFLgig0L8LzUFYsxrxfTykE+Y7lXURnu+MXa9D0MxH7q
	91GIVRYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ily9n-0007za-Ry; Mon, 30 Dec 2019 16:44:39 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ily8y-0007UH-RX
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 16:43:55 +0000
Received: by mail-wr1-x441.google.com with SMTP id b6so33219105wrq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 08:43:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=BucIs76BJlau9NCsGrtA8TwA9hcR+pRMGii5xstBwn8=;
 b=SBzZ0rDZRjiKBsb2L/NpX+zIZ1gIR5WsGJdHWgR0Or+ZErpG5vx0saPuQCq2dF7Y5r
 UmjrJarGEPj+GT5o/z9Jq6OFGg9WRY/8qzrTxIDzwWi6bVGLVZDdZSdjBpOlKx13JHxd
 wLH3pptL74jNCfSy+FDsi2YSMXwCuDAnWvdVAHC4jAQl0Q1cHAUAXk4Pgxb3oDik8VTR
 J2ad3GoGnPCrI4tR4bfELh9X06NhXvNDQ7c7TGt/uCKyeFi2cH1MdoV6sKTswfBnfAWF
 5/n3YPjt5fbb1XiAN3slTk5NlHoA7Rc5NMt76N6zbDNB+We1AUI8hS58f8kR7/CdR1eE
 A0pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=BucIs76BJlau9NCsGrtA8TwA9hcR+pRMGii5xstBwn8=;
 b=RjiCygd3q3H21yscLimifJjKnPcEUp3YaAKa7x3aGGTsElQ+CoJ9Xk1DQDN00jqWLp
 UL3y6QOuUEo5IcQO/xa0Et7poF0o2zTnmgLMbseFXA3LIVawFV/OyCs7W66yVAvMexJl
 pjGRp/kfR6k3zhAKZqpo6sVFgLPAetnuSxRhaUQUOhCGyt2QeNF/ubspq9DKaxP/6qJh
 Tb6tpguWwQn7+5rsm1ogJdMjK4HKYqPqgewrKbyErGy9ZLFCQYIV26wy2mp0Q6keo+SJ
 kxYdYf1OOlay1rVICn7HcUkOO9zJF0oss+jLy8dBLNq7GS6lemSf2DGzgTjF8xaLd+yi
 dIrg==
X-Gm-Message-State: APjAAAVCZhseAEWxrmBWEUJnbgSE8P+JobEeNkekcQeTMog/wio70ndT
 fFv3euaTC5u+rNQT+jkjDzs59J3X+cgIuA==
X-Google-Smtp-Source: APXvYqxsnvEw9WLsPaciInH5I+ri43dDgiWBaydmGgYdjUWTk+gcvQO8oEURiJMLKo3qtystWutxpQ==
X-Received: by 2002:a5d:6a0f:: with SMTP id m15mr67691513wru.40.1577724227316; 
 Mon, 30 Dec 2019 08:43:47 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:a1cf:b00b:5683:ed40])
 by smtp.gmail.com with ESMTPSA id g2sm45691586wrw.76.2019.12.30.08.43.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 08:43:46 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 coresight@lists.linaro.org
Subject: [PATCH v7 12/15] dt-bindings: hisilicon: Add CTI bindings for hi-6220
Date: Mon, 30 Dec 2019 16:43:40 +0000
Message-Id: <20191230164340.28317-2-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191230164340.28317-1-mike.leach@linaro.org>
References: <20191230164340.28317-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_084348_960270_FFABC14C 
X-CRM114-Status: GOOD (  11.63  )
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
