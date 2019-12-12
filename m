Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 855BB11D002
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 15:38:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9gS2o2a8kvbyeCkSNClbdcHRJzHQ3m9rr+rtnGvc3jU=; b=cFeWOhWsH+C6Td
	OkqiqWSbWmM1hx1/H4t0ZOXOBIy1juB6v8SLEL9lE20AEjR0hfFVpiy+2p9ntu1IPY+kKuxR+BfOO
	BqkJF5UrmSF0UqGpF2WRIWdtlHSOZ36YBx7GgeDsugld0tFR3kOD23dxiOT4/xBINE/lG7Pm+ogLu
	PX4sV/8roMyl7s9FYw/ysjWmY4OMOCeWQ4t2Q0iaqH9CO92f4s6x6dVWVoHJvEbi9aR9Sdclw3ehG
	hVjVfmBeRBbuRY9HM1KrFZ+4FaEBje1U7HqQN0tUV34J7PJqG56ROLsapgw51nowmnSbphNgYegJK
	JbcKKs6wdQrcyX1ZaapA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifPby-0005ZF-JH; Thu, 12 Dec 2019 14:38:38 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifPbo-0005Yo-Aw
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 14:38:29 +0000
Received: by mail-wm1-x341.google.com with SMTP id f4so3765260wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 06:38:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IRa2P15JWd6yJ1hNkD7pnHDIq7rswcnHahGMVU4CTFI=;
 b=zZDTXj50NJUYtsoJMVI4UBnkdOFa/BR1tjfzRVP2m/vjyLczlalfh9zilxZiXOJchN
 S7FiGfMBixLntjrFudYTUMd+wH1WVS4IIIa6x6trOnG70K3pxITkpuUm50udmAK8EFem
 +uq2d5RP2FbE6f3pCaevkLQ+ZFnLDsQnT3MY/aFcRglYeTmuQO1Q5K6+jKgJhFOIvzap
 cesJOxuJExEp+W9/JQQDDzd3EHhI2FWkrhZ8kThLsgEPYagfpHb9HMAvVkDeroHbOYPD
 HzaaJS5Qmcm3ZW+IyNUdQZcG86gcN6ocJQxmoumdvbUWgIUzRFYIahPhmq2G56Cg8b7F
 JzSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=IRa2P15JWd6yJ1hNkD7pnHDIq7rswcnHahGMVU4CTFI=;
 b=RKUYp+Rwebw/pvcADRWoY+GpCOCC6e8yBpA9qeAXr4ATTTivmkjHE9d6OTrVbdgpc/
 eqWcoDZb/T50bfGqvd3OF/HSpLA72MMnxV52rKEFPSjH6wEmfOFKsFf/hU749Y6HUSZc
 asB4UiL5pmwmRxfSMG84r8bTfXNPJqFON4qJd5EJSwLtLTzNWqTpvGifX6mofTbK0qEz
 f4QIRn4VGbcXHpI4B7hjurpFEYb8J1RXv5FPk16PRSbfDwajsN+8NMqhZJM+cFrH/EXd
 ZdrFNjg+pkow866v9JdIkAbBEs83sX3wP3bALjpKtEx3qTnS91BfWtpyZNhMLK9yho11
 DRwg==
X-Gm-Message-State: APjAAAWhXuwJ3GxP7xSznpCsL/rZzMysql1lB16jmFSZBe+l6AMX+K9T
 l8WjHq3o4D7DaQ8apriZ9tw+MQ==
X-Google-Smtp-Source: APXvYqziK1VPELmI60zIYS1D+M1NyY1LFCBCZDlsW/ln/D5k+VAz/+wP+s++KRHeq9efGtLkL1EslQ==
X-Received: by 2002:a1c:9d8b:: with SMTP id g133mr6774930wme.27.1576161502689; 
 Thu, 12 Dec 2019 06:38:22 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id x6sm6781798wmi.44.2019.12.12.06.38.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 12 Dec 2019 06:38:22 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com
Subject: [PATCH v2] ARM: dts: zynq: enablement of coresight topology
Date: Thu, 12 Dec 2019 15:38:20 +0100
Message-Id: <882627bc1ecd622355fb72b742b4e3c013d0b1ca.1576161496.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_063828_424837_1C19999D 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Zumeng Chen <zumeng.chen@windriver.com>, Rob Herring <robh+dt@kernel.org>,
 Quanyang Wang <quanyang.wang@windriver.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Zumeng Chen <zumeng.chen@windriver.com>

This patch is to build the coresight topology structure of zynq-7000
series according to the docs of coresight and userguide of zynq-7000.

Signed-off-by: Zumeng Chen <zumeng.chen@windriver.com>
Signed-off-by: Quanyang Wang <quanyang.wang@windriver.com>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2:
- Remove slava-mode from replicator in-ports
- Remove ITM completely

 arch/arm/boot/dts/zynq-7000.dtsi | 135 +++++++++++++++++++++++++++++++
 1 file changed, 135 insertions(+)

diff --git a/arch/arm/boot/dts/zynq-7000.dtsi b/arch/arm/boot/dts/zynq-7000.dtsi
index ca6425ad794c..db3899b07992 100644
--- a/arch/arm/boot/dts/zynq-7000.dtsi
+++ b/arch/arm/boot/dts/zynq-7000.dtsi
@@ -59,6 +59,39 @@ regulator_vccpint: fixedregulator {
 		regulator-always-on;
 	};
 
+	replicator {
+		compatible = "arm,coresight-static-replicator";
+		clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
+		clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
+
+		out-ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			/* replicator output ports */
+			port@0 {
+				reg = <0>;
+				replicator_out_port0: endpoint {
+					remote-endpoint = <&tpiu_in_port>;
+				};
+			};
+			port@1 {
+				reg = <1>;
+				replicator_out_port1: endpoint {
+					remote-endpoint = <&etb_in_port>;
+				};
+			};
+		};
+		in-ports {
+			/* replicator input port */
+			port {
+				replicator_in_port0: endpoint {
+					remote-endpoint = <&funnel_out_port>;
+				};
+			};
+		};
+	};
+
 	amba: amba {
 		compatible = "simple-bus";
 		#address-cells = <1>;
@@ -365,5 +398,107 @@ watchdog0: watchdog@f8005000 {
 			reg = <0xf8005000 0x1000>;
 			timeout-sec = <10>;
 		};
+
+		etb@f8801000 {
+			compatible = "arm,coresight-etb10", "arm,primecell";
+			reg = <0xf8801000 0x1000>;
+			clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
+			clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
+			in-ports {
+				port {
+					etb_in_port: endpoint {
+						remote-endpoint = <&replicator_out_port1>;
+					};
+				};
+			};
+		};
+
+		tpiu@f8803000 {
+			compatible = "arm,coresight-tpiu", "arm,primecell";
+			reg = <0xf8803000 0x1000>;
+			clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
+			clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
+			in-ports {
+				port {
+					tpiu_in_port: endpoint {
+						remote-endpoint = <&replicator_out_port0>;
+					};
+				};
+			};
+		};
+
+		funnel@f8804000 {
+			compatible = "arm,coresight-static-funnel", "arm,primecell";
+			reg = <0xf8804000 0x1000>;
+			clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
+			clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
+
+			/* funnel output ports */
+			out-ports {
+				port {
+					funnel_out_port: endpoint {
+						remote-endpoint =
+							<&replicator_in_port0>;
+					};
+				};
+			};
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				/* funnel input ports */
+				port@0 {
+					reg = <0>;
+					funnel0_in_port0: endpoint {
+						remote-endpoint = <&ptm0_out_port>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					funnel0_in_port1: endpoint {
+						remote-endpoint = <&ptm1_out_port>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+					funnel0_in_port2: endpoint {
+					};
+				};
+				/* The other input ports are not connect to anything */
+			};
+		};
+
+		ptm@f889c000 {
+			compatible = "arm,coresight-etm3x", "arm,primecell";
+			reg = <0xf889c000 0x1000>;
+			clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
+			clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
+			cpu = <&cpu0>;
+			out-ports {
+				port {
+					ptm0_out_port: endpoint {
+						remote-endpoint = <&funnel0_in_port0>;
+					};
+				};
+			};
+		};
+
+		ptm@f889d000 {
+			compatible = "arm,coresight-etm3x", "arm,primecell";
+			reg = <0xf889d000 0x1000>;
+			clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
+			clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
+			cpu = <&cpu1>;
+			out-ports {
+				port {
+					ptm1_out_port: endpoint {
+						remote-endpoint = <&funnel0_in_port1>;
+					};
+				};
+			};
+		};
 	};
 };
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
