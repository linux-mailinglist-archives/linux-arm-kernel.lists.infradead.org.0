Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93AC95551D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gAqwVUBQOBHmqqbRbOcV31/9/WYHK15pMAlMmKPgCJU=; b=V45WiqEdwibvwV
	MYXQt5e3gbfBROYv4SLfiCKytt7EsLUdWZLkJym8INUTtuMTGF4aDHe3QBfMXUHs4Q6So11s4B/ck
	pL685I0HXl/yeztU+TeaLluguqAMIbxcfwPbbHj9Qz1dXJ/Wxq7syUZGt/FhWGs1UPCQIJTMhpcoP
	j28KSiegFKeWKnnmZSUTVlLjelS9MlHa6BYGBDRqoFA0r1MJzulB9i9xmC1Mxs+S9QUr6zm+01rOa
	XnnX2gwFY7RaDt6JpDSogiAswC8ukNxIA9zNtnwZ1AZbPm0RBOBhZFjcc3N29lDWkZ50xHBWE80+w
	50NfTMvjWLeLGxL5olCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoeG-0004Bs-N0; Tue, 25 Jun 2019 16:50:24 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfobh-0002FA-ML
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:47:47 +0000
Received: by mail-wm1-x342.google.com with SMTP id x15so3548560wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e2iDgG+a1Cwxalhjo4sK1dl1x5ZGYIy8c2NDgb0cIKI=;
 b=hRMY0hQPqZa1EOkLq/pcbXQACdZ2vJch4Nwcss07dQdC/POnex3oN18t0XpCs3k2jP
 NvyO5+bb+SYAUpaa/6dukYsJS2HKigF9ncRCCtBSOguyAZLciEXdUxNLAOHBRmIDO+XY
 1ZT2UPFc1MMyvFBH8cKmGYRfjmoc8NVw9ITwdFWuyuXBZzgwlQPOmu336h92jyz85L32
 c2G1liFbrRMmUnrc8zuOdrTOGQcKpBhCwGfzFNalHwsyG+RpdzhcucUUltKduAZwFi1p
 pj8rEVfuV3ePPORyN7CqUsceLTjVphHP5v/f12iQFjZVxMwr1ZeIcSgn2nFlPojvEU5y
 7plw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e2iDgG+a1Cwxalhjo4sK1dl1x5ZGYIy8c2NDgb0cIKI=;
 b=KRQgK2qi8e2xLmcK8xbiIKMAiahQLCEE++ri4zm9fESKpxVRI49QKIgK1mhnyf4bFl
 SlQHusKHCGDh8hf5toGF+RQa9bSlg2Ys1F4TXLNsqNBl5t/vr4adBJPcruudFsxrSvN5
 MlPc/waBTBljPWgEU/JNOhaOyndtfdmgWeGBvTI15AvsPNsJ75LmeF1I3Xw4VmfVV+lg
 i8T9cqYgg0VYg61Gx1BsI4zrJh7U5OLQq1O4QjHVJZXLQcQvAgZMTSdWuaO3wUbz3D2T
 dZSKYt4MoxLFVKFEBvsFvSTFfSAnCPyuzPo4z0cvXagdYJ+RIzcwRviVqLe7lcWDQQTM
 vNww==
X-Gm-Message-State: APjAAAWgzkEQL7CHX0Cm7nwjlANNUHgTuw0hOkl1D3mc/xcq0qzy7+X1
 QDAzpHUDsd/vZQNNaYzMpWQoKQ==
X-Google-Smtp-Source: APXvYqzzKybU5L5CHAou+6YROvKHjyTDhRvTNHkGwif2kC9QtUTdJvvPwjxfryuq9YWgxxmIB0Rwqg==
X-Received: by 2002:a1c:39d6:: with SMTP id g205mr19367816wma.85.1561481264441; 
 Tue, 25 Jun 2019 09:47:44 -0700 (PDT)
Received: from localhost.localdomain (30.red-83-34-200.dynamicip.rima-tde.net.
 [83.34.200.30])
 by smtp.gmail.com with ESMTPSA id d18sm42594476wrb.90.2019.06.25.09.47.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 09:47:43 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, sboyd@kernel.org,
 bjorn.andersson@linaro.org, david.brown@linaro.org,
 jassisinghbrar@gmail.com, mark.rutland@arm.com, mturquette@baylibre.com,
 robh+dt@kernel.org, will.deacon@arm.com, arnd@arndb.de,
 horms+renesas@verge.net.au, heiko@sntech.de, sibis@codeaurora.org,
 enric.balletbo@collabora.com, jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v3 04/14] dt-bindings: mailbox: qcom: Add clock-name optional
 property
Date: Tue, 25 Jun 2019 18:47:23 +0200
Message-Id: <20190625164733.11091-5-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_094745_820018_174360F3 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 khasim.mohammed@linaro.org, linux-kernel@vger.kernel.org,
 amit.kucheria@linaro.org, linux-clk@vger.kernel.org, vkoul@kernel.org,
 niklas.cassel@linaro.org, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the APCS clock is registered (platform dependent), it retrieves
its parent names from hardcoded values in the driver.

The following commit allows the DT node to provide such clock names to
the platform data based clock driver therefore avoiding having to
explicitly embed those names in the clock driver source code.

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../mailbox/qcom,apcs-kpss-global.txt         | 24 ++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.txt b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.txt
index 1232fc9fc709..b69310322b09 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.txt
+++ b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.txt
@@ -18,10 +18,11 @@ platforms.
 	Usage: required
 	Value type: <prop-encoded-array>
 	Definition: must specify the base address and size of the global block
+
 - clocks:
-	Usage: required if #clocks-cells property is present
-	Value type: <phandle>
-	Definition: phandle to the input PLL, which feeds the APCS mux/divider
+	Usage: required if #clock-names property is present
+	Value type: <phandle array>
+	Definition: phandles to the two parent clocks of the clock driver.
 
 - #mbox-cells:
 	Usage: required
@@ -33,6 +34,12 @@ platforms.
 	Value type: <u32>
 	Definition: as described in clock.txt, must be 0
 
+- clock-names:
+	Usage: required if the platform data based clock driver needs to
+	retrieve the parent clock names from device tree.
+	This will requires two mandatory clocks to be defined.
+	Value type: <string-array>
+	Definition: must be "aux" and "pll"
 
 = EXAMPLE
 The following example describes the APCS HMSS found in MSM8996 and part of the
@@ -65,3 +72,14 @@ Below is another example of the APCS binding on MSM8916 platforms:
 		clocks = <&a53pll>;
 		#clock-cells = <0>;
 	};
+
+Below is another example of the APCS binding on QCS404 platforms:
+
+	apcs_glb: mailbox@b011000 {
+		compatible = "qcom,qcs404-apcs-apps-global", "syscon";
+		reg = <0x0b011000 0x1000>;
+		#mbox-cells = <1>;
+		clocks = <&gcc GCC_GPLL0_AO_OUT_MAIN>, <&apcs_hfpll>;
+		clock-names = "aux", "pll";
+		#clock-cells = <0>;
+	};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
