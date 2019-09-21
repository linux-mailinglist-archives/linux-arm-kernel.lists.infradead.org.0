Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF37B9E6E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 17:13:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dw2x78JKYYdbgzPCysrQEpPrglz0vCEhtEjAPFpwc2I=; b=DSGbFON1w0vxTQ
	o4jPo0yEn7ZWywruzhgJEu1+h8dhhliFaZ7+vCMR7lT5QhLM/6mCQ3/CRq5M4MhrXch3ULlQ+Z5n0
	o0G4maHELBgzZQaYUBTU5BCRE6Ml8tzxxzXCmhzNvcZZRHsogiNqv821MZFzugFhaesCfC6gYyold
	dKypKbYVnc8LIm1YFdcGN1E7TnpnVgpeE2tITO4U/Aw7cv0WFNhXXP9/9nzE+ygpEJ+wD1lqXhSjC
	DkbSQq9DkTZfVsltUYEg73ly5MLUcc4YF3H01B2sq+G8PvFYM/UTJZDx6yJwl8amoZPJP5/WaHNki
	J1VaRCl5F41AyRupV70A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBh4g-0007Rq-Oj; Sat, 21 Sep 2019 15:13:26 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBh42-00077G-Le; Sat, 21 Sep 2019 15:12:47 +0000
Received: by mail-wr1-x444.google.com with SMTP id n14so9582956wrw.9;
 Sat, 21 Sep 2019 08:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WfQ1e9LFDFE1Z5maZrDyEq/WutECQBCS0m0ceOAIqa0=;
 b=OVKi08S50hGEiRw9dBzGluGTGgtg+pKlp3xygMsU4spmhQ51+dAU5e6bPO31NbjcRR
 q0OHBrM3S3waNNWWw51OjK4uchrcrc/TFylItNLLqgi75Q2j3h1n/b9QPljojXbD1kFP
 NevFD8TLX1GtPO4cyMTxRaMDfy6etU+ilLKB75FaAUt2Pvbf3IS5Bdzhjx2BfgpEjLh8
 CeF5cq5Jf6S2DvnGXC8y7wlDNsHaWtg8KZpJubtEYTSE5VvPEh8fDbR+zaInW3CuqHfY
 Upb+8JbbcoYmzMttXpMdnx3SU2WOmZ3YFxH9/HGGMzlC2MdmHep1XsWA7hrJI9S4SH21
 inHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WfQ1e9LFDFE1Z5maZrDyEq/WutECQBCS0m0ceOAIqa0=;
 b=EUmPK6EtoM2obZRQn+3IvJn657jMJ8d+VmrVpYea3zA1VGSVLUvyDg97bXbNyg2uww
 7RV9auMubWiLSn1y8uobs0g3sLj+zUdwOdyfJfUkYkZqe8pau98KKkppoWCSdr0KdhYb
 VhN5JcQNSdcHm1cuLb8ZZ36XN8bhFuXYTyTo8YPUjIaDxPveAgteeIwFX4F3c8nvRXt1
 qI3fDuOjPLv/+cQEnkPBJcYhHIkgVbkBDD7k+kQXs/1IQsQy7iy+lF4hNbDAUcowIS4/
 N7JKnCNPrDa4ipOGqqwm3F4aaF0vcS0eqN1dvHq2SK71+djA05+hNLj+LInT2rArwOrj
 iOXw==
X-Gm-Message-State: APjAAAWRKA93klcWVKXfdrw017DdY9Ttr0N8AS82gI14zjGABtP1o/k/
 chOBPflaZkQsNjYwuclmJKc=
X-Google-Smtp-Source: APXvYqz97gwP1YJzwvQCqfcq+Gp85bKA2r8M6d+E7PYadTAilKiby2e0S8TKyZPdPmgnhDeAvWVe6A==
X-Received: by 2002:a5d:40d2:: with SMTP id b18mr15977793wrq.4.1569078765019; 
 Sat, 21 Sep 2019 08:12:45 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133CE0B0028BAA8C744A6F562.dip0.t-ipconnect.de.
 [2003:f1:33ce:b00:28ba:a8c7:44a6:f562])
 by smtp.googlemail.com with ESMTPSA id
 y186sm10712491wmb.41.2019.09.21.08.12.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Sep 2019 08:12:44 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org, khilman@baylibre.com
Subject: [PATCH 1/5] dt-bindings: clock: meson8b: add the clock inputs
Date: Sat, 21 Sep 2019 17:12:19 +0200
Message-Id: <20190921151223.768842-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190921151223.768842-1-martin.blumenstingl@googlemail.com>
References: <20190921151223.768842-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_081246_706202_575A6BD1 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The clock controller on Meson8/Meson8b/Meson8m2 has three (known)
inputs:
- "xtal": the main 24MHz crystal
- "ddr_pll": some of the audio clocks use the output of the DDR PLL as
  input
- "clk_32k": an optional clock signal which can be connected to GPIOAO_6
  (which then has to be switched to the CLK_32K_IN function)

Add the inputs to the documentation so we can wire up these inputs in a
follow-up patch.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../devicetree/bindings/clock/amlogic,meson8b-clkc.txt       | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/amlogic,meson8b-clkc.txt b/Documentation/devicetree/bindings/clock/amlogic,meson8b-clkc.txt
index 4d94091c1d2d..cc51e4746b3b 100644
--- a/Documentation/devicetree/bindings/clock/amlogic,meson8b-clkc.txt
+++ b/Documentation/devicetree/bindings/clock/amlogic,meson8b-clkc.txt
@@ -11,6 +11,11 @@ Required Properties:
 	- "amlogic,meson8m2-clkc" for Meson8m2 (S812) SoCs
 - #clock-cells: should be 1.
 - #reset-cells: should be 1.
+- clocks: list of clock phandles, one for each entry in clock-names
+- clock-names: should contain the following:
+  * "xtal": the 24MHz system oscillator
+  * "ddr_pll": the DDR PLL clock
+  * "clk_32k": (if present) the 32kHz clock signal from GPIOAO_6 (CLK_32K_IN)
 
 Parent node should have the following properties :
 - compatible: "amlogic,meson-hhi-sysctrl", "simple-mfd", "syscon"
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
