Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D59177DC2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 18:46:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iciC7Um2IriNEP8zlic+54VeVXzlhVfty539dtLw8qk=; b=A+uNyleh+q/IhB
	ML0KkEUQqhgSBtuR2zamFL7RgampojUjemK+CJ85IWjfl2yDR3C7vlp+ZgQofi+UgUWOiFzDY2hXr
	sc/7cOWQMQxlBRrzqkWuYPWtyrU2QPID26wjQT6aXKheTunp6qJLTDfZoaxXzzdcEw2zrCPD7YC/J
	IHxQ/CUO5UG3R43XxyxH8A9W69w6fPaAvHU5VkWj1I3HXZFcx1D9wtqd6A+tKingl+Idt2oIMbrbY
	P0cKH03hX6bXUAI0Ea7aRRYnHuk45HmLx44CBz8ECPvdNexC/01xitFrovM+TicNb3IvlBAyDwLAc
	KTgVQbNf1UF6e1orsdew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Bc6-0001iF-0T; Tue, 03 Mar 2020 17:45:50 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9BZs-0006mL-H4
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 17:43:34 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 02B1023EA8;
 Tue,  3 Mar 2020 18:43:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1583257404;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bZm6ZfNU9396+MJXOBRUscy8hxQ1AdgyZ3RSnP5KrZU=;
 b=JCQRnvQ0RfsASdqbjilVtJFwBdG52LcArELQ5fRw6X6RI35xaH5MOfCLY04NM464eEflCl
 RJUHJO0PKErB3whrtEKIVbLDTLN6dUOXB4BlXPEU215VZOm8a2KhPK4iKi0gXH4EyGX/Lz
 /5MFvkVDye0iyd+U/JfhtkG4ROVv5pQ=
From: Michael Walle <michael@walle.cc>
To: linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 9/9] arm64: dts: ls1028a: add missing LPUART nodes
Date: Tue,  3 Mar 2020 18:43:06 +0100
Message-Id: <20200303174306.6015-10-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303174306.6015-1-michael@walle.cc>
References: <20200303174306.6015-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 02B1023EA8
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 NEURAL_SPAM(0.00)[0.479]; DKIM_SIGNED(0.00)[];
 DBL_PROHIBIT(0.00)[0.34.163.48:email,0.34.124.32:email,0.34.241.80:email,0.34.202.64:email];
 RCPT_COUNT_TWELVE(0.00)[14]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c:8000::/33, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_094332_739667_7A566921 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Li Yang <leoyang.li@nxp.com>,
 Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Yuan Yao <yao.yuan@nxp.com>, Vabhav Sharma <vabhav.sharma@nxp.com>,
 Jiri Slaby <jslaby@suse.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The LS1028A has six LPUART controllers. Add the nodes.

This was tested on a custom board.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 73 +++++++++++++++++++
 1 file changed, 73 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 0843cfbe7ae1..df51e81ebe84 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -333,6 +333,79 @@
 			status = "disabled";
 		};
 
+
+		lpuart0: serial@2260000 {
+			compatible = "fsl,ls1028a-lpuart";
+			reg = <0x0 0x2260000 0x0 0x1000>;
+			interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clockgen 4 1>;
+			clock-names = "ipg";
+			dma-names = "rx","tx";
+			dmas = <&edma0 1 32>,
+			       <&edma0 1 33>;
+			status = "disabled";
+		};
+
+		lpuart1: serial@2270000 {
+			compatible = "fsl,ls1028a-lpuart";
+			reg = <0x0 0x2270000 0x0 0x1000>;
+			interrupts = <GIC_SPI 233 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clockgen 4 1>;
+			clock-names = "ipg";
+			dma-names = "rx","tx";
+			dmas = <&edma0 1 30>,
+			       <&edma0 1 31>;
+			status = "disabled";
+		};
+
+		lpuart2: serial@2280000 {
+			compatible = "fsl,ls1028a-lpuart";
+			reg = <0x0 0x2280000 0x0 0x1000>;
+			interrupts = <GIC_SPI 234 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clockgen 4 1>;
+			clock-names = "ipg";
+			dma-names = "rx","tx";
+			dmas = <&edma0 1 28>,
+			       <&edma0 1 29>;
+			status = "disabled";
+		};
+
+		lpuart3: serial@2290000 {
+			compatible = "fsl,ls1028a-lpuart";
+			reg = <0x0 0x2290000 0x0 0x1000>;
+			interrupts = <GIC_SPI 235 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clockgen 4 1>;
+			clock-names = "ipg";
+			dma-names = "rx","tx";
+			dmas = <&edma0 1 26>,
+			       <&edma0 1 27>;
+			status = "disabled";
+		};
+
+		lpuart4: serial@22a0000 {
+			compatible = "fsl,ls1028a-lpuart";
+			reg = <0x0 0x22a0000 0x0 0x1000>;
+			interrupts = <GIC_SPI 236 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clockgen 4 1>;
+			clock-names = "ipg";
+			dma-names = "rx","tx";
+			dmas = <&edma0 1 24>,
+			       <&edma0 1 25>;
+			status = "disabled";
+		};
+
+		lpuart5: serial@22b0000 {
+			compatible = "fsl,ls1028a-lpuart";
+			reg = <0x0 0x22b0000 0x0 0x1000>;
+			interrupts = <GIC_SPI 237 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clockgen 4 1>;
+			clock-names = "ipg";
+			dma-names = "rx","tx";
+			dmas = <&edma0 1 22>,
+			       <&edma0 1 23>;
+			status = "disabled";
+		};
+
 		edma0: dma-controller@22c0000 {
 			#dma-cells = <2>;
 			compatible = "fsl,ls1028a-edma", "fsl,vf610-edma";
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
