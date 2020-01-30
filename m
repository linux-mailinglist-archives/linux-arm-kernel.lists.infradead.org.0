Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3500D14DDF8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 16:37:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=btGMsnTQhyD+8tV4GHi5UKv3fkYb5F6UR1hRO96nSrw=; b=NjpxW0GjzEmIJo
	A2UH6EnH5ZV/aHfWNivbFRkpoRMGt4Fzmm4sGqTA/O+XzvAN181hAVDbAKVBFbpdx1Frb42JYxsSG
	RfbZ9e8/NQhvr2JqPnFG2V1Oof+g6atD1ByREp3BmvQ+J+C/iZG6buwC+PMcKyj5eltaYDsXL7G1f
	RQZL2w5OlKes4VaDLXE4wuSKsKD73ELy70+iBDQyfb7j7KOZst8DT8qllLTuwImA724BeWJ+gpGHs
	2aPBIUjrCUj0GA0iJDqNP9fIuR8LElp4VBCHtSLYKnS+qD21uILnsXMIrmGW/cCkcpPRIG/T8azqW
	w+f8eZj6qgTr7AaOV0aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixBsK-00046j-3v; Thu, 30 Jan 2020 15:37:00 +0000
Received: from mail-am6eur05on2060f.outbound.protection.outlook.com
 ([2a01:111:f400:7e1b::60f]
 helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixBrr-0003wb-Ft
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 15:36:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kkF/NvLrADUZeXFzfO+GKDz5+i/S/yp2/jghbiAIUi4tRXDlDC+8WRu+c7zvwIIj08ibuK6/DLY03pTBNMwsk1lTEixNXqAhAG+20ODdM28uvJIOKnoUrS6GKDxinVolCf/35bJOKgZR5asi7tuP1WwoE1QLx9buZMTTIDXdJmKbOOM8ngJ2ToTIjRNg5p4fEH6EqPF3jK5rX2TMB8qc42hI6ljARhNRnL/BYjpVZUREg4tNFmY8eVWWd36VseN9KJCqelAFmL4/t1cZ2f89Oudn+6i5Trneu5KiNRDEgG9DzUOEqBCa4yspe2HRmZHSN+t+HPmVWW6RGZJp3GpGkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0ypikQ1bnwzbz5mWnotWBAqRB0S+lYzRFoEQhEZwnGw=;
 b=QNc7OtLI8M9oAU4ZUoq3CLhYudomBMrz2xJ3Be/m8CdXMOM9uyJCTdzPM5Sr04R0vTfpcnUi6kcYLXoSwVE6W07cBS9aTeFOdBn+yfLwMHVccuzzU5F8pGKVKBJMUUviB2dLUpSxiK94CPh11VGgrf17rHBjHcP5Ij0jQ/zTu9EVD/79oQNEtHFDkRAZdJhJA3iKawps/sTC2OuXz5ZtBDseGfkqfe951W20ocAV/J4l9V1Ue4EiQB6dzASDFSnvgo242KCIucVYFd+udNAK65MpbNZQWwm7DkuOAKW/PFnYtmfsG5blF6Iy/2u+1GRxEYzVkKpLlej+bvKqlMC4hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=n7space.com; dmarc=pass action=none header.from=n7space.com;
 dkim=pass header.d=n7space.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=n7space.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0ypikQ1bnwzbz5mWnotWBAqRB0S+lYzRFoEQhEZwnGw=;
 b=Rw6/+2+hcXfnjdt26yrWk0XNJLtnOuj03Wb71DArKCqJCSavDFQrv/Ly2kPYY8PUDad+DxkyXXqAuP++L8Xj/Qyn099QjKlAszDVUXYJcwwRuMG+u0HnuQ8nDyuPXgARYhuU7AHPA8fbNM35Gm/5uPKEA0pMSaWp3r61FaspB3I=
Received: from AM0PR03MB3651.eurprd03.prod.outlook.com (52.134.80.160) by
 AM0PR03MB4610.eurprd03.prod.outlook.com (20.177.40.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Thu, 30 Jan 2020 15:36:27 +0000
Received: from AM0PR03MB3651.eurprd03.prod.outlook.com
 ([fe80::f0ed:9987:f93f:76d3]) by AM0PR03MB3651.eurprd03.prod.outlook.com
 ([fe80::f0ed:9987:f93f:76d3%7]) with mapi id 15.20.2686.025; Thu, 30 Jan 2020
 15:36:27 +0000
Received: from arm-deb9.n7space.com (85.232.243.86) by
 AM0PR0402CA0031.eurprd04.prod.outlook.com (2603:10a6:208:15::44) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2665.20 via Frontend
 Transport; Thu, 30 Jan 2020 15:36:26 +0000
From: =?iso-8859-2?Q?Wojciech_=AFmuda?= <wzmuda@n7space.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "coresight@lists.linaro.org"
 <coresight@lists.linaro.org>
Subject: [PATCH 1/1] arm64: zynqmp: Add CoreSight components
Thread-Topic: [PATCH 1/1] arm64: zynqmp: Add CoreSight components
Thread-Index: AQHV14MJZb3vn0JX0kKRRyn8jGwhwg==
Date: Thu, 30 Jan 2020 15:36:27 +0000
Message-ID: <20200130153613.20365-2-wzmuda@n7space.com>
References: <20200130153613.20365-1-wzmuda@n7space.com>
In-Reply-To: <20200130153613.20365-1-wzmuda@n7space.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0402CA0031.eurprd04.prod.outlook.com
 (2603:10a6:208:15::44) To AM0PR03MB3651.eurprd03.prod.outlook.com
 (2603:10a6:208:42::32)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=wzmuda@n7space.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.11.0
x-originating-ip: [85.232.243.86]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e582a2f8-fbb1-4f66-b025-08d7a59a2b84
x-ms-traffictypediagnostic: AM0PR03MB4610:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR03MB4610AACDF78F5CBAB6C074EC98040@AM0PR03MB4610.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 02981BE340
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39830400003)(136003)(396003)(366004)(376002)(346002)(189003)(199004)(316002)(1076003)(54906003)(2906002)(110136005)(7416002)(4326008)(508600001)(2616005)(6486002)(956004)(86362001)(66476007)(71200400001)(16526019)(7696005)(52116002)(8676002)(26005)(5660300002)(81166006)(81156014)(186003)(36756003)(8936002)(66946007)(66556008)(66446008)(64756008)(107886003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR03MB4610;
 H:AM0PR03MB3651.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: n7space.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kaRguywCKJtvqFiv6aYNfes0LNKEdCr5c+IpjIiS7p2I0MG8TzDMlCDR/ZMLcPTtd2+1CLMccijmbQg3eltSmvS1JD/WQF6rZnQ/AGhWP6Qo01IYOeyUlE3XI1HH6QWdce1egCE1yJn6W1z9Ym3YsfYaMmYH8fekHRv9kuIJFtp0AwPId5O0cQ029G70YHz2gAJVPOktuR+54r1zryH1CW2IEzEZR6SyXTWJgqMJelHkTZH3IWABqFe0hEkRPFk4oJ1T2E75YTGSth/7dECrpcFNtbL51D3EPW13b88HbCmiJ/uWLy6rCxLuW8KJRPcepllJlmiV36LOJN6bbFKPstGmhNchqHxt9jLHM4C5wgfloSPY16yT0XWYzCu7tcs6xhcyP61GBJk8aD5KATEPf+SizBeJ4+iBIpYmEjzuX+uPCGlNTRg7mN1Jloe4de3c
x-ms-exchange-antispam-messagedata: +UHIRO6krTjF798KN0t5akhQNvQoiiKtWuU18NRzp8Han2FSYXmI2WUXPzKlwOykFoyIhC4XN0/1IPoHC38cjPj3uopgcEpRERA77mEBf9FvLBOH7wGjoegBEybMMyWBQwlK5FBQtEJ8Qk1iLlojyA==
MIME-Version: 1.0
X-OriginatorOrg: n7space.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e582a2f8-fbb1-4f66-b025-08d7a59a2b84
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2020 15:36:27.1446 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5938c8fc-39b0-401e-a174-4e3ffe97d69d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oboDXoRioocURD1BZUw9oA/Tj21L8lmhMkFKuUdXP5NPbXxlfeuoMvr48LOLlDcvQ9PJAIpdXsBnXG0ShVVHdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR03MB4610
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_073631_528801_934083C5 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "mathieu.poirier@linaro.org" <mathieu.poirier@linaro.org>,
 "rajan.vaja@xilinx.com" <rajan.vaja@xilinx.com>,
 Michal Mosdorf <mmosdorf@n7space.com>,
 "antoine.tenart@bootlin.com" <antoine.tenart@bootlin.com>,
 "nava.manne@xilinx.com" <nava.manne@xilinx.com>,
 "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
 "m.tretter@pengutronix.de" <m.tretter@pengutronix.de>,
 "t-kristo@ti.com" <t-kristo@ti.com>, Krzysztof Pilch <kpilch@n7space.com>,
 =?iso-8859-2?Q?Wojciech_=AFmuda?= <wzmuda@n7space.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 =?iso-8859-2?Q?Micha=B3_Kurowski?= <mkurowski@n7space.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wojciech Zmuda <wzmuda@n7space.com>

Add nodes for the following CoreSight components:
 - ETMs for A53 cores
 - debug components for A53 cores
 - funnel gathering outputs from A53 ETMs and SoC-wide funnels
 - the only replicator
 - all TMCs: 4k ETF, 8k ETF and ETR
 - TPIU

Signed-off-by: Wojciech Zmuda <wzmuda@n7space.com>
---
 arch/arm64/boot/dts/xilinx/zynqmp-coresight.dtsi | 272 +++++++++++++++++++++++
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi           |   2 +
 2 files changed, 274 insertions(+)
 create mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-coresight.dtsi

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-coresight.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp-coresight.dtsi
new file mode 100644
index 000000000000..8b7579ad89cc
--- /dev/null
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-coresight.dtsi
@@ -0,0 +1,272 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+/*
+ * dtsi for Xilinx Ultrascale+ MPSoC CoreSight components
+ *
+ * Copyright (C) 2019-2020 N7 Space Sp. z o.o.
+ *
+ * Author: Wojciech Zmuda <wzmuda@n7space.com>
+ *
+ */
+/ {
+	etm0@fec40000 {
+		compatible = "arm,coresight-etm4x", "arm,primecell";
+		reg = <0 0xfec40000 0 0x1000>;
+		cpu = <&cpu0>;
+		clocks = <&clk100>;
+		clock-names = "apb_pclk";
+		out-ports {
+			port {
+				etm0_out_port: endpoint {
+					remote-endpoint = <&funnel1_in_port0>;
+				};
+			};
+		};
+	};
+
+	etm1@fed40000 {
+		compatible = "arm,coresight-etm4x", "arm,primecell";
+		reg = <0 0xfed40000 0 0x1000>;
+		cpu = <&cpu1>;
+		clocks = <&clk100>;
+		clock-names = "apb_pclk";
+		out-ports {
+			port {
+				etm1_out_port: endpoint {
+					remote-endpoint = <&funnel1_in_port1>;
+				};
+			};
+		};
+	};
+
+	etm2@fee40000 {
+		compatible = "arm,coresight-etm4x", "arm,primecell";
+		reg = <0 0xfee40000 0 0x1000>;
+		cpu = <&cpu2>;
+		clocks = <&clk100>;
+		clock-names = "apb_pclk";
+		out-ports {
+			port {
+				etm2_out_port: endpoint {
+					remote-endpoint = <&funnel1_in_port2>;
+				};
+			};
+		};
+	};
+
+	etm3@fef40000 {
+		compatible = "arm,coresight-etm4x", "arm,primecell";
+		reg = <0 0xfef40000 0 0x1000>;
+		cpu = <&cpu3>;
+		clocks = <&clk100>;
+		clock-names = "apb_pclk";
+		out-ports {
+			port {
+				etm3_out_port: endpoint {
+					remote-endpoint = <&funnel1_in_port3>;
+				};
+			};
+		};
+	};
+
+	debug0@fec10000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfec10000 0 0x1000>;
+		cpu = <&cpu0>;
+		clocks = <&clk100>;
+		clock-names = "apb_pclk";
+	};
+
+	debug1@fed10000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfed10000 0 0x1000>;
+		cpu = <&cpu1>;
+		clocks = <&clk100>;
+		clock-names = "apb_pclk";
+	};
+
+	debug2@fee10000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfee10000 0 0x1000>;
+		cpu = <&cpu2>;
+		clocks = <&clk100>;
+		clock-names = "apb_pclk";
+	};
+
+	debug3@fee10000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfef10000 0 0x1000>;
+		cpu = <&cpu3>;
+		clocks = <&clk100>;
+		clock-names = "apb_pclk";
+	};
+
+	funnel1@fe920000 {
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+		reg = <0 0xfe920000 0 0x1000>;
+		clocks = <&clk100>;
+		clock-names = "apb_pclk";
+		in-ports {
+			#address-cells = <0x1>;
+			#size-cells = <0x0>;
+			port@0 {
+				reg = <0x0>;
+				funnel1_in_port0: endpoint {
+					remote-endpoint = <&etm0_out_port>;
+				};
+			};
+			port@1 {
+				reg = <0x1>;
+				funnel1_in_port1: endpoint {
+					remote-endpoint = <&etm1_out_port>;
+				};
+			};
+			port@2 {
+				reg = <0x2>;
+				funnel1_in_port2: endpoint {
+					remote-endpoint = <&etm2_out_port>;
+				};
+			};
+			port@3 {
+				reg = <0x3>;
+				funnel1_in_port3: endpoint {
+					remote-endpoint = <&etm3_out_port>;
+				};
+			};
+		};
+		out-ports {
+			port {
+				funnel1_out_port0: endpoint {
+					remote-endpoint = <&etf1_in_port>;
+				};
+			};
+		};
+	};
+
+	funnel2@fe930000 {
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+		reg = <0 0xfe930000 0 0x1000>;
+		clocks = <&clk100>;
+		clock-names = "apb_pclk";
+		in-ports {
+			#address-cells = <0x1>;
+			#size-cells = <0x0>;
+			port@2 {
+				reg = <0x2>;
+				funnel2_in_port2: endpoint {
+					remote-endpoint = <&etf1_out_port>;
+				};
+			};
+			// Funnel2 has another input port connected to
+			// funnel0's output. Funnel0 gathers Cortex-R5 ETMs.
+		};
+		out-ports {
+			port {
+				funnel2_out_port0: endpoint {
+					remote-endpoint = <&etf2_in_port>;
+				};
+			};
+		};
+	};
+
+	etf1@fe940000 {
+		compatible = "arm,coresight-tmc", "arm,primecell";
+		reg = <0 0xfe940000 0 0x1000>;
+		clocks = <&clk100>;
+		clock-names = "apb_pclk";
+		in-ports {
+			port {
+				etf1_in_port: endpoint {
+					remote-endpoint = <&funnel1_out_port0>;
+				};
+			};
+		};
+		out-ports {
+			port {
+				etf1_out_port: endpoint {
+					remote-endpoint = <&funnel2_in_port2>;
+				};
+			};
+		};
+	};
+
+	etf2@fe950000 {
+		compatible = "arm,coresight-tmc", "arm,primecell";
+		reg = <0 0xfe950000 0 0x1000>;
+		clocks = <&clk100>;
+		clock-names = "apb_pclk";
+		in-ports {
+			port {
+				etf2_in_port: endpoint {
+					remote-endpoint = <&funnel2_out_port0>;
+				};
+			};
+		};
+		out-ports {
+			port {
+				etf2_out_port: endpoint {
+					remote-endpoint =
+						<&replicator_in_port0>;
+				};
+			};
+		};
+	};
+
+	replicator {
+		compatible = "arm,coresight-static-replicator";
+		in-ports {
+			port {
+				replicator_in_port0: endpoint {
+					remote-endpoint = <&etf2_out_port>;
+				};
+			};
+		};
+		out-ports {
+			#address-cells = <0x1>;
+			#size-cells = <0x0>;
+			port@0 {
+				reg = <0x0>;
+				replicator_out_port0: endpoint {
+					remote-endpoint = <&etr_in_port>;
+				};
+			};
+			port@1 {
+				reg = <0x1>;
+				replicator_out_port1: endpoint {
+					remote-endpoint = <&tpiu_in_port>;
+				};
+			};
+		};
+	};
+
+	etr@fe970000 {
+		compatible = "arm,coresight-tmc", "arm,primecell";
+		reg = <0 0xfe970000 0 0x1000>;
+		clocks = <&clk100>;
+		clock-names = "apb_pclk";
+		in-ports {
+			port {
+				etr_in_port: endpoint {
+					remote-endpoint =
+						<&replicator_out_port0>;
+				};
+			};
+		};
+	};
+
+	tpiu@fe980000  {
+		compatible = "arm,coresight-tpiu", "arm,primecell";
+		reg = <0 0xfe980000 0 0x1000>;
+		clocks = <&clk100>;
+		clock-names = "apb_pclk";
+		in-ports {
+			port {
+				tpiu_in_port: endpoint {
+					remote-endpoint =
+						<&replicator_out_port1>;
+				};
+			};
+		};
+	};
+};
+
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 3c731e73903a..ca0a6b9f4445 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -12,6 +12,8 @@
  * the License, or (at your option) any later version.
  */
 
+#include "zynqmp-coresight.dtsi"
+
 / {
 	compatible = "xlnx,zynqmp";
 	#address-cells = <2>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
