Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA17F9079
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 14:21:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pw/4J02dPOcFrUNHcdo0XqvTKVErgGIweAjxcnkCsao=; b=LUbdkeG2P5sNJ9
	e29fo9P3KGCluiKQ4BZRHeGF/6Eef0KfjS1hRglUSj41D/ZjV/mwVJB97W+AIVqbj751YMkUIIj+I
	8L2Z633qoCFkMOHSbnSiv9r14U2VQ6sufOgHteArsgnNUFCTa6eCe4L6gt15RXD6pAq9ttBHpjijf
	joe7V4zocq969sqCBWpZIfN+cDb51cZysnaX0Pe5/cb9ipid8jaxQdeHovDsG5a9TVJvCRnYmn8ek
	iUMziK1hYNdDv+jqoZOqr98Q7CVOaD8wQdc/Ng6eUecmnfeXwuMhzGgxTkZCJfMhNhcWlZKyxjCpq
	MRJ8DP7gLtFbZ8TJrVdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUW6X-0002mU-Gi; Tue, 12 Nov 2019 13:21:09 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUW5l-0002IW-Tv
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 13:20:27 +0000
Received: by mail-lf1-x143.google.com with SMTP id z12so12796530lfj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 05:20:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=U/A2f9kHIFOCYbqEWyI5d4hToF+Uq4/YnGy8bo4uWSk=;
 b=gM8MrR8fpyn4D3f/S9EA8B8+euhGtgB+lGz82qjsDCTe1bJ1kiHnsQYFbiW/5akGyH
 0mp2q9cT8A/OkZQgMiiVMsZSMYP7lzx+i0+PscS5YENMZjpxjMRfriZdcUEGItBE4t1y
 tuIfz4VW5ZZL40S/NoLsb+KAqWW86ZFGdIV1s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=U/A2f9kHIFOCYbqEWyI5d4hToF+Uq4/YnGy8bo4uWSk=;
 b=N8jW7gkfIDac431zrbyB5myqCQtDxZoAHwptD+QGw/VvFBIWr+Qb6TN6LIEeZId4VA
 cLlWltJiKvznbqCmNYBR/IO5//f8OnFUSE6sINMBin7vlr3xuy6/SzE1fo6jfRxARPr7
 gqukmM3A99P3AvTnrFb+AGLJJBVIIq49tHy7938EEGPPxZ215Sh5TnwLH/pE8woh9t6B
 1Pfornqj/61xG9BoUxm6Pq++fxpHtzpzVp3Y5d4Bzd9rtaIf6AP5Tvmw4zJyeXxYfkEI
 obMz5uQB+U1YBB1mqrHmr8SEvGPKvNl5zHkexwOWMOmpesLSSFah0wncEhCHktmmspiq
 jdvA==
X-Gm-Message-State: APjAAAUc668WH9X6TYa3X8nqATlxbB+kwGfIUshIFW/ztqDmUX/HSkMa
 cpQr5aCSviAeyR2PzJjhVDtsSw==
X-Google-Smtp-Source: APXvYqz/sFZqp2pxbjkEJ36q/AU0dl23QXcsNzmg6b9X5nHorefiUNSVmG7PoCczzVrEgRSF7p9rHw==
X-Received: by 2002:a19:c514:: with SMTP id w20mr19905250lfe.143.1573564815900; 
 Tue, 12 Nov 2019 05:20:15 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id f20sm869050lfc.75.2019.11.12.05.20.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 05:20:15 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/2] ARM: dts: ls1021a: add node describing external interrupt
 lines
Date: Tue, 12 Nov 2019 14:20:09 +0100
Message-Id: <20191112132010.18274-2-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191112132010.18274-1-linux@rasmusvillemoes.dk>
References: <20191112132010.18274-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_052022_007351_CF85B069 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a node describing the six external interrupt lines IRQ0-IRQ5
with configurable polarity.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 arch/arm/boot/dts/ls1021a.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm/boot/dts/ls1021a.dtsi b/arch/arm/boot/dts/ls1021a.dtsi
index 2f6977ada447..0855b1fe98e0 100644
--- a/arch/arm/boot/dts/ls1021a.dtsi
+++ b/arch/arm/boot/dts/ls1021a.dtsi
@@ -216,6 +216,25 @@
 			compatible = "fsl,ls1021a-scfg", "syscon";
 			reg = <0x0 0x1570000 0x0 0x10000>;
 			big-endian;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x0 0x0 0x1570000 0x10000>;
+
+			extirq: interrupt-controller@1ac {
+				compatible = "fsl,ls1021a-extirq";
+				#interrupt-cells = <2>;
+				#address-cells = <0>;
+				interrupt-controller;
+				reg = <0x1ac 4>;
+				interrupt-map =
+					<0 0 &gic GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>,
+					<1 0 &gic GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>,
+					<2 0 &gic GIC_SPI 165 IRQ_TYPE_LEVEL_HIGH>,
+					<3 0 &gic GIC_SPI 167 IRQ_TYPE_LEVEL_HIGH>,
+					<4 0 &gic GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>,
+					<5 0 &gic GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-map-mask = <0xffffffff 0x0>;
+			};
 		};
 
 		crypto: crypto@1700000 {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
