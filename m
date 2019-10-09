Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D56C4D10DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 16:07:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2vWebv3co96UfScd3zIdcYd7KbTP+BCx5CVxLeAWD+k=; b=WEu
	/5BFpW5sqxyLI3M1Qg9h2MuF8lwWtHmt9BccxfwEVWXP5Ctxn/dkldjWzqilrW/KQs85NYceqoazH
	G0rMfpDuq/VJiX/GAyIc9lcLUfFxqyEASUuoTDq9N+dySBNQsue/OuiESy4MJKZGz5nDtCApi6eg7
	/sTVqD7PbjeGH829Iy78S8n/0NvovFRJyPoALwKGlsizdM1cXBpx8HzeSluRLQB5OjROQ3FB95nNv
	Q7O35cDYTPnTUq40q4rfXuQFI4FlCIGo+qErHxi/QhKikb+3f04uCrhXwzEnGTxLWFghloNOKL/o1
	u4+8wHzEU/JqjpVRp3BLpdmLQ5zBf+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iICcs-0003e8-NQ; Wed, 09 Oct 2019 14:07:38 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iICck-0003Zj-Ne
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 14:07:32 +0000
Received: by mail-wm1-x343.google.com with SMTP id y21so2794158wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 07:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id;
 bh=qYQ0aamJUDpjyNn4W7oIfsE1QuvOq48dHFv4SQEnUqo=;
 b=qcy2EGDE20dEBGzjflbkOM/+xFeG34FhQ1qYWlJG7PYVZ9C26hOz1qA9bJvGurlYbY
 YeWlVsQss9LVqwBVg0Rfraq5ANlzrz8/gXo7kTuNZmlsSQo3iUa25zUOzzy5FERs2a0c
 DNrBssPk3qiMh3jCXjZAvXoQ2kl7dlzTQ7eQBOLEe0h4MTI82Or08FOuok8vqgfhBGpM
 Jd8eSrOQ/ft2gDunaAQsgt6S5Wy4v2ln4Lo9eLvuUrSclsYZmSYtpfgvH4UPLTNjkbfT
 lbw1mrEan64Ioaj0kJniVgJCdM0LSACc6O8TbvBPYgkfvWY0U8A/ydTpVwp1eB571v3u
 O7Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=qYQ0aamJUDpjyNn4W7oIfsE1QuvOq48dHFv4SQEnUqo=;
 b=Ot7ROLwqjPNBopD+zxWYQOnMGO0FZKTaRstGTBdDnAjVnnXAM4MEsT4QFxZntIVBJD
 MxuRoqTh/QAVLQTnKnFmbdK7cqZxZUQqw3LksFHlLGqz2SXQsFLVVZe1+yjCHkkfw6BM
 YGZzyd+loitXiDscFwoh3uq9ZXy7FKFHK5gXpzWjwPsXVfUZL+pzXDgbpNpireQGyojY
 7lKbgkGlJOpcQ0R5MiEX196IkraEcSIwUiRB7hVMtV+kVOJONTwFicrcdj9Dm3PefvA7
 3AWzktqwTAPkgxJkj+IUrjfojqSD/4yhC67O4DdyXKeg6iQ0BtVAbCbIcdhZgP6MditL
 N5mg==
X-Gm-Message-State: APjAAAUdO6K8UIljKy8hFtqqH7u27FoUU7UZgkR8timZ9Xq967dtas84
 25JYE/gQpmH4+CaQsppYKkO5WQ==
X-Google-Smtp-Source: APXvYqxwJvflzApriBt9xCl9Wj4OZv07aiO4YpeggA6M/sAkIqyqUI4JFR/XxMM0BUrXYPwBcITjBw==
X-Received: by 2002:a05:600c:2214:: with SMTP id
 z20mr2930679wml.10.1570630048024; 
 Wed, 09 Oct 2019 07:07:28 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id y14sm3341799wrd.84.2019.10.09.07.07.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 09 Oct 2019 07:07:27 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com
Subject: [PATCH] ARM: dts: zynq: enablement of coresight topology
Date: Wed,  9 Oct 2019 16:07:22 +0200
Message-Id: <a38ab93d870a3b1b341a5c0da14fc7f3d4056684.1570630040.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_070730_821074_F44B919D 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Peter Crosthwaite <peter.crosthwaite@xilinx.com>, devicetree@vger.kernel.org,
 Zumeng Chen <zumeng.chen@windriver.com>, u-boot@lists.denx.de,
 Rob Herring <robh+dt@kernel.org>, Rob Herring <robherring2@gmail.com>,
 Steffen Trumtrar <s.trumtrar@pengutronix.de>,
 Quanyang Wang <quanyang.wang@windriver.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Zumeng Chen <zumeng.chen@windriver.com>

This patch is to build the coresight topology structure of zynq-7000
series according to the docs of coresight and userguide of zynq-7000.

Signed-off-by: Zumeng Chen <zumeng.chen@windriver.com>
Signed-off-by: Quanyang Wang <quanyang.wang@windriver.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm/boot/dts/zynq-7000.dtsi | 158 +++++++++++++++++++++++++++++++
 1 file changed, 158 insertions(+)

diff --git a/arch/arm/boot/dts/zynq-7000.dtsi b/arch/arm/boot/dts/zynq-7000.dtsi
index ca6425ad794c..86430ad76fee 100644
--- a/arch/arm/boot/dts/zynq-7000.dtsi
+++ b/arch/arm/boot/dts/zynq-7000.dtsi
@@ -59,6 +59,40 @@
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
+					slave-mode;
+					remote-endpoint = <&funnel_out_port>;
+				};
+			};
+		};
+	};
+
 	amba: amba {
 		compatible = "simple-bus";
 		#address-cells = <1>;
@@ -365,5 +399,129 @@
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
+
+				port@3 {
+					reg = <3>;
+					funnel0_in_port3: endpoint {
+						remote-endpoint = <&itm_out_port>;
+					};
+				};
+				/* The other input ports are not connect to anything */
+			};
+		};
+
+		/* ITM is not supported by kernel, only leave device node here */
+		itm@f8805000 {
+			compatible = "arm,coresight-etm3x", "arm,primecell";
+			reg = <0xf8805000 0x1000>;
+			clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
+			clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
+			out-ports {
+				port {
+					itm_out_port: endpoint {
+						remote-endpoint = <&funnel0_in_port3>;
+					};
+				};
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
