Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2686610AA38
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 06:31:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ehkHjMVpIrkQoeCXnQJvoi34Uj6rDpLV7J5x0HyPKjg=; b=sXqltHyCg0Cpb9
	X0N27vZ/FIiB+ZiSlfEdDHtqaR4u1INOyjtQ229fV2TWAxq6vqvtPeyZL65GWt65GJAZ5acdtkZd2
	0qrr1IYvxlAtIUpt0mzqZIZfXcux3kYUD0Qhd+oPkvLMaHxplNTFKXfJl8RSt1K36ypvU8OsipMbw
	fEopJr9Eey2Y3rzIBlp/vylsXLfuBJIUgMeOTUK9B6n7brwDxn8F3I2YRxNEu9kt1OoEbzQU2Hd1b
	bjfEL16P3kyi4ZJLPen+MlasuoJdcZDe3CVO7OI8/2dw62PPQTSXHDCRiticuHTQ7JKswkCCroj6O
	ki84YJY7K9MGsnRuG9hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZpv7-0002qP-UZ; Wed, 27 Nov 2019 05:31:21 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZptw-0001FD-2H
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 05:30:11 +0000
Received: by mail-pf1-x441.google.com with SMTP id z4so10371118pfn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 21:30:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K9R7+DQrvs6TQPapCAJo0gk7ntwM61doRyvwyArb+eI=;
 b=TH8Cv41KFqnO7YoWhF3rUR1KCNUQJDWeIWCGHjxg+IoW5wMeCB2YlPG+nzKRWR7hf0
 MxQ0cDN93bo4wWlrE9FvswOP05pIKVpdcEhRj0WcRGaQYcb3WLXGFM9YlVQCJ1UI/0u7
 Lp8gLjpxu1/xO7JUwotlfW0WFz1XiwHhSHACilfn7HOzTcXC7QMiGQjcnqNFhU13Mdle
 5SFBHc0iO4GABmm+pWKmStDq/jZF9s4RXg0VWfeP5X/+bZaWSZy0ihRODHIc+W8K8bpN
 CXEfV5zgzQ0zp9rAkPfkqpjFp+H/FLGZQZ/ZHOFzBLoaIhMxC7sDnUeHJ+OeSU7sRv7b
 02DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K9R7+DQrvs6TQPapCAJo0gk7ntwM61doRyvwyArb+eI=;
 b=kV7QRStrrbU67kxnCNcQFyQnDg0u+LmPeYC95RdvDlt0PI7Lvdcs/J2ceX4O45Q2IP
 OrFyT8vohhayF2AhNoIvO/4grQE9KgnXCWQTAdeBNK7AwebMQril4g2ae5F8vbiVmor0
 ERYvr1pFmSoqMR+zZwlbrAmEQ7HTO7YNbqvQXN/oWrk+zK2PwyueQ7cv1VdVXFxdvF2s
 /3RfqVRclqNWceWfvrAGbsp6tLHf4K4VPJNMd8/s4gSdDverGAADRYrnslaYMfSQZAhb
 lfsoHH/eczfnaLS10ilqpnjs6d89g49pZqZkK/CoRGgr5QjqY55Opi8KiJnJ5ELcXayj
 B9Vw==
X-Gm-Message-State: APjAAAUIrJFLcs3rcObfA0JEAu+yE12HtO6xHhQ984q7MZD+AC72nvdg
 51fsnLn2M5RKKuvDuW4DaXo=
X-Google-Smtp-Source: APXvYqxTI+MD/D0kvl0k+/tjZfeKHHZWlWyAB8qP26s2p6gtSih/hYSQl8OXFDwnSnq2wB0zXiS2ug==
X-Received: by 2002:aa7:90d5:: with SMTP id k21mr45284823pfk.178.1574832606794; 
 Tue, 26 Nov 2019 21:30:06 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id p38sm4360825pjp.27.2019.11.26.21.30.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 21:30:06 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Yangtao Li <tiny.windzz@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megous@megous.com>,
 linux-kernel@vger.kernel.org
Subject: [PATCH v6 5/7] arm64: dts: allwinner: sun50i-h5: Add thermal sensor
 and thermal zones
Date: Tue, 26 Nov 2019 21:29:33 -0800
Message-Id: <20191127052935.1719897-6-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191127052935.1719897-1-anarsoul@gmail.com>
References: <20191127052935.1719897-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_213008_149399_A3598643 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

There are two sensors, one for CPU, one for GPU.

Signed-off-by: Ondrej Jirman <megous@megous.com>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi | 32 ++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
index f002a496d7cb..27fb0d2fc9a7 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
@@ -167,6 +167,32 @@
 			assigned-clocks = <&ccu CLK_GPU>;
 			assigned-clock-rates = <384000000>;
 		};
+
+		ths: ths@1c25000 {
+			compatible = "allwinner,sun50i-h5-ths";
+			reg = <0x01c25000 0x400>;
+			interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
+			resets = <&ccu RST_BUS_THS>;
+			clocks = <&ccu CLK_BUS_THS>, <&ccu CLK_THS>;
+			clock-names = "bus", "mod";
+			nvmem-cells = <&ths_calibration>;
+			nvmem-cell-names = "calibration";
+			#thermal-sensor-cells = <1>;
+		};
+	};
+
+	thermal-zones {
+		cpu_thermal: cpu-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&ths 0>;
+		};
+
+		gpu_thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&ths 1>;
+		};
 	};
 };
 
@@ -212,4 +238,10 @@
 
 &sid {
 	compatible = "allwinner,sun50i-h5-sid";
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	ths_calibration: thermal-sensor-calibration@34 {
+		reg = <0x34 4>;
+	};
 };
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
