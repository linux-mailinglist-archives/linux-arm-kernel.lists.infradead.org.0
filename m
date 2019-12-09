Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E48A9117BA1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 00:44:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IUqePkVD1Anp83RV+IYgvIU9oHT+YxS9bGGRnAsnM8E=; b=Ma9hN8J1oJJ+mD
	5VGI8g4U4cMkuAGPgLqr1pd4Hm3ZZMqm9eWGOc2GieSwf6LwIBe95uuqQzD5TO4cL8U59laQT3QnE
	p+y5+0agE5EBrj6yVLnwA/dXXKXFXsi6+PEAiV2RvgbgieSjgvcVZkNFugZlCN0YTV42FXwk4w1eq
	ntI69ITUNXq/SiJdnMDhoG/6IeNnGPmC0kFPPkmhqRwZvOGR6B1xnmN1OIoiyo0etXIdQBvB/s78O
	cvj6p4Ku5nMx4FUEevJVWlOfRa5DswF1+x2Snw7M38W+rPPp3J3k0HptU2jDSire0iWWSs+tlqu3G
	NaLe0Tc1yfRH28yp08Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieShX-0007qw-MU; Mon, 09 Dec 2019 23:44:27 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieShF-0007om-My
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 23:44:14 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 97F9923D22;
 Tue, 10 Dec 2019 00:44:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1575935047;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kIL6zdpKQ1u4IWNIaa7uOSa38Zl21eYDKcDmSAfwrRI=;
 b=L76xr757ZVtv8p29f+LttwVKqgz/q/0rpmie84KpW8aXek5m/c2zZIcae7MPmj3Dy07NXF
 /Y5iWcp6I30fvlyitrfKyFN1IkT0ZL1FxXk5A3HCmyJhRvzb4kbKH1Tb44+Gpz7gNkxQIw
 kZbRydHqnX8RKpU9eCVkJ+YlpvVY0rI=
From: Michael Walle <michael@walle.cc>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/5] arm64: dts: ls1028a: add missing sai nodes
Date: Tue, 10 Dec 2019 00:43:47 +0100
Message-Id: <20191209234350.18994-3-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191209234350.18994-1-michael@walle.cc>
References: <20191209234350.18994-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 97F9923D22
X-Spamd-Result: default: False [6.40 / 15.00]; ARC_NA(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 R_MISSING_CHARSET(2.50)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 TAGGED_RCPT(0.00)[dt]; MIME_GOOD(-0.10)[text/plain];
 BROKEN_CONTENT_TYPE(1.50)[]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_SEVEN(0.00)[9]; MID_CONTAINS_FROM(1.00)[];
 NEURAL_HAM(-0.00)[-0.696]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c::/31, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_154413_028866_42201EAA 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Yuantian Tang <andy.tang@nxp.com>,
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The LS1028A has six SAI cores.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 06082c932531..7a55314e9c8d 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -545,6 +545,20 @@
 			status = "disabled";
 		};
 
+		sai3: audio-controller@f120000 {
+			#sound-dai-cells = <0>;
+			compatible = "fsl,vf610-sai";
+			reg = <0x0 0xf120000 0x0 0x10000>;
+			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clockgen 4 1>, <&clockgen 4 1>,
+				 <&clockgen 4 1>, <&clockgen 4 1>;
+			clock-names = "bus", "mclk1", "mclk2", "mclk3";
+			dma-names = "tx", "rx";
+			dmas = <&edma0 1 8>,
+			       <&edma0 1 7>;
+			status = "disabled";
+		};
+
 		sai4: audio-controller@f130000 {
 			#sound-dai-cells = <0>;
 			compatible = "fsl,vf610-sai";
@@ -559,6 +573,34 @@
 			status = "disabled";
 		};
 
+		sai5: audio-controller@f140000 {
+			#sound-dai-cells = <0>;
+			compatible = "fsl,vf610-sai";
+			reg = <0x0 0xf140000 0x0 0x10000>;
+			interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clockgen 4 1>, <&clockgen 4 1>,
+				 <&clockgen 4 1>, <&clockgen 4 1>;
+			clock-names = "bus", "mclk1", "mclk2", "mclk3";
+			dma-names = "tx", "rx";
+			dmas = <&edma0 1 12>,
+			       <&edma0 1 11>;
+			status = "disabled";
+		};
+
+		sai6: audio-controller@f150000 {
+			#sound-dai-cells = <0>;
+			compatible = "fsl,vf610-sai";
+			reg = <0x0 0xf150000 0x0 0x10000>;
+			interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clockgen 4 1>, <&clockgen 4 1>,
+				 <&clockgen 4 1>, <&clockgen 4 1>;
+			clock-names = "bus", "mclk1", "mclk2", "mclk3";
+			dma-names = "tx", "rx";
+			dmas = <&edma0 1 14>,
+			       <&edma0 1 13>;
+			status = "disabled";
+		};
+
 		tmu: tmu@1f80000 {
 			compatible = "fsl,qoriq-tmu";
 			reg = <0x0 0x1f80000 0x0 0x10000>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
